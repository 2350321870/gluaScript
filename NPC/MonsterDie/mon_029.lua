T271_nTotalMonsterNum = 51
T200_nTotalMonsterNum = 101
Txhuanxing_nTotalMonsterNum = 16
Tfjtx_nTotalMonsterNum = 16
function OnDie()
local num1=LuaQueryTask("T581")
local num2=LuaQueryTask("T598")
local num3=LuaQueryTask("T612")
if(LuaQueryTask("T590")==1) then
local r = LuaRandom(10)
  	if(r<7)then
	    if(LuaItemCount("o_mission322") < 20) then
   		LuaGive("o_mission322",1)
   			if(LuaItemCount("o_mission322") >= 20) then
   			        CheckNpcStatusByMonItemID("T581","o_mission322")
        			LuaSay("���ѵõ�20����ڶ�����ȥ�����������ֵĹ���˰�")
            			LuaOtherSendMenu()
	                end
	    end
	end
end
-----------------------  ��ڹ�
if(num3==2) then
	local r = LuaRandom(10)
	if(r<7)then
   		if (LuaItemCount("o_mission322") < 10) then
     		LuaGive("o_mission322",1)
			if(LuaItemCount("o_mission322")==10) then
			    CheckNpcStatusByMonItemID("T612","o_mission322")
		     	LuaSay("���ѵõ�10����ڶ�����ȥ��������ʦ��")
     			LuaOtherSendMenu()
     		end
     	end
  	end
end
----------------------------------------
 if(num1==1) then
 local r = LuaRandom(10)
  	if(r<7)then
	    if(LuaItemCount("o_mission322") < 20) then
   		LuaGive("o_mission322",1)
   			if(LuaItemCount("o_mission322") == 20) then
   			CheckNpcStatusByMonItemID("T581","o_mission322")
        	LuaSay("���ѵõ�20����ڶ�����ȥ�����������ֵĹ���˰�")
            LuaOtherSendMenu()
        	end
        	
		end
	end
end
if(num2==1) then
 local r = LuaRandom(10)
  	if(r<7)then
	    if(LuaItemCount("o_mission322") < 6) then
		LuaSay("��������ʲô������ǹ����Ҫ������ô��")
   		LuaGive("o_mission331",1)
   			if(LuaItemCount("o_mission331") == 5) then
   			        CheckNpcStatusByMonItemID("T598","o_mission331")
        			LuaSay("���ѵõ�5�����ģ���ȥ�����������ֵĹ���˰�")
            			LuaOtherSendMenu()
		 	end
		end
	end
end	 
------------------------------------------
if(LuaQueryTask("T596")==1 and LuaQuery("hp")<=(LuaQuery("max_hp")*0.6)) then
	LuaSetTask("T596V",1)
	LuaSay(""..LuaQueryStr("name").."��������ô�ˣ�ͷ���ΰ���")
	LuaSet("hp",LuaQuery("max_hp")*0.1)
    LuaSay(""..LuaQueryStr("name").."����·Ҳ�߲����ˣ��ҵøϿ��ҹ��������ȥ��")
	UpdateMenu()
end
-------------------------------

if(LuaQueryTask("T271")==3)then
	
	if(LuaQueryTask("task_kill/mon_029/T271")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��50ֻ��ڹ�")
		LuaOtherSendMenu()
	end
end
--------------------------------------
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_029/Txhuanxing")==16)then
		LuaSay("���Ѿ�ɱ��15ֻ@2��ڹ�@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T200")==3)then
	if(LuaQueryTask("task_kill/mon_029/T200")==101)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��100ֻ@2��ڹ�@0�������@3������С@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_029/Tfjtx")==16)then
		LuaSay("��ʾ�����Ѿ�ɱ��15ֻ��ڹ֣����@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon23")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 
------------------------------------
return 1
end
