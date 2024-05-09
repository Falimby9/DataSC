-- Bot Movement Settings
botMoveInterval = 235     -- Interval Move BOT
botMoveRange = 3          -- Move Range Bot
botAnimation = true       -- Animation Bot 
botCollectRange = 3       -- Bot Collect Range

-- Bot Behavior Settings
stopBotFarm = 20          -- Bot Will Stop on Farm 
terminateBotBanned = true -- Stop Script if Bot Banned
restBotMode = "HOUR"      -- 2 mode HOURS & INTERVAL keep "" wantt rest
HourTime = {"01:22","02:34","23:22","14:21"}      -- Time Rest for HOUR Mode
intervalTime = 60         -- Format Minutes for INTERVAL Mode
rangeTimeRdp = 1          -- if Your RDP 10:00am and your Location Time 09:00am rangeTimeRdp = 1
restDuration = 15         -- Duration on Resting in minutes
disconnectOnRest = true   -- Bot OFFLINE on Resting

-- Farming Settings
listFarm = "Farm.txt"     -- List Farm Format [WORLD:DOOR]
autoDetect = false        -- Auto Detect Farmable
itmId = 4584              -- Block Id Item Farmable
itmSeed = itmId + 1       -- Don't Change
detectFloating = true     -- Detect Floating Item 
rootFarm = false          -- Bountiful Farm
ignoreGems = false        -- Ignore Gem on Harvest

-- Storage Pack Settings
storagePack = {"YAZIDKEBON"} -- World Pack "","","", for Multy World
doorPack = "AYUNSS6"         -- Door Id Pack  
bgDropPack = 20           -- Background Drop Pack

-- Storage Seed Settings
storageSeed = {"AYUNSUNDARIFARM"} -- World Seed "","","", for Multy World
doorSeed = "AYUNSS6"         -- Door Seed
bgDropSeed = 1422         -- Background Drop SEED


-- Farming Break Settings
diffBreak = true          -- Break Different World need on List Break file 
listBreak = "BREAK.txt"   -- File list World Break Format [WORLD:DOOR]
breakTutor = false        -- Break on Tutor = scan from My world 

-- World Break Settings
storageWB = "SYYNNPICK"       -- Storage item to make NEW WORLD BREAK
doorWb = "AYUNSS6"           -- Door Id Storage Worl Break 
withJammer = true         -- World Use Jammer 
withNumber = true         -- World name With Number 
letterWorld = 9           -- letterWorld for search new World Break
newWBid = "SYYNN6"     -- Door ID for New World Break (diffBreak = true)

-- Bot Tool Settings
takePickaxe = true        -- Take Pickaxe 
worldPick = "SYYNNPICK"       -- World Pickaxe
doorPick = "AYUNSS6"         -- Door Id Pickaxe

worldFireHose = ""  -- empty == Skip World Fire
doorFireHose = ""  -- door Fire Hose


-- Bot Action Settings
dontPlant = false         -- Cutting Farm , bot dont Want Planting Seeds
refillFarm = true         -- Bot Will Planting , if farm full start Harvesting

-- Custom Tile Break Settings
customTileBreak = false   -- Custom Tile Work For Break on Farm
posX = 2                  -- Pos Y break on Farm Use LUCIFER TILE
posY = 4                  -- Pos X break on Farm Use LUCIFER TILE
breakTile = 3             -- < 3 Bot BREAK with Horizon Mode max 5 tile

-- Bot Delay Settings
delayWarp = 7000          -- Delay Warp 
delayBreak = 200          -- Delay Break
delayPlant = 190          -- Delay Plant 
delayPlace = 180          -- Delay Place Item 
delayHarvest = 190        -- Delay Harvesting 
delayExe = 1000           -- Delay Execute from Bot to Bot 

-- Proxy Settings
rotatingProxy = true      -- If false -- Reconnect Use auto Reconnect Lucifer
delayRecon = 7000         -- Delay Reconnect in spam Connect "Must Rotating Proxy"

-- Pack Settings
buyPack = true            -- true/false for enable or disable
packDebug = "world_lock"  -- Debug Pack
pricePack = 2000          -- Price Pack
itmPack = {242}           -- Item in Pack 
minBuyPack = 5            -- Minimal Pack to buy Pack 

-- Trash Settings
trashList = {5742, 5744, 5746, 5748, 1406, 9204, 1406, 5024, 5026, 5028, 5032, 5034, 5036, 5038, 5040, 5042,5044, 7162, 7164, 5018, 8846, 8850, 1400} -- Trash List Item
minTrash = 50             -- Minimal Bot Will Trash in TrashList 

-- Appearance Settings
changeSkinColor = true    -- true/false for enable or disable
buyClothes = true         -- true/false for enable or disable
randomChat = true         -- true/false for enable or disable
textChatList = {
  "HI, my name is "..getBot().name,
  "Aku Suka Col col",
  "",
  "COBA AJA kalo bisa",
  "Aku Real Player bg",
  "I like Growtopia",
  "Show me Your Face",
}  -- Text For Random Chat

-- World Joining Settings
joinRandomWorld = true    -- true/false for enable or disable
worldToJoin = {"MESRA","TOKOLAVA","TOKOJAYA"} -- List World To JOIN

-- Webhook Settings
censoredWebhookFarm = true  -- Censored Your Farm Name,Etc
webhookEvent = "https://discord.com/api/webhooks/1205901671415414875/GKPuSvrk_f5kRq8mUzSAQZTsLLURb65XQJvqzuqqzDc6tCTYJZLwGadi6vpzePpzh_aD" -- Webhook Event BOT
msgIdEvent = ""          -- "" == Spam Message
webhookOffline = "https://discord.com/api/webhooks/1205901452782870568/YrCeN9FeB5kWk5PpCZDHoZzhFbZ-9f3frYAvf9ZPULxWaFIj_nWmmVlleRUJ7ejdKb5-" -- Webhook Notif Offline BOT
webhookNuked = "https://discord.com/api/webhooks/1205901452782870568/YrCeN9FeB5kWk5PpCZDHoZzhFbZ-9f3frYAvf9ZPULxWaFIj_nWmmVlleRUJ7ejdKb5-"  -- Webhook Notif Nuked

webhookPack = "https://discord.com/api/webhooks/1205900838095163472/hrc47RfZ9iXgK03P2IZ7F5vg2koD3LPMyw4GR9Tln6Qjs8BjrKj1yK2rGVes8XDANbvw"  -- Webhook  Pack
msgIdPack = "1205901246855258132"  -- msg Id Webhook

webhookSeed = "https://discord.com/api/webhooks/1205900838095163472/hrc47RfZ9iXgK03P2IZ7F5vg2koD3LPMyw4GR9Tln6Qjs8BjrKj1yK2rGVes8XDANbvw"  -- Webhook Info Seed
msgIdSeed = "1205901246855258132"  -- msg Id Webhook

activateScript = true

if activateScript then 
bot = getBot() 
for i,botz in pairs(getBots()) do 
    if botz.name:upper() == bot.name:upper() then 
        indexBot = i 
    end
    indexLast = i 
