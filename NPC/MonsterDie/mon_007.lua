T325_nTotalMonsterNum = 11
Thx03_nTotalMonsterNum = 51
T331_nTotalMonsterNum = 16
T324_nTotalMonsterNum = 13
Tbprw004_nTotalMonsterNum = 21
T271_nTotalMonsterNum = 51
Txhuanxing_nTotalMonsterNum = 11
Tpt1_nTotalMonsterNum = 51
Tfjtx_nTotalMonsterNum = 11
Tpt4_nTotalMonsterNum = 51
function OnDie()
if(LuaQueryTask("Txc_baoz")==1) then
	local r=LuaRandom(15)
		if(r==2) then
			if(LuaItemStatusNormalCount("o_mission284")<1) then
				LuaGive("o_mission284",1,"Txinchun")
				LuaSay("你得到@5一本爆竹制作书@0")
				LuaOtherSendMenu()
			elseif(LuaItemStatusNormalCount("o_mission284")==1) then
				LuaSay("你已经得到了@5一本爆竹制作书@0")
				LuaOtherSendMenu() 
			end
		end
end
if(LuaQueryTask("T276")==1) then
	if (LuaItemCount("o_mission003") < 10) then
		LuaGive("o_mission003",1)
		--[[if(LuaItemCount("o_mission003")==1) then
			local a = LuaQueryItemID(4,"o_mission003","wangzhubu")
			SendCommand("call=恭喜你获得第一个任务道具，收集完10个就可以去交任务了哦。|2|0|0|8|"..a.."")	
			LuaOtherSendMenu()
		end]]
		if(LuaItemCount("o_mission003")==10) then
			CheckNpcStatusByMonItemID("T276","o_mission003")
			LuaSay("你已得到@210只金蛊之卵@0，去回复@4建康城南@0的@3刘裕@0吧")
			LuaOtherSendMenu()
		end
	end
end
if(LuaQueryTask("T325")==1) then
  if(LuaQueryTask("task_kill/mon_007/T325") == 11) then
  CheckNpcStatusByMonItemID("T325","mon_007")
  LuaSay("你已经消灭了@210只金蛊@0")
  LuaOtherSendMenu()
  end
end
if(LuaQueryTask("Thx03")==4)then
	if(LuaQueryTask("task_kill/mon_007/Thx03")==51)then
		LuaSay("你已经成功的击杀了50只金蛊")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T331")==1) then
  if(LuaQueryTask("task_kill/mon_007/T331") == 16) then
  CheckNpcStatusByMonItemID("T331","mon_007")
  LuaSay("你已经消灭了@215只金蛊@0")
  LuaOtherSendMenu()
  end
end
if(LuaQueryTask("T324")==1) then
  if(LuaQueryTask("task_kill/mon_007/T324") == 13) then
  LuaSay("你已经消灭了@212只金蛊@0，快去回复@4建康东郊@0的@3桓冲@0吧")
  LuaOtherSendMenu()
  end
end
if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_007/Tbprw004")==21)then
	LuaSay("你已经消灭了@220只金蛊@0，快去回复@4宫殿@0的@3晋帝@0吧")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T271")==1)then
	if(LuaQueryTask("task_kill/mon_007/T271")==51)then
		LuaSay("你已经成功的击杀了50只金蛊")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_007/Txhuanxing")==11)then
		LuaSay("你已经杀死10只@2金蛊@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_007/T464")==21)then
		LuaSay("你已经杀死20只金蛊，快去回复何谦吧！")
		LuaOtherSendMenu()
	end
end	
if(LuaQueryTask("Tpt1")==1)then
	if(LuaQueryTask("task_kill/mon_007/Tpt1")==51)then
		LuaSay("你已经成功的击杀了@250只金蛊@0，快到@2帮派主寨@0找@3帮派总管@0交任务吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tpt4")==1)then
	if(LuaQueryTask("task_kill/mon_007/Tpt4")==51)then
		LuaSay("你已经成功的击杀了@250只金蛊@0，快到@2帮派主寨@0找@3帮派总管@0交任务吧")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_007/Tfjtx")==11)then
		LuaSay("提示：你已经杀死10只金蛊，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon4")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("提示：你得到了@4破碎剑柄@0，完成@2夺回物资@0任务")
			LuaOtherSendMenu()
		end
	end
end 

---------***端午活动掉落***--------------
if(HuoDongDay()==12) then
		r=LuaRandom(40)
		if(r==1) then
		LuaGive("o_mission197",1)
		LuaShowNotify("得到屈原诗集1")
		elseif(r==2) then
		LuaGive("o_mission198",1)
		LuaShowNotify("得到屈原诗集2")
		elseif(r==3) then
		LuaGive("o_mission199",1)
		LuaShowNotify("得到屈原诗集3")
		end
end

return 1
end

function  HuoDongDay()
nowday=GetCurrentDay()
HDday={}
HDday[1]={"2011-4-28","2011-4-29","2011-4-30","2011-5-1","2011-5-2","2011-5-3","2011-5-4"}--2011劳动节
HDday[2]={"2011-6-2","2011-6-3","2011-6-4","2011-6-5","2011-6-6","2011-6-7","2011-6-8"}--2011端午节
	
	if(nowday==HDday[1][1] or nowday==HDday[1][2] or nowday==HDday[1][3] or nowday==HDday[1][4] or nowday==HDday[1][5] or nowday==HDday[1][6] or nowday==HDday[1][7]) then
		return 11	--劳动节
	elseif(nowday==HDday[2][1] or nowday==HDday[2][2] or nowday==HDday[2][3] or nowday==HDday[2][4] or nowday==HDday[2][5] or nowday==HDday[2][6] or nowday==HDday[2][7]) then
		return 12	--端午节
	else
		return 0
	end
end