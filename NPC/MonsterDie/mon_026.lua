T486_nTotalMonsterNum = 21
Txhuanxing_nTotalMonsterNum = 16
Tfjtx_nTotalMonsterNum = 16
function OnDie()
-------------��ë��
local num1=LuaQueryTask("T551")
local num2=LuaQueryTask("T486")
local num3=LuaQueryTask("T552")
if(num4==1) then
 local r = LuaRandom(10)
  if(r<6)then
	if(LuaItemCount("o_mission344") < 5) then
		LuaGive("o_mission344",1)
     		if(LuaItemCount("o_mission345")==5) then
     			LuaSay("���ѵõ�@25����Ƥ����ȥ�ظ�@4��������@0��@3����@0�ɡ�")
     			LuaOtherSendMenu()
     		end
	end
	if(LuaItemCount("o_mission345") < 5) then
		LuaGive("o_mission345",1)
		if(LuaItemCount("o_mission345")==5) then
			LuaSay("���ѵõ�@25����ë����ȥ�ظ�@4��������@0��@3����@0�ɡ�")
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
			LuaSay("������������@3���������")
			LuaSay("@2��ȥ�������������ɣ�") 
			LuaSetTask("T508",1)
			AddLog("���������",508)
			LuaOtherSendMenu()
		elseif(LuaQueryTask("T508")==1) then
			LuaSay("�㻹ûȥ@4������@0��@2����@0�������@3��������@0@2���������@0�������ȥ�ɣ������ѵð�")
			LuaOtherSendMenu()			
		end
	end
  local count = LuaQueryTask("task_kill/mon_026/T486") 
  if(count==21) then
    CheckNpcStatusByMonItemID("T486","mon_026")
 	LuaSay("���Ѿ��ɹ�������20ֻ��ë�ܣ��Ͽ��ȥ��@3��������@0")
	LuaOtherSendMenu()
  end                                                                  
end
------------------------------------
if(num1==1) then
	local r = LuaRandom(10)                 
	if(r<7) then
		if (LuaItemCount("o_mission325") ==0) then
			LuaGive("o_mission325",1)
			 LuaSay("���ѵõ������ˣ���ȥ����@7ҩƷ����")
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
				LuaSay("���ѵõ��㹻�����ˣ��벻Ҫ��ɱ����")
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
     			LuaSay("���ѵõ�5����Ƥ��")
     			LuaOtherSendMenu()
     		end
		end
	elseif(r>3 and r<6)then
		if(LuaItemCount("o_mission345") < 5) then
     		LuaGive("o_mission345",1)
     		if(LuaItemCount("o_mission345")==5) then
     		    CheckNpcStatusByMonItemID("T480","o_mission345")
     			LuaSay("���ѵõ�5����ë��")
     			LuaOtherSendMenu()
     		end
		end
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_026/Txhuanxing")==16)then
		LuaSay("���Ѿ�ɱ��15ֻ@2��ë��@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T482")==2) then
  local r = LuaRandom(2)	
  if(r<1)then
   if (LuaItemCount("o_mission329") < 1) then
     LuaGive("o_mission329",1)
     if(LuaItemCount("o_mission329")==1) then
     LuaSay("���ѵõ�1����Ƥ����ȥ����ҩƷ���˰ɡ�")
     LuaOtherSendMenu()
     end
     end
  end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_026/Tfjtx")==16)then
		LuaSay("��ʾ�����Ѿ�ɱ��15ֻ��ë�ܣ����@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon20")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 

return 1
end
