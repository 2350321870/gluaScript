Txhuanxing_nTotalMonsterNum = 36
Tfjtx_nTotalMonsterNum = 36
function OnDie()

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_061/Txhuanxing")==36)then
		LuaSay("���Ѿ�ɱ��35ֻ@2��Ȼȭ��@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_061/Tfjtx")==36)then
		LuaSay("��ʾ�����Ѿ�ɱ��35ֻ��Ȼȭ�������@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon57")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 

if(LuaQueryTask("T900")==1)then
	local r=LuaRandom(3)
	if(r<2) then
		if(LuaItemCount("o_mission192")<20)then
			LuaGive("o_mission192",1)
			if(LuaItemCount("o_mission192")==20)then
				CheckNpcStatusByMonItemID("T900","o_mission192")
				LuaSay("��ʾ����õ���@4�������@0���������")
				LuaOtherSendMenu()
			end
		end
	end
end

return 1
end