Txhuanxing_nTotalMonsterNum = 9
Thx03_nTotalMonsterNum = 51
T464_nTotalMonsterNum = 21
Tfjtx_nTotalMonsterNum = 9
function OnDie()         
-------------------------------------------------
if(LuaQueryTask("Thx03")==3)then
	if(LuaQueryTask("task_kill/mon_006/Thx03")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��50ֻ������")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_006/Txhuanxing")==9)then
		LuaSay("���Ѿ�ɱ��8ֻ�����棬����˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_006/T464")==21)then
		LuaSay("���Ѿ�ɱ��20ֻ�����棬��ȥ�ظ���ǫ�ɣ�")
		LuaOtherSendMenu()
	end
end	
if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_004/Tfjtx")==9)then
		LuaSay("��ʾ�����Ѿ�ɱ��8ֻ�����棬���@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon3")==1) then
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