AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

local open = false

util.AddNetworkString("F4Menu")
function GM:ShowSpare2(ply)
	if(open == false) then
		open = true
	else
		open = false
	end
	
	net.Start("F4Menu")
		net.WriteBit(open)
	net.Broadcast()
end