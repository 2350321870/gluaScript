NPCINFO = {
serial= "183" ,
base_name="fubenxz",
icon= 2589, 
NpcMove=2589, 
name= "@3����" , 
iconaddr=1, 
butt="10|10|28", 
name_color = "CEFFCE", 
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then
	local level= LuaQuery("level")
	AddTopSayMenuItem("����","")
	AddTopSayMenuItem("����","liaotian")
    local mapname=MapName()
    if(mapname=="1lu_jijingler")then
        AddTopSayMenuItem("������","open")
        LuaSetTask("task_kill/mon_116/Tjjler",1)--����ɱ�ּ�����
    end
	return 1
elseif(answer=="liaotian") then
	LuaSay("��ʾ�����Ӳ����ˣ��޷����졣"..MapName())  
elseif(answer=="open") then
	local mapname=MapName()   -- ����ͼ�������ݵ�ͼ���жϿ�����
	if(mapname=="lu_shikuer" or mapname=="lu_shikuer1" ) then   -- 20~29������ʯ��2������
	local num=LuaQueryTask("task_kill/mon_112/Tshikuer") 
	if(num>50) then    
	LuaDelTask("task_kill/mon_112/Tshikuer")
	 if(LuaQueryTask("task_kill/mon_112/Tshikuer")==0) then       --��ˢ 
	  LuaGive("coin",5000,"Tshikuer")            
	  local r= LuaRandom(6)
	  if(r==0) then 
	    LuaGive("o_material_14",1)               --20������������4�����ϣ�5000ͭ�� 
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
	LuaSay("��ʾ�����Ѿ������������ӡ�")      
	else
	LuaSay("��ʾ�������ڵĶ�����Ҫɱ��@350ֻ��Ы@0�����ɿ�������")     
	end

  elseif(mapname=="lu_lieyanguer" or mapname=="lu_lieyanguer1") then    -- 30~39����
    local num=LuaQueryTask("task_kill/mon_114/Tlyger")
	if(num>80) then
	LuaDelTask("task_kill/mon_114/Tlyger")
	 if(LuaQueryTask("task_kill/mon_114/Tlyger")==0) then       --��ˢ
	  LuaGive("coin",5000,"Tlyger")
	  local r= LuaRandom(6)
	  if(r==0) then
	    LuaGive("o_material_14",1)             --30������������4�����ϣ�6000ͭ�� 
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
	LuaSay("��ʾ�����Ѿ������������ӡ�")
	else
	LuaSay("��ʾ�������ڵĶ�����Ҫɱ��@380ֻ��Ӣ����@0�����ɿ�������")
	end
  

  elseif(mapname=="lu_jijingler") then        -- 40~49����
     local num=LuaQueryTask("task_kill/mon_116/Tjjler")
	if(num>300) then
	LuaDelTask("task_kill/mon_116/Tjjler")
	 if(LuaQueryTask("task_kill/mon_116/Tjjler")==0) then       --��ˢ
	  LuaGive("coin",10000,"Tjjler")
	  local r= LuaRandom(6)
	  if(r==0) then
	    LuaGive("o_material_15",1)            --40������������5�����ϣ�10000ͭ�� 
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
	LuaSay("��ʾ�����Ѿ������������ӡ�")
	else
	LuaSay("��ʾ�������ڵĶ�����Ҫɱ��@3300ֻ�Ѿ�����@0 ��ǰ��ɱ"..(num-1).."�����ɿ�������")
	end
  
  
  elseif(mapname=="lu_dxcxyi" or mapname=="lu_dxcxyi1") then        -- 50~59����
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
	LuaSay("��ʾ�����Ѿ������������ӡ�")
	else
	LuaSay("��ʾ�������ڵĶ�����Ҫɱ��@3���֡���Ը�100��@0�����ɿ�������")
	end
  
  elseif(mapname=="lu_ymdxer" or mapname=="lu_ymdxer1") then        -- 60~������70�Ժ��ݲ����ţ�70���Ժ��߿��Խ�60������ 
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
	LuaSay("��ʾ�����Ѿ������������ӡ�")
	else
	LuaSay("��ʾ�������ڵĶ�����Ҫɱ��@3����100��@0�����ɿ�������")
	end
  
  
  elseif(mapname=="000") then        -- 70~79����
  LuaSay("��ʾ��nothing")
  end

end
LuaSendMenu()
return 1
end    	