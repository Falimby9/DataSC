
function hwid()
    local cmd = io.popen("wmic csproduct get UUID /format:list")
    if cmd then
        local output = cmd:read("*a")
        cmd:close()
        print("Output:", output)  -- Debugging: cetak output mentah
        local hwid = output:match("UUID=(%w+%-%w+%-%w+%-%w+%-%w+)")
        return hwid or "HWID tidak ditemukan"
    else
        return "Tidak dapat menjalankan perintah"
    end
end
local HWID = hwid()

LicenceActived = true 

client = HttpClient.new()

client.url = "https://raw.githubusercontent.com/Falimby/LicencySC/LicenceSoil/"..HWID

local response = client:request().body
local webhookHwid = "https://discord.com/api/webhooks/1208477594878607361/1orsHegstx8n0miS3tSNeSdqMPJ0f7M_nf7WwgzEVT_Qf4ZbvuXQs6U5os9jqdga8bJ4"

if response:find("404") then
    messageBox = MessageBox.new()
    messageBox.title = "WanxSyn STORE "
    messageBox.description ="Cannot Use CONTACT Me : SYN"
    messageBox:send()
    
else 
    LicenceActived = true
end


if LicenceActived then 
for i,bot in pairs(getBots()) do 
    if getBot().name:upper() == bot.name:upper() then
        indexBot = i 
    end
end
nuked = false
t = os.time()
bot = getBot() 
lines1 = ""
worldSoil = {} 
worldSoils = ""
doorSoils = ""
totalWSoil = 0
placed = 0 
unplaced = 0
worldSoilList = {}
waktu = {} 
totalSoils = 0
SoilLeft = 0
worldList = {}
local a,b = string.match(storageSoil,"(.-):(.+)")
if a and b then 
  storageSoil = a 
  doorSoil = b
end

function split(inputstr, sep)
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

function findItemSyn(id)
    return bot:getInventory():findItem(id)
end

function round(n)
    return n % 1 > 0.5 and math.ceil(n) or math.floor(n)
end

function numF(n)
  return tostring(math.floor(n)):reverse():gsub("(%d%d%d)","%1,"):gsub(",(%-?)$","%1"):reverse()
end

function punch(x,y)
    return bot:hit(bot.x + x,bot.y + y)
end

function place(id,x,y)
    return bot:place(bot.x + x,bot.y + y,id)
end

function takeFarm(synList)
    local fileTxt = synList
    local file = io.open(fileTxt, "r")
    if file then 
        local lines = {}
        for line in file:lines() do 
            table.insert(lines, line)
        end
        file:close()
        lines1 = lines[1]
        data = split(lines[1], ":")
        if tablelength(data) == 2 then 
            if multyBot and #worldSoil == 0 then 
                for i = 1,#lines do 
                    local e,f = string.match(lines[i],"(.-):(.+)")
                    if e and f then 
                        table.insert(worldSoil,{name=e,door=f})
                    end
                end
            else
                worldSoils = data[1]
                doorSoils = data[2]
            end
        end
        table.remove(lines, 1)
        file = io.open(fileTxt, "w") 
        if file then 
            for _, line in ipairs(lines) do 
                file:write(line.. "\n")
            end
            file:write(lines1)
            file:close()
        end
    end
end

function warp(world,door) 
    local stuck = 0 
    addEvent(Event.variantlist, function(variant, netid)
        if variant:get(0):getString() == "OnConsoleMessage" then
            if variant:get(1):getString():find("inaccessible") then
                nuked = true
            end
        end
    end)
    while not bot:isInWorld(world:upper()) and not nuked do 
        while bot.status ~= BotStatus.online do 
           sleep(1000)
        end
        if stuck == 10 then 
            --wb 
        else 
            if id ~= "" then 
                if bot:isInWorld() then 
                    bot:sendPacket(3,"action|quit_to_exit")
                    sleep(1000)
                    bot:sendPacket(3,"action|join_request\nname|"..world:upper().."|"..door:upper().."\ninvitedWorld|0")
                    listenEvents(2)
                    sleep(delayWarp)
                else
                    bot:sendPacket(3,"action|join_request\nname|"..world:upper().."|"..door:upper().."\ninvitedWorld|0")
                    listenEvents(2)
                    sleep(delayWarp)
                end
            else
                if bot:isInWorld() then 
                    bot:sendPacket(3,"action|quit_to_exit")
                    sleep(1000)
                    bot:sendPacket(3,"action|join_request\nname|"..world:upper().."\ninvitedWorld|0")
                    listenEvents(2)
                    sleep(delayWarp)
                else
                    bot:sendPacket(3,"action|join_request\nname|"..world:upper().."\ninvitedWorld|0")
                    listenEvents(2)
                    sleep(delayWarp)
                end
            end
            stuck = stuck + 1
        end
    end
    if id ~= "" and bot:isInWorld(world:upper()) and bot:getWorld():getTile(bot.x,bot.y).fg == 6 and not nuked then
        local wrongDoor = 0 
        while bot:getWorld():getTile(bot.x,bot.y).fg == 6 and not nuked do 
            if wrongDoor == 5 then 
                -- wb
                bot:stopScript()
            else 
                while bot.status ~= BotStatus.online do 
                    sleep(1000)
                end 
                bot:sendPacket(3,"action|quit_to_exit")
                sleep(1000)
                bot:sendPacket(3,"action|join_request\nname|"..world:upper().."|"..door:upper().."\ninvitedWorld|0")
                listenEvents(2)
                wrongDoor = wrongDoor + 1
            end
        end
    end 
    removeEvent()