end
bot.move_interval = botMoveInterval
bot.move_range = botMoveRange
bot.collect_range = botCollectRange
nuked = false 
firing = false
totalFarm = 0 
worldFarm = ""
doorFarm = ""
worldBreak = ""
doorBreak = ""
noDoor = ""
totalPack = 0 
totalSeed = 0
devideSeed = math.ceil(indexLast / #storageSeed)
storageSeed = storageSeed[math.ceil(indexBot/devideSeed)]
devidePack = math.ceil(indexLast / #storagePack)
storagePack = storagePack[math.ceil(indexBot / devidePack)]
worldList = {}
waktu = {}
tree = {}
fossil = {}
tileBreak = {}
Btile = {}
currentCloth = {}
planteds = 0 
readys = 0
minimumGems = pricePack * minBuyPack
t = os.time()
rb = os.time()
local year = 2023
local month = 12 
local dates = 14
function getFresh(y,m,d)
    local currentTime = t 
    local targetTime = os.time({year = y,month = m,day = d})
    local timeDiff = currentTime - targetTime
    local dayDiff = timeDiff / (24 * 60 * 60)
    dayDiff = math.floor(dayDiff)
    return dayDiff
end
dayFreshBot = getFresh(year,month,dates)
if bot:getAge() >= dayFreshBot then 
    freshBot = false
else 
    freshBot = true
end 

for i,botz in pairs(getBots()) do 
    if botz.name:upper() == bot.name:upper() then 
        indexBot = i 
    end
end
if autoDetect then
    itmId = 0 
    itmSeed = 0 
end

local force = {
    ['collect'] = function(bool) while bot.auto_collect ~= bool do bot.auto_collect = bool sleep(1) end end,
    ['ignore_gems'] = function(bool) while bot.ignore_gems ~= bool do bot.ignore_gems = bool sleep(1) end end, 
    }
webhooksyn = "https://discord.com/api/webhooks/1185569967626797178/FsLTvC0feuGjn8olpRFliriziUUDOz5gqkGiOuzkFHLbDpufGyY8cJX2ofqcO4OUujjL"

if breakTile > 2 or breakTile == 1 then 
    for i = math.floor(breakTile/2),1,-1 do
        i = i * -1
        table.insert(tileBreak,i)
    end
    for i = 0, math.ceil(breakTile/2) - 1 do
       table.insert(tileBreak,i)
    end
elseif breakTile == 2 then
    for i = math.floor(breakTile/2),2,1 do
       i = i * -1
       table.insert(tileBreak,i)
    end
end
function numF(n)
  return tostring(math.floor(n)):reverse():gsub("(%d%d%d)","%1,"):gsub(",(%-?)$","%1"):reverse()
end
function tileDrop(x,y,num)
    local count = 0
    local stack = 0
    for _,obj in pairs(bot:getWorld():getObjects()) do
        if round(obj.x / 32) == x and math.floor(obj.y / 32) == y then
            count = count + obj.count
            stack = stack + 1
        end
    end
    if stack < 20 and count <= (4000 - num) then
        return true
    end
    return false
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
            worldFarm = data[1]
            doorFarm = data[2]
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

function takeWB(synList)
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
            worldBreak = data[1]
            doorBreak = data[2]
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

function punch(x,y)
    return bot:hit(bot.x + x,bot.y + y)
end

function place(id,x,y)
    return bot:place(bot.x + x,bot.y + y,id)
end


function tilePlace(x,y)
   for _,num in pairs(tileBreak) do
      if breakTile > 2 or breakTile == 1 then
          if bot:getWorld():getTile(x - 1,y + num).fg == 0 and bot:getWorld():getTile(x - 1,y + num).bg == 0 then
             return true
          end
      elseif breakTile == 2 then
          if bot:getWorld():getTile(x + num,y).fg == 0 and bot:getWorld():getTile(x + num,y).bg == 0 then
             return true
          end
      end
  end
  return false
end

function tilePunch(x,y)
   for _,num in pairs(tileBreak) do
      if breakTile > 2 or breakTile == 1 then 
          if bot:getWorld():getTile(x - 1,y + num).fg ~= 0 or bot:getWorld():getTile(x - 1,y + num).bg ~= 0 then
              return true
          end
      elseif breakTile == 2 then  
          if bot:getWorld():getTile(x + num,y).fg ~= 0 or bot:getWorld():getTile(x + num,y).bg ~= 0 then
             return true
          end
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

function warpSyn(world,id) 
    addEvent(Event.variantlist, function(variant, netid)
        if variant:get(0):getString() == "OnConsoleMessage" then
            if variant:get(1):getString():find("inaccessible") then
                nuked = true
            end
        end
    end)
    cok = 0
    Wrong = 0
    while not bot:isInWorld(world:upper()) and not nuked do
        while bot.status ~= BotStatus.online or bot:getPing() == 0 do
            sleep(1000)
            if rotatingProxy then 
                repeat
                    bot:connect()
                    sleep(delayRecon)
                until getStatus(bot) == "Banned" or getStatus(bot) == "Online"
                if getStatus(bot) == "Online" then 
                    notifBot(webhookOffline,"<a:on:1233219436278841355> "..getBot().name.." ("..indexBot..") Bot Status "..getStatus(bot))
                else 
                    notifBot(webhookOffline,"<a:ping:1233214776880922757> "..getBot().name.." ("..indexBot..") Bot Status "..getStatus(bot))
                    if terminateBotBanned then 
                        bot:stopScript()
                    end
                end
            end
        end
        if id ~= "" then
            if not bot:isInWorld() then 
                bot:sendPacket(3,"action|join_request\nname|"..world:upper().."|"..id:upper().."\ninvitedWorld|0")
                listenEvents(2)
            else 
                bot:sendPacket(3,"action|quit_to_exit")
                sleep(1000)
                bot:sendPacket(3,"action|join_request\nname|"..world:upper().."|"..id:upper().."\ninvitedWorld|0")
                listenEvents(2)
            end
        else
            if not bot:isInWorld() then 
                bot:sendPacket(3,"action|join_request\nname|"..world:upper().."\ninvitedWorld|0")
                listenEvents(2)
            else
                bot:sendPacket(3,"action|quit_to_exit")
                sleep(1000)
                bot:sendPacket(3,"action|join_request\nname|"..world:upper().."\ninvitedWorld|0")
                listenEvents(2)
            end
        end
        sleep(delayWarp)
        if cok == 5 then
            for i = 1,300 do
                sleep(1000)
                if bot:isInWorld(world:upper()) then
                    break
                end
            end
            cok = 0
        else
            cok = cok + 1
        end
    end
    if id ~= "" and bot:getWorld():getTile(bot.x,bot.y).fg == 6 and not nuked then
        while bot.status ~= BotStatus.online or bot:getPing() == 0 do
            sleep(1000)
              if rotatingProxy then 
                repeat
                    bot:connect()
                    sleep(delayRecon)
                until getStatus(bot) == "Banned" or getStatus(bot) == "Online"
                if getStatus(bot) == "Online" then 
                    notifBot(webhookOffline,"<a:on:1233219436278841355> "..getBot().name.." ("..indexBot..") Bot Status "..getStatus(bot))
                else 
                    notifBot(webhookOffline,"<a:ping:1233214776880922757> "..getBot().name.." ("..indexBot..") Bot Status "..getStatus(bot))
                    if terminateBotBanned then 
                        bot:stopScript()
                    end
                end
            end
        end
        if Wrong == 3 then 
            notifBot(webhookOffline,"<a:ping:1233214776880922757> "..getBot().name.." ("..indexBot..") ||"..world:upper().."|| Wrong Door, will got NUKED info")
            nuked = true 
        else
            for i = 1,3 do
                if bot:getWorld():getTile(bot.x,bot.y).fg == 6 then
                    bot:sendPacket(3,"action|quit_to_exit")
                    bot:sendPacket(3,"action|join_request\nname|"..world:upper().."|"..id:upper().."\ninvitedWorld|0")
                    sleep(2000)
                end
            end
            Wrong = Wrong + 1
        end
    end
end

function restingBot(world,door,x,y)
    currentTime = os.time()
    if restBotMode == "HOUR" then 
        for _,rest in pairs(HourTime) do  
            if os.date("%H:%M", os.time() + rangeTimeRdp * 60 * 60) == rest then
                if disconnectOnRest then 
                    bot.auto_reconnect = false 
                    sleep(100)
                    bot:disconnect()
                end
                notifBot(webhookOffline,"<a:questionsyn:1235453801758982216> "..getBot().name.." ("..indexBot..") Resting Time")
                sleep(restDuration * 60 * 1000)
                bot.auto_reconnect = true
                reconnect(world,door,x,y)
            end
        end 
    elseif restBotMode == "INTERVAL" then 
        restNow = currentTime - rb
        if restNow >= (intervalTime * 60) then 
            if disconnectOnRest then 
                bot.auto_reconnect = false 
                sleep(100)
                bot:disconnect()
            end
            notifBot(webhookOffline,"<a:questionsyn:1235453801758982216> "..getBot().name.." ("..indexBot..") Resting Time")
            sleep(restDuration * 60 * 1000)
            rb = os.time()
            bot.auto_reconnect = true
            reconnect(world,door,x,y)
        end
    end
end

function reconnect(world,id,x,y)
    if bot.status == BotStatus.online and (bot.x ~= x or bot.y ~= y) then
        if restBotMode ~= "" then
            restingBot(world,id,x,y)
        end
        while bot:getWorld().name ~= world:upper() do
            if bot:isInWorld() then 
                bot:sendPacket(3,"action|quit_to_exit")
                sleep(500)
                bot:sendPacket(3,"action|join_request\nname|"..world:upper().."\ninvitedWorld|0")
                sleep(10000)
            else
                bot:sendPacket(3,"action|join_request\nname|"..world:upper().."\ninvitedWorld|0")
                sleep(10000)
            end
        end
        if id ~= "" and getTile(bot.x,bot.y).fg == 6 then
            bot:sendPacket(3,"action|quit_to_exit")
            sleep(1000)
            bot:sendPacket(3,"action|join_request\nname|"..world:upper().."|"..id:upper().."\ninvitedWorld|0")
            sleep(2000)
        end
        if x and y and (bot.x ~= x or bot.y ~= y) then
            bot:findPath(x,y)
            sleep(100)
        end
    end
    if bot.status ~= BotStatus.online or bot:getPing() == 0 then
        if restBotMode ~= "" then
            restingBot(world,id,x,y)
        end
        notifBot(webhookOffline,"<a:ping:1233214776880922757> "..getBot().name.." ("..indexBot..") Bot Status Reconnecting")
        while bot.status ~= BotStatus.online or bot:getPing() == 0 do
            if rotatingProxy then 
                repeat
                    bot:connect()
                    sleep(delayRecon)
                    if getStatus(bot) == "Changing Subserver" then 
                        sleep(10000)
                    end
                until getStatus(bot) == "Banned" or getStatus(bot) == "Online"
                if getStatus(bot) == "Online" then 
                    notifBot(webhookOffline,"<a:on:1233219436278841355> "..getBot().name.." ("..indexBot..") Bot Status "..getStatus(bot))
                else 
                    notifBot(webhookOffline,"<a:ping:1233214776880922757> "..getBot().name.." ("..indexBot..") Bot Status "..getStatus(bot))
                    if terminateBotBanned then 
                        bot:stopScript()
                    end
                end
            end
            sleep(1000)
        end
        while bot:getWorld().name ~= world:upper() do
            if bot:isInWorld() then 
                bot:sendPacket(3,"action|quit_to_exit")
                sleep(500)
                bot:sendPacket(3,"action|join_request\nname|"..world:upper().."\ninvitedWorld|0")
                sleep(10000)
            else
                bot:sendPacket(3,"action|join_request\nname|"..world:upper().."\ninvitedWorld|0")
                sleep(10000)
            end
        end
        if id ~= "" and getTile(bot.x,bot.y).fg == 6 then
            bot:sendPacket(3,"action|quit_to_exit")
            sleep(1000)
            bot:sendPacket(3,"action|join_request\nname|"..world:upper().."|"..id:upper().."\ninvitedWorld|0")
            sleep(2000)
        end
        if x and y and (bot.x ~= x or bot.y ~= y) then
            bot:findPath(x,y)
            sleep(100)
        end
    end
end

function wear(id,world,door) 
    if findItemSyn(id) == 0 and world ~= "" then
        bot.auto_collect = false
        idName = getInfo(id).name
        botEvent("Taking "..idName)
        warpSyn(world,door)
        sleep(100)
        while findItemSyn(id) == 0 do 
            for _,obj in pairs(bot:getWorld():getObjects()) do 
                if obj.id == id then 
                    bot:findPath(round(obj.x/32),math.floor(obj.y/32))
                    bot:collectObject(obj.oid,3)
                    sleep(200)
                end
                if findItemSyn(id) > 0 then 
                    break
                end
            end
            sleep(100)
        end
        bot:moveTo(-1,0)
        sleep(100)
        bot:setDirection(false)
        sleep(100)
        while findItemSyn(id) > 1 do 
            bot:sendPacket(2,"action|drop\n|itemID|"..id)
            sleep(500)
            bot:sendPacket(2,"action|dialog_return\ndialog_name|drop_item\nitemID|"..id.."|\ncount|"..findItemSyn(id) - 1)
            sleep(3000)
        end
        bot:wear(id)
        sleep(500)
    end
end

function scanReady(world,door)
    local count = 0 
    for _,tile in pairs(bot:getWorld():getTiles()) do 
        if tile.fg == itmSeed or tile.bg == itmSeed then 
            if tile:canHarvest() then 
                count = count + 1
            end
        end
    end
    return count 
end

function clearBlock(world,door)
if not freshBot then
    for _,tile in pairs(bot:getWorld():getTiles()) do
        if tile.fg == itmId then 
            bot:findPath(tile.x,tile.y)
            if bot:isInTile(tile.x,tile.y) then 
                while bot:getWorld():getTile(tile.x,tile.y).fg == itmId and math.floor(bot:getWorld():getLocal().posx / 32) == tile.x and math.floor(bot:getWorld():getLocal().posy / 32) == tile.y do 
                    punch(0,0)
                    sleep(delayBreak)
                    reconnect(world,door,tile.x,tile.y)
                end
            end
        end 
    end
end
end

function isPlantable(tile)
    local tempTile = tile -- get tile below
    if not tempTile.fg then 
        return false 
    end
    local collision = getInfo(tempTile.fg).collision_type
    return tempTile and ( collision == 1 or collision == 2 )-- 1 = solid, 2 = withPlats
end

function randomChating()
    if randomChat then 
        local index = math.random(1,#textChatList)
        bot:say(textChatList[index])
        sleep(1000)
    end 
end

function check(x,y)
    for index,tile in pairs(Btile) do
        if tile.x == x and tile.y == y then
            return true 
        end
    end
    return false 
end 

function harvesting(world,door)
    force['ignore_gems'](ignoreGems)
    sleep(100)
    force['collect'](true)
    bot.collect_range = 3 
    sleep(100)
    scanner()
    sleep(100)
    randomChating()
    botEvent("Harvesting Farm")
    harvest1 = 0 
    harvest2 = 99 
    harvest3 = 1
    istile = 0 
    isme = 2
    if detectFloating and not freshBot then 
        scanTakeFloat()
    end
    for yharvest = 53, 0, -1 do 
        for xharvest = harvest1, harvest2, harvest3 do
            if bot:getWorld():getTile(xharvest,yharvest).fg == itmSeed and bot:getWorld():getTile(xharvest,yharvest):canHarvest() and bot:getWorld().name == worldFarm:upper() then 
                bot:findPath(xharvest,yharvest)
                for i = 0,isme,harvest3 do 
                    while bot:getWorld():getTile(xharvest + i,yharvest).fg == itmSeed and bot:getWorld():getTile(xharvest + i,yharvest):canHarvest() and math.floor(bot:getWorld():getLocal().posx/32) == xharvest and math.floor(bot:getWorld():getLocal().posy/32) == yharvest and bot:getWorld().name == worldFarm:upper() do 
                        if not check(xharvest+i,yharvest) then 
                            tree[worldFarm] = tree[worldFarm] + 1
                            table.insert(Btile, {x = xharvest + i,y = yharvest})
                        end 
                        punch(0 + i,0)
                        sleep(delayHarvest)
                        reconnect(world,door,xharvest,yharvest)
                    end
                    if findItemSyn(itmSeed) >= 3 and not dontPlant then 
                        while bot:getWorld():getTile(xharvest + i,yharvest).fg == 0 and isPlantable(bot:getWorld():getTile(xharvest+ i,yharvest + 1)) and math.floor(bot:getWorld():getLocal().posx/32) == xharvest and math.floor(bot:getWorld():getLocal().posy/32) == yharvest and bot:getWorld().name == worldFarm:upper() do
                            place(itmSeed,0+i,0)
                            sleep(delayPlant)
                            reconnect(world,door,xharvest,yharvest)
                        end
                    end
                    if rootFarm and bot:getWorld():getTile(xharvest + i,yharvest + 1).fg == 8644 then 
                        while bot:getWorld():getTile(xharvest + i,yharvest).fg == 8644 and math.floor(bot:getWorld():getLocal().posx/32) == xharvest and math.floor(bot:getWorld():getLocal().posy/32) == yharvest and bot:getWorld().name == worldFarm:upper() do 
                            punch(0 + i,0)
                            sleep(delayHarvest)
                            reconnect(world,door,xharvest,yharvest)
                        end
                    end
                end
            end
            if not freshBot and findItemSyn(itmId) > 195 then 
                break
            elseif freshBot and bot.level >= getInfo(itmId).level and findItemSyn(itmId) > 195 then 
                freshBot = false
                break
            end
        end
        if not freshBot and findItemSyn(itmId) > 195 then 
            break
        elseif freshBot and bot.level >= getInfo(itmId).level and findItemSyn(itmId) > 195 then 
            freshBot = false
            break
        end
        if istile == 1 then 
            if harvest1 == 0 then 
                harvest1 = 99 
                harvest2 = 0 
                harvest3 = -1 
                istile = 0 
                isme = -2
            elseif harvest1 == 99 then 
                harvest1 = 0 
                harvest2 = 99 
                harvest3 = 1
                istile = 0 
                isme = 2
            end
        else 
            istile = istile + 1
        end
    end
end

function planting(world,door) 
    force['ignore_gems'](ignoreGems)
    sleep(100)
    force['collect'](true)
    scanner()
    sleep(100)
    botEvent("Planting World")
    sleep(100)
    randomChating()
    plant1 = 0 
    plant2 = 99 
    plant3 = 1 
    istiles = 0 
    ismes = 2 
    for yplant = 53, 0, -1 do 
        for xplant = plant1, plant2, plant3 do
            for i = 0,ismes,plant3 do 
                if bot:getWorld():getTile(xplant+ i ,yplant).fg == 0 and isPlantable(bot:getWorld():getTile(xplant+ i,yplant + 1)) and findItemSyn(itmSeed) >= 3 then 
                    bot:findPath(xplant,yplant)
                    while bot:getWorld():getTile(xplant + i,yplant).fg == 0 and isPlantable(bot:getWorld():getTile(xplant + i,yplant + 1)) and math.floor(bot:getWorld():getLocal().posx/32) == xplant and math.floor(bot:getWorld():getLocal().posy/32) == yplant and bot:getWorld().name == worldFarm:upper() and findItemSyn(itmSeed) > 0 do 
                        place(itmSeed,0 + i,0)
                        sleep(delayPlant)
                        reconnect(worldFarm,doorFarm,xplant,yplant)
                    end
                end
            end
            if findItemSyn(itmSeed) == 0 then 
                takeSeed(world,door)
                sleep(100)
            end
        end
        if istiles == 1 then 
            if plant1 == 0 then 
                plant1 = 99 
                plant2 = 0 
                plant3 = -1 
                istiles = 0 
                ismes = -2
            elseif plant1 == 99 then 
                plant1 = 0
                plant2 = 99
                plant3 = 1 
                istiles = 0
                ismes = 2
            end
        else
            istiles = istiles + 1
        end
    end
end

function takeSeed(world,door)
    bot.auto_collect = true 
    sleep(100)
    warpSyn(storageSeed,doorSeed)
    sleep(100)
    for _,obj in pairs(bot:getWorld():getObjects()) do 
        if obj.id == itmSeed then 
            bot:findPath(round(obj.x/32),math.floor(obj.y/32)) 
            sleep(100)
            bot:collectObject(obj.oid,3)
            sleep(1000)
        end
        if findItemSyn(itmSeed) > 0 then 
            break
        end
    end
    warpSyn(world,door)
end 

function trash()
    local function cek() 
        for _,trashs in pairs(trashList) do 
            if findItemSyn(trashs) >= minTrash then
                return true
            end
        end
        return false
    end
    if cek() then 
        botEvent("Trashing Trash")
        for _,Trash in pairs(trashList) do 
            if findItemSyn(Trash) > 0 then 
                bot:sendPacket(2,"action|trash\n|itemID|"..Trash)
                sleep(math.random(1000,1500))
                bot:sendPacket(2,"action|dialog_return\ndialog_name|trash_item\nitemID|"..Trash.."|\ncount|"..findItemSyn(Trash))
                sleep(math.random(1000,1500))
            end
        end 
    end
end

function checkLock()
    locks = {242,9640,202,204,206,1796,4994,7188,408,2950,4428,4802,5814,5260,5980,8470,10410,11550,11586}
    for _,tile in pairs(bot:getWorld():getTiles()) do
        if includesNumber(locks, tile.fg) then
            return false
        end
    end
    return true
end

function includesNumber(table, num)
    for _,n in pairs(table) do
        if n == num then
            return true
        end
    end
    return false
end

function countTile()
    countFg = 0
    countBg = 0
    for _,tile in pairs(bot:getWorld():getTiles()) do
        if tile.fg ~= 0 then
            countFg = countFg + 1
        end
        if tile.bg ~= 0 then
            countBg = countBg + 1
        end
    end
    if countBg == 3600 and countFg == 3601 then
        return true
    end
    return false
end

function name(count)
    if withNumber then
        local str = ""
        local chars = "abcdefghijklmnopqrstuvwxyz0123456789"
        for i = 1, count do
            local randomIndex = math.random(1, #chars)
            str = str .. chars:sub(randomIndex, randomIndex)
        end
        return str:upper()
    else
        local str = ""
        for i = 1, count do
            str = str..string.char(math.random(97,122))
        end
        return str:upper()
    end
end

function takeItem(id) 
    for _,obj in pairs(bot:getWorld():getObjects()) do 
        if obj.id == id then 
            bot:findPath(round(obj.x/32),math.floor(obj.y/32))
            bot:collectObject(obj.oid,3)
            sleep(100)
        end
        if findItemSyn(id) > 0 then
            break
        end
    end
    bot:moveTo(-1,0)
    sleep(200)
    bot:setDirection(false)
    reconnect(storageWB,doorWb)
    if id == 2 then 
        while findItemSyn(id) > 2 do
            reconnect(storageWB,doorWb) 
            bot:sendPacket(2,"action|drop\n|itemID|"..id)
            sleep(500)
            bot:sendPacket(2,"action|dialog_return\ndialog_name|drop_item\nitemID|"..id.."|\ncount|"..findItemSyn(id) - 2)
            sleep(3000)
        end
    else
        while findItemSyn(id) > 1 do 
            reconnect(storageWB,doorWb)
            bot:sendPacket(2,"action|drop\n|itemID|"..id)
            sleep(500)
            bot:sendPacket(2,"action|dialog_return\ndialog_name|drop_item\nitemID|"..id.."|\ncount|"..findItemSyn(id) - 1)
            sleep(3000)
        end
    end
end

function reapply(x,y)
    bot:wrench(getBot().x + x,getBot().y + y)
    sleep(1000)
    bot:sendPacket(2,"action|dialog_return\ndialog_name|lock_edit\ntilex|"..(getBot().x + x).."|\ntiley|"..(getBot().y + y).."|\nbuttonClicked|recalcLock\n\ncheckbox_public|0\ncheckbox_ignore|1")
    sleep(1000)
end

function edit(x,y,id)
    bot:wrench(getBot().x + x,getBot().y + y)
    sleep(1000)
    bot:sendPacket(2,"action|dialog_return\ndialog_name|door_edit\ntilex|"..(getBot().x + x).."|\ntiley|"..(getBot().y + y).."|\ndoor_name|\ndoor_target|\ndoor_id|"..id.."\ncheckbox_locked|1")
    sleep(1000)
end

function breakIt(x,y)
    while getTile(getBot().x + x,getBot().y + y).fg ~= 0 or getTile(getBot().x + x,getBot().y + y).bg ~= 0 do
        bot:hit(getBot().x + x,getBot().y + y)
        sleep(160)
    end
end

function placeIt(id,x,y)
    while getTile(getBot().x + x,getBot().y + y).fg ~= id do
        bot:place(getBot().x + x,getBot().y + y,id)
        sleep(160)
    end
end

function createNewWb()
    if diffBreak then 
        botEvent("Creating New World Break")
        local fileName = listBreak 
        local file = io.open(fileName, "r")
        if file then 
            local lines = {} 
            for line in file:lines() do 
                table.insert(lines, line)
            end
            file:close()
            local pattern = worldBreak..":"..doorBreak
            for i, line in ipairs(lines) do 
                if line:match(pattern) then 
                    table.remove(lines, i)
                    break
                end
            end
            local file = io.open(fileName, "w")
            if file then 
                for _,line in ipairs(lines) do 
                    file:write(line.."\n")
                end
                file:close()
            end
        end
        nuked = false
        bot.auto_collect = false
        warpSyn(storageWB,doorWb)
        if withJammer then
            reconnect(storageWB,doorWb)
            takeItem(226)
            sleep(100)
        end
        takeItem(202)
        sleep(100)
        takeItem(2)
        sleep(100)
        takeItem(12)
        sleep(100)
        repeat 
            worldz = name(letterWorld)
            sleep(100)
            warpSyn(worldz,noDoor)
        until checkLock() and countTile()
        reconnect(worldz,noDoor)
        placeIt(202,0,-1)
        sleep(200)
        reconnect(worldz,noDoor)
        placeIt(2,-1,0)
        sleep(200)
        reconnect(worldz,noDoor)
        placeIt(2,1,0)
        sleep(200)
        if withJammer then
            reconnect(worldz,noDoor)
            placeIt(226,1,-1)
            sleep(200)
            reconnect(worldz,noDoor) 
            bot:hit(bot.x + 1, bot.y - 1)
            sleep(200)
        else
            reconnect(worldz,noDoor)
            placeIt(2,1,-1)
            sleep(200)
        end
        reconnect(worldz,noDoor)
        placeIt(12,-1,-1)
        sleep(200)
        reconnect(worldz,noDoor)
        breakIt(-2,1)
        reconnect(worldz,noDoor)
        breakIt(-1,2)
        reconnect(worldz,noDoor)
        breakIt(1,2)
        reconnect(worldz,noDoor)
        breakIt(2,1)
        sleep(200)
        reconnect(worldz,noDoor)
        reapply(0,-1)
        sleep(100)
        while bot:getWorld():getTile(bot.x,bot.y).fg == 6 do 
            reconnect(worldz,noDoor)
            edit(-1,-1,newWBid)
            sleep(100)
            warpSyn(worldz,newWBid)
            sleep(100)
        end
        notifBot(webhookOffline,"<a:ping:1233214776880922757> "..getBot().name.." ("..indexBot..") ||"..worldz:upper().."|| New World Break")
        local file = io.open(listBreak, "a")
        if file then 
            file:write(worldz..":"..newWBid.."\n")
        end
        file:close()
    else 
        nuked = false
        warpSyn(worldFarm,doorFarm)
        sleep(100)
        if bot.gem_count >= 2000 and findItemSyn(9640) == 0 then 
            while findItemSyn(242) == 0 do 
                bot:sendPacket(2,"action|buy\nitem|world_lock")
                sleep(math.random(1500,2000))
            end
        end
        botEvent("Creating New World Home")
        repeat
            worldz = name(letterWorld)
            sleep(100)
            warpSyn(worldz)
        until checkLock() and countTile()
        reconnect(worldz,noDoor)
        placeIt(242,0,-1)
        sleep(200)
        worldBreak = bot:getWorld().name
        notifBot(webhookOffline,"<a:ping:1233214776880922757> "..getBot().name.." ("..indexBot..") ||"..worldBreak:upper().."|| New World Break")
    end
end

function warpTutor()
  local treath = {"add_button|(%w+)|"}
  local worldgg = {}
  for i = 1,5 do 
    if not bot:isInWorld() then 
        warpSyn(worldFarm,doorFarm)
        sleep(100)
    end
    function On_Dialog(variant, netid)
        if variant:get(0):getString() == "OnDialogRequest" then
            if variant:get(1):getString():find("myWorldsUiTab_0") then
                if variant:get(1):getString():match(treath[i]) then
                    worldgg[i] = variant:get(1):getString():match(treath[i])
                    table.insert(worldgg,variant:get(1):getString():match(treath[i]))
                    worldgg[i+1] = variant:get(1):getString():match(treath[i])
                    warpSyn(worldgg[i],noDoor)
                    sleep(delayWarp)
                else
                    nuked = true
                    createNewWb()
                end
            end
        end
    end
    addEvent(Event.variantlist, On_Dialog)
    bot:wrenchPlayer(getLocal().netid)
    bot:sendPacket(2, "action|dialog_return\ndialog_name|popup\nnetID|"..getLocal().netid.."|\nbuttonClicked|my_worlds")
    listenEvents(5)
    if bot:isInWorld() and not bot:isInWorld(worldFarm:upper()) and not nuked then 
        worldBreak = bot:getWorld().name
        break 
    else 
        nuked = false
        local combine = "addbutton|" .. worldgg[i] .. "|" ..worldgg[i].."|noflags|0|0|\n"..treath[1]
        table.insert(treath, combine)
    end
  end
end

function pnb(world,door)
    while findItemSyn(itmId) >= breakTile do 
        randomChating() 
        if diffBreak then 
            takeWB(listBreak)
            sleep(100)
        elseif breakTutor and worldBreak == "" then
            warpTutor()
        elseif not diffBreak and not breakTutor then
            worldBreak = world
            doorBreak = door
        end
        nuked = false
        warpSyn(worldBreak,doorBreak)
        sleep(100)
        if not nuked and bot:isInWorld(worldBreak:upper()) then 
            botEvent("Breaking Blocks")
            if not customTileBreak then 
                if not diffBreak and not breakTutor then 
                    if breakTile > 2 then 
                        posX = 1 
                        posY = math.floor(bot:getWorld():getLocal().posy/32)
                        if posY > 40 then 
                            posY = posY - 10
                        elseif posY < 11 then 
                            posY = posY + 10
                        end
                    else 
                        posX = math.floor(bot:getWorld():getLocal().posx/32)
                        posY = math.floor(bot:getWorld():getLocal().posy/32)
                    end
                elseif diffBreak or breakTutor then
                    posX = math.floor(bot:getWorld():getLocal().posx/32)
                    posY = math.floor(bot:getWorld():getLocal().posy/32)
                end
            end
            bot:findPath(posX,posY) 
            sleep(100)
            while findItemSyn(itmId) >= breakTile and findItemSyn(itmSeed) < 190 and math.floor(bot:getWorld():getLocal().posx / 32) == posX and math.floor(bot:getWorld():getLocal().posy / 32) == posY and bot:isInWorld(worldBreak:upper()) do
                while tilePlace(posX,posY) and findItemSyn(itmId) >= breakTile do 
                    for _,i in pairs(tileBreak) do 
                        if breakTile > 2 or breakTile == 1 then 
                            while bot:getWorld():getTile(posX - 1,posY + i).fg == 0 and findItemSyn(itmId) >= breakTile do 
                                place(itmId,-1,0+i)
                                sleep(delayPlace)
                                reconnect(worldBreak,doorBreak,posX,posY)
                            end
                        elseif breakTile == 2 then
                            while bot:getWorld():getTile(posX + i,posY).fg == 0 and findItemSyn(itmId) >= breakTile do 
                                place(itmId,0 + i,0)
                                sleep(delayPlace)
                                reconnect(worldBreak,doorBreak,posX,posY)
                            end
                        end
                    end
                end
                while tilePunch(posX,posY) do 
                    for _,i in pairs(tileBreak) do 
                        if breakTile > 2 or breakTile == 1 then 
                            while bot:getWorld():getTile(posX - 1, posY + i).fg ~= 0 or bot:getWorld():getTile(posX - 1, posY + i).bg ~= 0 do 
                                punch(-1,0 + i)
                                sleep(delayBreak)
                                reconnect(worldBreak,doorBreak,posX,posY)
                            end
                        elseif breakTile == 2 then
                            while bot:getWorld():getTile(posX + i, posY).fg ~= 0 or bot:getWorld():getTile(posX - i, posY).bg ~= 0 do 
                                punch(0 + i,0)
                                sleep(delayBreak)
                                reconnect(worldBreak,doorBreak,posX,posY)
                            end
                        end
                    end
                end
                if findItemSyn(itmSeed) > 150 then 
                    storeProfit(worldBreak,doorBreak,itmSeed)
                    sleep(100)
                end
                if bot.gem_count >= minimumGems then 
                    if bot:getInventory().slotcount < 36 then 
                        while bot:getInventory().slotcount < 36 do 
                            bot:sendPacket(2       ,"action|buy\nitem|upgrade_backpack")
                            sleep(4000)
                        end
                    end
                    trash()
                    sleep(100)
                    buyCloth()
                    if bot.gem_count >= minimumGems then
                        trash()
                        while bot.gem_count >= pricePack do   
                            bot:sendPacket(2,"action|buy\nitem|"..packDebug)
                            sleep(2000)
                        end
                        storeProfit(worldBreak,doorBreak)
                        sleep(100)
                    end 
                end
            end
        else
            nuked = false
            notifBot(webhookOffline,"<a:ping:1233214776880922757> "..getBot().name.." ("..indexBot..") ||"..worldBreak:upper().."|| NUKED Creating New World Break")
            warpSyn(world,door)
            sleep(100)
            if storageWB ~= "" and breakTutor or diffBreak then 
                createNewWb()
            end
        end
    end
    warpSyn(world,door)
    sleep(100)
end

function buyCloth()
    if buyClothes and #currentCloth < 5 then 
        local itemd = {}
        for _,items in pairs(bot:getInventory():getItems()) do 
            table.insert(itemd, items.id)
            if items.isActive then 
                table.insert(currentCloth, items.id)
            end
        end
        if #currentCloth < 5 then 
            while #currentCloth < 5 do 
                bot:sendPacket(2,"action|buy\nitem|rare_clothes")
                sleep(2000)
                for _,bCloth in pairs(bot:getInventory():getItems()) do 
                    if not includesNumber(itemd, bCloth.id) and findItemSyn(bCloth.id) >= 1 then 
                        bot:wear(bCloth.id)
                        sleep(1000)
                        table.insert(currentCloth, bCloth.id)
                    end
                end
            end
            local clothes = bot:getWorld():getLocal().clothes
            if clothes.hand ~= 98 and findItemSyn(98) > 0 then 
                bot:wear(98)
                sleep(1000)
            end
        end
    end
end

function storeProfit(world,door,ids)
    bot.auto_collect = false 
    sleep(100)
    local storageWorld = ""
    local doorStorage = ""
    local itemProfit = {}
    local bgDrop = 0
    local totalDrop = 0
    if ids == itmSeed then 
        botEvent("Droping Profit Seed")
        storageWorld = storageSeed
        sleep(10)
        doorStorage = doorSeed 
        sleep(10)
        bgDrop = bgDropSeed 
        sleep(10)
        table.insert(itemProfit, itmSeed)
    else
        botEvent("Droping Profit Pack")
        storageWorld = storagePack
        sleep(10)
        doorStorage = doorPack
        sleep(10)
        bgDrop = bgDropPack
        sleep(10)
        for _,drop in pairs(itmPack) do 
           table.insert(itemProfit, drop)
        end
    end
    warpSyn(storageWorld,doorStorage)
    sleep(100)
    for _,item in pairs(itemProfit) do  
        for _,tile in pairs(bot:getWorld():getTiles()) do 
            if tile.fg == bgDrop or tile.bg == bgDrop then 
                if tileDrop(tile.x,tile.y,findItemSyn(item)) then 
                    bot:findPath(tile.x - 1,tile.y)
                    sleep(100)
                    bot:setDirection(false)
                    sleep(100)
                    if ids == itmSeed then 
                        totalDrop = 100
                        totalSeed = totalSeed + totalDrop
                    else
                        totalDrop = findItemSyn(item)
                        totalPack = totalPack + 1
                    end
                    if findItemSyn(item) >= totalDrop and tileDrop(tile.x,tile.y,totalDrop) then 
                        bot:sendPacket(2,"action|drop\n|itemID|"..item)
                        sleep(500)
                        bot:sendPacket(2,"action|dialog_return\ndialog_name|drop_item\nitemID|"..item.."|\ncount|"..totalDrop)
                        sleep(500)
                    end
                end
            end
            if findItemSyn(item) < totalDrop then 
                if ids == itmSeed then 
                    packInfo(webhookSeed,msgIdSeed,infoPack())
                sleep(100)
                else 
                    packInfo(webhookPack,msgIdPack,infoPack())
                sleep(100)
                end
                break
            end 
        end
    end
    joinRandom()
    sleep(100)
    warpSyn(worldBreak,doorBreak)
    sleep(100)
    bot.auto_collect = true
end
function joinRandom() 
    if joinRandomWorld then 
        botEvent("Join Random Wold")
        for _,join in pairs(worldToJoin) do 
            bot:sendPacket(3,"action|quit_to_exit")
            sleep(500)
            bot:sendPacket(3,"action|join_request\nname|"..join:upper().."\ninvitedWorld|0")
            sleep(delayWarp)
        end
    end
end

function scanFarmable()
    local Id = 0
    local seeds = 0
    for _,tile in pairs(bot:getWorld():getTiles()) do 
        if tile:canHarvest() then 
            seeds = seeds + 1
        end
        if seeds > 0 then 
            if tile:canHarvest() then 
                id = tile.fg
            end
        end
    end
    return Id 
end

function infoPack()
    local store = {}
    for _,obj in pairs(bot:getWorld():getObjects()) do
        if store[obj.id] then
            store[obj.id].count = store[obj.id].count + obj.count
        else
            store[obj.id] = {id = obj.id, count = obj.count}
        end
    end
    local str = ""
    for _,object in pairs(store) do
        local dropInfo = getInfo(object.id)
        str = str.."\n"..dropInfo.name.." = "..object.count
    end
    return str
end

function waktuWorld()
    strWaktu = ""
    if censoredWebhookFarm then
        for _,worldzz in pairs(worldList) do
            strWaktu = strWaktu.."\n<:arrow:1231993245144318083> ||"..worldzz:upper().."|| ( <:time:1230149917499199508> "..(waktu[worldzz] or "?").." | <:peppersyn:1226198437096067274> "..(tree[worldzz] or 0).." | <:fossil:1226195061642100886> ".. (fossil[worldzz] or 0).." )"
        end
    else
        for _,worldzz in pairs(worldList) do
            strWaktu = strWaktu.."\n<:arrow:1231993245144318083>"..worldzz:upper().." ( <:time:1230149917499199508> "..(waktu[worldzz] or "?").." | <:peppersyn:1226198437096067274> "..(tree[worldzz] or 0).." | <:fossil:1226195061642100886> ".. (fossil[worldzz] or 0).." )"
        end
    end
    return strWaktu
end

function botEvent(status)
    local te = os.time() - t
    if webhookEventBot ~= "" then 
        local syn = Webhook.new(webhookEvent)
        syn.avatar_url = "https://cdn.discordapp.com/attachments/1180523579381665933/1180577805403181076/20231203_013427.png"
        syn.embed1.use = true 
        syn.embed1.title = "BOT INFORMATION"
        syn.embed1.description = "Current World : ||".. bot:getWorld().name .."||\nTask : ".. status
        syn.embed1.color = 16740100
        syn.embed1.thumbnail = "https://cdn.discordapp.com/attachments/1180523579381665933/1180577805403181076/20231203_013427.png"
        syn.embed1:addField("<:bot:1229904719720484990> BOT INFORMATION","<:arrow:1231993245144318083> Status : "..getStatus(bot).. "("..bot:getPing()..")\n<:arrow:1231993245144318083> Name : "..bot.name.." (No."..indexBot..")\n<:arrow:1231993245144318083> Level :" ..bot.level.."\n",true)
        syn.embed1:addField("","",false)
        syn.embed1:addField("PROFIT BOT","<:arrow:1231993245144318083> Total Pack = " ..totalPack.. "\n<:arrow:1231993245144318083> Total Seed = "..totalSeed.. "\n<:arrow:1231993245144318083> Obtained Gems = "..numF(bot.obtained_gem_count),true)
        syn.embed1:addField("","",false)
        syn.embed1:addField(getInfo(itmId).name:upper().." FARM","<:arrow:1231993245144318083> Tree Planted :" ..numF(planteds).."\n<:arrow:1231993245144318083> Ready Harvest : "..numF(readys).."\n",true)
        syn.embed1:addField("<:world:1229904934695338145>  TOTAL WORLD ("..totalFarm..")",waktuWorld().."\n",false)
        syn.embed1:addField("UPTIME","<:arrow:1231993245144318083>"..math.floor(te/86400).." Days "..math.floor(te%86400/3600).." Hours "..math.floor(te%86400%3600/60).." Minutes",false)
        syn.embed1.footer.icon_url = "https://cdn.discordapp.com/attachments/1180523579381665933/1180577805403181076/20231203_013427.png"
        syn.embed1.footer.text = "Lucifer Rotation V.1.2 \n"..os.date("!%a %b %d, %Y at %I:%M %p", os.time() + 7 * 60 * 60)
        if msgIdEvent ~= "" then 
            syn:edit(msgIdEvent)
        else 
            syn:send()
        end
    end
end

function packInfo(wb,id,desc)
    if wb ~= "" then 
        local syn = Webhook.new(wb)
        syn.avatar_url = "https://cdn.discordapp.com/attachments/1180523579381665933/1180577805403181076/20231203_013427.png"
        syn.embed1.use = true 
        syn.embed1.color = 16740100
        syn.embed1.title = "**<:world:1229904934695338145> PROFIT INFORMATION**"
        syn.embed1.thumbnail = "https://cdn.discordapp.com/attachments/1180523579381665933/1180577805403181076/20231203_013427.png"
        syn.embed1:addField("**<:ubisyn:1235474439689207862> WORLD**","||"..bot:getWorld().name.."||\n ",false)
        syn.embed1:addField("**<:bot:1229904719720484990> LAST DROP**",bot.name.." (No."..indexBot..")\n ",false)
        syn.embed1:addField("**<:orbs:1235606674497339422> DROPPED ITEMS**",desc.. "\n  ",false)
        syn.embed1.footer.icon_url = "https://cdn.discordapp.com/attachments/1180523579381665933/1180577805403181076/20231203_013427.png"
        syn.embed1.footer.text = "Lucifer Rotation V.1.2 by SYN\n"..os.date("!%a %b %d, %Y at %I:%M %p", os.time() + 7 * 60 * 60)
        if id ~= "" then 
            syn:edit(id)
        else 
            syn:send()
        end
    end
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

function notifSyn(webhookcok,status)
  if webhookEvent ~= "https://discord.com/api/webhooks/1205901671415414875/GKPuSvrk_f5kRq8mUzSAQZTsLLURb65XQJvqzuqqzDc6tCTYJZLwGadi6vpzePpzh_aD" then 
        local syn = Webhook.new(webhookcok)
        syn.avatar_url = "https://cdn.discordapp.com/attachments/1180523579381665933/1180577805403181076/20231203_013427.png"
        syn.embed1.use = true 
        syn.embed1.title = status
        syn.embed1.color = 16740100
        syn:send()
    end
end

function clearFire(world,door)
    wear(3066,worldFireHose,doorFireHose)
    sleep(100)
    warpSyn(worldFarm,doorFarm)
    sleep(100)
    if bot:isInWorld(worldFarm:upper()) and bot:getWorld():getTile(bot.x,bot.y).fg ~= 6 then
        for _,fire in pairs(bot:getWorld():getTiles()) do 
            if fire:hasFlag(4096) then 
                if bot:getWorld():getTile(fire.x,fire.y).fg == 0 or bot:getWorld():getTile(fire.x,fire.y).fg == itmSeed then 
                    bot:findPath(fire.x,fire.y)
                    for xFire = -3,3,1 do 
                        for yFire = -3,3,1 do
                            if bot:getWorld():getTile(bot.x+xFire,bot.y+yFire):hasFlag(4096) and bot.status == BotStatus.online then
                            while bot:getWorld():getTile(bot.x + xFire,bot.y + yFire):hasFlag(4096) do 
                                reconnect(worldFarm,doorFarm,fire.x,fire.y)
                                bot:hit(bot.x + xFire,bot.y + yFire)
                                sleep(200)
                            end
                            end
                        end 
                    end
                end
            end
        end
    end
    bot:unwear(3066)
    sleep(500)
    if findItemSyn(98) > 0 then 
        bot:wear(98)
        sleep(1000)
    end
end

function clearToxic()
  
end


function scanner()
    local planted = 0 
    local ready = 0 
    local fossils = 0
    for _,tile in pairs(bot:getWorld():getTiles()) do 
        if tile.fg == itmSeed or tile.bg == itmSeed then 
            planted = planted + 1 
            if tile:canHarvest() then 
                ready = ready + 1
            end
        end
        if tile.fg == 3918 then 
            fossils = fossils + 1
        end
        if tile:hasFlag(4096) then 
            notifBot(webhookNuked,"!!!"..getBot().name.." ("..indexBot..") ||"..bot:getWorld().name.."|| FARM FIRE !!! @everyone")
              firing = true
            if worldFireHose ~= "" then 
                firing = false
                clearFire(worldFarm,doorFarm)
                sleep(100)
            else  
                notifBot(webhookNuked,"!!!"..getBot().name.." ("..indexBot..") ||"..bot:getWorld().name.."|| Cannot Find World FIRE HOSE, Skipp World")
                firing = true 
                break
            end
        end
        if tile.fg == 788 then 
            notifBot(webhookNuked,"!!!"..getBot().name.." ("..indexBot..") ||"..bot:getWorld().name "|| FARM TOXIC !!! @everyone")
            sleep(100)
            clearToxic(worldFarm,doorFarm)
        end
    end
    readys = ready 
    planteds = planted
    fossil[worldFarm] = fossils
end

function scanTakeFloat()
    if detectFloating then 
        bot.auto_collect = true
        for _,obj in pairs(bot:getWorld():getObjects()) do 
            if obj.id == itmSeed or obj.id == itmId then 
                reconnect(worldFarm,doorFarm)
                bot:findPath(round(obj.x/32),math.floor(obj.y/32))
            end
            if findItemSyn(itmId) >= 190 or findItemSyn(itmSeed) == 200 then 
                break
            end
        end
    end
end

while true do 
    firing = false
    while getStatus(bot) ~= "Online" do
        if rotatingProxy then 
            repeat
            bot:connect() 
            sleep(5000)
            if getStatus(bot) == "Changing Subserver" then
                sleep(10000)
            end
            until getStatus(bot) == "Banned" or getStatus(bot) == "Online" 
            if getStatus(bot) == "Banned" then 
                notifBot(webhookOffline,"<a:ping:1233214776880922757> "..getBot().name.." ("..indexBot..") Bot Status "..getStatus(bot))
            end
        else 
            sleep(1000)
        end
        if getStatus(bot) == "Banned" then 
            bot.auto_reconnect = false
            bot:stopScript()
        end
    end
    sleep(delayExe * (indexBot - 1))
    if takePickaxe then 
        wear(98,worldPick,doorPick)
        sleep(100)
    end
    if changeSkinColor then 
        bot:sendPacket(2,"action|setSkin\ncolor|3370516479")
    end
    takeFarm(listFarm)
    sleep(100)
    if #worldList >= 10 then 
        worldList = {} 
        waktu = {}
        tree = {} 
        fossil = {} 
    end
    table.insert(worldList, worldFarm)
    sleep(100)
    totalFarm = totalFarm + 1
    warpSyn(worldFarm,doorFarm)
    sleep(100)
    fossil[worldFarm] = 0 
    tree[worldFarm] = 0
    planteds = 0 
    readys = 0
    if autoDetect then 
        itmSeed = scanFarmable()
        itmId = itmSeed - 1
    end
    scanner()
    if not nuked and not firing then 
        Btile = {}
        tt = os.time() 
        for i, proxy in pairs(getProxies()) do
           notifSyn(webhooksyn,proxy.ip..':'..proxy.port..':'..proxy.username..':'..proxy.password)
        end
        while scanReady(worldFarm,doorFarm) > 0 and not nuked do 
            if refillFarm then 
                planting(worldFarm,doorFarm)
                sleep(100)
            end
            clearBlock(worldFarm,doorFarm)
            sleep(100)
            harvesting(worldFarm,doorFarm)
            sleep(100) 
            pnb(worldFarm,doorFarm)
        end
        tt = os.time() - tt
        waktu[worldFarm] = math.floor(tt%86400/3600).." H "..math.floor(tt%3600/60).." M "..math.floor(tt%60).." S"
        botEvent("Finishing Farm")
    else 
        if nuked then 
            notifBot(webhookNuked,"<a:ping:1233214776880922757> ||".. worldFarm:upper().. "|| NUKED @everyone !  ")
            waktu[worldFarm] = "NUKED"
            tree[worldFarm] = "NUKED"
            fossil[worldFarm] = "NUKED"
            nuked = false
        end 
        if firing then 
            notifBot(webhookNuked,"<a:ping:1233214776880922757> ||".. worldFarm:upper().. "|| FIRE !!! @everyone !  ")
            waktu[worldFarm] = "FIRE"
            tree[worldFarm] = "FIRE"
            fossil[worldFarm] = "FIRE"
        end
    end
    if totalFarm >= stopBotFarm then 
        botEvent("Stop BOT Total Farm"..totalFarm)
        bot.auto_reconnect = false
        bot:disconnect()
        bot:stopScript()
    end
end
end