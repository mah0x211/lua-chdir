# lua-chdir

[![test](https://github.com/mah0x211/lua-chdir/actions/workflows/test.yml/badge.svg)](https://github.com/mah0x211/lua-chdir/actions/workflows/test.yml)
[![codecov](https://codecov.io/gh/mah0x211/lua-chdir/branch/master/graph/badge.svg)](https://codecov.io/gh/mah0x211/lua-chdir)


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
- `err:error`: `error` object from [errno](https://github.com/mah0x211/lua-errno) on failure.
