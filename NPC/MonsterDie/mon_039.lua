T639_nTotalMonsterNum = 31
T671_nTotalMonsterNum = 31
Txhuanxing_nTotalMonsterNum = 26
Tfjtx_nTotalMonsterNum = 26
function OnDie()
local num1=LuaQueryTask("T671")
local num2=LuaQueryTask("T639")
---------------------- ����
----------------------------------------	
if(num1==1)then
	local count=LuaQueryTask("task_kill/mon_039/T671")
	if(count==36)then
		CheckNpcStatusByMonItemID("T671","mon_039")
		LuaSay("���Ѿ��ɹ�����35ֻ���������κ���ȥ��Ľ�����ɣ�")
		LuaOtherSendMenu()
	end
end 

if(LuaQueryTask("T692")==2) then
  	local r = LuaRandom(10)
  	if(r<9)then
  		if(LuaItemCount("o_mission359") < 20) then
     		LuaGive("o_mission359",1)
     		if(LuaItemCount("o_mission359")==20) then
     		LuaSay("���ѵõ�20�����ۡ���ظ�@4��ɽ��@0���@3����@0�ɣ�")
     		LuaOtherSendMenu()
     		end
		end
	end
end
----------------------------------------
if(num2==1) then
local count = LuaQueryTask("task_kill/mon_039/T639")
 if(count==31) then
 CheckNpcStatusByMonItemID("T639","mon_039")
LuaSay("���Ѿ��ɹ�������30���������ظ�@3̫�йž���Ľ�ݴ�@0��")
LuaOtherSendMenu()
end
end	


if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_039/Txhuanxing")==26)then
		LuaSay("���Ѿ�ɱ��25ֻ@2����@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_039/Tfjtx")==26)then
		LuaSay("��ʾ�����Ѿ�ɱ��26ֻ���������@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon35")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 

------------------------------------------
return 1
end