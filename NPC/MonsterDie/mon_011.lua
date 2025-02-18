T332_nTotalMonsterNum = 7
T354_nTotalMonsterNum = 21
T351_nTotalMonsterNum = 21
Thx03_nTotalMonsterNum = 51
Txhuanxing_nTotalMonsterNum = 11
T464_nTotalMonsterNum = 21
Tfjtx_nTotalMonsterNum = 11
function OnDie()
-------------天师匪兵 
------------------------------------
if(LuaQueryTask("T332")==1) then
  if(LuaQueryTask("task_kill/mon_011/T332") == 7) then
  CheckNpcStatusByMonItemID("T332","mon_011")
  LuaSay("你已经消灭了6个天师匪兵，快去回复@4建康东郊@0的@3王恭@0吧。")
  LuaOtherSendMenu()
  end
end
if(LuaQueryTask("T354")==1)then
	if(LuaQueryTask("task_kill/mon_011/T354")==21)then
	    CheckNpcStatusByMonItemID("T354","mon_011")
	    LuaSay("你已经消灭掉了20个天师匪兵，快回去报告@4五斗山@0的@3桓玄@0吧！")
	    LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T351")==1)then
	if(LuaQueryTask("task_kill/mon_011/T351")==21)then
	    CheckNpcStatusByMonItemID("T351","mon_011")
	    LuaSay("你已经消灭掉了20个天师匪兵，快回去报告@4五斗山@0的@3桓玄@0吧！")
	    LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T369")==1) then
  local r = LuaRandom(10)	
  if(r<4)then
   if (LuaItemCount("o_mission007") < 1) then
     LuaGive("o_mission007",1)
     if(LuaItemCount("o_mission007")>=1) then
     CheckNpcStatusByMonItemID("T369","o_mission007")
     LuaSay("你已得到线索@2邪术秘录@0，去回复@4五斗山@0的@3天师教徒@0吧")
     LuaOtherSendMenu()
     end
     end
  end
end
if(LuaQueryTask("T368")>0 and LuaQueryTask("T368")<99) then
	local r = LuaRandom(5)	
	if(r==0)then
		LuaSetTask("T368A",99)
		LuaSet("hp",0)
		FlushMyInfo("0")
		LuaSay("提示：你在和天师教徒的交谈过程中，受到了邪术诅咒，被天师匪兵直接杀死了。")
		LuaSay("提示：想要解除邪术诅咒，那就快去找@4五斗山@0@3天师教徒@0吧。")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Thx03")==6)then
	if(LuaQueryTask("task_kill/mon_0011/Thx03")==51)then
		LuaSay("你已经成功的击杀了50只天师匪兵")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_011/Txhuanxing")==11)then
		LuaSay("你已经杀死10只@2天师匪兵@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_011/T464")==21)then
		LuaSay("你已经杀死20只天师匪兵，快去回复何谦吧！")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_011/Tfjtx")==11)then
		LuaSay("提示：你已经杀死10只天师匪兵，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon6")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("提示：你得到了@4破碎剑柄@0，完成@2夺回物资@0任务")
			LuaOtherSendMenu()
		end
	end
end 
  -----------------------------------
return 1
end