GM.Name = "Parkour DM"
GM.Author = "SaintPavlov"
GM.Email = "N/A"
GM.Website = "N/A"

DeriveGamemode( "sandbox" )

include("custom_menu.lua")

function GM:PlayerSpawn(ply)
	ply:SetGravity(.80)
	ply:SetMaxHealth(100)
	ply:SetRunSpeed(500)
	ply:SetupHands()
end


function GM:PlayerDeath(victim, inflictor, attacker)
	
end