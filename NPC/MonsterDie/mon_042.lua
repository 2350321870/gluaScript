T710_nTotalMonsterNum = 36
Tbprw6_nTotalMonsterNum = 16
Txhuanxing_nTotalMonsterNum = 26
Tfjtx_nTotalMonsterNum = 26
function OnDie()
------------------------------------------���
if(LuaQueryTask("T710")==1)then
	if(LuaQueryTask("task_kill/mon_042/T710")>=36)then
	CheckNpcStatusByMonItemID("T710","mon_042")
	LuaSay("����ɱ����@235ֻ���@0����ȥ�ظ�@3���������Ĺ����@0�ɣ�")
	LuaOtherSendMenu()
	end
	end
if(LuaQueryTask("Tbprw6")==1)then
	if(LuaQueryTask("task_kill/mon_042/Tbprw6")==16 and LuaQueryTask("task_kill/mon_044/Tbprw6")>=16)then
		LuaSay("���Ѿ�������@315�����@0����ȥ�ظ�@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0�ɡ�")
	elseif(LuaQueryTask("task_kill/mon_042/Tbprw6")==16 and LuaQueryTask("task_kill/mon_044/Tbprw6")<16)then
		LuaSay("@3���@0�ѽ����ˣ���ȥ@4������Ĺ@0ɱ15��@3����ʬ@0�ɣ�")
	end
	LuaOtherSendMenu()
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_042/Txhuanxing")==26)then
		LuaSay("���Ѿ�ɱ��25ֻ@2���@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_042/Tfjtx")==26)then
		LuaSay("��ʾ�����Ѿ�ɱ��26ֻ������@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon38")==1) then
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