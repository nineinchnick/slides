---
title: Trino - SQL on Everything!
author: Jan Waś
...

# What is Trino

Trino is:
* an ansii sql query engine,
a set of plugins, where some recognize common bigdata file layouts and common file formats

Trino is not:
* an RDBMS

# What is an SQL engine

SQL engine vs database, OLTP vs OLAP

# Separate compute and storage

Separation of compute and storage; examples (innodb, myisam, FDW)

# Hive, Iceberg, Delta Lake

Plugins for reading (a lot) of (plain) files from network FS; schemas are kept in metastore

Hive, Iceberg and Delta Lake are:
* table formats
* set of conventions how files are stored and managed

# Scaling up

Massive Parallel Processing - throw $ at it

# SQL on everything

# ANSII SQL

There is not a single DB that implements 100% of ANSII SQL.

But Trino is very close.

Most of SQL 2016, coming up: PTF, MERGE

# ETL, federation

INSERT, UPDATE, DELETE.

MERGE coming up.

# Impedance mismatch

Translating declarative SQL to limited APIs; data types (precision), projection, predicate, aggregate, join pushdowns (examples, S3 select, parquet, rdmbs)

# SPI

Minimum set:
* A `Plugin` with a `getConnectorFactory()`
* RecordSetProvider

# OSS

Trino as an OSS project backed-up by a commercial company

# Project values

# Starburst Data

How (Trino founders at) Starburst Data cares about Trino - support, contribute, be neutral

# Contributing

Why working on an OSS project is worth it - pros and cons
