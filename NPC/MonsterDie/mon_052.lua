Txhuanxing_nTotalMonsterNum = 34
Tbprw7_nTotalMonsterNum =36
T810_nTotalMonsterNum =31
Tfjtx_nTotalMonsterNum = 34
function OnDie()

-----------------------  �ʱ����� 
if(LuaQueryTask("Tbprw7")==1)then
	if(LuaQueryTask("task_kill/mon_052/Tbprw7")==36)then
	LuaSay("���Ѿ�������@235���ʱ�����@0����ȥ�ظ�@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0�ɡ�")
	LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_052/Txhuanxing")==34)then
		LuaSay("���Ѿ�ɱ��33ֻ@2�ʱ�����@0������˻�������ĵ�һ����ȥ���ذϹ�ظ���")
		LuaOtherSendMenu()
	end
end

------------------------------------------
if(LuaQueryTask("T810")==1)then
	if(LuaQueryTask("task_kill/mon_052/T810")==31)then
		LuaSay("���Ѿ�ɱ��30ֻ@2�ʱ�����@0���쵽��ս����Ү���۲Ŵ���ȡ�����ɣ�")
		LuaOtherSendMenu()
	end
end


if(LuaQueryTask("Tfjtx")==1)then
	if(LuaQueryTask("task_kill/mon_052/Tfjtx")==34)then
		LuaSay("��ʾ�����Ѿ�ɱ��33ֻ�ʱ��������@2ɱ������@0����")
		LuaOtherSendMenu()
	end
end

if(LuaQueryTask("Tfjtx")==1 and  LuaQueryTask("Tfjtx_mon46")==1) then
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