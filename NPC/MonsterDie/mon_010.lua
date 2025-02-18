T350_nTotalMonsterNum = 21
T361_nTotalMonsterNum = 21
Tbprw004_nTotalMonsterNum = 21
Thx03_nTotalMonsterNum = 51
Txhuanxing_nTotalMonsterNum = 11
T464_nTotalMonsterNum = 21
Tfjtx_nTotalMonsterNum = 11
function OnDie()
-------------青狼
if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_010/Tbprw004")==21)then
	LuaSay("你已经消灭掉了@220只青狼@0，快回去报告@4宫殿@0的@3晋帝@0吧！")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T350")==1)then
	if(LuaQueryTask("task_kill/mon_010/T350")==21)then
	    CheckNpcStatusByMonItemID("T350","mon_010")
	    LuaSay("你已经消灭掉了20只青狼，快回去报告@3桓玄@0吧！")
	    LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T353")==1)  then
	r=LuaRandom(10)
	if(r<7)then
	    if(LuaItemCount("o_mission349")<=15)then
	        LuaGive("o_mission349",1)
	        if(LuaItemCount("o_mission349") == 15) then
	            CheckNpcStatusByMonItemID("T353","o_mission349")
        		LuaSay("你已得到15张狼皮，拿去贿赂天师教徒吧")
            		LuaOtherSendMenu()
		 	end
        end
	end
end
if(LuaQueryTask("T357")==1)  then
	r=LuaRandom(10)
	if(r<3)then
	    if(LuaItemCount("o_mission009")<1)then
	        LuaGive("o_mission009",1)
	        if(LuaItemCount("o_mission009") == 1) then
        		LuaSay("你已得到神秘钥匙，去建康东郊开箱子吧")
            		LuaOtherSendMenu()
		 	end
        end
	end
end
if(LuaQueryTask("T361")==1)then
	if(LuaQueryTask("task_kill/mon_010/T361")==21)then
	    CheckNpcStatusByMonItemID("T361","mon_010")
	    LuaSay("你已经消灭掉了20只青狼，快回去报告@3天师教徒@0吧！")
	    LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Thx03")==7)then
	if(LuaQueryTask("task_kill/mon_010/Thx03")==51)then
		LuaSay("你已经成功的击杀了50只青狼")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_010/Txhuanxing")==11)then
		LuaSay("你已经杀死10只@2青狼@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_010/T464")==21)then
		LuaSay("你已经杀死20只青狼，快去回复何谦吧！")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_010/Tfjtx")==11)then
		LuaSay("提示：你已经杀死10只金蛊，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon5")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("提示：你得到了@4破碎剑柄@0，完成@2夺回物资@0任务")
			LuaOtherSendMenu()
		end
	end
end 
-------------------国庆节活动-----------------
if(LuaQueryTask("Tjianguodaye")==2 and LuaQueryTask("Tjianguodayesg")==99) then
	if(LuaQuery("level")>15 and LuaQuery("level")<30)then
	r = LuaRandom(3)
	if(r==1)then
  		if (LuaItemCount("o_mission522")<5) then
     		LuaGive("o_mission522",1)
     		elseif(LuaItemCount("o_mission522")==5) then
     		LuaSay("你已得到5张青狼皮，去回复@4建康城@0的@3钱庄老板@0吧！")
     		LuaOtherSendMenu()
     		end
	end
	end
end 
------------------------------------
return 1
end