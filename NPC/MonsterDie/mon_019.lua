T440_nTotalMonsterNum = 26
Tbprw004_nTotalMonsterNum = 21
T426_nTotalMonsterNum = 31
T424_nTotalMonsterNum = 26
Txhuanxing_nTotalMonsterNum = 13
T464_nTotalMonsterNum = 21
Tfjtx_nTotalMonsterNum = 13
function OnDie()
------------------------------------------
if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_019/Tbprw004")==21)then
	LuaSay("���Ѿ�������@220����������@0����ȥ�ظ�@4����@0��@3����@0�ɡ�")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T426")==1) then
	local count = LuaQueryTask("task_kill/mon_019/T426")
	if(count==26) then
	CheckNpcStatusByMonItemID("T426","mon_019")
	LuaSay("���Ѿ��ɹ�������25��@2��������@0����ظ�@4������Ӫ@0��@2��վС��@0�ɣ�")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T440")==1) then
	local count = LuaQueryTask("task_kill/mon_019/T440")
	if(count==26) then
	CheckNpcStatusByMonItemID("T440","mon_019")
	LuaSay("���Ѿ��ɹ�������25��@2��������@0����ظ�@4��Ӫǰ��@0��@2л��@0�ɣ�")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_019/Txhuanxing")==13)then
		LuaSay("���Ѿ�ɱ��12��@2��������@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_019/T464")==21)then
		LuaSay("���Ѿ�ɱ��20ֻ�������񣬿�ȥ�ظ���ǫ�ɣ�")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_019/Tfjtx")==13)then
		LuaSay("��ʾ�����Ѿ�ɱ��12ֻ�����������@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon13")==1) then
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
