local passedTests = 0
local totalTests = 0

local function checkSupport(name, func)
    totalTests = totalTests + 1
    local success, result = pcall(func)
    if success then
        if result == nil then
            print("⚠️ " .. name)
        else
            passedTests = passedTests + 1
            print("✅ " .. name)
        end
    else
        print("⛔ " .. name)
    end
end

local function identifyexecutor()
    local executor = identifyexecutor()
    if type(executor) == "string" then
        return executor
    else
        error("Executor identification failed")
    end
end

print("\n")

print("👑 aUNC Test")
print("✅ - Pass, ⛔ - Fail, ⏺️ - No test, ⚠️ - Missing aliases\n")
print("Join the discord | https://discord.gg/9E6s2GF4")

checkSupport("getscriptenv", function()
    return getscriptenv and getscriptenv(game)
end)

checkSupport("getfilesystem", function()
    return getfilesystem and getfilesystem()
end)

checkSupport("getmetatableindex", function()
    return getmetatableindex and getmetatableindex(game)
end)

checkSupport("setfunctions", function()
    return setfunctions and setfunctions(game)
end)

checkSupport("getevent", function()
    return getevent and getevent(game)
end)

checkSupport("setnewvalue", function()
    return setnewvalue and setnewvalue(game, 123)
end)

checkSupport("getglobal", function()
    return getglobal and getglobal("_G")
end)

checkSupport("setglobal", function()
    return setglobal and setglobal("_G", {})
end)

checkSupport("geteventlisteners", function()
    return geteventlisteners and geteventlisteners(game)
end)

checkSupport("getthread", function()
    return getthread and getthread()
end)

checkSupport("gettraceback", function()
    return gettraceback and gettraceback()
end)

checkSupport("getcontext", function()
    return getcontext and getcontext()
end)

checkSupport("getclosure", function()
    return getclosure and getclosure(function() end)
end)

checkSupport("getinstancedata", function()
    return getinstancedata and getinstancedata(game)
end)

checkSupport("getmoduleinfo", function()
    return getmoduleinfo and getmoduleinfo("ModuleName")
end)

checkSupport("setstacktrace", function()
    return setstacktrace and setstacktrace()
end)

checkSupport("getactivecalls", function()
    return getactivecalls and getactivecalls()
end)

checkSupport("addhook", function()
    return addhook and addhook(game)
end)

checkSupport("getreflection", function()
    return getreflection and getreflection(game)
end)

checkSupport("setvalueof", function()
    return setvalueof and setvalueof(game, "Property", 100)
end)

checkSupport("setmetamethods", function()
    return setmetamethods and setmetamethods(game, "__index", function() end)
end)

checkSupport("getinstancemethods", function()
    return getinstancemethods and getinstancemethods(game)
end)

checkSupport("clearfunctioncache", function()
    return clearfunctioncache and clearfunctioncache()
end)

checkSupport("getglobalmetatable", function()
    return getglobalmetatable and getglobalmetatable()
end)

checkSupport("getfunctioninfo", function()
    return getfunctioninfo and getfunctioninfo(function() end)
end)

checkSupport("setfunctionclosure", function()
    return setfunctionclosure and setfunctionclosure(function() end, function() end)
end)

checkSupport("setinstancecallback", function()
    return setinstancecallback and setinstancecallback(game, "OnUpdate", function() end)
end)

checkSupport("getscriptmetadata", function()
    return getscriptmetadata and getscriptmetadata(function() end)
end)

checkSupport("getthreadinfo", function()
    return getthreadinfo and getthreadinfo()
end)

checkSupport("Hookfunction", function()
    return hookfunction(function() end, function() end)
end)

checkSupport("isfile", function()
    return isfile and isfile("test")
end)

checkSupport("WriteFile", function()
    return writefile and writefile("test", "data")
end)

checkSupport("SetThreadIdentity", function()
    return setthreadidentity and setthreadidentity(2)
end)

checkSupport("SetScriptable", function()
    return setscriptenv and setscriptenv(game, {})
end)

checkSupport("SetReadOnly", function()
    return setreadonly and setreadonly({}, true)
end)

checkSupport("SetRenderProperty", function()
    return setrenderproperty and setrenderproperty("QualityLevel", 3)
end)

checkSupport("Request", function()
    return request and request({Url = "http://example.com"})
end)

checkSupport("ReadFile", function()
    return readfile and readfile("test")
end)

