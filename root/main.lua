function split(filename)
	return string.match(filename, "(.-)([^/]-([^/%.]+))$")
end

path,file,extension = split(os.getenv("CRUSH_MAIN"))

package.path = package.path .. path

require(file)
