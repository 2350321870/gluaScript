T331_nTotalMonsterNum = 16
T325_nTotalMonsterNum = 11
T323_nTotalMonsterNum = 5
Thx03_nTotalMonsterNum = 51
Txhuanxing_nTotalMonsterNum = 11
T464_nTotalMonsterNum = 21
Thgz_1_nTotalMonsterNum = 41
Thgz_2_nTotalMonsterNum = 51
Tbp4_nTotalMonsterNum = 51
function OnDie()
-------------幼貂 
------------------------------------
if(LuaQueryTask("T331")==1) then
  if(LuaQueryTask("task_kill/mon_008/T331") == 16) then
  CheckNpcStatusByMonItemID("T331","mon_008")
  LuaSay("你已经消灭了@215个幼貂@0")
  LuaOtherSendMenu()
  end
end

if(LuaQueryTask("T325")==1) then
  if(LuaQueryTask("task_kill/mon_008/T325") == 11) then
  CheckNpcStatusByMonItemID("T325","mon_008")
  LuaSay("你已经消灭了@210只幼貂@0")
  LuaOtherSendMenu()
  end
end

if(LuaQueryTask("T323")==1) then
  if(LuaQueryTask("task_kill/mon_008/T323") == 6) then
  CheckNpcStatusByMonItemID("T323","mon_008")
  LuaSay("你已经消灭了@25只幼貂@0，快去回复@4建康东郊@0的@3桓冲@0吧")
  LuaOtherSendMenu()
  end
end

if(LuaQueryTask("Thx03")==5)then
	if(LuaQueryTask("task_kill/mon_008/Thx03")==51)then
		LuaSay("你已经成功的击杀了50只幼貂")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_008/Txhuanxing")==11)then
		LuaSay("你已经杀死10只@2幼貂@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_008/T464")==21)then
		LuaSay("你已经杀死20只幼貂，快去回复何谦吧！")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Thgz")==1)then
	if(LuaItemStatusNormalCount("o_mission514")>=1) then -------身上有金砖胚子
		local t
		t=LuaQueryTask("hgz_dj")
		if(t==1) then
			if(LuaQueryTask("task_kill/mon_008/Thgz_1")==2) then----杀第一个怪
				LuaSay("你身上的@2金砖土胚@0正在吸取@2幼貂@0的能量，赶快努力杀怪吧！")				
			elseif(LuaQueryTask("task_kill/mon_008/Thgz_1")==41) then
				LuaSay("恭喜你吸取能量成功，快去@4边境@0找@2边境管理员（小五）@0换取@2金砖@0吧！")
			end
		end
		LuaOtherSendMenu()
	elseif(LuaItemStatusNormalCount("o_mission514")<1) then -------身上有金砖胚子
		LuaSay("你身上没有金砖土胚，被人爆了，再去@2外国的洛阳城@0@4国家库房总管@0处@2挖墙脚@0偷回一块@2金砖土胚@0找@2边境的小五@0吧！")
		LuaDelTask("Thgz")
		LuaDelTask("hgz_dj")
		LuaDelTask("task_kill/mon_008/Thgz_1")---删除杀怪计数器
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Thgz")==1)then
	if(LuaItemStatusNormalCount("o_mission514")>=1) then -------身上有金砖胚子
		local t
		t=LuaQueryTask("hgz_dj")
		if(t==2) then
			if(LuaQueryTask("task_kill/mon_008/Thgz_2")==2) then----杀第一个怪
				LuaSay("你身上的@2金砖土胚@0正在吸取@2幼貂@0的能量，赶快努力杀怪吧！")				
			elseif(LuaQueryTask("task_kill/mon_008/Thgz_2")==51) then
				LuaSay("恭喜你吸取能量成功，快去@4边境@0找@2边境管理员（小五）@0换取@2金砖@0吧！")
			end
		end
		LuaOtherSendMenu()
	elseif(LuaItemStatusNormalCount("o_mission514")<1) then -------身上有金砖胚子
		LuaSay("你身上没有金砖土胚，被人爆了，再去@2外国的洛阳城@0@4国家库房总管@0处@2挖墙脚@0偷回一块@2金砖土胚@0找@2边境的小五@0吧！")
		LuaDelTask("Thgz")
		LuaDelTask("hgz_dj")
		LuaDelTask("task_kill/mon_008/Thgz_2")---删除杀怪计数器
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("bprx1_1")==1 or LuaQueryTask("bprx1_2")==1)then
	if(LuaQueryTask("task_kill/mon_008/Tbp4")==51)then
		LuaSay("你已经成功的击杀了@250只幼貂@0，快到@2帮派主寨@0找@3帮派总管@0或者@2宫殿@0的@2晋帝@0交任务吧")
		LuaOtherSendMenu()
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
-------------国庆节活动-----------------
if(LuaQueryTask("Tjianguodaye")==2 and LuaQueryTask("Tjianguodayesg")==99) then
	if(LuaQuery("level")>10 and LuaQuery("level")<=15)then
		r = LuaRandom(2)
		if(r==1)then
	  			if (LuaItemCount("o_mission521")<5) then
	     		LuaGive("o_mission521",1)
	     		elseif(LuaItemCount("o_mission521")==5) then
	     		LuaSay("你已得到5张貂皮，去回复@4建康城@0的@3钱庄老板@0吧！")
	     		LuaOtherSendMenu()
	     		end
		end
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