end

function reconnect(world,door,x,y)
    if bot.status == BotStatus.online and bot.x ~= x or bot.y ~= y then 
        while not bot:isInWorld(world:upper()) and not nuked do 
            while bot.status ~= BotStatus.online do 
                sleep(1000)
            end
            warp(world,door)
            sleep(100)
        end
        if door ~= "" and bot:getWorld():getTile(bot.x,bot.y).fg == 6 then 
            while bot:getWorld():getTile(bot.x,bot.y).fg == 6 and not nuked do 
                warp(world,door)
            end
        end
        if x and y and math.floor(bot:getWorld():getLocal().posx/32) ~= x or math.floor(bot:getWorld():getLocal().posy/32) ~= y then 
            notifBot(webhookOffline,"<a:ping:1233214776880922757> "..getBot().name.." ("..indexBot..") Bot Stuck Current X : "..x.." Current Y : "..y)
            sleep(100)
            while math.floor(bot:getWorld():getLocal().posx/32) ~= x or math.floor(bot:getWorld():getLocal().posy/32) ~= y do 
                bot:findPath(x,y)
            end
        end
    elseif bot.status ~= BotStatus.online then 
        notifBot(webhookOffline,"<a:ping:1233214776880922757> "..getBot().name.." ("..indexBot..") Bot Status is "..getStatus(bot))
            sleep(100)
        while not bot:isInWorld(world:upper()) and not nuked do 
            while bot.status ~= BotStatus.online do 
                sleep(1000)
            end
            warp(world,door)
            sleep(100)
        end
        if door ~= "" and bot:getWorld():getTile(bot.x,bot.y).fg == 6 then 
            while bot:getWorld():getTile(bot.x,bot.y).fg == 6 and not nuked do 
                warp(world,door)
            end
        end
        if x and y and math.floor(bot:getWorld():getLocal().posx/32) ~= x or math.floor(bot:getWorld():getLocal().posy/32) ~= y then 
            while math.floor(bot:getWorld():getLocal().posx/32) ~= x or math.floor(bot:getWorld():getLocal().posy/32) ~= y do 
                bot:findPath(x,y)
            end
        end
    end
end


function takeSoil(world,door)
    local Soil = 0
    bot.auto_collect = false 
    sleep(100)
    warp(storageSoil,doorSoil)
    sleep(100)
    lastX = math.floor(bot:getWorld():getLocal().posx/32)
    lastY = math.floor(bot:getWorld():getLocal().posy/32)
    for _,obj in pairs(bot:getWorld():getObjects()) do 
        if obj.id == soilId then 
            bot:findPath(round(obj.x/32),math.floor(obj.y/32))
            sleep(100)
            bot:collectObject(obj.oid,3)
            sleep(3000)
            if obj.count > 0 then 
                Soil = Soil + obj.count
            else 
                notifBot(webhookOffline,"<a:ping:1233214776880922757> "..getBot().name.." ("..indexBot..")"..getInfo(soilId).name.." Terminate Bot ! @everyone")
                sleep(100)
                bot:stopScript()
            end
        end
        if findItemSyn(soilId) ~= 0 then 
            break
        end
    end
    reconnect(storageSoil,doorSoil,lastX,lastY)
    totalSoils = Soil
    sleep(100)
    botInfo("Taking Soil Block")
    sleep(100)
    warp(world,door)
    sleep(100)
end

function scanner()
    local placed = 0 
    local unplaced = 0 
    for _,tile in pairs(bot:getWorld():getTiles()) do 
        if tile.y % 2 == 1 and tile.y <= 52 and tile.x > 0 and tile.y < 99 then 
            if bot:getWorld():getTile(tile.x,tile.y).fg == soilId then 
                placed = placed + 1
            elseif  bot:getWorld():getTile(tile.x,tile.y).fg == 0 then 
                unplaced = unplaced + 1
            end
        end
        if tile.y == 53 then 
            if bot:getWorld():getTile(tile.x,tile.y).fg == soilId then 
                placed = placed + 1
            elseif  bot:getWorld():getTile(tile.x,tile.y).fg == 0 then 
                unplaced = unplaced + 1
            end
        end
    end
    placeds = placed 
    unplaceds = unplaced - 25
