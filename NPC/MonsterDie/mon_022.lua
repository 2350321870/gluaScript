T453_nTotalMonsterNum = 26
T460_nTotalMonsterNum = 26
T200_nTotalMonsterNum = 101
Txhuanxing_nTotalMonsterNum = 13
T376_nTotalMonsterNum = 31
T464_nTotalMonsterNum = 21
Tfjtx_nTotalMonsterNum = 14
function OnDie()
if(LuaQueryTask("T453")==1) then
	local count = LuaQueryTask("task_kill/mon_022/T453")
	if(count==26) then
	CheckNpcStatusByMonItemID("T453","mon_022")
	LuaSay("���Ѿ��ɹ�������25��@2Ѩ����@0����ظ�@2��ˮ֮��@0��@2����֮@0�ɣ�")
	LuaOtherSendMenu()
	end

end
if(LuaQueryTask("T460")==1) then
	local count = LuaQueryTask("task_kill/mon_022/T460")
	if(count==26) then
	CheckNpcStatusByMonItemID("T460","mon_022")
	LuaSay("���Ѿ��ɹ�������25��@2Ѩ����@0����ظ�@2��ˮ֮��@0��@2��ǫ@0�ɣ�")
	LuaOtherSendMenu()
	end

end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_022/Txhuanxing")==14)then
		LuaSay("���Ѿ�ɱ��13ֻ@2Ѩ����@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T200")==2)then
	if(LuaQueryTask("task_kill/mon_022/T200")==101)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��100ֻ@2Ѩ����@0�������@3������С@0����")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T376")==1)then
	if(LuaQueryTask("task_kill/mon_022/T376")==31 and TeamQueryTask("task_kill/mon_022/T376")>=31)then
		LuaSay("�����Ķ���һ����ɱ��30ֻ@2Ѩ����@�����ȥ����@3��ǫ@0�ɣ�")
		LuaOtherSendMenu()
	end
	if(LuaQueryTask("task_kill/mon_022/T376")==31 and TeamQueryTask("task_kill/mon_022/T376")<31)then
		LuaSay("���Ѿ���ɱ��30ֻ@2Ѩ����@��������Ķ��ѻ�ûɱ��Ŷ����ȥ�������ɣ�")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_022/T464")==21)then
		LuaSay("���Ѿ�ɱ��20ֻѨ���룬��ȥ�ظ���ǫ�ɣ�")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_022/Tfjtx")==14)then
		LuaSay("��ʾ�����Ѿ�ɱ��13ֻѨ���룬���@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon16")==1) then
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
