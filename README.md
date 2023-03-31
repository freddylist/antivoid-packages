# Antivoid packages

Collection of templates that should not be in the official xbps repositories.

Support mostly for `x86_64` as that is what I use.
I try to package for as many architectures as I can, but there is certainly no guarantee that they work on anything other than `x86_64`.
If a package is broken on another architecture and you have a fix for it, you are welcome to open a pull request.

Also includes
- bad script to help bump template versions.
- bad `xbps-src` wrapper script to build from templates (instead of package name in `srcpkgs` directory).

I recommend using this with [freddylist/xbps-src-framework](https://github.com/freddylist/xbps-src-framework)

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
