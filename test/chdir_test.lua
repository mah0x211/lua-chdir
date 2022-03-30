local assert = require('assert')
local chdir = require('chdir')
local getcwd = require('getcwd')
local errno = require('errno')

local function test_chdir()
    local cwd = assert(getcwd())

    -- test that change current working directory
    assert(chdir('test/'))
    assert.equal(getcwd(), cwd .. '/test')

    -- test that return an error
    local ok, err, eno = chdir('foo/bar/baz')
    assert.is_false(ok)
    assert.equal(err, errno.ENOENT.message)
    assert.equal(eno, errno.ENOENT.errno)

    -- test that throws an error
    err = assert.throws(chdir, {})
    assert.match(err, '#1 .+ [(]string expected,', false)
end

test_chdir()
