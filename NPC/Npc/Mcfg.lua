NPCINFO = {
serial= "96" ,
base_name="Mcfg",
icon= 2699, 
NpcMove=2699, 
name= "翠风谷" ,
level=10 ,
iconaddr=1, 
butt="10|10|45",
name_color = "CEFFCE" ,
LuaType=1,
}
  function do_talk(answer)
   if (answer=="ask") then
    local level= LuaQuery("level")
     local T810=LuaQueryTask("T810")
     local T811=LuaQueryTask("T811")
     local T812=LuaQueryTask("T812")
    AddTopSayMenuItem("任务列表","")
    if(T810==0 and level>44 and level <50) then
	AddTopSayMenuItem("暗影【循环】","T810")
	havetask =1
    elseif(T810==1) then
	AddTopSayMenuItem("@2暗影【循环】@0","T810")
	havetask =2
    end

    if(T811==0 and level>44 and level <50) then
	AddTopSayMenuItem("三头狼【循环】","T811")
	havetask =1
    elseif(T811==1) then
	 AddTopSayMenuItem("@2三头狼【循环】@0","T811")
	 havetask =2
    end

    if(T812==0 and level>55 and level <50) then
	AddTopSayMenuItem("牛头人【循环】","T812")
	 havetask =1
    elseif(T812==1) then
	 AddTopSayMenuItem("@2牛头人【循环】@0","T812")
	 havetask =2
    end
if(havetask ==2)then
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else
	AddTopSayMenuItem("聊天","liaotian","0")
end

return 1



 elseif(answer=="gaoshi") then
    LuaSay("告示：翠风谷适合@345~50级@0的玩家修炼")

elseif(answer=="T810") then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
     if(LuaQueryTask("T810") == 0) then
     LuaSetTask("T810",1)
     LuaSay("提示：消灭@380个暗影")
     LuaSetTask("task_kill/mon_031/T810",1)
     AddLog("暗影",810)
     UpdateMenu()
     
     elseif(LuaQueryTask("T810") == 1) then
      if(LuaQueryTask("task_kill/mon_031/T810") >= 81  ) then
	  LuaDelTask("task_kill/mon_031/T810")
	  local jingyan=150000+20*level^2
	  LuaAddJx("combat_exp",jingyan,"T810")
	  LuaSetTask("T810",0)
	  DelLog("810")
	  UpdateMenu()
	else
       LuaSay("提示：你还没有完成击杀@380个暗影@0的任务")
       end
     end

elseif(answer=="T811") then
local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
     if(LuaQueryTask("T811") == 0) then
     LuaSetTask("T811",1)
     LuaSay("提示：消灭@380只三头狼")
     LuaSetTask("task_kill/mon_032/T811",1)
     AddLog("三头狼",811)
     UpdateMenu()
     elseif(LuaQueryTask("T811") == 1) then
      if(LuaQueryTask("task_kill/mon_032/T811") >= 81  ) then
	  LuaDelTask("task_kill/mon_032/T811")
	  local jingyan=150000+20*level^2
	  LuaAddJx("combat_exp",jingyan,"T811")
	  LuaSetTask("T811",0)
	  DelLog("811")
	  UpdateMenu()
	  else
        LuaSay("提示：你还没有完成击杀@380只三头狼@0的任务")
       end
     end

elseif(answer=="T812") then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
     if(LuaQueryTask("T812") == 0) then
     LuaSetTask("T812",1)
     LuaSay("提示：消灭@380个牛头人")
     LuaSetTask("task_kill/mon_033/T812",1)
     AddLog("诅咒魔",812)
     UpdateMenu()
     elseif(LuaQueryTask("T812") == 1) then
      if(LuaQueryTask("task_kill/mon_033/T812") >= 81  ) then
	  LuaDelTask("task_kill/mon_033/T812")
	  local jingyan=150000+20*level^2
	  LuaAddJx("combat_exp",jingyan,"T812")
	  LuaSetTask("T812",0)
	  DelLog("812")
	  UpdateMenu()
       else
       LuaSay("提示：你还没有完成击杀@380个牛头人@0的任务")
       end
     end

end
LuaSendMenu()
return 1
end