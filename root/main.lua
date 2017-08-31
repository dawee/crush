local path = require('pl.path')

local input_path = os.getenv('CRUSH_MAIN')
local current_dir = os.getenv('CRUSH_PWD')


local full_path = path.abspath(input_path, current_dir)
local dirname, filename = path.splitpath(full_path)
local basename = path.splitext(filename)

package.path = package.path .. ';' .. dirname .. '/?.lua'

local status, error = pcall(_G.require, basename)

if not status then
	print('Uncaught error occured')
	if error then
		if error.code then
			print('  code : ' .. error.code)
		end

		if error.message then
			print('  message : "' .. error.message .. '"')
		end
	end
end
