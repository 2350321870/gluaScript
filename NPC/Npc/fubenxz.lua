NPCINFO = {
serial= "183" ,
base_name="fubenxz",
icon= 2589, 
NpcMove=2589, 
name= "@3宝箱" , 
iconaddr=1, 
butt="10|10|28", 
name_color = "CEFFCE", 
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then
	local level= LuaQuery("level")
	AddTopSayMenuItem("操作","")
	AddTopSayMenuItem("聊天","liaotian")
    local mapname=MapName()
    if(mapname=="1lu_jijingler")then
        AddTopSayMenuItem("打开箱子","open")
        LuaSetTask("task_kill/mon_116/Tjjler",1)--开启杀怪计数器
    end
	return 1
elseif(answer=="liaotian") then
	LuaSay("提示：箱子不是人，无法聊天。"..MapName())  
elseif(answer=="open") then
	local mapname=MapName()   -- 检测地图名，根据地图名判断开箱子
	if(mapname=="lu_shikuer" or mapname=="lu_shikuer1" ) then   -- 20~29副本：石窟2层箱子
	local num=LuaQueryTask("task_kill/mon_112/Tshikuer") 
	if(num>50) then    
	LuaDelTask("task_kill/mon_112/Tshikuer")
	 if(LuaQueryTask("task_kill/mon_112/Tshikuer")==0) then       --防刷 
	  LuaGive("coin",5000,"Tshikuer")            
	  local r= LuaRandom(6)
	  if(r==0) then 
	    LuaGive("o_material_14",1)               --20级副本奖励：4级材料，5000铜币 
	  elseif(r==1) then
	    LuaGive("o_material_23",1)
	  elseif(r==2) then
	    LuaGive("o_material_32",1) 
	  elseif(r==3) then
	    LuaGive("o_material_41",1) 
	  elseif(r==4) then
	    LuaGive("o_material_50",1) 
	  elseif(r==5) then
	    LuaGive("o_material_59",1)            
	  end
	 end
	elseif(num==0) then 
	LuaSay("提示：你已经开启过了箱子。")      
	else
	LuaSay("提示：你所在的队伍需要杀够@350只毒蝎@0，方可开启箱子")     
	end

  elseif(mapname=="lu_lieyanguer" or mapname=="lu_lieyanguer1") then    -- 30~39副本
    local num=LuaQueryTask("task_kill/mon_114/Tlyger")
	if(num>80) then
	LuaDelTask("task_kill/mon_114/Tlyger")
	 if(LuaQueryTask("task_kill/mon_114/Tlyger")==0) then       --防刷
	  LuaGive("coin",5000,"Tlyger")
	  local r= LuaRandom(6)
	  if(r==0) then
	    LuaGive("o_material_14",1)             --30级副本奖励：4级材料，6000铜币 
	  elseif(r==1) then
	    LuaGive("o_material_23",1)
	  elseif(r==2) then
	    LuaGive("o_material_32",1)
	  elseif(r==3) then
	    LuaGive("o_material_41",1)
	  elseif(r==4) then
	    LuaGive("o_material_50",1)
	  elseif(r==5) then
	    LuaGive("o_material_59",1)
	  end
	 end
	elseif(num==0) then
	LuaSay("提示：你已经开启过了箱子。")
	else
	LuaSay("提示：你所在的队伍需要杀够@380只精英火狼@0，方可开启箱子")
	end
  

  elseif(mapname=="lu_jijingler") then        -- 40~49副本
     local num=LuaQueryTask("task_kill/mon_116/Tjjler")
	if(num>300) then
	LuaDelTask("task_kill/mon_116/Tjjler")
	 if(LuaQueryTask("task_kill/mon_116/Tjjler")==0) then       --防刷
	  LuaGive("coin",10000,"Tjjler")
	  local r= LuaRandom(6)
	  if(r==0) then
	    LuaGive("o_material_15",1)            --40级副本奖励：5级材料，10000铜币 
	  elseif(r==1) then
	    LuaGive("o_material_24",1)
	  elseif(r==2) then
	    LuaGive("o_material_33",1)
	  elseif(r==3) then
	    LuaGive("o_material_42",1)
	  elseif(r==4) then
	    LuaGive("o_material_51",1)
	  elseif(r==5) then
	    LuaGive("o_material_60",1)
	  end
	 end
	elseif(num==0) then
	LuaSay("提示：你已经开启过了箱子。")
	else
	LuaSay("提示：你所在的队伍需要杀够@3300只叛军精锐@0 当前已杀"..(num-1).."，方可开启箱子")
	end
  
  
  elseif(mapname=="lu_dxcxyi" or mapname=="lu_dxcxyi1") then        -- 50~59副本
      local num1=LuaQueryTask("task_kill/mon_123/Tdxcxyi")
      local num2=LuaQueryTask("task_kill/mon_124/Tdxcxyi")
	if(num1>100 and num2>100) then
	LuaDelTask("task_kill/mon_123/Tdxcxyi")
	LuaDelTask("task_kill/mon_124/Tdxcxyi")
	 if(LuaQueryTask("task_kill/mon_123/Tdxcxyi")==0 and LuaQueryTask("task_kill/mon_124/Tdxcxyi")==0) then       
	  LuaGive("coin",10000,"Tdxcxyi")
	  r= LuaRandom(6)
	  if(r==0) then
	    LuaGive("o_material_15",1)            
	  elseif(r==1) then
	    LuaGive("o_material_24",1)
	  elseif(r==2) then
	    LuaGive("o_material_33",1)
	  elseif(r==3) then
	    LuaGive("o_material_42",1)
	  elseif(r==4) then
	    LuaGive("o_material_51",1)
	  elseif(r==5) then
	    LuaGive("o_material_60",1)
	  end
	 end
	elseif(num1==0) then
	LuaSay("提示：你已经开启过了箱子。")
	else
	LuaSay("提示：你所在的队伍需要杀够@3打手、恶霸各100个@0，方可开启箱子")
	end
  
  elseif(mapname=="lu_ymdxer" or mapname=="lu_ymdxer1") then        -- 60~副本：70以后暂不开放，70级以后者可以进60级副本 
    local num=LuaQueryTask("task_kill/mon_126/Tymdxer")
	if(num>100) then
	LuaDelTask("task_kill/mon_126/Tymdxer")
	 if(LuaQueryTask("task_kill/mon_126/Tymdxer")==0) then       
	  LuaGive("coin",15000,"Tymdxer")
	  local r= LuaRandom(6)
	  if(r==0) then
	    LuaGive("o_material_15",1)            
	  elseif(r==1) then
	    LuaGive("o_material_24",1)
	  elseif(r==2) then
	    LuaGive("o_material_33",1)
	  elseif(r==3) then
	    LuaGive("o_material_42",1)
	  elseif(r==4) then
	    LuaGive("o_material_51",1)
	  elseif(r==5) then
	    LuaGive("o_material_60",1)
	  end
	 end
	elseif(num==0) then
	LuaSay("提示：你已经开启过了箱子。")
	else
	LuaSay("提示：你所在的队伍需要杀够@3异蛇100条@0，方可开启箱子")
	end
  
  
  elseif(mapname=="000") then        -- 70~79副本
  LuaSay("提示：nothing")
  end

end
LuaSendMenu()
return 1
end    	