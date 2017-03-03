resource.AddSingleFile("resources/bebasneue.ttf")
resource.AddSingleFile("cl_fonts.lua")
----------------------------------------
            --[HUD Colors]--
----------------------------------------
local RetroSettings = {}

RetroSettings.HealthColor                         = Color(255, 0, 0, 220)
RetroSettings.HealthBGColor                       = Color(255, 0,  0, 120)
RetroSettings.HealthText                          = Color(255, 255, 255, 255)
RetroSettings.HealthBarBorderColor                = Color(0, 0, 0, 255)

RetroSettings.ArmorColor                          = Color(0, 0, 200, 220)
RetroSettings.ArmorBGColor                        = Color(0, 0, 200, 120)
RetroSettings.ArmorText                           = Color(255, 255, 255, 255)
RetroSettings.ArmorBarBorderColor                 = Color(0, 0, 0, 255)

RetroSettings.HUDBackgroundColor                  = Color(245, 245, 245, 0)
RetroSettings.HUDBorderColor                      = Color(0, 0, 0, 0)
RetroSettings.ProfPicBorderColor                  = Color(0, 0, 0, 255)

RetroSettings.NameText                            = Color(245, 245, 245, 255)

RetroSettings.JobText                             = Color(245, 245, 245, 255)

RetroSettings.SalaryText                          = Color(245, 245, 245, 255)
RetroSettings.SalaryColor                         = Color(50,205,50, 255)

RetroSettings.WalletText                          = Color(245, 245, 245, 255)
RetroSettings.WalletColor                         = Color(50,205,50, 255)

RetroSettings.RankText                            = Color(245, 245, 245, 255)

RetroSettings.ReloadText                          = Color(170, 0, 0, 255)
RetroSettings.AmmoText                            = Color(245, 245, 245, 245)

----------------------------------------
--[ULX RANK COLORS]-- (Add ULX rank colors below; EXAMPLE: RetroSettings.MemberColor = Color(r,g,b,a))
--[Line 176 & 269 for ULX Rank Setup]--
----------------------------------------
RetroSettings.UserColor                           = Color(255, 255, 255, 255)
RetroSettings.VIPColor                            = Color(255, 99, 71, 255)
RetroSettings.ModColor                            = Color(30, 144, 255, 255)
RetroSettings.AdminColor                          = Color(32, 178, 170, 255)
RetroSettings.SAdminColor                         = Color(138, 43, 226, 255)
RetroSettings.HeadAdminColor                      = Color(255, 0, 255, 255)
RetroSettings.OwnerColor                          = Color(220, 20, 60, 255)
RetroSettings.DevColor                            = Color(238, 130, 238, 255)

----------------------------------------
            --[HUD BASE]--
----------------------------------------


    function hudbase()
    
  ----------------------------------------
            --[HUD Health]--
  ----------------------------------------
    surface.SetDrawColor(RetroSettings.HealthBGColor)
    surface.DrawRect( ScrW() - 1905 - 2, ScrH () - 62, 375 - 12, 20 )

        local DrawHealth = LocalPlayer():Health() or 0
        local EchoHealth = LocalPlayer():Health() or 0

        if DrawHealth > 100 then DrawHealth = 100 end
        if DrawHealth < 0 then DrawHealth = 0 end
        if DrawHealth != 0 then
            surface.SetDrawColor(RetroSettings.HealthColor)
            surface.DrawRect( ScrW() - 1905 - 2, ScrH () - 62, (375 - 12) * DrawHealth / 100, 20 )
    end

 ----------------------------------------
            --[HUD Armor]--
  ----------------------------------------    
    surface.SetDrawColor(RetroSettings.ArmorBGColor)
    surface.DrawRect(ScrW() - 1905 - 2, ScrH () - 37, 375 - 12, 20)

        local DrawPlayerArmor = LocalPlayer():Armor() or 0
        local EchoPlayerArmor = LocalPlayer():Armor() or 0

        if DrawPlayerArmor > 100 then DrawPlayerArmor = 100 return end
        if DrawPlayerArmor < 0 then DrawPlayerArmor = 0 end

        if DrawPlayerArmor != 0 then
        surface.SetDrawColor(RetroSettings.ArmorColor)
        surface.DrawRect( ScrW() - 1905 - 2, ScrH () - 37, (375 - 12) * DrawPlayerArmor / 100, 20)
    end


--------------------------------------
                --TEXT
