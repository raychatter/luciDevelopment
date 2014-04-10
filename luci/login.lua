module("luci.login", package.seeall)
local sauth = require "luci.sauth"
local util = require "luci.util"
local io = require "io"

function readTheSession(id)
	if not id or #id == 0 then
		return nil
	end

	local session = sauth.read(id)
	
	-- io.stdout:write(toString(session) .. "\n")
	-- util.perror(session)
	sauth.myWrite("myData", session)
	return session
end