 T587_nTotalMonsterNum = 21
Txhuanxing_nTotalMonsterNum = 16
T216_nTotalMonsterNum = 51
Thgz_5_nTotalMonsterNum = 41
Thgz_6_nTotalMonsterNum = 51
Tfjtx_nTotalMonsterNum = 16
function OnDie()

local num1=LuaQueryTask("T560")
local Tbprw4=LuaQueryTask("Tbprw4")
local Tbprw4_1=LuaQueryTask("Tbprw4_1")


------------------------------
local num1=LuaQueryTask("T587")

-----------------------


 if(num1==1) then
local count = LuaQueryTask("task_kill/mon_030/T587")
 if(count==21) then
 CheckNpcStatusByMonItemID("T587","mon_030")
LuaSay("你已经成功消灭了@320只竹叶妖@0，赶快回复西蜀竹林的@3乞伏国仁@0吧")
LuaOtherSendMenu()
end
end

-----------------------
if(LuaQueryTask("T583")==1) then
  	local r = LuaRandom(10)
  	if(r<7)then
  		if (LuaItemCount("o_mission326") < 10) then
     		LuaGive("o_mission326",1)
     	if(LuaItemCount("o_mission326")==10) then
     	    CheckNpcStatusByMonItemID("T583","o_mission326")
     		LuaSay("你已得到10份竹叶毒粉。")
     		LuaOtherSendMenu()
     	end
	end
end
end




if(LuaQueryTask("Tbprw4")==1)then
	if(LuaQueryTask("Tbprw4_1")==1)then
		if(LuaQueryTask("task_kill/mon_030/Tbprw4")==26)then
			LuaSay("你已经成功消灭了@325只竹节妖@0，赶快到@4宫殿@0找@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0交任务吧！")
			LuaOtherSendMenu()
		end
	end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_030/Txhuanxing")==16)then
		LuaSay("你已经杀死15只@2竹节妖@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end



if(LuaQueryTask("T216")==6)then
	if(LuaQueryTask("task_kill/mon_030/T216")==51)then
		LuaSay("你已经成功的击杀了50只@2竹节妖@0完成了过关斩将[活动]，抓紧时间回复建康城的晋清公主吧。")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Thgz")==1)then
	if(LuaItemStatusNormalCount("o_mission514")>=1) then -------身上有金砖胚子
		local t=LuaQueryTask("hgz_dj")
		if(t==5) then
			if(LuaQueryTask("task_kill/mon_030/Thgz_5")==2) then----杀第一个怪
				LuaSay("你身上的@2金砖土胚@0正在吸取@2竹节妖@0的能量，赶快努力杀怪吧！")				
			elseif(LuaQueryTask("task_kill/mon_030/Thgz_5")==41) then
				LuaSay("恭喜你的@2金砖土胚@0吸取能量成功，快去@4边境@0找@2边境管理员（小五）@0换取@2金砖@0吧！")
			end
		end
		LuaOtherSendMenu()
	elseif(LuaItemStatusNormalCount("o_mission514")<1) then -------身上有金砖胚子
		LuaSay("你身上没有金砖土胚，被人爆了，再去@2外国的洛阳城@0@4国家库房总管@0处@2挖墙脚@0偷回一块@2金砖土胚@0找@2边境的小五@0吧！")
		LuaDelTask("task_kill/mon_030/Thgz_5")---删除杀怪计数器
		LuaDelTask("hgz_dj")
		LuaDelTask("Thgz")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Thgz")==1)then
	if(LuaItemStatusNormalCount("o_mission514")>=1) then -------身上有金砖胚子
		local t=LuaQueryTask("hgz_dj")
		if(t==6) then
			if(LuaQueryTask("task_kill/mon_030/Thgz_6")==2) then----杀第一个怪
				LuaSay("你身上的@2金砖土胚@0正在吸取@2竹节妖@0的能量，赶快努力杀怪吧！")				
			elseif(LuaQueryTask("task_kill/mon_030/Thgz_6")==51) then
				LuaSay("恭喜你的@2金砖土胚@0吸取能量成功，快去@4边境@0找@2边境管理员（小五）@0换取@2金砖@0吧！")
			end
		end
		LuaOtherSendMenu()
	elseif(LuaItemStatusNormalCount("o_mission514")<1) then -------身上有金砖胚子
		LuaSay("你身上没有金砖土胚，被人爆了，再去@2外国的洛阳城@0@4国家库房总管@0处@2挖墙脚@0偷回一块@2金砖土胚@0找@2边境的小五@0吧！")
		LuaDelTask("task_kill/mon_030/Thgz_6")---删除杀怪计数器
		LuaDelTask("hgz_dj")
		LuaDelTask("Thgz")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_030/Tfjtx")==16)then
		LuaSay("提示：你已经杀死15只竹节妖，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon24")==1) then
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