checkSupport("IdentifyExecutor", function()
    return identifyexecutor() 
end)

checkSupport("isfolder", function()
    return isfolder and isfolder("folder")
end)

checkSupport("writefile", function()
    return writefile and writefile("file", "data")
end)

checkSupport("appendfile", function()
    return appendfile and appendfile("file", "more data")
end)

checkSupport("delfolder", function()
    return delfolder and delfolder("folder")
end)

checkSupport("delfile", function()
    return delfile and delfile("file")
end)

checkSupport("loadfile", function()
    return loadfile and loadfile("test")
end)

checkSupport("loadstring", function()
    return loadstring and loadstring("return 1")
end)

checkSupport("newcclosure", function()
    return newcclosure and newcclosure(function() end)
end)

checkSupport("newcfunc", function()
    return newcfunc and newcfunc(function() end)
end)

checkSupport("newproxy", function()
    return newproxy and newproxy(game)
end)

checkSupport("newudim2", function()
    return newudim2 and newudim2(1, 0, 1, 0)
end)

checkSupport("newvector3", function()
    return newvector3 and newvector3(1, 1, 1)
end)

checkSupport("pcall", function()
    return pcall and pcall(function() end)
end)

checkSupport("rejoin", function()
    return rejoin and rejoin()
end)

checkSupport("setreadonly", function()
    return setreadonly and setreadonly({}, true)
end)

checkSupport("setthreadidentity", function()
    return setthreadidentity and setthreadidentity(2)
end)

checkSupport("setscriptenv", function()
    return setscriptenv and setscriptenv(game, {})
end)

checkSupport("setrenderproperty", function()
    return setrenderproperty and setrenderproperty("QualityLevel", 3)
end)

checkSupport("sethiddenproperty", function()
    return sethiddenproperty and sethiddenproperty(game, "Property", true)
end)

checkSupport("senv", function()
    return senv and senv(game)
end)

checkSupport("setstack", function()
    return setstack and setstack(1, "value")
end)

checkSupport("setvalue", function()
    return setvalue and setvalue(game)
end)

checkSupport("tostring", function()
    return tostring and tostring(game)
end)

checkSupport("unhookfunction", function()
    return unhookfunction and unhookfunction(function() end)
end)

checkSupport("upvalueid", function()
    return upvalueid and upvalueid(function() end, 1)
end)

checkSupport("writefile", function()
    return writefile and writefile("test", "data")
end)

checkSupport("writefolder", function()
    return writefolder and writefolder("folder")
end)

checkSupport("writehttpfile", function()
    return writehttpfile and writehttpfile("file", "data")
end)

checkSupport("issignal", function()
    return issignal and issignal(function() end)
end)

checkSupport("ispersistent", function()
    return ispersistent and ispersistent(game)
end)

checkSupport("base64_decode", function()
    return crypt.base64decode and crypt.base64decode("dGVzdA==")
end)

checkSupport("base64_encode", function()
    return crypt.base64encode and crypt.base64encode("test")
end)

checkSupport("cache.invalidate", function()
    return cache.invalidate and cache.invalidate()
end)

checkSupport("cache.iscached", function()
    return cache.iscached and cache.iscached("test")
end)

checkSupport("cache.replace", function()
    return cache.replace and cache.replace("old", "new")
end)

checkSupport("cloneref", function()
    return cloneref and cloneref(game)
end)

checkSupport("compareinstances", function()
    return compareinstances and compareinstances(game, game)
end)

checkSupport("checkcaller", function()
    return checkcaller and checkcaller()
end)

checkSupport("clonefunction", function()
    return clonefunction and clonefunction(function() end)
end)

checkSupport("getcallingscript", function()
    return getcallingscript and getcallingscript()
end)

checkSupport("getscriptclosure", function()
    return getscriptclosure and getscriptclosure(function() end)
end)

checkSupport("hookmetamethod", function()
    return hookmetamethod and hookmetamethod(game, "__index", function() end)
end)

checkSupport("iscclosure", function()
    return iscclosure and iscclosure(function() end)
end)

checkSupport("islclosure", function()
    return islclosure and islclosure(function() end)
end)

checkSupport("isexecutorclosure", function()
    return isexecutorclosure and isexecutorclosure(function() end)
end)

checkSupport("getnamecallmethod", function()
    return getnamecallmethod and getnamecallmethod()
end)

