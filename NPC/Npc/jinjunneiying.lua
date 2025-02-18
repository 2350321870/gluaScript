NPCINFO = {
serial= "300" ,
base_name="jinjunneiying",
icon= 2524,
NpcMove=2524,
name= "晋军内应" ,
iconaddr=1, 
butt="5|5|63", 
name_color = "CEFFCE", 
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then
       havetask =0
	AddTopSayMenuItem("@7任务列表","")
		AddTopSayMenuItem("了解情况","DZAH")
		AddTopSayMenuItem("密道传送","MDCS")
		AddTopSayMenuItem("聊天","liaotian")


--------------------------------------------------------------------------------
elseif(answer=="liaotian") then
	  LuaSay("晋军内应:这年头，找不到工作，摆地摊还会被城管揍，还不如扮演NPC！")   --聊天

--------------------------------------------------------------------------------
elseif(answer=="DZAH")then
		LuaSay("晋军内应：天王盖地虎！！！")
		LuaSay(""..LuaQueryStr("name").."：宝塔镇河妖！！！")
		LuaSay("晋军内应：死该可硬个狼的太个！！！")                ----恶搞版的可去掉。 
		LuaSay(""..LuaQueryStr("name").."：破需哦死套哇谁可瑞无饿毛死特！！！")
		LuaSay("晋军内应：启奏大人！@4五斗山@0上的@3叛军精锐@0甚是厉害，没本事是打不过的！还请大人先击杀@3100叛军@0证明您的实力！")
		LuaSay("晋军内应：小人还有个发现，如果击杀@3叛军士兵@0获得一块@3叛军令牌@0来迷惑叛军，进入@4五斗山@0暗杀@3叛军精锐@0难度会低很多！")
		UpdateMenu()
elseif(answer=="MDCS")then
	local num=LuaQueryTask("task_kill/mon_115/Twdspl_1")-1
	if(num>=100) then   ---------为了测试方便  要求应为100
	LuaSay("晋军内应：大人真是好身手，小的这就将大人从密道传送到五斗山！") 
		if(LuaItemCount("o_mission413")>=1) then 
		LuaSetTask("fb40ji_wdspl01",1)
		else
		LuaSetTask("fb40ji_wdspl01",0)
		end
	AddMenuItem("@7请选择","")
	AddMenuItem("@3否","Twdspl_1_no")
	AddMenuItem("@3进入五斗山","Twdspl_1_yes")
 	else
    LuaSay("晋军内应：您所在的队伍已经消灭的叛军士兵@3"..num.."个！")
    LuaSay("晋军内应：实力不足，冒然进入五斗山，大人一旦出了什么事情，小的可吃罪不起啊！")
	 end
elseif(answer=="Twdspl_1_no")then 
	local num=LuaQueryTask("task_kill/mon_115/Twdspl_1")-1
	LuaSay("晋军内应：您所在的队伍已经消灭的叛军士兵@3"..num.."个！") 
elseif(answer=="Twdspl_1_yes")then  
	ChangeMap("lu_wdspl_2")                                                                                   
end
LuaSendMenu()
return 1
end    	