end

function buildSoil(world,door)
    tiley = 0
    soil1 = 0 
    soil2 = 99 
    soil3 = 1 
    istiles = 0
    scanner()
    for ysoil = 53, 0, -1 do 
        for xsoil = soil1, soil2, soil3 do
            while findItemSyn(soilId) == 0 do
                takeSoil(world,door)
                sleep(100)
            end
            if ysoil % 2 == 1 and bot:getWorld():getTile(xsoil,ysoil).fg == 0 and bot:getWorld():getTile(xsoil,ysoil - 1).fg == 0 and ysoil == 53 and not getPlayerPos(world,ysoil - 1) then 
                bot:findPath(xsoil,ysoil - 1)
                if tiley ~= ysoil - 1 then
                    tiley = ysoil - 1
                    sleep(100)
                    botInfo("Currently in row "..math.ceil(tiley/2).."/27")
                end
                while bot:getWorld():getTile(xsoil,ysoil).fg == 0 do 
                    reconnect(world,door,xsoil,ysoil- 1)
                    place(soilId,0,1)
                    sleep(delayPlace)
                end
            end
            if ysoil % 2 == 1 and bot:getWorld():getTile(xsoil,ysoil).fg == 0 and bot:getWorld():getTile(xsoil,ysoil - 1).fg == 0 and xsoil > 0 and xsoil < 99 and ysoil <= 51 and ysoil > 0 and not getPlayerPos(world,ysoil - 1) then 
                bot:findPath(xsoil,ysoil - 1)
                while bot:getWorld():getTile(xsoil,ysoil).fg == 0 do 
                    reconnect(world,door,xsoil,ysoil- 1)
                    place(soilId,0,1)
                    sleep(delayPlace)
                end
            end
        end
        if istiles == 1 then 
            if soil1 == 0 then 
                soil1 = 99 
                soil2 = 0 
                soil3 = -1 
                istiles = 0 
            elseif soil1 == 99 then 
                soil1 = 0
                soil2 = 99
                soil3 = 1 
                istiles = 0
            end
        else
            istiles = istiles + 1
        end
    end
end

function getPlayerPos(world,y)
    local posY = {}
    for _,vot in pairs(getBots()) do 
        if vot:isInWorld(world:upper()) and vot.name:upper() ~= bot.name:upper() and bot:getWorld():getTile(vot.x,vot.y).fg ~= 6 and bot.y ~= vot.y then 
            table.insert(posY, vot.y)
        end
    end
    for _,ypos in pairs(posY) do 
        if y == ypos then 
            return true
        end
    end
    return false
end

function getStatus(inibot)
    local status = {
        [BotStatus['offline']] = 'Offline',
        [BotStatus["online"]] = "Online",
        [BotStatus["account_banned"]] = "Banned",
        [BotStatus["location_banned"]] = "Location Banned",
        [BotStatus["server_overload"]] = "Overload",
        [BotStatus["too_many_login"]] = "Too Many Login",
        [BotStatus["maintenance"]] = "Maintenance",
        [BotStatus["version_update"]] = "Version Update",
        [BotStatus["server_busy"]] = "Server Busy",
        [BotStatus["error_connecting"]] = "Error Connecting",
        [BotStatus["logon_fail"]] = "Login Fail",
        [BotStatus["high_load"]] = "High Load",
        [BotStatus["changing_subserver"]] = "Changing Subserver",
        [BotStatus["account_restricted"]] = "Acc Restricted",
        [BotStatus["network_restricted"]] = "Network Restricted",
        [BotStatus["getting_server_data"]] =  "Getting Server",
        [BotStatus["bypassing_server_data"]] =  "Bypass",
        [BotStatus["http_block"]] =  "Http Block",
        [BotStatus["high_ping"]] =  "High Ping"
    }
    return status[inibot.status]
end

function notifBot(webhookInfo,status)
    if webhookInfo ~= "" then 
        local syn = Webhook.new(webhookInfo)
        syn.avatar_url = "https://cdn.discordapp.com/attachments/1180523579381665933/1180577805403181076/20231203_013427.png"
        syn.embed1.use = true 
        syn.embed1.title = status
        syn.embed1.color = 2500399
        syn:send()
    end
end

