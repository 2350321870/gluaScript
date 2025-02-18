T600_nTotalMonsterNum = 21
T604_nTotalMonsterNum = 31
Tbprw004_nTotalMonsterNum = 21
T269_nTotalMonsterNum = 101
Txhuanxing_nTotalMonsterNum = 16
Tfjtx_nTotalMonsterNum = 16
function OnDie()-----------------------  噬龙
local Tbprw4=LuaQueryTask("Tbprw4")
local Tbprw4_4=LuaQueryTask("Tbprw4_4")
if(LuaQueryTask("T591")==1) then
	local r=LuaRandom(10)
	if(r<7) then
		local count=LuaItemCount("o_mission309")
			if(count<20) then
				LuaGive("o_mission309",1)
				local count= LuaItemCount("o_mission309")
				if(count==20) then
					CheckNpcStatusByMonItemID("T590","o_mission309")
					LuaSay("提示：你已经得到足够的魔龙之血，去回复西蜀竹林的鬼夫人吧")
					LuaOtherSendMenu()
				end
			else
			    LuaSay("提示：你已经得到足够的魔龙之血，去回复西蜀竹林的鬼夫人吧")
			    LuaOtherSendMenu()
			end
	end
end
if(LuaQueryTask("T600")==1)then
	if(LuaQueryTask("task_kill/mon_031/T600")==21)then
		CheckNpcStatusByMonItemID("T600","mon_031")
		LuaSay("你已经成功的击杀了20只噬龙")
		LuaOtherSendMenu()
	end
end  
if(LuaQueryTask("T602")==1)then
	LuaSay("那巫师很诡异，心计很重，少侠小心为妙！")
	LuaSetTask("T602",2) 
end 
if(LuaQueryTask("T604")==1)then
	if(LuaQueryTask("task_kill/mon_031/T604")==31)then
	    CheckNpcStatusByMonItemID("T604","mon_032")
		LuaSay("你已经成功的击杀了30只噬龙，快去回复羯族巫师吧。")
		LuaOtherSendMenu()
    end
end
if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_031/Tbprw004")>=21)then
	LuaSay("你已经消灭了@220个噬龙@0，赶快到@4宫殿@0找@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0交任务吧！。")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tbprw4")==1)then
	if(LuaQueryTask("Tbprw4_4")==1)then
		if(LuaQueryTask("task_kill/mon_031/Tbprw4")==26)then
			LuaSay("你已经成功消灭了@325只噬龙@0，赶快到@4宫殿@0找@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0交任务吧！")
			LuaOtherSendMenu()
		end
	end
end
if(LuaQueryTask("T269")==3) then
	if(LuaQueryTask("task_kill/mon_031/T269")==101) then
		LuaSay("你已经成功击杀了100只@2噬龙@0")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_031/Txhuanxing")==16)then
		LuaSay("你已经杀死15只@2噬龙@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_031/Tfjtx")==16)then
		LuaSay("提示：你已经杀死15只噬龙，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon25")==1) then
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