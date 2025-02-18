NPCINFO = {
name="智慧符+50",
butt="0|0|40",
isboss = 3,--种子为3 矿产为2 boss为1 
serial= "1000" ,
icon= 10525,
NpcMove= 10525,
iconaddr= 1, --资源文件所放的位置,1:为服务器.0为客户端
maxnum=2,--获得的物品种类数必须大于booty字段中物品种类
booty= "o_seed046|o_state022j",--获得的物品1级只能采到种子一个，2级向上可采相应物品gettime次
growntime= "14400",  --成长时间 
getrate=100,--采集成功的几率
bootyrate="100|100",  --物品获取概率
gettime= 1,    --总采集次数
getlevel= 1,   --采集等级 
candig=1,     
--growlevel=3,      
maxgrowlevel=2,
maxact=2,
protecttime=600,		--成熟后的保护时间，单位秒   10分
insectstime=300,		--放虫的间隔时间，单位秒      5分
insectscut=240,			--放虫成功扣的种植时间，单位秒   4分
grasstime=1200,			--除草的间隔时间，单位秒    12分 
grassadd=720,			--除草成功加的种植时间，单位秒  48分 
}
--采集函数 参数 id: 植物的id；answer：玩家点的菜单，使用技能的菜单为talk 
--返回值 1采集成功；0采集失败
function OnDig(id, answer)
local ret = 1
local name = LuaPlantHost(id) --种植人的名字
	--LuaPrint(name)
if (answer == "talk") then
	--LuaPrint("OnDig_talk")
	LuaSay("提示：@1每次都会有消耗，采集前请查询植物状态，确定可以采集的物品，然后再采集@0")
	AddMenuItem("采集","DoSkillDig " .. id .. " " .. "yes", "是否采集")
	AddMenuItem("不采集","DoSkillDig " .. id .. " " .. "no", "")
	ret = 0
elseif (answer == "yes")  then
	--LuaPrint("OnDig_yes")
  	local name = LuaPlantHost(id)
 if(name==LuaQueryStr("name")) then
	if(LuaItemStatusNormalCount("o_mission518")>4 and LuaItemStatusNormalCount("o_mission520")>4)then
			LuaSay("提示：采集成功，消耗了全部的@2采集石@0和@2采集碎石@0")
			DelItem("o_mission518",LuaItemStatusNormalCount("o_mission518"),"newzz")
			DelItem("o_mission520",LuaItemStatusNormalCount("o_mission520"),"newzz")
			LuaLogRecord("游戏行为","角色","新种植","碎石采集045",1)
    elseif(LuaItemStatusNormalCount("o_mission518")>4 and LuaItemStatusNormalCount("coin")>10000) then
    		LuaSay("提示：采集成功，消耗了全部的@2采集石@0和10000铜币")
    		DelItem("o_mission518",LuaItemStatusNormalCount("o_mission518"),"newzz")
    		LuaGive("coin",-10000,"newzz")
    		LuaLogRecord("游戏行为","角色","新种植","铜币采集045",1)
    else
    		LuaSay("提示：采集一次需要消耗5个@2采集石@0和5个@2采集碎石@0或者5个@2采集石@0和10000铜币，采集失败。")
    		LuaSay("提示：@2采集石@0只能通过对自己植物@2除草@0获得，@2采集碎石@0只能通过对别人植物@2放虫@0获得.")
			ret = 0
    end
 else
 	if(LuaItemStatusNormalCount("o_mission520")>9)then
 		 LuaSay("提示：采集成功，消耗了全部的@2采集碎石@0")
         DelItem("o_mission520",LuaItemStatusNormalCount("o_mission520"),"newzz")
         LuaLogRecord("游戏行为","角色","新种植","放虫采集045",1)
    elseif(LuaItemStatusNormalCount("coin")>20000) then
    	 LuaSay("提示：采集成功，消耗了20000铜币。")
    	 LuaGive("coin",-20000,"newzz")
    	 LuaLogRecord("游戏行为","角色","新种植","铜币采集别人045",1)
    else
    	LuaSay("提示：采集一次需要消耗10个@2采集碎石@0或者20000铜币，采集失败。")
    	LuaSay("提示：@2采集碎石@0只能通过@2放虫@0获得.")
    	ret = 0
    end
