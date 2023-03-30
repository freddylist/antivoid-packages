# Antivoid packages

Collection of templates that should not be in the official xbps repositories.

Also includes
- bad script to help bump template versions.
- bad `xbps-src` wrapper script to build from templates (instead of package name in `srcpkgs` directory).

## Requirements

- `xtools`

## Usage

### xupdate

```
xupdate [-H <hostdir>] [-f] <template>
```

- `-H <hostdir>` hostdir to pass to `xgensum`
- `-f` force generating checksum
- `<template>` path to template

`xupdate` will automatically copy template to and from `$XBPS_DISTDIR` if not already there, bumping the version of the template and generating the checksum for new distfiles.

Probably harmful. Don't use unless you understand why.

### xwrapper

```
xwrapper [xbps-src options] [xbps-src target] [name or path to package or template]
```

`xwrapper` will copy the package (or the directory of template file) if given to `${XBPS_DISTDIR}/srcpkgs`, then invoke `xbps-src` with whatever options you gave.
