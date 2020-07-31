# sp_helpme

![license](https://img.shields.io/github/license/mashape/apistatus.svg)

* [Purpose](#Purpose)
* [Usage](#Usage)
* [Contributing](#Contributing)
* [More](#More)

## Purpose

An drop-in modern alternative to sp_help.

Changes from the original include:

* Preferring printed messages over empty result sets for non-applicable data
* Including extended properties wherever possible
* Including create, modify, and more metadata about objects
* Referenced views are returned in two-part naming convention

## Usage

Basic example:

```tsql
EXEC sp_helpme 'dbo.Sales';
```

## Contributing

Missing a feature? Found a bug? Open an [issue][issue] to get some :heart:.

## More

Check out the other scripts in the [Express SQL Suite][express].

[express]: https://expresssql.lowlydba.com/
[issue]: https://github.com/LowlyDBA/ExpressSQL/issues
