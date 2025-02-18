T462_nTotalMonsterNum = 26
T452_nTotalMonsterNum = 26
Txhuanxing_nTotalMonsterNum = 13
T464_nTotalMonsterNum = 21
Tfjtx_nTotalMonsterNum = 14
function OnDie()-------------淝水鳄
if(LuaQueryTask("T462")==1) then
	local count = LuaQueryTask("task_kill/mon_021/T462")
	if(count==26) then
	CheckNpcStatusByMonItemID("T462","mon_021")
	LuaSay("你已经成功消灭了25个@2淝水鳄@0，快回复@2淝水之滨@0的@2何谦@0吧！")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T450")==1) then
	local r = LuaRandom(4)
	if(r<3)then
		if (LuaItemCount("o_mission364") < 15) then
		LuaGive("o_mission364",1)
			if(LuaItemCount("o_mission364")==15) then
			CheckNpcStatusByMonItemID("T450","o_mission364")
			LuaSay("你已得到15个@2淝水鳄胆@0，快回复@2淝水之滨@0的@2刘牢之@0吧！")
			LuaOtherSendMenu()
			end
		end
	end
end
if(LuaQueryTask("T452")==1) then
	local count = LuaQueryTask("task_kill/mon_021/T452")
	if(count==26) then
	CheckNpcStatusByMonItemID("T452","mon_021")
	LuaSay("你已经成功消灭了25个@2淝水鳄@0，快回复@2淝水之滨@0的@2刘牢之@0吧！")
	LuaOtherSendMenu()
	end

end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_021/Txhuanxing")==14)then
		LuaSay("你已经杀死13只@2淝水鳄@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_021/T464")==21)then
		LuaSay("你已经杀死20只淝水鳄，快去回复何谦吧！")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_021/Tfjtx")==14)then
		LuaSay("提示：你已经杀死13只淝水鳄，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon15")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("提示：你得到了@4破碎剑柄@0，完成@2夺回物资@0任务")
			LuaOtherSendMenu()
		end
	end
end 
------------------------国庆节------------------------
if(LuaQueryTask("Tjianguodaye")==2 and LuaQueryTask("Tjianguodayesg")==99) then
	if(LuaQuery("level")>=30)then
	r = LuaRandom(3)
	if(r==1)then
  		if (LuaItemCount("o_mission523")<5) then
     		LuaGive("o_mission523",1)
     		elseif(LuaItemCount("o_mission523")==5) then
     		LuaSay("你已得到5张鳄鱼皮，去回复@4建康城@0的@3钱庄老板@0吧！")
     		LuaOtherSendMenu()
     		end
	end
	end
end 
------------------------------------------
return 1
end