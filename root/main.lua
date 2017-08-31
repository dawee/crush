local path = require('pl.path')

local input_path = os.getenv('CRUSH_MAIN')
local current_dir = os.getenv('CRUSH_PWD')


local full_path = path.abspath(input_path, current_dir)
local dirname, filename = path.splitpath(full_path)
local basename = path.splitext(filename)

package.path = package.path .. ";" .. dirname .. "/?.lua"

require(basename)

-- _G.pcall(_G.require, basename)

-- function split(filename)
-- 	return string.match(filename, '(.-)([^/]-([^/%.]+))$")
-- end
--
-- path,file,extension = split(os.getenv("CRUSH_MAIN"))
--
--
--
-- require(file)
