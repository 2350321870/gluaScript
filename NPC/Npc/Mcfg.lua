NPCINFO = {
serial= "96" ,
base_name="Mcfg",
icon= 2699, 
NpcMove=2699, 
name= "����" ,
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
    AddTopSayMenuItem("�����б�","")
    if(T810==0 and level>44 and level <50) then
	AddTopSayMenuItem("��Ӱ��ѭ����","T810")
	havetask =1
    elseif(T810==1) then
	AddTopSayMenuItem("@2��Ӱ��ѭ����@0","T810")
	havetask =2
    end

    if(T811==0 and level>44 and level <50) then
	AddTopSayMenuItem("��ͷ�ǡ�ѭ����","T811")
	havetask =1
    elseif(T811==1) then
	 AddTopSayMenuItem("@2��ͷ�ǡ�ѭ����@0","T811")
	 havetask =2
    end

    if(T812==0 and level>55 and level <50) then
	AddTopSayMenuItem("ţͷ�ˡ�ѭ����","T812")
	 havetask =1
    elseif(T812==1) then
	 AddTopSayMenuItem("@2ţͷ�ˡ�ѭ����@0","T812")
	 havetask =2
    end
if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("����","liaotian","0")
end

return 1



 elseif(answer=="gaoshi") then
    LuaSay("��ʾ�������ʺ�@345~50��@0���������")

elseif(answer=="T810") then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
     if(LuaQueryTask("T810") == 0) then
     LuaSetTask("T810",1)
     LuaSay("��ʾ������@380����Ӱ")
     LuaSetTask("task_kill/mon_031/T810",1)
     AddLog("��Ӱ",810)
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
       LuaSay("��ʾ���㻹û����ɻ�ɱ@380����Ӱ@0������")
       end
     end

elseif(answer=="T811") then
local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
     if(LuaQueryTask("T811") == 0) then
     LuaSetTask("T811",1)
     LuaSay("��ʾ������@380ֻ��ͷ��")
     LuaSetTask("task_kill/mon_032/T811",1)
     AddLog("��ͷ��",811)
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
        LuaSay("��ʾ���㻹û����ɻ�ɱ@380ֻ��ͷ��@0������")
       end
     end

elseif(answer=="T812") then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
     if(LuaQueryTask("T812") == 0) then
     LuaSetTask("T812",1)
     LuaSay("��ʾ������@380��ţͷ��")
     LuaSetTask("task_kill/mon_033/T812",1)
     AddLog("����ħ",812)
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
       LuaSay("��ʾ���㻹û����ɻ�ɱ@380��ţͷ��@0������")
       end
     end

end
LuaSendMenu()
return 1
end