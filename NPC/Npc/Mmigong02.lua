NPCINFO = {
serial= "174" ,
base_name="Mmigong02",
icon= 2513,
NpcMove=2513, 
name= "�Թ�����Ա" , 
iconaddr=1, 
butt="10|10|63", 
name_color ="CEFFCE" , 
lastsay="һ��֮ʧ�����̽���",
LuaType=1,
}
 function do_talk(answer)
 if (answer=="ask") then
    local level= LuaQuery("level")
    local mapname=MapName()
    AddTopSayMenuItem("@7����","")
    AddTopSayMenuItem("@3������һ��","next")
    if(mapname=="lu_migong015" or mapname=="lu_migong05" or mapname=="lu_migong010") then
    AddTopSayMenuItem("@7��ȡ�Թ�����","jiangli")
    end
    AddTopSayMenuItem("�˳��Թ�","out")
    return 1


elseif (answer=="jiangli") then              --�Թ�����
local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
    if(MapName()=="lu_migong05") then
	  if(LuaQueryTask("Tmigong")<2) then
	  local exp=6500+level^2*10+level*1400         
	  LuaAddJx("combat_exp",exp,"Tmigong")
	  LuaSetTask("Tmigong",2)
	  else
	  LuaSay("��ʾ�����Ѿ���ȡ�˵�5��Ľ���")
	  end

    elseif(MapName()=="lu_migong010") then
      if(LuaQueryTask("Tmigong")<3) then
	  local exp=13000+level^2*20+level*2800
	  LuaAddJx("combat_exp",exp,"Tmigong")
	  LuaSetTask("Tmigong",3)
	  else
	  LuaSay("��ʾ�����Ѿ���ȡ�˵�10��Ľ���")
	  end

    elseif(MapName()=="lu_migong015") then
      if(LuaQueryTask("Tmigong")<4) then
      LuaDelTask("Tmg015")
	  local exp=19500+level^2*30+level*4200   
	  LuaAddJx("combat_exp",exp,"Tmigong")
	  LuaSetTask("Tmigong",4)
	  LuaGive("coin",5000,"Tmigong_last")
	  else
	  LuaSay("��ʾ�����Ѿ���ȡ�˵�15��Ľ���")
	  end
	end

elseif (answer=="next") then              --��ֹ��Ӹ������Թ� 
	 local mapname=MapName()
   if(MapName()=='lu_migong015') then
     LuaSay("��ʾ�����Ѿ������Թ������@!")
   else
    if(TeamCount()<2) then

      if(mapname=="lu_migong01") then           --ȷ�����Թ��ľ������
      floornum=1
      elseif(mapname=="lu_migong02") then
      floornum=2
	  elseif(mapname=="lu_migong03") then
      floornum=3
      elseif(mapname=="lu_migong04") then
      floornum=4
      elseif(mapname=="lu_migong05") then
      floornum=5
      elseif(mapname=="lu_migong06") then
      floornum=6
      elseif(mapname=="lu_migong07") then
      floornum=7
      elseif(mapname=="lu_migong08") then
      floornum=8
      elseif(mapname=="lu_migong09") then
      floornum=9
      elseif(mapname=="lu_migong010") then
      floornum=10
      elseif(mapname=="lu_migong011") then
      floornum=11
      elseif(mapname=="lu_migong012") then
      floornum=12
      elseif(mapname=="lu_migong013") then
      floornum=13
      elseif(mapname=="lu_migong014") then
      floornum=14
      elseif(mapname=="lu_migong015") then
      floornum=15
      end

      if(LuaQueryTask("Tmg0"..floornum.."")==2) then
       if(floornum==14) then
	   LuaDelTask("Tmg01")
	   LuaDelTask("Tmg02")
	   LuaDelTask("Tmg03")
	   LuaDelTask("Tmg04")
	   LuaDelTask("Tmg05")
	   LuaDelTask("Tmg06")
	   LuaDelTask("Tmg07")
	   LuaDelTask("Tmg08")
	   LuaDelTask("Tmg09")
	   LuaDelTask("Tmg010")
	   LuaDelTask("Tmg011")
	   LuaDelTask("Tmg012")
	   LuaDelTask("Tmg013")
	   LuaDelTask("Tmg014")
	   end
	   if(LuaQueryTask("Tmg0"..(floornum+1).."")==0) then
	   local r=LuaRandom(3)+1
       LuaSetTask("Tmg0"..(floornum+1).."",r)
       end
	  ChangeMap("lu_migong0"..(floornum+1).."")
	  else
	   local r=LuaRandom(3)       
		if(r==0) then
		  if(floornum>1) then
		    if(LuaQueryTask("Tmg0"..(floornum-1).."")==0) then
            local r=LuaRandom(3)+1
            LuaSetTask("Tmg0"..(floornum-1).."",r)
			end
		    ChangeMap("lu_migong0"..(floornum-1).."")
		  else
		  LuaSay("�Թ�����Ա�������Ѿ����Թ�һ���ˣ�����ѡ����")
		  end

	    elseif(r==1) then
		   if(floornum>2) then
		     if(LuaQueryTask("Tmg0"..(floornum-2).."")==0) then
             local r=LuaRandom(3)+1
             LuaSetTask("Tmg0"..(floornum-2).."",r)
			 end
		     ChangeMap("lu_migong0"..(floornum-2).."")
           elseif(floornum>1) then
              if(LuaQueryTask("Tmg01")==0) then
			  local r=LuaRandom(3)+1
              LuaSetTask("Tmg01",r)
			  end
		     ChangeMap("lu_migong01")
		   else
		   LuaSay("�Թ�����Ա�������Ѿ����Թ�һ���ˣ�����ѡ����")
		   end

		elseif(r==2) then
		   if(floornum>3) then
            if(LuaQueryTask("Tmg0"..(floornum-3).."")==0) then
            local r=LuaRandom(3)+1
            LuaSetTask("Tmg0"..(floornum-3).."",r)
			end
		    ChangeMap("lu_migong0"..(floornum-3).."")
		   elseif(floornum>1) then
		      if(LuaQueryTask("Tmg01")==0) then
			  local r=LuaRandom(3)+1
              LuaSetTask("Tmg01",r)
			  end
		     ChangeMap("lu_migong01")
		   else
		     LuaSay("�Թ�����Ա�������Ѿ����Թ�һ���ˣ�����ѡ����")
		   end
		end

	  end

    else
    LuaSay("�Թ�����Ա�����Թ��в�����ӽ���")
    end

   end
   
elseif (answer=="out") then        	   	    
       ChangeMap("lu_jkc")

end
LuaSendMenu()
return 1
end