T965_nTotalMonsterNum = 41
T811_nTotalMonsterNum = 41
Txhuanxing_nTotalMonsterNum = 36
Tfjtx_nTotalMonsterNum = 36
T860_nTotalMonsterNum = 31
function OnDie()


local num1=LuaQueryTask("T965")
local num2=LuaQueryTask("T811")
-----------------------  ����

----------------------------------------
 if(num1==3) then
local count = LuaQueryTask("task_kill/mon_057/T965")
 if(count==41) then
LuaSay("���Ѿ��ɹ�������40ֻ��������ȥ�ظ�¤��֮�صĹ���֧��")
LuaOtherSendMenu()
end
end

 if(num2==1) then
local count = LuaQueryTask("task_kill/mon_057/T811")
 if(count==41) then
LuaSay("���Ѿ��ɹ�������40ֻ��������ȥ�ظ�¤��֮�صĹ���֧��")
LuaOtherSendMenu()
end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_057/Txhuanxing")==36)then
		LuaSay("���Ѿ�ɱ��35ֻ@2ɳ��@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_057/Tfjtx")==36)then
		LuaSay("��ʾ�����Ѿ�ɱ��35ֻɳ�棬���@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon53")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 

if(LuaQueryTask("T860")==1)then
	if(LuaQueryTask("task_kill/mon_057/T860")==31)then
		CheckNpcStatusByMonItemID("T860","mon_057")
		LuaSay("��ʾ�����Ѿ�ɱ��30ֻɳ�棬�������")
		LuaOtherSendMenu()
	end
end
------------------------------------------
return 1
end