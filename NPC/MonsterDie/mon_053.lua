Txhuanxing_nTotalMonsterNum = 34
Tfjtx_nTotalMonsterNum = 34
function OnDie()
-----------------------  ս�� 
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_053/Txhuanxing")==34)then
		LuaSay("���Ѿ�ɱ��33ֻ@2ս��0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end

----------------------------------------
if(LuaQueryTask("T811")==1)then
	local r=LuaRandom(3)
	if(r==0 or r==1)then
		if(LuaItemStatusNormalCount("o_mission421")<20) then
			LuaGive("o_mission421",1)
			LuaShowNotify("�õ�1��ս����")
		else
			LuaSay("���Ѿ��õ���20��ս�����ˣ��쵽��ս����Ү���۲Ŵ���ȡ�����ɣ�")
			LuaOtherSendMenu()
		end
	end
end

if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_053/Tfjtx")==34)then
		LuaSay("��ʾ�����Ѿ�ɱ��33ֻս�ܣ����@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon47")==1) then
	local r=LuaRandom(10)
	if(r==0) then
		if(LuaItemCount("o_mission427")<1)then
			LuaGive("o_mission427",1)
			LuaSay("��ʾ����õ���@4���齣��@0�����@2�������@0����")
			LuaOtherSendMenu()
		end
	end
end 
-----
------------------------------------------
return 1
end