# sp_doc

![License](https://img.shields.io/github/license/LowlyDBA/dba-multitool?color=blue)
![SQL Server](https://img.shields.io/badge/SQL%20Server-2012--2019-blue?logo=microsoft-sql-server)
![Azure SQL](https://img.shields.io/badge/Azure%20SQL-vCurrent-blue?logo=data:image/svg+xml;base64,PHN2ZyBkYXRhLXNsdWctaWQ9InNxbC1kYXRhYmFzZS1ibHVlIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA0OSA0OSI+DQogIDxwYXRoIGQ9Im02LjQwNDIxIDcuNDA0NDJ2MzQuMTk1NzhjMCAzLjUyNDMgNy44ODk2OSA2LjQ3NzIgMTcuNjgwMzkgNi40Nzcydi00MC42NzI5OHoiIGZpbGw9IiM4MDgwODAiLz4NCiAgPHBhdGggZD0ibTIzLjg5NDYgNDguMDc3NGguMjg1MmM5Ljc5MDcgMCAxNy42ODA0LTIuODU3NiAxNy42ODA0LTYuNDc3MnYtMzQuMTk1NzhoLTE3Ljk2NTZ6IiBmaWxsPSIjODA4MDgwIi8+DQogIDxwYXRoIGQ9Im0yMy43MDQzIDQ4LjA3NzloLjI4NTJjOS44ODU4IDAgMTcuOTY1Ni0yLjg1NzYgMTcuOTY1Ni02LjQ3NzJ2LTM0LjI5MTAxaC0xOC4xNTU3eiIgZmlsbD0iIzgwODA4MCIvPg0KICA8cGF0aCBkPSJtNDEuODU4NCA3LjQwNTUzYzAgMy41MjQzNy03Ljg4OTcgNi40NzcxNy0xNy42ODA1IDYuNDc3MTctOS43OTA3IDAtMTcuNjgwMzktMi44NTc2LTE3LjY4MDM5LTYuNDc3MTcgMC0zLjYxOTYgNy44ODk2OS02LjQ3NzE4NSAxNy42ODAzOS02LjQ3NzE4NSA5Ljc5MDggMCAxNy42ODA1IDIuOTUyODM1IDE3LjY4MDUgNi40NzcxODV6IiBmaWxsPSIjZmZmIi8+PHBhdGggZD0ibTM4LjI0ODEgNy4wMjM4YzAgMi4zODEzMi02LjI3MzcgNC4yODY0LTE0LjA2ODMgNC4yODY0cy0xNC4wNjgzLTEuOTA1MDgtMTQuMDY4My00LjI4NjQgNi4yNzM3LTQuMjg2MzcgMTQuMDY4My00LjI4NjM3IDE0LjA2ODMgMS45MDUwNSAxNC4wNjgzIDQuMjg2Mzd6IiBmaWxsPSIjODA4MDgwIi8+DQogIDxwYXRoIGQ9Im0zNS4zMDEzIDkuNTk1NjNjMS44MDYxLS43NjIwMiAyLjk0NjgtMS42MTkzIDIuOTQ2OC0yLjU3MTgzIDAtMi4zODEzMi02LjI3MzctNC4yODYzNy0xNC4wNjgzLTQuMjg2MzdzLTE0LjA2ODMgMS45MDUwNS0xNC4wNjgzIDQuMjg2MzdjMCAuOTUyNTMgMS4xNDA3IDEuOTA1MDYgMi45NDY3IDIuNTcxODMgMi41NjY1LTEuMDQ3NzggNi42NTQtMS42MTkzIDExLjEyMTYtMS42MTkzczguNTU1LjY2Njc3IDExLjEyMTUgMS42MTkzeiIgZmlsbD0iIzgwODA4MCIvPg0KICA8ZyBmaWxsPSIjZmZmIj4NCiAgICA8cGF0aCBkPSJtMTguNDc1MiAzMS4xMjJjMCAxLjA0NzgtLjM4MDMgMS45MDUxLTEuMTQwNyAyLjQ3NjYtLjc2MDUuNTcxNS0xLjgwNjEuODU3My0zLjIzMTkuODU3My0xLjE0MDcgMC0yLjA5MTMtLjE5MDUtMi44NTE3LS42NjY4di0yLjQ3NjZjLjg1NTUuNzYyMSAxLjkwMTEgMS4xNDMxIDIuOTQ2NyAxLjE0MzEuNDc1MyAwIC45NTA2LS4wOTUzIDEuMjM1OC0uMjg1OC4yODUxLS4xOTA1LjM4MDItLjQ3NjIuMzgwMi0uODU3MyAwLS4zODEtLjA5NTEtLjY2NjctLjM4MDItLjg1NzItLjI4NTItLjI4NTgtLjg1NTUtLjU3MTUtMS43MTEtLjk1MjYtMS43MTExLS43NjItMi41NjY2LTEuOTA1LTIuNTY2Ni0zLjIzODYgMC0xLjA0NzcuMzgwMy0xLjgwOTggMS4xNDA3LTIuMzgxMy43NjA1LS41NzE1IDEuNzExLS45NTI1IDIuOTQ2Ny0uOTUyNSAxLjA0NTcgMCAxLjk5NjIuMTkwNSAyLjc1NjcuNDc2M3YyLjM4MTNjLS43NjA1LS40NzYzLTEuNjE2LS43NjItMi41NjY1LS43NjItLjQ3NTMgMC0uODU1NS4wOTUyLTEuMTQwNy4yODU3cy0uMzgwMi40NzYzLS4zODAyLjg1NzMuMDk1LjY2NjguMzgwMi44NTczYy4xOTAxLjE5MDUuNjY1NC40NzYyIDEuNDI1OC44NTcyIDEuMDQ1Ni40NzYzIDEuODA2MS45NTI2IDIuMjgxNCAxLjUyNDEuMjg1MS4zODEuNDc1My45NTI1LjQ3NTMgMS43MTQ1eiIvPjxwYXRoIGQ9Im0yNy44ODY4IDI4Ljc0MTJjMC0xLjE0My0uMjg1Mi0yLjAwMDMtLjc2MDQtMi42NjcxLS40NzUzLS42NjY3LTEuMTQwNy0uOTUyNS0xLjk5NjItLjk1MjVzLTEuNjE2LjI4NTgtMi4wOTEzLjk1MjVjLS41NzAzLjY2NjgtLjc2MDQgMS41MjQxLS43NjA0IDIuNjY3MSAwIDEuMDQ3OC4yODUyIDIuMDAwMy43NjA0IDIuNjY3MS40NzUzLjY2NjggMS4yMzU4Ljk1MjUgMi4wOTEzLjk1MjVzMS41MjA5LS4yODU3IDIuMDkxMi0uOTUyNWMuMzgwMi0uNjY2OC42NjU0LTEuNTI0MS42NjU0LTIuNjY3MXptMi42NjE2LS4wOTUyYzAgMS4zMzM1LS4yODUyIDIuNDc2NS0uODU1NSAzLjQyOTEtLjU3MDQuOTUyNS0xLjQyNTkgMS42MTkzLTIuNTY2NSAyLjAwMDNsMy4yMzE5IDMuMDQ4MWgtMy4yMzE5bC0yLjI4MTQtMi41NzE5Yy0uOTUwNiAwLTEuOTAxMS0uMjg1Ny0yLjY2MTYtLjc2Mi0uNzYwNC0uNDc2My0xLjQyNTgtMS4xNDMtMS44MDYtMi4wMDAzLS40NzUzLS44NTczLS42NjU0LTEuODA5OC0uNjY1NC0yLjg1NzYgMC0xLjE0My4xOTAxLTIuMTkwOC42NjU0LTMuMTQzMy40NzUzLS45NTI2IDEuMTQwNi0xLjYxOTMgMS45OTYyLTIuMDk1Ni44NTU1LS40NzYzIDEuODA2LS43NjIgMi45NDY3LS43NjIgMS4wNDU2IDAgMS45OTYyLjE5MDUgMi43NTY2LjY2NjguODU1NS40NzYyIDEuNDI1OSAxLjE0MyAxLjkwMTEgMi4wMDAzLjM4MDMuOTUyNS41NzA0IDEuOTA1LjU3MDQgMy4wNDgxeiIvPjxwYXRoIGQ9Im0zOS4xMDM2IDM0LjI2NTNoLTYuNzQ5di0xMS4xNDQ2aDIuNTY2NnY5LjE0NDNoNC4xODI0eiIvPg0KICA8L2c+DQo8L3N2Zz4NCg==)
[![Build status](https://ci.appveyor.com/api/projects/status/bak6km5grc3j63s8?svg=true)](https://ci.appveyor.com/project/LowlyDBA/dba-multitool)
![GitHub Workflow Status (branch)](https://img.shields.io/github/workflow/status/LowlyDBA/dba-multitool/Lint%20Code%20Base/master?label=lint%20code%20master)
[![codecov](https://codecov.io/gh/LowlyDBA/dba-multitool/branch/master/graph/badge.svg)](https://codecov.io/gh/LowlyDBA/dba-multitool)

* [Purpose](#purpose)
* [Arguments](#arguments)
* [Usage](#usage)
* [Sample](#sample)
* [Contributing](#contributing)
* [More](#more)

## Purpose

You wouldn't code without comments, so why database without them?

Databases can be complex, disastrous things. Not every database admin,
developer, or analyst has the time to learn the ins and outs of a database
in order to *just do their work*. To make things worse, few products and
fewer *free* options exist to help present databases in a human readable format.

`sp_doc`'s goal is to generate on the fly database documentation in
markdown. This means you now have a free and extensible
self-documenting database! By building the tool in T-SQL, the documenting
process can remain simple, secure, require no additional infrastructure, and avoid
red tape that third party applications often require.

It documents:

* Tables
  * Triggers
  * Default Constraints
  * Check Constraints
* Views
* Stored Procedures
* Synonyms
* Scalar Functions
* Inline Table Functions
* User Defined Table Types

and plays nice with:

* Github Flavored Markdown
* Gitlab Flavored Markdown
* Any other CommonMark based renderer

## Arguments

| Parameter | Type | Output | Description |
| --- | --- | --- | --- |
| @DatabaseName | SYSNAME(128) | no | Target database to document. Default is the stored procedure's database. |
| @ExtendedPropertyName | SYSNAME(128) | no | Key for extended properties on objects. Default is 'Description'. |
| @LimitStoredProcLength | BIT | no | Limit stored procedure contents to 8000 characters, to avoid memory issues with some IDEs. Default is 1. |
| @Emojis | BIT | no | Use emojis when generating documentation. Default is 0. |
| @Verbose | BIT | no | Whether or not to print additional information during the script run. Default is 0. |
| @SqlMajorVersion | TINYINT | no | Used for unit testing purposes only. |
| @SqlMinorVersion | SMALLINT | no | Used for unit testing purposes only. |

## Usage

### Basic Use

```tsql
EXEC dbo.sp_doc @DatabaseName = 'WideWorldImporters'
```

```tsql
EXEC dbo.sp_doc @DatabaseName = 'WideWorldImporters', @ExtendedPropertyName = 'MS_Description';
```

To generate the markdown file more quickly:

```batchfile
sqlcmd -S localhost -d master -Q "exec sp_doc @DatabaseName = 'WideWorldImporters';" -o readme.md -y 0
```

### Advanced Use

Add extended properties to programmable objects, using parameter names as keys,
to include their descriptions in the documentation:

```tsql
EXEC sys.sp_addextendedproperty @name=N'@ExtendedPropertyName',
    @value=N'Key for extended properties on objects. Default is ''Description''.' ,
    @level0type=N'SCHEMA',@level0name=N'dbo',
    @level1type=N'PROCEDURE',
    @level1name=N'sp_doc'
```

## Sample

Output for the [WideWorldImporters database][sample].

*Note: Slight changes may be made to this database to better demo script capabilities.*

## Contributing

Missing a feature? Found a bug? Open an [issue][issue] to get some :heart:

## More

Check out the other scripts in the [DBA MultiTool][tool].

[tool]: http://dba-multitool.org
[issue]: https://github.com/LowlyDBA/dba-multitool/issues
[sample]: https://github.com/LowlyDBA/dba-multitool/blob/master/docs/WideWorldImporters.md
