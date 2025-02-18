NPCINFO = {
isboss = 2,--矿产为2 boss为1 
name="劣质石矿" ,
butt="0|0|24",
serial= "901" ,--NPC id
icon= 10001,--矿物动画图片
NpcMove= 10001, --矿物动画文件
iconaddr= 1, --资源文件所放的位置,1:为服务器.0为客户端
maxnum=3,--获得的物品种类数必须大于booty字段中物品种类
booty= "o_material_47|o_material_56|o_mission145",
getrate= 90,--获得几率
bootyrate="90|99|100",
gettime= 5,--可获得次数
getlevel= 1,--获得需要挖掘最低等级
candig=1,--初始化能不能挖
act=1,
ondig=1,
}
function OnDig()
if(MapName()~="lu_mine01")then
	if(LuaQueryTask("T50")==1)then
		if(LuaItemCount("o_mission021") >= 1 )then
		LuaSay("孟铁匠:咦！你居然已经有矿石了，快拿来给我吧。")
		else
		LuaGive("o_mission021",1)
		end
	elseif(LuaQueryTask("T50")==99)then
	LuaSay("温馨提示:想要采到真正的矿晶材料，就努力升到10级，去采集场采集吧。")
	end
	LuaOtherSendMenu()
return 1
end
return 0--普通可采
end
