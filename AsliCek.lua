
udahBayar = false

username = getUsername()
client = HttpClient.new()
client.url = "https://raw.githubusercontent.com/Falimby/LicencySC/LCeckher/"..username
local response = client:request().body

if response:find("404") then
    print("Anda Belum Bayar, Kalau Sudah Chat Admin")
    messageBox = MessageBox.new()
    messageBox.title = "WanxSyn STORE "
    messageBox.description = "USERNAME Tidak Terdaftar"
    messageBox:send()
    getBot():stopScript()
else
    udahBayar = true
end

if udahBayar then
bot = getBot()
nuked = false
world = ""
door = ""
noDoor = ""
totalFarm = 0
totalNuked = 0
totalFossil = 0 
perfect = 0 
bad = 0
allFarm = 0 
totalWithWL = 0
worldFire = 0 
worldToxic = 0 
allWorld = 0
t = os.time()

if itmSeed == 4585 then 
   treemoji = "<:peppersyn:1226198437096067274>"
elseif itmSeed == 5667 then 
   treemoji = "<:lasersyn:1226199071249797241>"
elseif itmSeed == 341 then 
   treemoji = "<:chandsyn:1226198839036477490>" 
else 
    treemoji = "<:trees:1242648160635977768>"
end

for i,botz in pairs(getBots()) do 
    if botz.name:upper() == bot.name:upper() then 
        indexBot = i
    end
end

outputWorld = bot.name:upper().."-INFO_FARM.txt"
nukedTXT = bot.name:upper().."-NUKED.txt"

file = io.open(outputWorld, "w+")
file:close()

file = io.open(nukedTXT, "w+")
file:close()

file = io.open(listWorld, "r")
if file then 
  local alls = 0
  for _ in file:lines() do 
      alls = alls + 1
  end
  if multyBot then 
      totalBot = #getBots()
      allWorld = math.ceil((allWorld + alls) / totalBot)
  else 
      allWorld = allWorld + alls
  end
file:close()
end

addEvent(Event.variantlist, function(variant, netid)
    if variant:get(0):getString() == "OnConsoleMessage" then
        if variant:get(1):getString():find("inaccessible") then
            nuked = true
        end
    end
    if variant:get(0):getString() == "OnTalkBubble" then 
        if varian:get(2):getString():find("Last played") then 
            lockAge = variant:get(2):getString():match("(Last played `w(%w+)`` days ago)")
        end
    end
end)

end
function log(txt)
    file = io.open(outputWorld, "a")
    if file then
        file:write(txt.."\n")
        file:close()
    end
end

function logNuke(txt)
    file = io.open(nukedTXT, "a")
    if file then
        file:write(txt.."\n")
        file:close()
    end
end

function reading(synfile) 
    local fileName = synfile
    local file = io.open(fileName, "r")
    if file then 
        local lines = {} 
        for line in file:lines() do 
            allFarm = allFarm + 1
            table.insert(lines, line)
        end
        file:close()
        cray = lines[1]
        data = split(lines[1], ":")
        if tablelength(data) == 2 then 
            world = data[1]
            door = data[2]
        end
        table.remove(lines, 1)
        file = io.open(fileName, "w")
        if file then 
            for _,line in pairs(lines) do 
                file:write(line.."\n")
            end
            file:write(cray)
            file:close()
        end
    end
end

function split(inputstr, sep)
    if inputstr == nil then 
        bot.auto_reconnect = false 
        sleep(1000)
        removeBot(bot.name)
    end 
    if sep == nil then
        sep = "%s"
    end
    local t = {}
    for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
        table.insert(t, str)
    end
    return t
end

function tablelength(T)
    local count = 0
    for _ in pairs(T) do 
        count = count + 1 
    end
    return count
end