--------------------------------------

    surface.SetFont( "retrohud" )
    surface.SetTextPos( ScrW() - 1895 - 5, ScrH () - 60 - 2 )
    surface.SetTextColor(RetroSettings.HealthText)
    surface.DrawText("HEALTH")

    surface.SetFont( "retrohud" )
    surface.SetTextPos( ScrW() - 1895 - 5, ScrH () - 36 - 2 )
    surface.SetTextColor(RetroSettings.ArmorText)
    surface.DrawText("ARMOR")


if EchoHealth > 99 then
        surface.SetFont( "retrohud" )
        surface.SetTextPos( ScrW() - 1579 - 5, ScrH () - 60 - 2 )
        surface.SetTextColor(RetroSettings.HealthText)
        surface.DrawText(EchoHealth.."%")
    elseif EchoHealth >= 10 then
        surface.SetFont( "retrohud" )
        surface.SetTextPos( ScrW() - 1571 - 5, ScrH () - 60 - 2 )
        surface.SetTextColor(RetroSettings.HealthText)
        surface.DrawText(EchoHealth.."%")
    elseif EchoHealth < 10 then
        surface.SetFont( "retrohud" )
        surface.SetTextPos( ScrW() - 1563 - 5, ScrH () - 60 - 2 )
        surface.SetTextColor(RetroSettings.HealthText)
        surface.DrawText(EchoHealth.."%")
    end


if EchoPlayerArmor > 99 then
        surface.SetFont( "retrohud" )
        surface.SetTextPos( ScrW() - 1579 - 5, ScrH () - 36 - 2 )
        surface.SetTextColor(RetroSettings.ArmorText)
        surface.DrawText(EchoPlayerArmor.."%")
    elseif EchoPlayerArmor >= 10 then
        surface.SetFont( "retrohud" )
        surface.SetTextPos( ScrW() - 1571 - 5, ScrH () - 36 - 2 )
        surface.SetTextColor(RetroSettings.ArmorText)
        surface.DrawText(EchoPlayerArmor.."%")
    elseif EchoPlayerArmor < 10 then
        surface.SetFont( "retrohud" )
        surface.SetTextPos( ScrW() - 1563 - 5, ScrH () - 36 - 2 )
        surface.SetTextColor(RetroSettings.ArmorText)
        surface.DrawText(EchoPlayerArmor.."%")
    end

        surface.SetFont( "retrohud" )
        surface.SetTextPos( ScrW() - 1779 - 5, ScrH () - 179 - 2 )
        surface.SetTextColor(RetroSettings.NameText)
        surface.DrawText("Name:")

        surface.SetFont( "retrohud" )
        surface.SetTextPos( ScrW() - 1729 - 5, ScrH () - 179 - 2 )

--------------------------------------------------------
--[ADD ULX GROUPS HERE FOR IT TO CHANGE NAME COLOR WHILE ULX RANK CHANGES]--
--------------------------------------------------------

        if LocalPlayer():IsUserGroup("user") then
            surface.SetTextColor(RetroSettings.UserColor)

        elseif LocalPlayer():IsUserGroup("vip") then
            surface.SetTextColor(RetroSettings.VIPColor)

        elseif LocalPlayer():IsUserGroup("moderator") then
            surface.SetTextColor(RetroSettings.ModColor)

        elseif LocalPlayer():IsUserGroup("admin") then
            surface.SetTextColor(RetroSettings.AdminColor)

        elseif LocalPlayer():IsUserGroup("superadmin") then
            surface.SetTextColor(RetroSettings.SAdminColor)

        elseif LocalPlayer():IsUserGroup("sadmin") then
            surface.SetTextColor(RetroSettings.SAdminColor)

        elseif LocalPlayer():IsUserGroup("headadmin") then
            surface.SetTextColor(RetroSettings.HeadAdminColor)

        elseif LocalPlayer():IsUserGroup("owner") then
            surface.SetTextColor(RetroSettings.OwnerColor)
-- Copy this
        elseif LocalPlayer():IsUserGroup("developer") then --- The ulx group. THIS IS CASE SENSITIVE. CHANGE TO HOW IT IS EXACTLY IN GAME 
            surface.SetTextColor(RetroSettings.DevColor) --- Add your custom color here. RetroSettings.YourUserGroupColor
----------------------------[Add below this line]----------------------------









        end
        surface.DrawText( (LocalPlayer():getDarkRPVar("rpname")) )
