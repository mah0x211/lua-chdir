# lua-chdir

[![test](https://github.com/mah0x211/lua-chdir/actions/workflows/test.yml/badge.svg)](https://github.com/mah0x211/lua-chdir/actions/workflows/test.yml)
[![test](https://github.com/mah0x211/lua-chdir/actions/workflows/test.yml/badge.svg)](https://github.com/mah0x211/lua-chdir/actions/workflows/test.yml)

change current working directory.


## Installation

```
luarocks install chdir
```

## ok, err = chdir( pathname )

change current working directory.

**Parameters**

- `pathname:string`: the pathname of a directory.

**Returns**

- `ok:boolean`: `true` on success.
- `err:string`: error message on failure.
- `eno:integer`: error number.
