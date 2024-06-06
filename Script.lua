local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "KillMine script", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroText = "KillMine", IntroIcon = "rbxassetid://17717678216"})

local Misc = Window:MakeTab({
    Name = "Home",
    Icon = "rbxassetid://14273889332",
    PremiumOnly = false
})

local Section = Misc:AddSection({
Name = "Функционал"
})

Misc:AddSlider({
    Name = "Скорость",
    Min = 16,
    Max = 50000,
    Default = 16,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Speed",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end    
})

Misc:AddSlider({
    Name = "Высота прыжка",
    Min = 40,
    Max = 50000,
    Default = 5,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Height",
    Callback = function(Value)
     game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end    
})

local Tab = Window:MakeTab({
    Name = "Полезные скрипты",
    Icon = "rbxassetid://14273889332",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "Fly",
    Callback = function()
              loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
      end
})

Tab:AddButton({
    Name = "Touch Fling",
    Callback = function()
              loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./main/Fling%20GUI"))()
      end
})

Tab:AddButton({
    Name = "Infinity Yield",
    Callback = function()
              loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
      end
})

Tab:AddButton({
    Name = "Nameless Admin",
    Callback = function()
              loadstring(game:HttpGet('https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source'))()
      end
})

Tab:AddButton({
    Name = "telekinesis",
    Callback = function()
              loadstring(game:HttpGet("https://pastebin.com/raw/KduE9A6z"))()
      end
})

Tab:AddButton({
    Name = "Emotes",
    Callback = function()
              loadstring(game:HttpGet("https://scriptblox.com/raw/Brookhaven-RP-all-emotes-6849"))()
      end
})

local Chaos = Window:MakeTab({
    Name = "Читы на chaos",
    Icon = "rbxassetid://14273889332",
    PremiumOnly = false
})

Chaos:AddButton({
    Name = "Kill GUI, Kill Aura",
    Callback = function()
              loadstring(game:HttpGet(('https://raw.githubusercontent.com/Dan41/Scripts/main/CHAOS%20-%20KILL%20GUI%20V3'),true))()
      end
})

Chaos:AddButton({
    Name = "Gui",
    Callback = function()
              loadstring(game:HttpGet("https://raw.githubusercontent.com/Juanko-Scripts/Roblox-scripts/main/Chaos%20Destrozer%20Hub"))()
      end
})

Chaos:AddButton({
    Name = "Katana",
    Callback = function()
              loadstring(game:HttpGet("https://scriptblox.com/raw/Cacophony-Small-Update-Sussy-Hub-12623"))()
      end
})

local Lpi = Window:MakeTab({
    Name = "Читы на Lpi alpha",
    Icon = "rbxassetid://14273889332",
    PremiumOnly = false
})

Lpi:AddButton({
    Name = "Kill Player, Kick, Bald",
    Callback = function()
              loadstring(game:HttpGet("https://raw.githubusercontent.com/MariyaFurmanova/Library/main/LPIAlpha", true))()
      end
})

local Mm2 = Window:MakeTab({
    Name = "Читы на Mm2",
    Icon = "rbxassetid://14273889332",
    PremiumOnly = false
})

Mm2:AddButton({
    Name = "Esp",
    Callback = function()
              loadstring(game:HttpGet("https://raw.githubusercontent.com/Ihaveash0rtnamefordiscord/Releases/main/MurderMystery2HighlightESP"))(' Watermelon ?')
      end
})

Mm2:AddButton({
    Name = "Vynixu",
    Callback = function()
              loadstring(game:GetObjects("rbxassetid://4001118261")[1].Source)()
      end
})

Mm2:AddButton({
    Name = "Byte hub",
    Callback = function()
              loadstring(game:HttpGet("https://scriptblox.com/raw/Murder-Mystery-2-ByteHub-10357"))()
      end
})

local Brookhaven = Window:MakeTab({
    Name = "Читы на Brookhaven",
    Icon = "rbxassetid://14273889332",
    PremiumOnly = false
})

