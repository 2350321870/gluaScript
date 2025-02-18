NPCINFO = { 
serial="177" ,
base_name="potatotheif" ,
icon=2531,
NpcMove=2531,
name="山贼" ,
iconaddr=1 ,
butt="20|20|63" ,
name_color="CEFFCE" ,
lastsay="伊哇伊嘛呆噢" ,
have_sell_item=1,
LuaType=1,
}
addBuyitem={
count=6,
{"o_drug_hp1",0,10},
{"o_drug_hp2",0,10},
{"o_drug_hp3",0,10},
{"o_drug_mp1",0,10},
{"o_drug_mp2",0,10},
{"o_drug_mp3",0,10},
}
function do_talk(answer)      
if (answer=="ask") then   
	havetask =0
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7任务列表","")
	local Tpotato= LuaQueryTask("Tpotato")
	if(Tpotato==0 and LuaQueryTask("TDayScore")<200)then--防刷限次
		AddTopSayMenuItem("偷土豆","Tpotato")
		havetask =1
	end
	if(Tpotato==2)then
		AddTopSayMenuItem("@2偷土豆","Tpotato")
		havetask =2
	end
		AddTopSayMenuItem("药品","list")
	if(havetask ==2)then
		AddTopSayMenuItem("聊天","liaotian","2")
	elseif(havetask ==1) then
		AddTopSayMenuItem("聊天","liaotian","1")
	else
		AddTopSayMenuItem("聊天","liaotian","0")
	end 
	return 1
		
elseif(answer=="liaotian") then 
	LuaSay(LuaQueryStr("name").."：吐逗呐哩取哇？")
	LuaSay("山贼：吐逗嘀哩取哇。")
	LuaSay(LuaQueryStr("name").."：伊哇伊嘛呆？")
	LuaSay("山贼：耶，伊哇伊嘛呆！")
elseif(answer=="Tpotato")then
	local Tpotato= LuaQueryTask("Tpotato")
	if(Tpotato==0 and LuaQueryTask("TDayScore")<200)then--防破解
	LuaSay("山贼：我们山寨里粮食紧张，我的手被鼠夹搞伤了，你能帮我挖点那边土里的土豆吗？")
	AddMenuItem("@7帮挖土豆","")
	AddMenuItem("接受","Tpotatoyes")
	AddMenuItem("我没空","liaotian")
	elseif(Tpotato==2)then
		if(LuaItemCount("o_mission193")<10)then
		LuaSay("山贼：你还没挖够10个土豆呢")
		AddMenuItem("@7要放弃吗？","")
		AddMenuItem("放弃","Tpotatodrop")
		AddMenuItem("不放弃","liaotian")
		else
		LuaSay("不错不错，谢谢你了")--奖
		LuaAddTask("TpotatoScore",20)
		LuaAddTask("TDayScore",10)
		DelItem("o_mission193",LuaItemCount("o_mission193"))
		LuaSay("土豆战争分数增加20")
		LuaDelTask("Tpotato")
		UpdateMenu()
		UpdateNPCMenu("potatoman")
		end
	end
elseif(answer=="Tpotatoyes" and LuaQueryTask("Tpotato")==0)then
	LuaSay("山贼：帮我挖10个土豆给我。")
	LuaSetTask("Tpotato",2)
	UpdateMenu()
	UpdateNPCMenu("potatoman")
elseif(answer=="Tpotatodrop" and LuaQueryTask("Tpotato")==2)then--半奖
	local ipn=LuaItemCount("o_mission193")
	LuaAddTask("TpotatoScore",ipn)
	LuaAddTask("TDayScore",ipn)
	DelItem("o_mission193",ipn)
	LuaSay("土豆战争分数增加"..ipn)
	LuaDelTask("Tpotato")
	UpdateMenu()
	UpdateNPCMenu("potatoman")
end
LuaSendMenu()
return 1
end 