------------------------------------------------------------------------

        surface.SetFont( "retrohud" )
        surface.SetTextPos( ScrW() - 1765 - 5, ScrH () - 158 - 2 )
        surface.SetTextColor(RetroSettings.JobText)
        surface.DrawText("Job:")

        
        surface.SetFont( "retrohud" )
        surface.SetTextPos( ScrW() - 1729 - 5, ScrH () - 158 - 2 )
        surface.SetTextColor(team.GetColor(LocalPlayer():Team()))
        surface.DrawText( LocalPlayer():getDarkRPVar("job"))

        surface.SetFont( "retrohud" )
        surface.SetTextPos( ScrW() - 1790 - 5, ScrH () - 137 - 2 )
        surface.SetTextColor(RetroSettings.SalaryText)
        surface.DrawText("Salary:")

        surface.SetFont( "retrohud" )
        surface.SetTextPos( ScrW() - 1729 - 5, ScrH () - 137 - 2 )
        surface.SetTextColor(RetroSettings.SalaryColor)
        surface.DrawText( "$"..LocalPlayer():getDarkRPVar("salary"))

        surface.SetFont( "retrohud" )
        surface.SetTextPos( ScrW() - 1791 - 5, ScrH () - 116 - 2 )
        surface.SetTextColor(RetroSettings.WalletText)
        surface.DrawText("Wallet:")

        surface.SetFont( "retrohud" )
        surface.SetTextPos( ScrW() - 1729 - 5, ScrH () - 116 - 2 )
        surface.SetTextColor(RetroSettings.WalletColor)
        surface.DrawText( "$"..LocalPlayer():getDarkRPVar("money"))

------------------------------------------
            --[ADD ULX GROUPS BELOW]--
--------------------------------------------

            surface.SetFont( "retrohud" )
            surface.SetTextPos( ScrW() - 1777 - 5, ScrH () - 95 - 2 )
            surface.SetTextColor(RetroSettings.RankText)
            surface.DrawText("Rank:")

            surface.SetFont( "retrohud" )
            surface.SetTextPos( ScrW() - 1729 - 5, ScrH () - 95 - 2 )
            surface.SetTextColor(RetroSettings.RankColor)

        if LocalPlayer():IsUserGroup("user") then
            surface.SetTextColor(RetroSettings.UserColor)
            surface.DrawText("User")

        elseif LocalPlayer():IsUserGroup("vip") then
            surface.SetTextColor(RetroSettings.VIPColor)
            surface.DrawText("VIP")

        elseif LocalPlayer():IsUserGroup("moderator") then
            surface.SetTextColor(RetroSettings.ModColor)
            surface.DrawText("Moderator")

        elseif LocalPlayer():IsUserGroup("admin") then
            surface.SetTextColor(RetroSettings.AdminColor)
            surface.DrawText("Admin")

        elseif LocalPlayer():IsUserGroup("superadmin") then
            surface.SetTextColor(RetroSettings.SAdminColor)
            surface.DrawText("Super Admin")

        elseif LocalPlayer():IsUserGroup("sadmin") then
            surface.SetTextColor(RetroSettings.SAdminColor)
            surface.DrawText("Super Admin")

        elseif LocalPlayer():IsUserGroup("headadmin") then
            surface.SetTextColor(RetroSettings.HeadAdminColor)
            surface.DrawText("Head Admin")

        elseif LocalPlayer():IsUserGroup("owner") then
            surface.SetTextColor(RetroSettings.OwnerColor)
            surface.DrawText("Owner")

-- Copy and past this below to add custom groups
        elseif LocalPlayer():IsUserGroup("developer") then --- The ulx group. "developer" is my ulx group. Important: THIS IS CASE SENSITIVE SO SPELL IT THE SAME EXACT WAY YOUR ULX GROUPS ARE SPELT IN GAME!
            surface.SetTextColor(RetroSettings.DevColor) --- Put custom colors here such as RetroSettings.YourUserGroupColor
            surface.DrawText("Developer") --- The text shown on the screen. "Developer" would be shown in this case if I'm user group developer
            
-------------------------[ULX GROUPS BELOW THIS LINE (FIND EXAMPLE ABOVE)]--------------------------
            
        







        end
end

hook.Add("HUDPaint" , "DrawHudBase" , hudbase)

------------------------------------------------
                -----HUD AMMO------ 
