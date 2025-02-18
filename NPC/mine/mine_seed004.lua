NPCINFO = {
name="满天星",
butt="0|0|32",
isboss = 3,
serial= "953" ,
icon= 10503,
NpcMove= 10503,
iconaddr= 1, 
maxnum=3,
booty= "o_seed004|o_material_38|o_material_39",
growntime= "600|1800", 
getrate= 70,
bootyrate="50|80|100",
gettime= 5,
getlevel= 4,
candig=1,
growlevel=1,
maxgrowlevel=3,
maxact=2,
protecttime=1200,		--成熟后的保护时间，单位秒
insectstime=300,		--放虫的间隔时间，单位秒
insectscut=240,			--放虫成功扣的种植时间，单位秒
grasstime=600,			--除草的间隔时间，单位秒   
grassadd=60,			--除草成功加的种植时间，单位秒 
}
function OnDig(id, answer)
local ret = 1
local name = LuaPlantHost(id) --种植人的名字
if (answer == "talk") then
	LuaSay("提示：采集前请查询植物状态，确定可以采集的物品，然后再采集")
	AddMenuItem("采集","DoSkillDig " .. id .. " " .. "yes", "是否采集")
	AddMenuItem("不采集","DoSkillDig " .. id .. " " .. "no", "")
	ret = 0
elseif (answer == "yes")  then

elseif (answer == "no") then
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
	AddMenuItem("除草","Grass " .. id .. " " .. "yes", "是否除草")
	AddMenuItem("不除草","Grass " .. id .. " " .. "no", "")
	ret = 0
elseif (answer == "yes")  then
	
elseif (answer == "no") then
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
	AddMenuItem("放虫","Insects " .. id .. " " .. "yes", "是否放虫")
	AddMenuItem("不放虫","Insects " .. id .. " " .. "no", "")
	ret = 0
elseif (answer == "yes")  then

elseif (answer == "no") then
	ret = 0
end
LuaOtherSendMenu()
return ret
end