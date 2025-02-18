T271_nTotalMonsterNum = 51
T200_nTotalMonsterNum = 101
Txhuanxing_nTotalMonsterNum = 16
Tfjtx_nTotalMonsterNum = 16
function OnDie()
local num1=LuaQueryTask("T581")
local num2=LuaQueryTask("T598")
local num3=LuaQueryTask("T612")
if(LuaQueryTask("T590")==1) then
local r = LuaRandom(10)
  	if(r<7)then
	    if(LuaItemCount("o_mission322") < 20) then
   		LuaGive("o_mission322",1)
   			if(LuaItemCount("o_mission322") >= 20) then
   			        CheckNpcStatusByMonItemID("T581","o_mission322")
        			LuaSay("你已得到20个竹节毒，快去交给西蜀竹林的鬼夫人吧")
            			LuaOtherSendMenu()
	                end
	    end
	end
end
-----------------------  竹节怪
if(num3==2) then
	local r = LuaRandom(10)
	if(r<7)then
   		if (LuaItemCount("o_mission322") < 10) then
     		LuaGive("o_mission322",1)
			if(LuaItemCount("o_mission322")==10) then
			    CheckNpcStatusByMonItemID("T612","o_mission322")
		     	LuaSay("你已得到10个竹节毒，快去找羯族巫师吧")
     			LuaOtherSendMenu()
     		end
     	end
  	end
end
----------------------------------------
 if(num1==1) then
 local r = LuaRandom(10)
  	if(r<7)then
	    if(LuaItemCount("o_mission322") < 20) then
   		LuaGive("o_mission322",1)
   			if(LuaItemCount("o_mission322") == 20) then
   			CheckNpcStatusByMonItemID("T581","o_mission322")
        	LuaSay("你已得到20个竹节毒，快去交给西蜀竹林的鬼夫人吧")
            LuaOtherSendMenu()
        	end
        	
		end
	end
end
if(num2==1) then
 local r = LuaRandom(10)
  	if(r<7)then
	    if(LuaItemCount("o_mission322") < 6) then
		LuaSay("啊，这是什么，这就是鬼夫人要的人心么？")
   		LuaGive("o_mission331",1)
   			if(LuaItemCount("o_mission331") == 5) then
   			        CheckNpcStatusByMonItemID("T598","o_mission331")
        			LuaSay("你已得到5个人心，快去交给西蜀竹林的鬼夫人吧")
            			LuaOtherSendMenu()
		 	end
		end
	end
end	 
------------------------------------------
if(LuaQueryTask("T596")==1 and LuaQuery("hp")<=(LuaQuery("max_hp")*0.6)) then
	LuaSetTask("T596V",1)
	LuaSay(""..LuaQueryStr("name").."：这是怎么了，头好晕啊，")
	LuaSet("hp",LuaQuery("max_hp")*0.1)
    LuaSay(""..LuaQueryStr("name").."：走路也走不动了，我得赶快找鬼夫人问问去！")
	UpdateMenu()
end
-------------------------------

if(LuaQueryTask("T271")==3)then
	
	if(LuaQueryTask("task_kill/mon_029/T271")==51)then
		LuaSay("你已经成功的击杀了50只竹节怪")
		LuaOtherSendMenu()
	end
end
--------------------------------------
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_029/Txhuanxing")==16)then
		LuaSay("你已经杀死15只@2竹节怪@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T200")==3)then
	if(LuaQueryTask("task_kill/mon_029/T200")==101)then
		LuaSay("你已经成功的击杀了100只@2竹节怪@0，完成了@3扶持弱小@0任务。")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_029/Tfjtx")==16)then
		LuaSay("提示：你已经杀死15只竹节怪，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon23")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("提示：你得到了@4破碎剑柄@0，完成@2夺回物资@0任务")
			LuaOtherSendMenu()
		end
	end
end 
------------------------------------
return 1
end
