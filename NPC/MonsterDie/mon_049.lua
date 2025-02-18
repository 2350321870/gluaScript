T736_nTotalMonsterNum = 21
T734_nTotalMonsterNum = 21
T751_nTotalMonsterNum = 36
Tbprw004_nTotalMonsterNum = 21
Txhuanxing_nTotalMonsterNum = 29
Tfjtx_nTotalMonsterNum = 29
function OnDie()
-----------------------  草原熊
----------------------------------------
if(LuaQueryTask("T734")==2)then
	if(LuaQueryTask("task_kill/mon_049/T734")>=21)then
	CheckNpcStatusByMonItemID("T734","mon_049")
	LuaSay("你已经消灭了20只@3草原熊@0，快去回复@4关外@0的@3崔宏@0吧！")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T751")==1)then
	if(LuaQueryTask("task_kill/mon_049/T751")>=36)then
	CheckNpcStatusByMonItemID("T751","mon_049")
	LuaSay("你已经消灭了35只@3草原熊@0，快去回复@4关外@0的@3崔宏@0吧！")
	LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_049/Tbprw004")>=21)then
	LuaSay("你已经消灭了@220个草原熊@0，快去回复@4宫殿@0的@3晋帝@0吧。")
	LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_049/Txhuanxing")==29)then
		LuaSay("你已经杀死28只@2草原熊@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("T736")==3)then
	if(LuaQueryTask("task_kill/mon_049/T736")>=21)then
	LuaSay("你已经消灭了20只@3草原熊@0，快去回复@4关外@0的@3崔宏@0吧！")
	LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_049/Tfjtx")==29)then
		LuaSay("提示：你已经杀死28只草原熊，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon43")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("提示：你得到了@4破碎剑柄@0，完成@2夺回物资@0任务")
			LuaOtherSendMenu()
		end
	end
end 


if(LuaQueryTask("T1004")==1)then
	local count= LuaItemCount("o_mission375")
   	if(count < 20) then
   		if(LuaRandom(10)<8)then
     		LuaGive("o_mission375",1)
     	end
    	local count= LuaItemCount("o_mission375")
     	if(count==20) then
     		LuaSay("你已得到20个战斗药水,快去交给拓跋圭吧,太多放不下了")
     		LuaOtherSendMenu()
     	end
  	end
end


-----

------------------------------------------
return 1
end