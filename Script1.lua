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

local Tab = Window:CreateTab("Clasic scripts", "warehouse")

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
