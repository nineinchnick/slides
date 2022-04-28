FROM trinodb/trino:376

RUN rm -rf /usr/lib/trino/plugin/{accumulo,atop,bigquery,blackhole,cassandra,clickhouse,delta-lake,druid,elasticsearch,example-http,geospatial,google-sheets,hive,http-event-listener,iceberg,kafka,kinesis,kudu,local-file,memsql,ml,mongodb,mysql,oracle,password-authenticators,phoenix,phoenix5,pinot,postgresql,prometheus,raptor-legacy,redis,redshift,resource-group-managers,session-property-managers,sqlserver,teradata-functions,thrift,tpcds,tpch} \
    rm -rf /etc/trino/catalog/{tpcds,tpch}.properties \
    && ls -la /usr/lib/trino/plugin

RUN cd /usr/lib/trino/plugin \
    && curl -fLsS https://github.com/nineinchnick/trino-git/releases/download/v0.18/trino-git-0.18.zip | jar xv \
    && curl -fLsS https://github.com/nineinchnick/trino-rest/releases/download/v0.63/trino-rest-github-0.63.zip | jar xv \
    && curl -fLsS https://github.com/nineinchnick/trino-rest/releases/download/v0.63/trino-rest-slack-0.63.zip | jar xv \
    && curl -fLsS https://github.com/nineinchnick/trino-rest/releases/download/v0.63/trino-rest-twitter-0.63.zip | jar xv \
    && curl -fLsS https://github.com/nineinchnick/trino-cloud/releases/download/v0.18/trino-cloud-aws-0.18.zip | jar xv \
    && curl -fLsS https://github.com/nineinchnick/trino-faker/releases/download/v0.11/trino-faker-0.11.zip | jar xv

ADD catalog/ /etc/trino/catalog/
