T424_nTotalMonsterNum = 26
T400_nTotalMonsterNum = 26
T216_nTotalMonsterNum = 51
Txhuanxing_nTotalMonsterNum = 13
T464_nTotalMonsterNum = 21
Tpt1_nTotalMonsterNum = 51
Tfjtx_nTotalMonsterNum = 13
T_newycb_nTotalMonsterNum =21
Tpt4_nTotalMonsterNum = 51
function OnDie()
if(LuaQueryTask("T424")==1) then
	local count = LuaQueryTask("task_kill/mon_016/T424")
	if(count==26) then
	CheckNpcStatusByMonItemID("T424","mon_016")
	LuaSay("你已经成功消灭了25个@2北府锤兵@0，快回复@4北府军营@0的@2驿站小吏@0吧！")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T400")==1) then
	local count = LuaQueryTask("task_kill/mon_016/T400")
	if(count==26) then
	CheckNpcStatusByMonItemID("T400","mon_016")
	LuaSay("你已经成功消灭了25个@2北府锤兵@0，快回复@4北府军营@0的@2谢玄@0吧！")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_016/Txhuanxing")==13)then
		LuaSay("你已经杀死12只@2北府锤兵@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T216")==3)then
	if(LuaQueryTask("task_kill/mon_016/T216")==51)then
		LuaSay("你已经成功的击杀了50只@2北府锤兵@0完成了过关斩将[活动]，抓紧时间回复建康城的晋清公主吧。")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_016/T464")==21)then
		LuaSay("你已经杀死20只北府锤兵，快去回复何谦吧！")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tpt1")==1)then
	if(LuaQueryTask("task_kill/mon_016/Tpt1")==51)then
		LuaSay("你已经成功的击杀了@250只北府锤兵@0，快到@2帮派主寨@0找@3帮派总管@0交任务吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tpt4")==1)then
	if(LuaQueryTask("task_kill/mon_016/Tpt4")==51)then
		LuaSay("你已经成功的击杀了@250只北府锤兵@0，快到@2帮派主寨@0找@3帮派总管@0交任务吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_016/Tfjtx")==13)then
		LuaSay("提示：你已经杀死12只北府锤兵，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon12")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("提示：你得到了@4破碎剑柄@0，完成@2夺回物资@0任务")
			LuaOtherSendMenu()
		end
	end
end 
-------------------------------------------
if(LuaQueryTask("T_newycb")==5) then
	if(LuaQueryTask("task_kill/mon_016/T_newycb") >= 21) then
  		LuaSay("你已经杀够了@520个北府锤兵@0了")
  		LuaOtherSendMenu()
   	end
end
------------------------------------------
---------***端午活动掉落***--------------
if(HuoDongDay()==12) then
		r=LuaRandom(40)
		if(r==1) then
		LuaGive("o_mission197",1)
		LuaShowNotify("得到屈原诗集1")
		elseif(r==2) then
		LuaGive("o_mission198",1)
		LuaShowNotify("得到屈原诗集2")
		elseif(r==3) then
		LuaGive("o_mission199",1)
		LuaShowNotify("得到屈原诗集3")
		end
end

return 1
end

function  HuoDongDay()
nowday=GetCurrentDay()
HDday={}
HDday[1]={"2011-4-28","2011-4-29","2011-4-30","2011-5-1","2011-5-2","2011-5-3","2011-5-4"}--2011劳动节
HDday[2]={"2011-6-2","2011-6-3","2011-6-4","2011-6-5","2011-6-6","2011-6-7","2011-6-8"}--2011端午节
	
	if(nowday==HDday[1][1] or nowday==HDday[1][2] or nowday==HDday[1][3] or nowday==HDday[1][4] or nowday==HDday[1][5] or nowday==HDday[1][6] or nowday==HDday[1][7]) then
		return 11	--劳动节
	elseif(nowday==HDday[2][1] or nowday==HDday[2][2] or nowday==HDday[2][3] or nowday==HDday[2][4] or nowday==HDday[2][5] or nowday==HDday[2][6] or nowday==HDday[2][7]) then
		return 12	--端午节
	else
		return 0
	end
end
