NPCINFO = {
serial= "138" ,
base_name="gaoshipai1",
icon= 2699, 
NpcMove=2699, 
name= "告示牌" ,
level=10 ,
iconaddr=1, 
butt="10|10|45",
name_color = "CEFFCE" ,
LuaType=1,
}
  function do_talk(answer)
   if (answer=="ask") then
    local level= LuaQuery("level")
    local T980= LuaQueryTask("T980")
    local T981= LuaQueryTask("T981")
	AddTopSayMenuItem("@7任务列表","")
    if(T980==0 and  level>=64  and level<69) then
    AddTopSayMenuItem("消灭鼠奴【循环】","T980")
    havetask =1
    end
    if(T981==0 and   level>=65  and level<70) then
    AddTopSayMenuItem("消灭刺魂【循环】","T981")
    havetask =1
    end
    if(T980==1) then
    AddTopSayMenuItem("@2消灭鼠奴【循环】","T980")
    havetask =2
    end
    if(T981==1) then
    AddTopSayMenuItem("@2消灭刺魂【循环】","T981")
    havetask =2
    end

	if(havetask ==2)then
		AddTopSayMenuItem("告示","gaoshi","2")
	elseif(havetask ==1) then
		AddTopSayMenuItem("告示","gaoshi","1")
	else
		AddTopSayMenuItem("告示","gaoshi","0")
	end
	return 1

 elseif(answer=="gaoshi") then
    LuaSay("提示：极北之地最适合@363~70级@0的玩家修炼。")



elseif(answer=="T980") then      ----------消灭鼠奴
	 local level= LuaQuery("level")
     if(LuaQueryTask("T980") == 0) then
     LuaSay("提示：@4古战场@0@2鼠奴@0为患，还请有能之人除此大患。消灭@240只鼠奴@0后，可在此领取奖励。")
     LuaSetTask("task_kill/mon_059/T980",1)
     LuaSetTask("T980",1)
     AddLog("消灭鼠奴【循环】",980)
     UpdateMenu()
     elseif(LuaQueryTask("T980") == 1) then
      if(LuaQueryTask("task_kill/mon_059/T980") >= 41  ) then
       LuaSay("提示：英雄成功击杀40只鼠奴，可在此领取奖励。")
	   AddMenuItem("@7任务完成","")
	   AddMenuItem("领取奖励","T980jl")
      else
       LuaSay("提示：你还没有击杀@240只鼠奴@0，它们就在@4古战场@0出没。")
      end
     end
   elseif(answer=="T980jl")then
	 local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	 if(LuaQueryTask("T980")==1) then
      if(LuaQueryTask("task_kill/mon_059/T980") >= 41  ) then
	  local jingyan=(245000+20*level^2)
		local money
		if(LuaQuery("level")<20)then
			money=200
		elseif(LuaQuery("level")<30)then
			money=300
		elseif(LuaQuery("level")<40)then
			money=400
		elseif(LuaQuery("level")<50)then
			money=500
		elseif(LuaQuery("level")<100)then
			money=600
		end
		LuaGive("coin",money,"T980")
	  LuaAddJx("combat_exp",jingyan,"T980")
	  LuaSetTask("T980",0)
	  DelLog("980")
	  LuaDelTask("task_kill/mon_059/T980")
	  UpdateMenu()
	end
	end

elseif(answer=="T981") then                                    ----------消灭刺魂
     if(LuaQueryTask("T981") == 0) then
     LuaSay("提示：@4古战场@0@2刺魂@0为患，还请有能之人除此大患。消灭@240只刺魂@0后，可在此领取奖励。")
     LuaSetTask("task_kill/mon_060/T981",1)
     LuaSetTask("T981",1)
     AddLog("消灭刺魂【循环】",981)
     UpdateMenu()
     elseif(LuaQueryTask("T981") == 1) then
      if(LuaQueryTask("task_kill/mon_060/T981") >= 41  ) then
       LuaSay("提示：英雄成功击杀40只刺魂，可在此领取奖励。")
	   AddMenuItem("@7任务完成","")
	   AddMenuItem("领取奖励","T981jl")
      else
       LuaSay("提示：你还没有击杀@240只刺魂@0，它们就在@4古战场@0出没。")
      end
     end
   elseif(answer=="T981jl")then
    local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	 if(LuaQueryTask("T981")==1) then
	 if(LuaQueryTask("task_kill/mon_060/T981") >= 41  ) then
	 local money
	if(LuaQuery("level")<20)then
		money=200
	elseif(LuaQuery("level")<30)then
		money=300
	elseif(LuaQuery("level")<40)then
		money=400
	elseif(LuaQuery("level")<50)then
		money=500
	elseif(LuaQuery("level")<100)then
		money=600
	end
	LuaGive("coin",money,"T981")
	  local jingyan=(256000+20*level^2)
	  LuaAddJx("combat_exp",jingyan,"T981")
	  LuaSetTask("T981",0)
	  DelLog("981")
	  LuaDelTask("task_kill/mon_060/T981")
	  UpdateMenu()
	end
	end
end
LuaSendMenu()
return 1
end

     
     