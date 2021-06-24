function HUD()
	local client = LocalPlayer()
	
	if !client:Alive() then
		return
	end
	
	draw.RoundedBox(0, 0, ScrH() - height, 250, 100, Color(238, 135, 65, 230))
	draw.SimpleText("Health: "..client:Health(), "DermaDefaultBold", 10, ScrH() - 90 Color (255, 255, 255, 255), 0, 0)
end
hook.Add("HUDPaint", "TestHud", HUD)

function HideHud(name)
	for k, v in pairs(("CHudHealth", "CHudBattery", "CHudAmmo", "CHudSecondaryAmmo")) do
		if name == v then
			return false
		end
	end
end
hook.Add("HUDShouldDraw", "HideDeafultHud", HideHud)