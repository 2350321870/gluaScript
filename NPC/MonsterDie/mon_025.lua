T490_nTotalMonsterNum = 31
Tbprw004_nTotalMonsterNum = 21
Txhuanxing_nTotalMonsterNum = 16
Thgz_4_nTotalMonsterNum = 41
Tfjtx_nTotalMonsterNum = 16
function OnDie()
local T562=LuaQueryTask("T562")

------------------------------------------
if(LuaQueryTask("T562")==0) then                    --------------触发条件
	if(LuaQuery("level")>30) then              ----------下一个条件
		local r = LuaRandom(10)                       --------触发几率
		if(r==0)then
			LuaSay("氐族哨兵：大侠快快住手，我有消息告诉大侠你。一天我在替姚苌站岗的时候看见姚苌的妻子张氏来找他，我觉得天气热，就想送两杯茶去")
			LuaSay("氐族哨兵：因为姚苌军战败，姚苌那杂碎正和张氏在谋划着如何脱离苻坚将军，刺杀苻坚将军，我进去正好撞见")
			LuaSay(""..LuaQueryStr("name").."：竟然有这等事，我这就去找@3姚苌@0问个清楚，")
			LuaSetTask("T562",1)
   			AddLog("姚苌的阴谋【剧情】",T562)
  			UpdateNPCMenu("yaochang")
   			LuaSendMenu()
        end
    end
end

if(LuaQueryTask("T533")==1) then
  local r = LuaRandom(10)	
  if(r<2)then
   if (LuaItemCount("o_mission342") < 1) then
     LuaGive("o_mission342",1)
     if(LuaItemCount("o_mission342")>=1) then 
     LuaSay("你得到了火麟剑，杀够@210个氐族哨兵@0后去交给洛阳郊外的武器商人吧")
     LuaOtherSendMenu()
     end
     end
  end
end
if(LuaQueryTask("T533")==1) then
	if(LuaQueryTask("task_kill/mon_025/T533") == 11) then
         CheckNpcStatusByMonItemID("T533","mon_025")
 		 LuaSay("你已经消灭了@210个氐族哨兵@0，快去找@3武器商人@0吧")
 		 LuaSetTask("T533",1)
  		 LuaOtherSendMenu()
	end
end
--------------------------------------- 苻融的考验
if(LuaQueryTask("T490")==1) then
	local count= LuaQueryTask("task_kill/mon_025/T490",1)
	if(count==31) then
	    CheckNpcStatusByMonItemID("T490","mon_025")
		LuaSay("你已经成功消灭了30只@3氐族哨兵@0，赶快回复洛阳郊外的符融吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_025/Tbprw004")==21)then
	LuaSay("你已经消灭了@220个氐族哨兵@0，快去回复@4宫殿@0的@3晋帝@0吧。")
	LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_025/Txhuanxing")==16)then
		LuaSay("你已经杀死15只@2氐族哨兵@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Thgz")==1)then
	if(LuaItemStatusNormalCount("o_mission514")>=1) then -------身上有金砖胚子
		local t=LuaQueryTask("hgz_dj")
		if(t==4) then
			if(LuaQueryTask("task_kill/mon_025/Thgz_4")==2) then----杀第一个怪
				LuaSay("你身上的@2金砖土胚@0正在吸取@2氐族哨兵@0的能量，赶快努力杀怪吧！")				
			elseif(LuaQueryTask("task_kill/mon_025/Thgz_4")==41) then
				LuaSay("恭喜你的@2金砖土胚@0吸取能量成功，快去@4边境@0找@2边境管理员（小五）@0换取@2金砖@0吧！")
			end
		end
		LuaOtherSendMenu()
	elseif(LuaItemStatusNormalCount("o_mission514")<1) then -------身上有金砖胚子
		LuaSay("你身上没有金砖土胚，被人爆了，再去@2外国的洛阳城@0@4国家库房总管@0处@2挖墙脚@0偷回一块@2金砖土胚@0找@2边境的小五@0吧！")
		LuaDelTask("task_kill/mon_025/Thgz_4")---删除杀怪计数器
		LuaDelTask("hgz_dj")
		LuaDelTask("Thgz")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_025/Tfjtx")==16)then
		LuaSay("提示：你已经杀死15只氐族哨兵，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon19")==1) then
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

