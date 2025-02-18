Txhuanxing_nTotalMonsterNum = 29
T31_nTotalMonsterNum = 36
T32_nTotalMonsterNum = 36
T16_nTotalMonsterNum = 21
Tfjtx_nTotalMonsterNum = 29
function OnDie()


local num1=LuaQueryTask("T31")
local num2=LuaQueryTask("T32")
local num3=LuaQueryTask("T16")
-----------------------  巨蹄 

----------------------------------------
 if(num1==1) then
local count = LuaQueryTask("task_kill/mon_048/T31")
 if(count==36) then
LuaSay("你已经成功消灭了35只巨蹄，快去回复食人部落的戎人荣吧")
LuaOtherSendMenu()
end
end

if(num2==1) then
local count = LuaQueryTask("task_kill/mon_048/T32")
 if(count==36) then
LuaSay("你已经成功消灭了35只巨蹄，快去回复食人部落的戎人荣吧")
LuaOtherSendMenu()
end
end

if(num3==1) then
local count = LuaQueryTask("task_kill/mon_048/T16")
 if(count==21) then
LuaSay("你已经成功消灭了20只巨蹄")
LuaOtherSendMenu()
end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_048/Txhuanxing")==29)then
		LuaSay("你已经杀死28只@2巨蹄@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end



if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_048/Tfjtx")==29)then
		LuaSay("提示：你已经杀死28只巨蹄，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon42")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("提示：你得到了@4破碎剑柄@0，完成@2夺回物资@0任务")
			LuaOtherSendMenu()
		end
	end
end 

if(LuaQueryTask("T1004")==1)then
	local count= LuaItemCount("o_mission374")
   	if (count < 20) then
   		if(LuaRandom(10)<8)then
     		LuaGive("o_mission374",1)
     	end
    	local count= LuaItemCount("o_mission374")
     	if(count==20) then
     		LuaSay("你已得到20个邪能药剂,快去交给拓跋圭吧,太多放不下了")
     		LuaOtherSendMenu()
     	end
  	end
end


------------------------------------------
return 1
end