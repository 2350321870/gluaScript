T471_nTotalMonsterNum = 31
T475_nTotalMonsterNum = 31
Tbprw004_nTotalMonsterNum = 21
T269_nTotalMonsterNum = 101
Txhuanxing_nTotalMonsterNum = 13
T216_nTotalMonsterNum = 51
T464_nTotalMonsterNum = 21
Tpt1_nTotalMonsterNum = 51
Tfjtx_nTotalMonsterNum = 14
Tpt4_nTotalMonsterNum = 51
function OnDie()
-------------��ˮ��
if(LuaQueryTask("T471")==1) then
	local count = LuaQueryTask("task_kill/mon_023/T471")
	if(count==31) then
	CheckNpcStatusByMonItemID("T471","mon_023")
	LuaSay("���Ѿ��ɹ�������30��@2��ˮ��@0����ظ�@2��ˮ�԰�@0��@2����@0�ɣ�")
	LuaOtherSendMenu()
	end

end
if(LuaQueryTask("T475")==1) then
	local count = LuaQueryTask("task_kill/mon_023/T475")
	if(count==31) then
	CheckNpcStatusByMonItemID("T475","mon_023")
	LuaSay("���Ѿ��ɹ�������30��@2��ˮ��@0����ظ�@2��ˮ�԰�@0��@2����@0�ɣ�")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tbprw004")==1)then
	if(LuaQueryTask("task_kill/mon_023/Tbprw004")>=21)then
	LuaSay("���Ѿ�������@220����ˮ��@0����ȥ�ظ�@4����@0��@3����@0�ɡ�")
	LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T269")==2) then
	if(LuaQueryTask("task_kill/mon_023/T269")==101) then
		LuaSay("���Ѿ��ɹ���ɱ��100��@2��ˮ��@0")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_023/Txhuanxing")==14)then
		LuaSay("���Ѿ�ɱ��13ֻ@2��ˮ��@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T216")==5)then
	if(LuaQueryTask("task_kill/mon_023/T216")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��50ֻ@2��ˮ��@0����˹���ն��[�]��ץ��ʱ��ظ������ǵĽ��幫���ɡ�")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_023/T464")==21)then
		LuaSay("���Ѿ�ɱ��20ֻ��ˮ�棬��ȥ�ظ���ǫ�ɣ�")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tpt1")==1)then
	if(LuaQueryTask("task_kill/mon_023/Tpt1")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��@250ֻ��ˮ��@0���쵽@2������կ@0��@3�����ܹ�@0�������")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tpt4")==1)then
	if(LuaQueryTask("task_kill/mon_023/Tpt4")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��@250ֻ��ˮ��@0���쵽@2������կ@0��@3�����ܹ�@0�������")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_023/Tfjtx")==14)then
		LuaSay("��ʾ�����Ѿ�ɱ��13ֻ��ˮ�������@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon17")==1) then
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
