--T632_nTotalMonsterNum = 71
T731_nTotalMonsterNum = 31
T623_nTotalMonsterNum = 31
T648_nTotalMonsterNum = 21
T743_nTotalMonsterNum = 31
Tbprw004_nTotalMonsterNum = 21
Txhuanxing_nTotalMonsterNum = 21
Tfjtx_nTotalMonsterNum = 21

function OnDie()
local num1=LuaQueryTask("T731")
local num2=LuaQueryTask("T623")
local num3=LuaQueryTask("T648")
-----------------------  霸虎
---------------------------------------
--[[if(LuaQueryTask("T632")==1)then
	if(LuaQueryTask("task_kill/mon_046/T632")>=71)then
	LuaSay("你已经消灭了@270个霸虎@0，快去回复@4太行古经@0的@3慕容垂@0吧。")
	LuaOtherSendMenu()
	end
end]]








 if(num1==1) then
 if(LuaQueryTask("task_kill/mon_046/T731")>=31) then
 CheckNpcStatusByMonItemID("T731","mon_046")
LuaSay("你已经成功消灭了@330只霸虎@0，快回复@4陷落关口@0得@3拓拔仪@0吧")
LuaOtherSendMenu()
end
end

 if(num2==1) then
 if(LuaQueryTask("task_kill/mon_046/T623")>=31) then
 CheckNpcStatusByMonItemID("T623","mon_046")
LuaSay("你已经成功消灭了@330@0只霸虎,快回复洛城废墟的陶渊明吧")
LuaOtherSendMenu()
end
end

if(num3==1) then
 if(LuaQueryTask("task_kill/mon_046/T648")>=21) then
 CheckNpcStatusByMonItemID("T648","mon_046")
LuaSay("你已经成功消灭了20只霸虎")
LuaOtherSendMenu()
end
end


if(LuaQueryTask("T734")==1)then
local r = LuaRandom(10)
  if(r<2)then
   if (LuaItemCount("o_mission300") < 2) then
     LuaGive("o_mission300",1)
     if(LuaItemCount("o_mission300")>=2) then
     LuaSay("你已得到@3两块霸虎肉@0，去回复@4陷落关口@0的@3拓拔仪@0吧")
     LuaOtherSendMenu()
     end
   end
  end
end

if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_046/Tbprw004")>=21)then
	LuaSay("你已经消灭了@220个霸虎@0，快去回复@4宫殿@0的@3晋帝@0吧。")
	LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_046/Txhuanxing")==21)then
		LuaSay("你已经杀死20只@2霸虎@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("T743")==1) then
 if( LuaQueryTask("task_kill/mon_046/T743")==31) then
 CheckNpcStatusByMonItemID("T743","mon_046")
LuaSay("你已经成功消灭了@330只霸虎@0，快去找@4陷落关口@0的@3汉族老翁@0吧！")
LuaOtherSendMenu()
end
end



if(LuaQueryTask("Tbprw5")==1) then
	local r = LuaRandom(2)
	if(r==1)then
  		if (LuaItemCount("o_mission400") < 10) then
     		LuaGive("o_mission400",1)
     		elseif(LuaItemCount("o_mission400")>=10) then
     		LuaSay("你已得到10个霸虎的爪子，去回复@4宫殿@0的@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0吧！")
     		LuaOtherSendMenu()
     	end
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_046/Tfjtx")==21)then
		LuaSay("提示：你已经杀死20只霸虎，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon33")==1) then
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