Brookhaven:AddButton({
    Name = "4D",
    Callback = function()
              loadstring(game:HttpGet('https://raw.githubusercontent.com/M1ZZ001/BrookhavenR4D/main/Brookhaven%20R4D%20Script'))()
      end
})

Brookhaven:AddButton({
    Name = "Jul hub (new ice hub)",
    Callback = function()
              loadstring(game:HttpGet("https://raw.githubusercontent.com/JulHubz/JulHub/main/JulHub"))()
      end
})

local Slap_Battles = Window:MakeTab({
    Name = "Читы на Slap Battles",
    Icon = "rbxassetid://14273889332",
    PremiumOnly = false
})

Slap_Battles:AddButton({
    Name = "Slap Aura, Rejoin (Possible ban)",
    Callback = function()
              loadstring(game:HttpGet(("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Battles")))()
      end
})

Slap_Battles:AddButton({
    Name = "Ui",
    Callback = function()
              loadstring(game:HttpGet("https://scriptblox.com/raw/Slap-Battles-UI-v1-12403"))()
      end
})

local Prison_Life = Window:MakeTab({
    Name = "Читы на Prison Life",
    Icon = "rbxassetid://14273889332",
    PremiumOnly = false
})

Prison_Life:AddButton({
    Name = "Tiger Admin (new)",
    Callback = function()
              loadstring(game:HttpGet("https://raw.githubusercontent.com/dalloc2/Roblox/main/TigerAdmin.lua"))()
      end
})

Prison_Life:AddButton({
    Name = "Fe Bypass Gui",
    Callback = function()
              loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\103\48\48\108\88\112\108\111\105\116\101\114\47\103\48\48\108\88\112\108\111\105\116\101\114\47\109\97\105\110\47\70\101\37\50\48\98\121\112\97\115\115\34\44\32\116\114\117\101\41\41\40\41\10")()
      end
})

local Road_to_Gramby = Window:MakeTab({
    Name = "Road to Gramby",
    Icon = "rbxassetid://14273889332",
    PremiumOnly = false
})

Road_to_Gramby:AddButton({
    Name = "Road to Gramby's GUI Script",
    Callback = function()
              loadstring(game:HttpGet("https://raw.githubusercontent.com/HoodedPeak8313/Road-to-Grambys-Script/main/gui.lua"))()
      end
})

local Ball_and_Axe = Window:MakeTab({
    Name = "Ball and Axe",
    Icon = "rbxassetid://14273889332",
    PremiumOnly = false
})

Ball_and_Axe:AddButton({
    Name = "Unlocks Axe, Removes Limitst",
    Callback = function()
               local plr = game.Players.LocalPlayer.Name
               for _,v in pairs(game:GetService("Workspace").playerModels:GetDescendants()) do
               if v.Name == plr then
               v.ball.spinner.LimitsEnabled = false
               end
               end
      end
})

Ball_and_Axe:AddButton({
    Name = "Fast Win",
    Callback = function()
            function finishpos()
                -- credit by loi#8700 :)
                game:GetService("Workspace").playerModels[game.Players.LocalPlayer.Character.Name].ball.CFrame = CFrame.new(-109.874924, 513.699951, 0.574999571, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                -- credit by loi#8700 :)
                end
                -- credit by loi#8700 :)
                finishpos()
                -- credit by loi#8700 :)
                wait(.1)
                -- credit by loi#8700 :)
                finishpos()
                -- credit by loi#8700 :)
                wait(.1)
                -- credit by loi#8700 :)
                finishpos()
                -- credit by loi#8700 :)
                wait(.1)
                -- credit by loi#8700 :)
                finishpos()
                -- credit by loi#8700 :)
      end
})

local a_dusty_trip = Window:MakeTab({
    Name = "A dusty trip",
    Icon = "rbxassetid://14273889332",
    PremiumOnly = false
})

a_dusty_trip:AddButton({
    Name = "Gui сука",
    Callback = function()
              loadstring(game:HttpGet("https://raw.githubusercontent.com/artemy133563/Utilities/main/ADustyTrip",true))() 
      end
})
