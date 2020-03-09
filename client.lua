

local color = {
    r=255,
    g=255,
    b=255,
    a=255
}

Citizen.CreateThread(function()
    while true do
	Citizen.Wait(5)
		local shot = HasPedBeenDamagedByWeapon(GetPlayerPed(-1), 0, 2)
		if shot then
			SetTextFont(2) -- 0-4
			SetTextScale(0.3, 0.3) -- Size of text
			SetTextColour(color.r, color.g, color.b, color.a) -- RGBA
			SetTextEntry("STRING")
			AddTextComponentString("~r~Your Bleeding") -- Main Text string
			DrawText( 0.8005, 0.0501) -- x,y of the screen
			DrawRect(0.8210 --[[ x ]],0.0601--[[ y ]],0.1--[[ width ]],0.03--[[ height ]],24, 36, 46, 245--[[ rgb ]] )
		else 
			SetTextFont(2) -- 0-4
			SetTextScale(0.3, 0.3) -- Size of text
			SetTextColour(color.r, color.g, color.b, color.a) -- RGBA
			SetTextEntry("STRING")
			AddTextComponentString("") -- Main Text string
			DrawText( 0.8005, 0.0501) -- x,y of the screen
		end
	end

end)

Citizen.CreateThread(function()
    while true do
	Citizen.Wait(5)
		local hurt = IsPedInjured(GetPlayerPed(-1))
		if hurt then
			SetTextFont(2) -- 0-4
			SetTextScale(0.3, 0.3) -- Size of text
			SetTextColour(color.r, color.g, color.b, color.a) -- RGBA
			SetTextEntry("STRING")
			AddTextComponentString("~r~Your Hurt") -- Main Text string
			DrawText( 0.8005, 0.0501) -- x,y of the screen
			DrawRect(0.8150 --[[ x ]],0.0601--[[ y ]],0.1--[[ width ]],0.03--[[ height ]],24, 36, 46, 245--[[ rgb ]] )
		else 
			SetTextFont(2) -- 0-4
			SetTextScale(0.3, 0.3) -- Size of text
			SetTextColour(color.r, color.g, color.b, color.a) -- RGBA
			SetTextEntry("STRING")
			AddTextComponentString("") -- Main Text string
			DrawText( 0.8005, 0.0501) -- x,y of the screen
		end
	end

end)


