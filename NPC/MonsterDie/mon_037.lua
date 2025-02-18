Txhuanxing_nTotalMonsterNum = 21
Tbp4_nTotalMonsterNum = 51
Tfjtx_nTotalMonsterNum = 21
function OnDie()
----------------------- 绿石人
----------------------------------------
if(LuaQueryTask("T654")==1)then
local r = LuaRandom(5)
  if(r<4)then
   if (LuaItemCount("o_mission324") < 5) then
     LuaGive("o_mission324",1)
     if(LuaItemCount("o_mission324")>=5) then
     CheckNpcStatusByMonItemID("T654","o_mission324")
     LuaSay("你已得到@25个绿石之魂@0，去回复@4太行山谷@0的@3石越@0吧")
     LuaOtherSendMenu()
     end
   end
  end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_037/Txhuanxing")==21)then
		LuaSay("你已经杀死20只@2绿石人@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("bprx1_1")==1 or LuaQueryTask("bprx1_2")==1)then
	if(LuaQueryTask("task_kill/mon_037/Tbp4")==51)then
		LuaSay("你已经成功的击杀了@250只绿石人@0，快到@2帮派主寨@0找@3帮派总管@0或者@2宫殿@0的@2晋帝@0交任务吧")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_037/Tfjtx")==21)then
		LuaSay("提示：你已经杀死20只绿石人，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon31")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("提示：你得到了@4破碎剑柄@0，完成@2夺回物资@0任务")
			LuaOtherSendMenu()
		end
	end
end 
------------------------------------------
return 1
end
