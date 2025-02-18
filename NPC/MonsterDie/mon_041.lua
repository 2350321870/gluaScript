T663_nTotalMonsterNum = 36
Tbprw004_nTotalMonsterNum = 21
T269_nTotalMonsterNum = 101
Txhuanxing_nTotalMonsterNum = 26
Tfjtx_nTotalMonsterNum = 26
function OnDie()
local num1=LuaQueryTask("T663")
----------------------- 象帅
----------------------------------------	
if(num1==1)then
	local count=LuaQueryTask("task_kill/mon_041/T663")
	if(count==36)then
		CheckNpcStatusByMonItemID("T663","mon_041")
		LuaSay("你已经成功消灭35只象帅，到参合坡去找浑太后吧！")
		LuaOtherSendMenu()
	end
end 

if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_041/Tbprw004")>=21)then
	LuaSay("你已经消灭了@220个象帅@0，快去回复@4宫殿@0的@3晋帝@0吧。")
	LuaOtherSendMenu()
	end
end
------------------------------------------
if(LuaQueryTask("T269")==4) then
	if(LuaQueryTask("task_kill/mon_041/T269")==101) then
		LuaSay("你已经成功击杀了100只@2象帅@0")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_041/Txhuanxing")==26)then
		LuaSay("你已经杀死25只@2象帅@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("T681")==1) then
	if(LuaQueryTask("task_kill/mon_041/T269")==36) then
		CheckNpcStatusByMonItemID("T681","mon_041")
		LuaSay("你已经成功击杀了35只@2象帅@0，快去回复@3浑太后@0吧！")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("T692")==1)then
local r = LuaRandom(5)
  if(r<4)then
   if (LuaItemCount("o_mission359") < 20) then
     LuaGive("o_mission359",1)
     if(LuaItemCount("o_mission359")>=20) then
     CheckNpcStatusByMonItemID("T692","o_mission359")
     LuaSay("你已得到@220个龙鳞@0，去回复@4太行山谷@0的@3石越@0吧")
     LuaOtherSendMenu()
     end
   end
  end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_041/Tfjtx")==26)then
		LuaSay("提示：你已经杀死26只象帅，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon37")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("提示：你得到了@4破碎剑柄@0，完成@2夺回物资@0任务")
			LuaOtherSendMenu()
		end
	end
end 

---------------------------------------
return 1
end