T656_nTotalMonsterNum = 11
T645_nTotalMonsterNum = 21
T649_nTotalMonsterNum = 31
T200_nTotalMonsterNum = 101
Txhuanxing_nTotalMonsterNum = 21
Tpt1_nTotalMonsterNum = 51
Tfjtx_nTotalMonsterNum = 21
Tpt4_nTotalMonsterNum = 51
function OnDie()
local num1=LuaQueryTask("T645")
-----------------------  金纹巨灵
----------------------------------------
if(num1==1) then
	local r=LuaRandom(9)
	if(r<7) then
		if(LuaItemCount("o_mission354")<20)then
			LuaGive("o_mission354",1)
			if(LuaItemCount("o_mission354")==20)then
				CheckNpcStatusByMonItemID("T645","o_mission354")
				LuaSay("你已经收集到了@420个金纹刺@0，回去向@3慕容麟@0复命吧！")
				LuaOtherSendMenu()
			end
		end
	end
end 		
----------------------------------------
if(LuaQueryTask("T656")==1)then
if(LuaQueryTask("task_kill/mon_036/T656")==11)then
CheckNpcStatusByMonItemID("T656","mon_036")
LuaSay("你已经杀了@310只金纹巨灵@0了，快去回复@4太行山谷@0的@3石越@0吧！")
LuaOtherSendMenu()
end
end

--if(LuaQuery("T645")==1) then
    -- if(LuaQuery("task_kill/mon_036/T645")==21) then
    -- LuaSay("你消灭20只金纹巨灵，快去回复@3太行古径@0的@2慕容麟吧@0。")
     --LuaOtherSendMenu()
     --end
--end
	
if(LuaQueryTask("T649")==1)then
if(LuaQueryTask("task_kill/mon_036/T649")==31)then
CheckNpcStatusByMonItemID("T649","mon_036")
LuaSay("你已经杀了@330只金纹巨灵@0了，去回复@4太行古径@0的@3慕容麟@0吧！")
LuaOtherSendMenu()
end
end





if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_036/Txhuanxing")==21)then
		LuaSay("你已经杀死20只@2金纹巨灵@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T200")==4)then
	if(LuaQueryTask("task_kill/mon_036/T200")==101)then
		LuaSay("你已经成功的击杀了100只@2金纹巨灵@0，完成了@3扶持弱小@0任务。")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tpt1")==1)then
	if(LuaQueryTask("task_kill/mon_036/Tpt1")==51)then
		LuaSay("你已经成功的击杀了@250只金纹巨灵@0，快到@2帮派主寨@0找@3帮派总管@0交任务吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tpt4")==1)then
	if(LuaQueryTask("task_kill/mon_036/Tpt4")==51)then
		LuaSay("你已经成功的击杀了@250只金纹巨灵@0，快到@2帮派主寨@0找@3帮派总管@0交任务吧")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_036/Tfjtx")==21)then
		LuaSay("提示：你已经杀死20只金纹巨灵，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon30")==1) then
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