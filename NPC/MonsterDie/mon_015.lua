T392_nTotalMonsterNum =11 
T394_nTotalMonsterNum = 21
Tbprw004_nTotalMonsterNum = 21
Txhuanxing_nTotalMonsterNum = 11
T464_nTotalMonsterNum = 21
Tfjtx_nTotalMonsterNum = 11
function OnDie()
if(LuaQueryTask("T392")==1)then
	if(LuaQueryTask("task_kill/mon_015/T392")==11 and LuaQueryTask("task_kill/mon_014/T392")>=11)then
	CheckNpcStatusByMonItemID("T392","mon_015")
	LuaSay("���ѳɹ���ɱ10����ʦ������10�����룬��ȥ�ظ�����֮�ɡ�")
	LuaOtherSendMenu()
	end
	end
if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_015/Tbprw004")==21)then
	LuaSay("���Ѿ�������@220����ʦ����@0����ȥ�ظ�@4����@0��@3����@0�ɡ�")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T394")==1)then
	if(LuaQueryTask("task_kill/mon_015/T394")==21)then
	CheckNpcStatusByMonItemID("T394","mon_015")
	LuaSay("���ѳɹ���ɱ20ֻ��ʦ��������ȥ�ظ�@4ɽկ����@0��@3����֮@0��")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_015/Txhuanxing")==11)then
		LuaSay("���Ѿ�ɱ��10ֻ@2��ʦ����@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_015/T464")==21)then
		LuaSay("���Ѿ�ɱ��20ֻ��ʦ��������ȥ�ظ���ǫ�ɣ�")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_015/Tfjtx")==11)then
		LuaSay("��ʾ�����Ѿ�ɱ��10ֻ��ʦ���������@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon11")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 
-------------
return 1
end