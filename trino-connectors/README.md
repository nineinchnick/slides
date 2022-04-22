---
title: How I'm learning Trino by writing connectors
author: Jan Waś
...

# trino-git

* https://github.com/nineinchnick/trino-git
* initial version in a week
* git data model
* timestamp packing
* authors with multiple names and emails

# netezza

* honorable mention - done at Starburst
* uses base-jdbc
* correct type mapping for both reads and writes

# trino-github

* forked prestorocks/trino-rest as https://github.com/nineinchnick/trino-rest
* DI and configuration
* functions returning arrays of rows
* predicate pushdown vs dynamic filtering
* virtual columns

# RESTful APIs are terrible

* every API endpoint is different
* offset based pagination
* OpenAPI spec has errors
* incomplete documentation
* secondary rate limits

# trino-cloud

* https://github.com/nineinchnick/trino-cloud
* initial commit in two hours
* MVP in two days
* AWS SDK is designed for this:
  * data models map 1:1
  * new tables require a single line
* writes!

# trino-plugin-archetype

* https://github.com/nineinchnick/trino-plugin-archetype/
* from zero to hero in 2 minutes
* very opinionated (GitHub workflows)

# trino-faker

* https://github.com/nineinchnick/trino-faker/
* datafaker forked from java-faker
* column properties vs check constraints
* more predicate pushdowns
* more page/block writing

# future

* trino-imap
* trino-graphql
* trino-jira
* trino-cloud - add cloudwatch metrics
