NPCINFO = {
serial= "138" ,
base_name="gaoshipai1",
icon= 2699, 
NpcMove=2699, 
name= "��ʾ��" ,
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
	AddTopSayMenuItem("@7�����б�","")
    if(T980==0 and  level>=64  and level<69) then
    AddTopSayMenuItem("������ū��ѭ����","T980")
    havetask =1
    end
    if(T981==0 and   level>=65  and level<70) then
    AddTopSayMenuItem("����̻꡾ѭ����","T981")
    havetask =1
    end
    if(T980==1) then
    AddTopSayMenuItem("@2������ū��ѭ����","T980")
    havetask =2
    end
    if(T981==1) then
    AddTopSayMenuItem("@2����̻꡾ѭ����","T981")
    havetask =2
    end

	if(havetask ==2)then
		AddTopSayMenuItem("��ʾ","gaoshi","2")
	elseif(havetask ==1) then
		AddTopSayMenuItem("��ʾ","gaoshi","1")
	else
		AddTopSayMenuItem("��ʾ","gaoshi","0")
	end
	return 1

 elseif(answer=="gaoshi") then
    LuaSay("��ʾ������֮�����ʺ�@363~70��@0�����������")



elseif(answer=="T980") then      ----------������ū
	 local level= LuaQuery("level")
     if(LuaQueryTask("T980") == 0) then
     LuaSay("��ʾ��@4��ս��@0@2��ū@0Ϊ������������֮�˳��˴󻼡�����@240ֻ��ū@0�󣬿��ڴ���ȡ������")
     LuaSetTask("task_kill/mon_059/T980",1)
     LuaSetTask("T980",1)
     AddLog("������ū��ѭ����",980)
     UpdateMenu()
     elseif(LuaQueryTask("T980") == 1) then
      if(LuaQueryTask("task_kill/mon_059/T980") >= 41  ) then
       LuaSay("��ʾ��Ӣ�۳ɹ���ɱ40ֻ��ū�����ڴ���ȡ������")
	   AddMenuItem("@7�������","")
	   AddMenuItem("��ȡ����","T980jl")
      else
       LuaSay("��ʾ���㻹û�л�ɱ@240ֻ��ū@0�����Ǿ���@4��ս��@0��û��")
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

elseif(answer=="T981") then                                    ----------����̻�
     if(LuaQueryTask("T981") == 0) then
     LuaSay("��ʾ��@4��ս��@0@2�̻�@0Ϊ������������֮�˳��˴󻼡�����@240ֻ�̻�@0�󣬿��ڴ���ȡ������")
     LuaSetTask("task_kill/mon_060/T981",1)
     LuaSetTask("T981",1)
     AddLog("����̻꡾ѭ����",981)
     UpdateMenu()
     elseif(LuaQueryTask("T981") == 1) then
      if(LuaQueryTask("task_kill/mon_060/T981") >= 41  ) then
       LuaSay("��ʾ��Ӣ�۳ɹ���ɱ40ֻ�̻꣬���ڴ���ȡ������")
	   AddMenuItem("@7�������","")
	   AddMenuItem("��ȡ����","T981jl")
      else
       LuaSay("��ʾ���㻹û�л�ɱ@240ֻ�̻�@0�����Ǿ���@4��ս��@0��û��")
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

     
     