Txhuanxing_nTotalMonsterNum = 34
Tfjtx_nTotalMonsterNum = 34
function OnDie()
-----------------------  战熊 
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_053/Txhuanxing")==34)then
		LuaSay("你已经杀死33只@2战熊0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end

----------------------------------------
if(LuaQueryTask("T811")==1)then
	local r=LuaRandom(3)
	if(r==0 or r==1)then
		if(LuaItemStatusNormalCount("o_mission421")<20) then
			LuaGive("o_mission421",1)
			LuaShowNotify("得到1块战熊肉")
		else
			LuaSay("你已经得到了20块战熊肉了，快到古战场的耶律雄才处领取奖励吧！")
			LuaOtherSendMenu()
		end
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_053/Tfjtx")==34)then
		LuaSay("提示：你已经杀死33只战熊，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon47")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("提示：你得到了@4破碎剑柄@0，完成@2夺回物资@0任务")
			LuaOtherSendMenu()
		end
	end
end 
-----
------------------------------------------
return 1
end