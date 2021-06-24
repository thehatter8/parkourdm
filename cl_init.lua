include("shared.lua")
include("testhud.lua")
include("cl_effects.lua")
include("cl_tabmenu.lua")
include("player_shd.lua")


function GM:ContextMenuOpen()
	return false
end

local allowed = {
	["STEAM_0:0:00000000"] = true,
	["STEAM_0:0:10000000"] = true
}

hook.Add( "SpawnMenuOpen", "SpawnMenuWhitelist", function()
	if ( !allowed[ LocalPlayer():SteamID() ] ) then
		return false
	end
end )

hook.Add( "SpawnMenuOpen", "SpawnMenuHide", function()
	g_SpawnMenu.CustomizableSpawnlistNode:SetExpanded( false )
	g_SpawnMenu.CustomizableSpawnlistNode:SetEnabled( false )
	g_SpawnMenu.CustomizableSpawnlistNode.SMContentPanel:SwitchPanel()
end )