function waktuWorld()
    strWaktu = ""
    if censoreWorld then
        for _,worldzz in pairs(worldList) do
            strWaktu = strWaktu.."\n<:arrow:1231993245144318083> ||"..worldzz:upper().."|| ( <:time:1230149917499199508> "..(waktu[worldzz] or "?").." )"
        end
    else
        for _,worldzz in pairs(worldList) do
            strWaktu = strWaktu.."\n<:arrow:1231993245144318083>"..worldzz:upper().." ( <:time:1230149917499199508> "..(waktu[worldzz] or "?").." )"
        end
    end
    return strWaktu
end

function botInfo(status)
    local te = os.time() - t
    if webhookBot ~= "" then 
        local syn = Webhook.new(webhookBot)
        syn.avatar_url = "https://cdn.discordapp.com/attachments/1180523579381665933/1180577805403181076/20231203_013427.png"
        syn.embed1.use = true 
        syn.embed1.title = "BOT INFORMATION"
        syn.embed1.description = "Current World : ||".. bot:getWorld().name .."||\nTask : ".. status
        syn.embed1.color = 16740100
        syn.embed1.thumbnail = "https://cdn.discordapp.com/attachments/1180523579381665933/1180577805403181076/20231203_013427.png"
        syn.embed1:addField("<:bot:1229904719720484990> BOT INFORMATION","<:arrow:1231993245144318083> Status : "..getStatus(bot).. "("..bot:getPing()..")\n<:arrow:1231993245144318083> Name : "..bot.name.." (No."..indexBot..")\n<:arrow:1231993245144318083> Level :" ..bot.level.."\n",true)
        syn.embed1:addField("STORAGE INFORMATION","<:arrow:1231993245144318083> Soil Block Left = " ..numF(totalSoils).. "\n",true)
        syn.embed1:addField(getInfo(soilId).name:upper().."","<:arrow:1231993245144318083> Soil Placed :" ..numF(placeds).."\n<:arrow:1231993245144318083> Soil Unplaced : "..numF(unplaceds).."\n",true)
        syn.embed1:addField("<:world:1229904934695338145>  TOTAL WORLD ("..totalWSoil..")",waktuWorld().."\n",false)
        syn.embed1:addField("UPTIME","<:arrow:1231993245144318083>"..math.floor(te/86400).." Days "..math.floor(te%86400/3600).." Hours "..math.floor(te%86400%3600/60).." Minutes",false)
        syn.embed1.footer.icon_url = "https://cdn.discordapp.com/attachments/1180523579381665933/1180577805403181076/20231203_013427.png"
        syn.embed1.footer.text = "Lucifer Build Soil \n"..os.date("!%a %b %d, %Y at %I:%M %p", os.time() + 7 * 60 * 60)
        if msgIdBot ~= "" then 
            syn:edit(msgIdBot)
        else 
            syn:send()
        end
    end
end



sleep(1000 * (indexBot - 1))
while true do 
    while bot.status ~= BotStatus.online do 
        sleep(1000)
    end
    takeFarm(listWorld)
    tt = os.time()
    placeds = 0 
    unplaceds = 0
    if multyBot then
        for _,world in pairs(worldSoil) do
            if #worldList >= 10 then 
                worldList = {} 
                waktu = {}
                tree = {} 
                fossil = {} 
            end
            table.insert(worldList,world.name)
            totalWSoil = totalWSoil + 1
            sleep(100)
            warp(world.name,world.door)
            sleep(100)
            botInfo("Starting Build")
            if not nuked then 
                buildSoil(world.name,world.door)
                sleep(100)
            else
                notifBot(webhookNuked,"<a:ping:1233214776880922757> "..getBot().name.." ("..indexBot..") WORLD ||"..world.name:upper().." Nuked @everyone")
                sleep(100)
            end
            tt = os.time() - tt
            waktu[world.name] = math.floor(tt%86400/3600).." H "..math.floor(tt%3600/60).." M "..math.floor(tt%60).." S"
            botInfo("Finishing Farm")
        end
        if totalWSoil >= #worldSoil + 1 then 
            if findItemSyn(soilId) > 0 then 
                dropSoil(storageSoil,doorSoil)
                sleep(100)
            else 
                 break
            end
        end
    else 
        warp(worldSoils,doorSoils)
        sleep(100)
        if #worldList >= 10 then 
            worldList = {} 
            waktu = {}
            tree = {} 
        end
        table.insert(worldList,world.name)
        totalWSoil = totalWSoil + 1
        if not nuked then
            sleep(100)
            buildSoil(worldSoils,doorSoils)
            sleep(100)
            te = os.time() - tt
            waktu[world.name] = math.floor(tt%86400/3600).." H "..math.floor(tt%3600/60).." M "..math.floor(tt%60).." S"
            botEvent("Finishing Farm")
        else
            notifBot(webhookNuked,"<a:ping:1233214776880922757> "..getBot().name.." ("..indexBot..") WORLD ||"..worldSoils:upper().." Nuked @everyone")
            sleep(100)
        end
    end
end
end
