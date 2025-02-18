NPCINFO = { 
serial="176" ,
base_name="potatoman" ,
icon=2514,
NpcMove=2514,
name="薯农" ,
iconaddr=1 ,
butt="20|20|63" ,
name_color="CEFFCE" ,
lastsay="硕鼠硕鼠，莫食我薯" ,
LuaType=1,
} 
function do_talk(answer)    
if (answer=="ask") then
	havetask =0
	--level= LuaQuery("level") 
	AddTopSayMenuItem("@7任务列表","")
	Tpotato= LuaQueryTask("Tpotato")
	if(Tpotato==0 and LuaDreamQuery("TDayScore")<200)then--防刷限次
		AddTopSayMenuItem("守卫马铃薯","Tpotato")
		havetask =1
	elseif(Tpotato==1)then
		AddTopSayMenuItem("@2守卫马铃薯","Tpotato")
		havetask =2
	end
	if(havetask ==2)then
		AddTopSayMenuItem("聊天","liaotian","2")
	elseif(havetask ==1) then
		AddTopSayMenuItem("聊天","liaotian","1")
	else
		AddTopSayMenuItem("聊天","liaotian","0")
	end 
	return 1
		
elseif(answer=="liaotian") then 
	LuaSay("薯农：这些耗子真是可恶！我的马铃薯都被偷光了。")
elseif(answer=="Tpotato")then
	local Tpotato=LuaQueryTask("Tpotato")
	if(Tpotato==0 and LuaQueryTask("TDayScore")<200)then--防破解
	LuaSay("薯农：最近我的土豆老是被耗子偷，我让铁匠帮我打制了一批鼠夹，你能帮我安在土豆地里吗？")
	AddMenuItem("@7请选择","")
	AddMenuItem("接受","Tpotatoyes")
	AddMenuItem("我没空","liaotian")
	elseif(Tpotato==1)then
		if(LuaItemCount("o_mission194")>0)then
		LuaSay("薯农：你还没有把10个夹子安完呢，")
		AddMenuItem("@7确定要放弃吗？","")
		AddMenuItem("放弃","Tpotatodrop")
		AddMenuItem("不放弃","liaotian")
		else
		LuaSay("不错不错，谢谢你了")--奖
		LuaAddTask("TpotatoScore",20)
		LuaAddTask("TDayScore",10)--日累
		LuaSay("土豆战争分数增加20")
		LuaDelTask("Tpotato")
		UpdateMenu()
		UpdateNPCMenu("potatotheif")
		end
	end
elseif(answer=="Tpotatoyes" and LuaQueryTask("Tpotato")==0)then
	LuaSay("薯农：在土豆附近使用采集技能就可以安鼠夹了。")
	LuaGive("o_mission194",10)
	LuaSetTask("Tpotato",1)
	UpdateMenu()
	UpdateNPCMenu("potatotheif")
elseif(answer=="Tpotatodrop" and LuaQueryTask("Tpotato")==1)then--半奖
	LuaAddTask("TpotatoScore",10-LuaItemCount("o_mission194"))
	LuaAddTask("TDayScore",10-LuaItemCount("o_mission194"))
	DelItem("o_mission194",LuaItemCount("o_mission194"))
	LuaSay("土豆战争分数增加0")
	LuaDelTask("Tpotato")
	UpdateMenu()
	UpdateNPCMenu("potatotheif")


end
LuaSendMenu()
return 1
end 