end
elseif (answer == "no") then
	--LuaPrint("OnDig_no")
	--LuaSay("你放弃了采集！")
	ret = 0
end
LuaOtherSendMenu()
return ret
end
--除草函数 参数 id: 植物的id；answer：玩家点的菜单，使用技能的菜单为talk 
--返回值 1除草成功；0除草失败
function OnGrass(id, answer)
local ret = 1
if (answer == "talk") then
	--LuaPrint("OnGrass_talk")
	AddMenuItem("除草","Grass " .. id .. " " .. "yes", "是否除草")
	AddMenuItem("不除草","Grass " .. id .. " " .. "no", "")
	ret = 0
elseif (answer == "yes")  then
	--LuaPrint("OnGrass_yes")
	local name = LuaPlantHost(id)
 if(name==LuaQueryStr("name")) then
	if(LuaItemStatusNormalCount("o_mission517")<5) then
	  LuaSay("提示：除草可以大幅加速植物成长，一次需要消耗5个@2除草剂@0,除草剂不足，除草失败")
	  LuaSay("提示：@2除草剂@0可以在建康东郊，五斗山，山寨打怪获取，所有怪物有效。")
	  ret = 0
   	else
  	  LuaSay("提示：除草成功，植物长大了很多，消耗了5个@2除草剂@0,获得1个@2采集石@0")
	  DelItem("o_mission517",5,"newzz")
      LuaGive("o_mission518",1,"newzz")
      LuaLogRecord("游戏行为","角色","新种植","除草045",1)
  	end
 else
      LuaSay("提示：不是自己的植物，不能除草")
	  ret = 0
 end
elseif (answer == "no") then
	--LuaPrint("OnGrass_no")
	--LuaSay("你放弃了除草！")
	ret = 0
end
LuaOtherSendMenu()
return ret
end
--放虫函数 参数 id: 植物的id；answer：玩家点的菜单，使用技能的菜单为talk 
--返回值 1放虫成功；0放虫失败
function OnInsects(id, answer)
local ret = 1
if (answer == "talk") then
	--LuaPrint("OnInsects_talk")
	AddMenuItem("放虫","Insects " .. id .. " " .. "yes", "是否放虫")
	AddMenuItem("不放虫","Insects " .. id .. " " .. "no", "")
	ret = 0
elseif (answer == "yes")  then

	--LuaPrint("OnInsects_yes")
 	if(LuaItemStatusNormalCount("o_mission519")<5) then
	  LuaSay("提示：放虫会降低植物成长速度，一次需要消耗5个@2虫子@0,虫子不足，放虫失败")
	  LuaSay("提示：@2虫子@0可以在建康东郊，五斗山，山寨打怪获取，所有怪物有效。")
	  ret = 0
   	else
  	  LuaSay("提示：放虫成功，植物生长变慢了，消耗了5个@2虫子@0,获得1个@2采集碎石@0")
  	  local name = LuaPlantHost(id)
  	  LocalMsg("@2"..LuaQueryStr("name").."@0给@3"..name.."@0种植的@3力量符+50@0放了5只很凶的虫子。")
	  DelItem("o_mission519",5,"newzz")
      LuaGive("o_mission520",1,"newzz")
       LuaLogRecord("游戏行为","角色","新种植","放虫045",1)
  	end

elseif (answer == "no") then
	--LuaPrint("OnInsects_no")
	--LuaSay("你放弃了放虫！")
	ret = 0
end
LuaOtherSendMenu()
return ret
end