------------------------------------------------
function hudammo() 


        if !LocalPlayer():Alive() then return end
        if(LocalPlayer():GetActiveWeapon() == NULL or LocalPlayer():GetActiveWeapon() == "Camera") then return end

        if (LocalPlayer():GetActiveWeapon():Clip1() > -1 or LocalPlayer():GetActiveWeapon():Clip2() > -1) then


        if LocalPlayer():GetActiveWeapon():GetClass() == "weapon_physcannon"then return end


        if LocalPlayer():GetActiveWeapon():Clip1() > 99 then
        surface.SetFont( "retroammo" )
        surface.SetTextPos( ScrW() - 213 - 5, ScrH () - 70 - 2 )
        surface.SetTextColor(RetroSettings.AmmoText)
        surface.DrawText(LocalPlayer():GetActiveWeapon():Clip1())

    elseif LocalPlayer():GetActiveWeapon():Clip1() >= 10 then
        surface.SetFont( "retroammo" )
        surface.SetTextPos( ScrW() - 190 - 5, ScrH () - 70 - 2 )
        surface.SetTextColor(RetroSettings.AmmoText)
        surface.DrawText(LocalPlayer():GetActiveWeapon():Clip1())

    elseif LocalPlayer():GetActiveWeapon():Clip1() < 10 then
        surface.SetFont( "retroammo" )
        surface.SetTextPos( ScrW() - 167 - 5, ScrH () - 70 - 2 )
        surface.SetTextColor(RetroSettings.AmmoText)
        surface.DrawText(LocalPlayer():GetActiveWeapon():Clip1())
end

        surface.SetFont( "retroammo" )
        surface.SetTextPos( ScrW() - 120 - 5, ScrH () - 70 - 2 )
        surface.SetTextColor(RetroSettings.AmmoText)

        if LocalPlayer():GetActiveWeapon():IsValid() then
        surface.DrawText(LocalPlayer():GetAmmoCount(LocalPlayer():GetActiveWeapon():GetPrimaryAmmoType()))
    end
        surface.SetFont( "retroammo" )
        surface.SetTextPos( ScrW() - 141 - 5, ScrH () - 70 - 2 )
        surface.SetTextColor(RetroSettings.AmmoText)
        if LocalPlayer():GetActiveWeapon():IsValid() then
        surface.DrawText("/")
    end    
        if LocalPlayer():GetActiveWeapon():Clip1() < 3 then
        surface.SetFont( "retroammo" )
        surface.SetTextPos( ScrW() - 1130 - 5, ScrH () - 1078 - 2 )
        surface.SetTextColor(RetroSettings.ReloadText)
        if LocalPlayer():GetActiveWeapon():IsValid() then
        surface.DrawText("Press 'R' to reload!")
        end
        end
    end
end
hook.Add("HUDPaint" , "DrawHudAmmo" , hudammo)




---------------------------------------
--Base Border & Thickness(Find work around)--
---------------------------------------
function draw.OutlinedBox( x, y, w, h, thickness, clr)
    surface.SetDrawColor( clr )
    for i=0, thickness - 1 do
		surface.DrawOutlinedRect( x + i, y + i, w - i * 2, h - i * 2 )
    end
end

hook.Add( "HUDPaint", "DrawHudBorder", function()
	
    draw.OutlinedBox(  13 - 8, 903 - 8, 379, 179, 2, RetroSettings.HUDBorderColor )
    draw.OutlinedBox( 21 - 8, 910 - 8, 104, 104, 2, RetroSettings.ProfPicBorderColor )

    draw.OutlinedBox( 21 - 8, 1026 - 8, 376 - 12, 22, 2, RetroSettings.HealthBarBorderColor )
    draw.OutlinedBox( 21 - 8, 1050 - 8, 376 - 12, 22, 2, RetroSettings.ArmorBarBorderColor )

end )





----------------------------------------
            --[DrawHUD]--
----------------------------------------

function DrawHUD()
        localplayer = localplayer and IsValid(localplayer) and localplayer or LocalPlayer()
        if not IsValid(localplayer) then return end
       
        ValidCheck()
       
end
hook.Add("HUDPaint", "DrawHUD", DrawHUD)




----------------------------------------
     --[Removes Default HL2 HUD]--
----------------------------------------
function hidenorm(name)
    for k, v in pairs{"CHudHealth", "CHudBattery", "CHudAmmo", "CHudSecondaryAmmo"} do
        if name == v then return false end
    end
return true
end
hook.Add("HUDShouldDraw", "hidedefhud", hidenorm)




---------------------------------------------
            --[[Steam Prof Pic.]]--
---------------------------------------------
local SteamAvatar
    function ValidCheck()

        if !LocalPlayer():IsValid() then return end
        if !SteamAvatar then

      SteamAvatar = vgui.Create( "AvatarImage", Panel )
      SteamAvatar:SetSize( 100, 100 )
      SteamAvatar:SetPos( 15, 904 )
      SteamAvatar:SetPlayer( LocalPlayer(), 100 )

      end
end