NPCINFO = { 
serial="60" ,
base_name="furong",
icon=2581,
NpcMove=2581,
name="����" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="�Ϲ�������������",
LuaType=1,
} 
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local havetask0=0	--Ĭ��û��
	local havetask1=0	--��̾��
	local havetask2=0	--��ɫ�ʺ�
	--local havetask3=0	--��ɫ�˵�
	local havetask4=0

	local level= LuaQuery("level")
	local T470=LuaQueryTask("T470")
	local T490=LuaQueryTask("T490")
	local T499=LuaQueryTask("T499")
	AddTopSayMenuItem("@7�����б�","")
	if(T499==1) then
	        AddTopSayMenuItem("@2�������ۡ����顿","T499")
		havetask2=1
	end
	if((LuaQueryTask("Tsnpc_44")==1 or LuaQueryTask("Tsnpc_44")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_44")
		if(LuaQueryTask("Tsnpc_44")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_44")==1 or LuaQueryTask("Tenpc_44")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_44")
		if(LuaQueryTask("Tenpc_44")==1)then
			havetask2=1
		end
	end
	if(T470==1)then
		AddTopSayMenuItem("@2���̱��������顿","T470")
		havetask2=1
	end

	
	if(LuaQueryTask("T302")==13 and LuaQueryTask("T302M")==0) then
		AddTopSayMenuItem("@2ÿ����ʹ@0","T302M")
		havetask2 =1
	end
--����Ϊ��ɫ�ʺŲ���
	if(T490==1)then
		AddTopSayMenuItem("@2���ڵĿ��顾���顿","T490")
		havetask4=1
	end
--����Ϊ��ɫ�ʺŲ���
	if(T490==0 and level>=31 )then
		AddTopSayMenuItem("���ڵĿ��顾���顿","T490")
		havetask1=1
	end
	if(T499==0 and level>=31) then
	        AddTopSayMenuItem("�������ۡ����顿","T499")
	        havetask1=1
	end
--����Ϊ��ɫ��̾�Ų���
	
if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(������havetask0=1)
	havetask=0
end
------------------------------------------------
if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==4) then
	AddTopSayMenuItem("����","liaotian","4")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("����","liaotian","0")
end

return 1
------------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("����:������Ȼ���ˣ����ǵ�������֮!")
	
elseif(answer=="T302M") then
	   if(LuaQueryTask("T302M")==0) then
		   LuaSay(""..LuaQueryStr("name").."��������վС�����Ҵ�������ż���")
		   LuaSay("���ڣ���ô��������д�Ÿ��ң���ʵ��֣�")
		   DelItem("o_mission076",1)
		   LuaSetTask("T302M",99)
		   UpdateMenu()
	   end
elseif(answer=="T470")then
  if(LuaQueryTask("T470")==1) then	
  	if(LuaItemCount("o_mission303")>=1) then 	
    		LuaSay("����:���¾����������ټ�����ʿ��") 
    		LuaSay(""..LuaQueryStr("name")..":�ڳ��Ͽ����ˣ����������У���Ͷ�����ϣ����������˼ҵ�����")
    		DelItem("0_mission303",1) 
    		LuaSay("����:�ã��ܺ�")
    		AddMenuItem("@7�������","")
   		AddMenuItem("��ȡ����","T470jl")
   	else
   		LuaSay("����:��������ëС�ӡ�")
   	end 
  end
	elseif(answer=="T470jl")then
		if(LuaQueryTask("T470")==1) then
		LuaSetTask("T470",99)
		DelLog("470")
		LuaAddJx("combat_exp",303000,"T470")
		LuaAddAchievementSchedule("Task_num",1)
		DelItem("o_mission303",LuaItemCount("o_mission303"))
		UpdateMenu()
		end	
-----------------------------------------------
elseif(answer=="T490")then
	local T490=LuaQueryTask("T490")
	if(T490==0)then
		LuaSay("����:����Ӣ�������ɼѣ����������...�����ǽ�׳֮��...")
		LuaSay(""..LuaQueryStr("name")..":����Ī�Ǽ������ӹǰ�С��")
		LuaSay("����:��Ȼ����Լ���ô�����ģ���������@230��ص���ڱ�@0���һر�����֤�����ʵ����")
		LuaSetTask("task_kill/mon_025/T490",1)
		LuaSetTask("T490",1)
		AddLog("���ڵĿ��顾���顿",490)
		UpdateMenu()
		UpdateTopSay("ȥ����30��ص���ڱ�")
  elseif(T490==1)then
	if(LuaQueryTask("task_kill/mon_025/T490")>=31)then
		LuaSay("����:�����ˣ���ܲ�������������ȥ��������")
    		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T490jl")
	else
		LuaSay("����:��û�����@230��ص���ڱ�@0�𣿰������ʵ�������а���")
	end
  end
	elseif(answer=="T490jl")then
	local T490=LuaQueryTask("T490")
 		if(T490==1)then
 			if(LuaQueryTask("task_kill/mon_025/T490")>=31)then
 				LuaDelTask("task_kill/mon_025/T490")
				LuaAddJx("combat_exp",303000,"T490")
				LuaAddAchievementSchedule("Task_num",1)
				LuaGive("coin",1000,"T490")
				LuaSetTask("T490",99)
				DelLog("490")
				UpdateMenu()
				end
  		end
	
elseif(answer=="T499") then
	local T499=LuaQueryTask("T499")
		if(T499==0) then
			LuaSay("����:�ҵ��ֳ�����Ҫ���������˲ţ���Ҳ��һͳ���µľ��ġ�")
			LuaSay(""..LuaQueryStr("name").."����֪�����ܷ�������")
			LuaSay("����:��ȥ@3������@0��@3�޼�@0�ɡ�������������㣡")
        		LuaSetTask("T499",1)
        		AddLog("�������ۡ����顿",499)
	    		UpdateMenu()
	    		UpdateNPCMenu("fujian")
	    	elseif(T499==1) then
	    		LuaSay("����:��ȥ@3������@0��@3�޼�@0�ɡ�������������㣡")
	    		
	    	end 


elseif(answer=="Tsnpc_44")then
	if(LuaQueryTask("Tsnpc_44")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("���ڣ����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_44",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_44")==2)then
		LuaSay("���ڣ����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_44")then
	if(LuaQueryTask("Tenpc_44")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("���ڣ��ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_44",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_44")==2)then
		LuaSay("���ڣ����Ѿ������ˣ����ȥ��ȡ������")
	end

end
LuaSendMenu()
return 1
end 

