T560_nTotalMonsterNum =31
Txhuanxing_nTotalMonsterNum = 16
Tfjtx_nTotalMonsterNum = 16
function OnDie()
local num1=LuaQueryTask("T560")
-----------------------------------------
if(num1==1) then
local count = LuaQueryTask("task_kill/mon_028/T560")
 if(count==31) then
 CheckNpcStatusByMonItemID("T560","mon_028")
LuaSay("你已经成功消灭了30只嚎兽，请到渭水之滨找姚苌交任务吧")
LuaOtherSendMenu()
end
end
if(LuaQueryTask("Tbprw4")==1)then
	if(LuaQueryTask("Tbprw4_0")==1)then
		if(LuaQueryTask("task_kill/mon_028/Tbprw4")==26)then
			LuaSay("你已经成功消灭了@325只嚎兽@0，赶快到@4宫殿@0找@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0交任务吧！")
			LuaOtherSendMenu()
		end
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_028/Txhuanxing")==16)then
		LuaSay("你已经杀死15只@2嚎兽@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_028/Tfjtx")==16)then
		LuaSay("提示：你已经杀死15只嚎兽，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon22")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("提示：你得到了@4破碎剑柄@0，完成@2夺回物资@0任务")
			LuaOtherSendMenu()
		end
	end
end 

-----------------------------------------
return 1
end

