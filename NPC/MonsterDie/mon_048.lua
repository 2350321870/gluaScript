Txhuanxing_nTotalMonsterNum = 29
T31_nTotalMonsterNum = 36
T32_nTotalMonsterNum = 36
T16_nTotalMonsterNum = 21
Tfjtx_nTotalMonsterNum = 29
function OnDie()


local num1=LuaQueryTask("T31")
local num2=LuaQueryTask("T32")
local num3=LuaQueryTask("T16")
-----------------------  ���� 

----------------------------------------
 if(num1==1) then
local count = LuaQueryTask("task_kill/mon_048/T31")
 if(count==36) then
LuaSay("���Ѿ��ɹ�������35ֻ���㣬��ȥ�ظ�ʳ�˲���������ٰ�")
LuaOtherSendMenu()
end
end

if(num2==1) then
local count = LuaQueryTask("task_kill/mon_048/T32")
 if(count==36) then
LuaSay("���Ѿ��ɹ�������35ֻ���㣬��ȥ�ظ�ʳ�˲���������ٰ�")
LuaOtherSendMenu()
end
end

if(num3==1) then
local count = LuaQueryTask("task_kill/mon_048/T16")
 if(count==21) then
LuaSay("���Ѿ��ɹ�������20ֻ����")
LuaOtherSendMenu()
end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_048/Txhuanxing")==29)then
		LuaSay("���Ѿ�ɱ��28ֻ@2����@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end



if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_048/Tfjtx")==29)then
		LuaSay("��ʾ�����Ѿ�ɱ��28ֻ���㣬���@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon42")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 

if(LuaQueryTask("T1004")==1)then
	local count= LuaItemCount("o_mission374")
   	if (count < 20) then
   		if(LuaRandom(10)<8)then
     		LuaGive("o_mission374",1)
     	end
    	local count= LuaItemCount("o_mission374")
     	if(count==20) then
     		LuaSay("���ѵõ�20��а��ҩ��,��ȥ�����ذϹ��,̫��Ų�����")
     		LuaOtherSendMenu()
     	end
  	end
end


------------------------------------------
return 1
end