checkSupport("gethiddenproperty", function()
    return gethiddenproperty and gethiddenproperty(game, "Property")
end)

checkSupport("sethiddenproperty", function()
    return sethiddenproperty and sethiddenproperty(game, "Property", true)
end)

checkSupport("getcallbackvalue", function()
    return getcallbackvalue and getcallbackvalue()
end)

checkSupport("getconnections", function()
    return getconnections and getconnections(game)
end)

checkSupport("getcustomasset", function()
    return getcustomasset and getcustomasset("AssetId")
end)

checkSupport("getgc", function()
    return getgc and getgc()
end)

checkSupport("getgenv_access", function()
    return getgenv and getgenv()
end)

checkSupport("gethui", function()
    return gethui and gethui()
end)

checkSupport("getinstances", function()
    return getinstances and getinstances(game)
end)

checkSupport("getloadedmodules", function()
    return getloadedmodules and getloadedmodules()
end)

checkSupport("getnamecallmethod", function()
    return getnamecallmethod and getnamecallmethod()
end)

checkSupport("getnilinstances", function()
    return getnilinstances and getnilinstances(game)
end)

checkSupport("getrawmetatable", function()
    return getrawmetatable and getrawmetatable(game)
end)

checkSupport("getrenderproperty", function()
    return getrenderproperty and getrenderproperty("QualityLevel")
end)

checkSupport("getrunningscripts", function()
    return getrunningscripts and getrunningscripts()
end)

checkSupport("getscriptbytecode", function()
    return getscriptbytecode and getscriptbytecode(function() end)
end)

checkSupport("getscripts", function()
    return getscripts and getscripts()
end)

checkSupport("getsenv", function()
    return getsenv and getsenv(game)
end)

checkSupport("getthreadidentity", function()
    return getthreadidentity and getthreadidentity()
end)

checkSupport("hookfunction", function()
    return hookfunction and hookfunction(function() end, function() end)
end)

checkSupport("hookmetamethod", function()
    return hookmetamethod and hookmetamethod(game, "__index", function() end)
end)

checkSupport("identifyexecutor", function()
    return identifyexecutor()
end)

checkSupport("iscclosure", function()
    return iscclosure and iscclosure(function() end)
end)

checkSupport("isexecutorclosure", function()
    return isexecutorclosure and isexecutorclosure(function() end)
end)

checkSupport("isfile", function()
    return isfile and isfile("file")
end)

checkSupport("isfolder", function()
    return isfolder and isfolder("folder")
end)

checkSupport("islclosure", function()
    return islclosure and islclosure(function() end)
end)

checkSupport("isrbxactive", function()
    return isrbxactive and isrbxactive()
end)

checkSupport("isreadonly", function()
    return isreadonly and isreadonly()
end)

checkSupport("isrenderobj", function()
    return isrenderobj and isrenderobj(game)
end)

checkSupport("isscriptable", function()
    return isscriptable and isscriptable(game)
end)

checkSupport("listfiles", function()
    return listfiles and listfiles()
end)

checkSupport("lz4decompress", function()
    return lz4decompress and lz4decompress("compressed")
end)

checkSupport("lz4compress", function()
    return lz4compress and lz4compress("data")
end)

checkSupport("makefolder", function()
    return makefolder and makefolder("folder")
end)

checkSupport("newcclosure", function()
    return newcclosure and newcclosure(function() end)
end)

checkSupport("readfile", function()
    return readfile and readfile("file")
end)

checkSupport("request", function()
    return request and request({Url = "http://example.com"})
end)

checkSupport("setrawmetatable", function()
    return setrawmetatable and setrawmetatable(game, {})
end)

checkSupport("setreadonly", function()
    return setreadonly and setreadonly({}, true)
end)

checkSupport("setrenderproperty", function()
    return setrenderproperty and setrenderproperty("QualityLevel", 3)
end)

checkSupport("setscriptable", function()
    return setscriptable and setscriptable(game, true)
end)

checkSupport("setthreadidentity", function()
    return setthreadidentity and setthreadidentity(2)
end)

checkSupport("writefile", function()
    return writefile and writefile("test", "data")
end)

print("\n👑 Test Results:")
print("🚪 Total tests: " .. totalTests)
print("✅ Passed tests: " .. passedTests)
print(string.format("🟢 aUNC Rate: %.2f%%", (passedTests / totalTests) * 100))

print("Made by KYX on discord. imagine faking UNC 😭")
