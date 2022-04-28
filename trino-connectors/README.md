---
title: How I'm learning Trino by writing connectors
author: Jan Waś
...

# trino-git

* https://github.com/nineinchnick/trino-git
* git data model
* jgit

# trino-git

* initial version in a week
* learned timestamp packing
* authors with multiple names and emails

# netezza

* honorable mention - done at Starburst
* uses base-jdbc
* similar to PostgreSQL

# netezza

* learned correct type mapping for both reads and writes

# trino-rest

* forked prestorocks/trino-rest as https://github.com/nineinchnick/trino-rest
* connectors that make HTTP requests: Slack, Twitter, GitHub

# trino-rest-github

* learned functions returning arrays of rows
* learned DI and configuration
* learned predicate pushdown vs dynamic filtering
* tricks like virtual columns

# RESTful APIs are terrible

* every API endpoint is different
* offset based pagination
* OpenAPI spec has errors
* incomplete documentation
* secondary rate limits

```
% wc -l trino-rest-github/src/main/java/pl/net/was/rest/github/Sync.java
    1364 trino-rest-github/src/main/java/pl/net/was/rest/github/Sync.java
```

# trino-cloud

* https://github.com/nineinchnick/trino-cloud
* interact with cloud provider objects, like EC2 instances, S3 buckets

# trino-cloud-aws

* initial commit in two hours
* MVP in two days
* learned that AWS SDK is designed for this:
  * data models map 1:1
  * new tables require a single line
* learned `INSERT`, `UPDATE`, and `DELETE`

# trino-plugin-archetype

* https://github.com/nineinchnick/trino-plugin-archetype/
* 1 year since first connector
* from zero to hero in 2 minutes
* very opinionated (GitHub workflows)

# trino-faker

* https://github.com/nineinchnick/trino-faker/
* datafaker forked from java-faker

# trino-faker

* learned table and column properties vs check constraints
* learned more data type internal representation
* learned more page/block writing

# future

* trino-imap
* trino-graphql
* trino-jira
* trino-cloud - add cloudwatch metrics
