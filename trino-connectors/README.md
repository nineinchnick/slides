---
title: How I learned Trino by writing connectors
author: Jan Waś
...

# trino-git

* initial version took a week
* git data model
* timestamp packing

# trino-github

* forked prestorocks/trino-rest
* DI and configuration
* functions returning arrays of rows
* predicate pushdown vs dynamic filtering
* virtual columns

# RESTful APIs

* every API endpoint is different
* offset based pagination
* OpenAPI spec has errors
* incomplete documentation
* secondary rate limits

# trino-cloud

* AWS SDK is designed to avoid reflection
* writes!

# trino-plugin-archetype

* from zero to hero in 2 minutes

# trino-faker

* datafaker forked from java-faker
* column properties vs check constraints

# future

* trino-imap
* trino-graphql
* trino-jira
