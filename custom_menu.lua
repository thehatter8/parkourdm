local Menu

net.Receive("F4Menu", function()
	if(Menu == nil) then
		Menu = vgui.Create("DFrame")
		Menu:SetSize(500, 500)
		Menu:SetPos(ScrW()/2 - 250, ScrH()/2 - 250)
		Menu:SetTitle("Weapon Menu")
		Menu:SetDraggable(false)
		Menu:ShowCloseButton(false)
		Menu:SetDeleteOnClose(false)
	end
	
	if(net.ReadBit() == 0)then
		Menu:Hide()
		gui.EnableScreenClicker(false)
	else
		Menu:show()
		gui.EnableScreenClicker(true)
	end
end)
