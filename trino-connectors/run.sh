#!/usr/bin/env bash

set -euo pipefail

if [ -z "$REPO_URL" ] || [ -z "$GITHUB_TOKEN" ] || [ -z "$SLACK_TOKEN" ] || [ -z "$TWITTER_CUSTOMER_KEY" ] || [ -z "$TWITTER_CUSTOMER_SECRET" ] || [ -z "$TWITTER_TOKEN" ] || [ -z "$TWITTER_SECRET" ]; then
    echo >&2 "The following env vars need to be set but are not:"
    [ -n "$REPO_URL" ] || echo >&2 "REPO_URL"
    [ -n "$GITHUB_TOKEN" ] || echo >&2 "GITHUB_TOKEN"
    [ -n "$SLACK_TOKEN" ] || echo >&2 "SLACK_TOKEN"
    [ -n "$TWITTER_CUSTOMER_KEY" ] || echo >&2 "TWITTER_CUSTOMER_KEY"
    [ -n "$TWITTER_CUSTOMER_SECRET" ] || echo >&2 "TWITTER_CUSTOMER_SECRET"
    [ -n "$TWITTER_TOKEN" ] || echo >&2 "TWITTER_TOKEN"
    [ -n "$TWITTER_SECRET" ] || echo >&2 "TWITTER_SECRET"
fi

echo "🏗️ Building the Docker image"
docker build --tag my-trino-connectors .

name=my-trino-connectors
echo "🚀 Starting the $name container"
docker run \
    -d \
    --name $name \
    -p 8080:8080 \
    -e AWS_REGION=eu-central-1 \
    -e AWS_PROFILE=infotech \
    -v "$HOME"/.aws:/home/trino/.aws \
    -e REPO_URL \
    -e GITHUB_TOKEN \
    -e SLACK_TOKEN \
    -e TWITTER_CUSTOMER_KEY \
    -e TWITTER_CUSTOMER_SECRET \
    -e TWITTER_TOKEN \
    -e TWITTER_SECRET \
    my-trino-connectors

echo "⏱️ Waiting up to 30 seconds for the $name container to be healthy"
i=0
until docker inspect $name --format "{{json .State.Health.Status }}" | grep -q '"healthy"'; do
    if [[ $((i++)) -ge 15 ]]; then
        echo >&2 "🚨 Too many retries waiting for $name to start"
        break
    fi
    sleep 2
done

echo "📖 Available catalogs:"
if ! docker exec $name trino --execute "SHOW CATALOGS" 2>/dev/null; then
    echo >&2 "🚨 Failed to execute a query after $name container started"
fi

echo "⌨️ Run \`docker exec -it $name trino\` and start querying"