function worldChecker(status)
    local text = [[
        $webHookUrl = "]]..webHookInfo..[["
        $payload = @{
            content = "]]..status..[["
        }
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        Invoke-RestMethod -Uri $webHookUrl -Body ($payload | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'
    ]]
    local file = io.popen("powershell -command -", "w")
    file:write(text)
    file:close()
end

function nukeWorldInfo(status)
    local text = [[
        $webHookUrl = "]]..webhookNuked..[["
        $payload = @{
            content = "]]..status..[["
        }
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        Invoke-RestMethod -Uri $webHookUrl -Body ($payload | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'
    ]]
    local file = io.popen("powershell -command -", "w")
    file:write(text)
    file:close()
end
function warp(world) 
    cok = 0 
    while not bot:isInWorld(world:upper()) and not nuked do 
        while bot.status ~= BotStatus.online do 
            sleep(1000)
        end 
        bot:sendPacket(3,"action|quit_to_exit")
        sleep(500)
        bot:sendPacket(3,"action|join_request\nname|"..world:upper().."\ninvitedWorld|0")
        listenEvents(1)
        sleep(delayWarp)
        if cok == 5 then 
            nuked = true 
        else 
            cok = cok + 1
        end
    end
end

function botEvent(info)
    te = os.time() - t
    local statusBot = ''
    local toxtox = 0 
    local Firecheck = 0
    if bot.status == BotStatus.online then 
        statusBot = 'Online'
    else 
        statusBot = 'Offline'
    end
    if checkFire then 
        local Firecheck = worldFire
    end
    if checkToxic then 
        local toxtox = worldToxic
    end
    local text1 = [[
    $w = "]]..webHookInfo..[["
    $footerObject = 
    @{
        text = "Farm Checker SYN ]]..os.date("!%a %b %d, %Y at %I:%M %p", os.time() + 7 * 60 * 60)..[["
    }
    $thumbnailObject = @{
        url = "https://cdn.discordapp.com/attachments/1180523579381665933/1180577805403181076/20231203_013427.png" 
    }
    $fieldArray = @(
        @{
            name = ""
            value = "]]..info.."\n"..[["
            inline = "false"
        }
        @{
            name = "BOT INFORMATION"
            value = "<a:arrow:1158762819827814400> Status : ]]..statusBot..[[ (]]..bot:getPing()..[[)]].."\n"..[[<a:arrow:1158762819827814400> Name : ]]..getBot().name..[[ (No.]]..indexBot..[[)]].."\n"..[[<a:arrow:1158762819827814400> Level : ]]..bot.level.."\n"..[["
            inline = "true"
        }
        @{
            name = "DATA CHECKER"
                value = "<:arrow:1231993245144318083> Total Farm ]]..allFarm.." <:wl:1226195506422612010>\n"..[[<:arrow:1231993245144318083> Total Checked ]]..(allWorld - totalNuked).." <:wl:1226195506422612010>\n"..[[<:arrow:1231993245144318083> Total Fossil ]]..totalFossil.." <:fossil:1226195061642100886>\n"..[[<:arrow:1231993245144318083> Perfect Plant ]]..perfect.."  <:perfect:1226232173670174771>\n"..[[<:arrow:1231993245144318083> Bad Plant ]]..bad.." <:bad:1226232303454519366>\n"..[[<:arrow:1231993245144318083> World Fired ]]..Firecheck.." <:firesyn:1232363728583000176>\n"..[[<:arrow:1231993245144318083> World Toxic ]]..toxtox.." <:toxic:1232363823365619753>\n"..[["
                inline = "true"
        }
        @{
            name = "UPTIME BOT"
            value = "<a:arrow:1158762819827814400> ]]..math.floor(te/86400)..[[ Days ]]..math.floor(te%86400/3600)..[[ Hours ]]..math.floor(te%86400%3600/60)..[[ Minutes"
            inline = "false"
        }
    )
    $embedObject = @{
        title = "**<:lucifer:1158949673097232464>  Farm Checker**"
        color = "16746240"
        footer = $footerObject
        thumbnail = $thumbnailObject
        fields = $fieldArray
    }
    $embedArray = @($embedObject)
    $Body = @{
        embeds = $embedArray
    }
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    Invoke-RestMethod -Uri $w -Body ($Body | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'
   ]]
    local file = io.popen("powershell -command -", "w")
    file:write(text1)
    file:close()
end 

function round(n)
    return n % 1 > 0.5 and math.ceil(n) or math.floor(n)
end

function takeLock(world,id)
    if putLock then 
    bot.auto_collect = false 
    sleep(100)
    bot:warp(world,id)
    sleep(delayWarp)
    if bot:isInWorld(world:upper()) then 
        for _,obj in pairs(bot:getWorld():getTiles()) do 
            if obj.id == 202 then 
                bot:findPath(round(obj.x/32),math.floor(obj.y/32))
                sleep(1000)
                bot:collectObject(202,3)
                sleep(1000)
            end
            if bot:getInventory():findItem(202) > 0 then 
                break
            end
        end
    end
    end
end


if udahBayar then 
worldChecker("Bot [ "..bot.name:upper().." ] Checking "..allWorld.." Farm")
for i = 1, allWorld do 
    nuked = false
    world = ""
    door = ""
    takeLock(storageLock,doorLock)
    sleep(100)
    reading(listWorld)
    sleep(100)
    allFarm = math.ceil(allFarm / 2)
    sleep(100)
    warp(world) 
    sleep(100)
    if not nuked then 
        planted = 0
        ready = 0 
        fossil = 0 
        doorText = ""
        jammer = ""
        lock = ""
        fire = ""
        fires = 0
        toxic = 0
        lockAge = ""
        log("-----------NEW----------")
        log("World : "..world:upper())
        for _,tile in pairs(bot:getWorld():getTiles()) do 
            if tile.fg == itmSeed and bot:isInWorld(world:upper()) then 
                planted = planted + 1
                if tile:canHarvest(tile.x,tile.y) then 
                    ready = ready + 1
                end
            end
            if tile.fg == 3918 and bot:isInWorld(world:upper()) then 
                fossil = fossil + 1
            end
            if tile.fg == 226 and checkJammer then
                if tile.flags == 66 then
                    jammer = "[ <:jammer:1226194827100688535> Active ]"
                    log("Jammer : Active")
                else
                    jammer = "[ <:nonjammer:1226199929748459642> Deactive ]"
                    log("Jammer : Deactive")
                end
            end
            if checkLock and tile.fg == 202 then 
                lock = "[ Lock <:sl:1226195599544684664> ]"
                for _,tile in pairs(bot:getWorld():getTiles()) do 
                    if tile.fg == 242 then 
                        lock = "[ Lock <:wl:1226195506422612010> & <:sl:1226195599544684664> ]"
                        totalWithWL = totalWithWL + 1
                    end 
                end
            elseif checkLock and tile.fg == 242 then
                lock = "[ Lock <:wl:1226195506422612010> ]"
                for _,tile in pairs(bot:getWorld():getTiles()) do 
                    if tile.fg == 202 then 
                        lock = "[ Lock <:wl:1226195506422612010> & <:sl:1226195599544684664> ]"
                    end
                end
            end
            if checkFire then
               if tile:hasFlag(4096) then 
                  fire = "[<:firesyn:1232363728583000176> Fire : Yes]"
                  log("Farm Fired : Yes")
                  fires = fires + 1
               else 
                  log("Farm Fired : No")
                  fire = "[<:firesyn:1232363728583000176> Fire : No]"
               end
            end
            if checkToxic and tile.fg == 788 then 
                toxic = toxic + 1
            end
            if checkLockAge and tile.fg == 202 then 
                bot:hit(tile.x,tile.y)
                sleep(100)
                listenEvents(2)
                if bot:getWorld():getTile(tile.x,tile.y).fg ~= 202 and putLock then 
                    while bot:getWorld():getTile(tile.x,tile.y).fg ~= 202 do  
                        bot:place(tile.x,tile.y,202)
                        sleep(200)
                    end
                end
            end 
        end
        if checkTree then
            log("Total Tree : ".. planted)
            log("Ready Harvest : " .. ready)
        end
        if checkFossil then
            log("Fossil : " .. fossil)
        end
        if checkDoor then 
            if bot:getWorld():getTile(bot.x,bot.y).fg == 6 and not nuked then 
                bot:sendPacket(3,"action|quit_to_exit")
                sleep(1000)
                bot:sendPacket(3,"action|join_request\nname|"..world:upper().."|"..door:upper().."\ninvitedWorld|0")
                sleep(delayCekdoor)
                if bot:getWorld():getTile(bot.x,bot.y).fg == 6 then
                    doorText = " [ <:doorsyn:1226195261974515864> Failed ]"
                    log("Door : Failed")
                else 
                    doorText = " [ <:doorsyn:1226195261974515864> Success ]"
                    log("Door : Success")
                end
            end
        end
        worldChecker("**"..world:upper().. "** [" ..treemoji.. "Total : ".. planted .. " ] [ "..treemoji.." Ready : " .. ready .. " ] [ <:fossil:1226195061642100886> : " .. fossil.." ]"..doorText..jammer..lock..lockAge.."[ <:toxic:1232363823365619753>"..toxic.." ]"..fire)
        totalFarm = totalFarm + 1
        if planted < minPerfectPlant then 
            bad = bad + 1
        else 
            perfect = perfect + 1
        end
        if toxic > 0 then 
            worldToxic = worldToxic + 1
        end
        if fires > 0 then 
            worldFire = worldFire + 1
        end
        totalFossil = totalFossil + fossil
    else 
      sleep(200)
      nuked = false
      sleep(1000)
      nukeWorldInfo(world:upper().." is nuked. @everyone")
        sleep(100)
      logNuke(world.." NUKED!")
      totalFarm = totalFarm + 1
      totalNuked = totalNuked + 1
    end
    if totalFarm >= allFarm then 
        break
    end
end
botEvent("Farm Checked")
end
