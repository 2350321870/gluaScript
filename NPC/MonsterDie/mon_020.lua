T441_nTotalMonsterNum = 26
T445_nTotalMonsterNum = 26
Tbprw3_nTotalMonsterNum = 21
T216_nTotalMonsterNum = 51
Txhuanxing_nTotalMonsterNum = 13
T464_nTotalMonsterNum = 21
Thgz_3_nTotalMonsterNum = 41
Tfjtx_nTotalMonsterNum = 13
function OnDie() -------提升士气2
 if(LuaQueryTask("T441")==1) then
	local count = LuaQueryTask("task_kill/mon_020/T441")
	if(count==26) then
	    CheckNpcStatusByMonItemID("T441","mon_020")
		LuaSay("你已经消灭25个愚民，快回复@4军营前哨@0的谢琰吧！")
		LuaOtherSendMenu()
	end
end
 if(LuaQueryTask("T445")==1) then
	local count = LuaQueryTask("task_kill/mon_020/T445")
	if(count==26) then
	    CheckNpcStatusByMonItemID("T445","mon_020")
		LuaSay("你已经消灭25个愚民，快回复@4军营前哨@0的谢琰吧！")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tbprw3")==1) then
	if(LuaQueryTask("task_kill/mon_020/Tbprw3")==21) then
		LuaSay("你已经成功消灭了@320个愚民@0，赶快回复@4宫殿@0的@3晋帝@0吧或者@4帮派主寨@0的@3帮派总管@0吧")	
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_020/Txhuanxing")==13)then
		LuaSay("你已经杀死12只@2愚民@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T216")==4)then
	if(LuaQueryTask("task_kill/mon_020/T216")==51)then
		LuaSay("你已经成功的击杀了50只@2愚民@0，抓紧时间哦。")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_020/T464")==21)then
		LuaSay("你已经杀死20只愚民，快去回复何谦吧！")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Thgz")==1)then
	if(LuaItemStatusNormalCount("o_mission514")>=1) then -------身上有金砖胚子
		local t=LuaQueryTask("hgz_dj")
		if(t==3) then
			if(LuaQueryTask("task_kill/mon_020/Thgz_3")==2) then----杀第一个怪
				LuaSay("你身上的@2金砖土胚@0正在吸取@2愚民@0的能量，赶快努力杀怪吧！")				
			elseif(LuaQueryTask("task_kill/mon_020/Thgz_3")==41) then
				LuaSay("恭喜你的@2金砖土胚@0吸取能量成功，快去@4边境@0找@2边境管理员（小五）@0换取@2金砖@0吧！")
			end
		end
		LuaOtherSendMenu()
	elseif(LuaItemStatusNormalCount("o_mission514")<1) then -------身上有金砖胚子
		LuaSay("你身上没有金砖土胚，被人爆了，再去@2外国的洛阳城@0@4国家库房总管@0处@2挖墙脚@0偷回一块@2金砖土胚@0找@2边境的小五@0吧！")
		LuaDelTask("hgz_dj")
		LuaDelTask("task_kill/mon_020/Thgz_3")---删除杀怪计数器
		LuaDelTask("Thgz")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_020/Tfjtx")==13)then
		LuaSay("提示：你已经杀死12只愚民，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon14")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("提示：你得到了@4破碎剑柄@0，完成@2夺回物资@0任务")
			LuaOtherSendMenu()
		end
	end
end 
return 1
end
