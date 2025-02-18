T486_nTotalMonsterNum = 21
Txhuanxing_nTotalMonsterNum = 16
Tfjtx_nTotalMonsterNum = 16
function OnDie()
-------------鬃毛熊
local num1=LuaQueryTask("T551")
local num2=LuaQueryTask("T486")
local num3=LuaQueryTask("T552")
if(num4==1) then
 local r = LuaRandom(10)
  if(r<6)then
	if(LuaItemCount("o_mission344") < 5) then
		LuaGive("o_mission344",1)
     		if(LuaItemCount("o_mission345")==5) then
     			LuaSay("你已得到@25份熊皮，快去回复@4洛阳郊外@0的@3难民@0吧。")
     			LuaOtherSendMenu()
     		end
	end
	if(LuaItemCount("o_mission345") < 5) then
		LuaGive("o_mission345",1)
		if(LuaItemCount("o_mission345")==5) then
			LuaSay("你已得到@25份熊毛，快去回复@4洛阳郊外@0的@3难民@0吧。")
			LuaOtherSendMenu()
		end
	end
  end
end
-------------------------------
if(num2==2) then
	local r = LuaRandom(10)
	if(r<2) then
		if(LuaQueryTask("T508")==0) then
			LuaSay("触发隐藏任务@3符坚的请求")
			LuaSay("@2快去符坚那里接任务吧！") 
			LuaSetTask("T508",1)
			AddLog("符坚的请求",508)
			LuaOtherSendMenu()
		elseif(LuaQueryTask("T508")==1) then
			LuaSay("你还没去@4洛阳城@0的@2符坚@0那里完成@3隐藏任务@0@2符坚的请求@0啊，快点去吧，机会难得啊")
			LuaOtherSendMenu()			
		end
	end
  local count = LuaQueryTask("task_kill/mon_026/T486") 
  if(count==21) then
    CheckNpcStatusByMonItemID("T486","mon_026")
 	LuaSay("你已经成功消灭了20只鬃毛熊，赶快回去拿@3连环铠甲@0")
	LuaOtherSendMenu()
  end                                                                  
end
------------------------------------
if(num1==1) then
	local r = LuaRandom(10)                 
	if(r<7) then
		if (LuaItemCount("o_mission325") ==0) then
			LuaGive("o_mission325",1)
			 LuaSay("你已得到熊掌了，快去交给@7药品商人")
			 LuaOtherSendMenu()
		end
	end
end
--------------------------------
if(num3==1) then
	local r=LuaRandom(10)
	if(r<4) then
		if(LuaItemCount("o_mission325")<5) then
			LuaGive("o_mission325",1)
			if(LuaItemCount("o_mission325")==5) then
				LuaSay("你已得到足够熊掌了，请不要屠杀动物")
            			LuaOtherSendMenu()
        		end
		end
	end 
end
if(LuaQueryTask("T480")==1) then
  	local r = LuaRandom(10)
  	if(r<2)then
  		if (LuaItemCount("o_mission344") < 5) then
     		LuaGive("o_mission344",1)
     		if(LuaItemCount("o_mission344")==5) then
     		     CheckNpcStatusByMonItemID("T480","o_mission344")
     			LuaSay("你已得到5份熊皮。")
     			LuaOtherSendMenu()
     		end
		end
	elseif(r>3 and r<6)then
		if(LuaItemCount("o_mission345") < 5) then
     		LuaGive("o_mission345",1)
     		if(LuaItemCount("o_mission345")==5) then
     		    CheckNpcStatusByMonItemID("T480","o_mission345")
     			LuaSay("你已得到5份熊毛。")
     			LuaOtherSendMenu()
     		end
		end
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_026/Txhuanxing")==16)then
		LuaSay("你已经杀死15只@2鬃毛熊@0，完成了环形任务的第一环，去向拓跋圭回复吧")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T482")==2) then
  local r = LuaRandom(2)	
  if(r<1)then
   if (LuaItemCount("o_mission329") < 1) then
     LuaGive("o_mission329",1)
     if(LuaItemCount("o_mission329")==1) then
     LuaSay("你已得到1张熊皮，快去交给药品商人吧。")
     LuaOtherSendMenu()
     end
     end
  end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_026/Tfjtx")==16)then
		LuaSay("提示：你已经杀死15只鬃毛熊，完成@2杀暴安良@0任务")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon20")==1) then
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
