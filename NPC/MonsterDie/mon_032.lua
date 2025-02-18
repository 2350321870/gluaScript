T582_nTotalMonsterNum =31
Txhuanxing_nTotalMonsterNum = 16
T271_nTotalMonsterNum = 51
Tfjtx_nTotalMonsterNum = 16
function OnDie()
local T582=LuaQueryTask("T582")

local num1=LuaQueryTask("T560")
local Tbprw4=LuaQueryTask("Tbprw4")
local Tbprw4_2=LuaQueryTask("Tbprw4_2")

if(LuaQueryTask("T582")==1) then
		LuaQueryTask("T582")count = LuaQueryTask("task_kill/mon_032/T582") 
 	if(count==31) then
 	    CheckNpcStatusByMonItemID("T582","mon_032")
		LuaSay("你已经成功消灭了30只骷髅，赶快回复西蜀竹林的乞伏国仁吧")
		LuaOtherSendMenu()
	end
end
-----------------------  骷髅
if(LuaQueryTask("T592")==1) then
  LuaQueryTask("T582")r = LuaRandom(10)
  if(r<1)then
   	if (LuaItemCount("o_mission310") ==0) then
		LuaGive("o_mission310",1)
     		if(LuaItemCount("o_mission310")==1) then
     			LuaSay("你已得到血书，快去找西蜀竹林的鬼夫人。")
     			LuaOtherSendMenu()
    		end
    end
  end

end
if(LuaQueryTask("T600")==1)then
	if(LuaQueryTask("task_kill/mon_032/T600")>=21)then
	    CheckNpcStatusByMonItemID("T600","mon_032")
		LuaSay("你已经成功的击杀了20只骷髅")
		LuaOtherSendMenu()
    end
end

if(LuaQueryTask("T602")==2)then
	LuaSay("那巫师很邪恶，很肮脏，少侠小心为妙！")
	LuaSetTask("T602",3)
	UpdateMenu()
end 

if(LuaQueryTask("Tbprw4")==1)then
	if(LuaQueryTask("Tbprw4_2")==1)then
		if(LuaQueryTask("task_kill/mon_032/Tbprw4")==26)then
			LuaSay("你已经成功消灭了@325只骷髅@0，赶快到@4宫殿@0找@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0交任务吧！")
			LuaOtherSendMenu()
		end
	end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_032/Txhuanxing")==16)then
		LuaSay("你已经杀死15只@2骷髅@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("T271")==4)then
	if(LuaQueryTask("task_kill/mon_032/T271")==51)then
		LuaSay("你已经成功的击杀了50只骷髅")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_032/Tfjtx")==16)then
		LuaSay("提示：你已经杀死15只骷髅，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon26")==1) then
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