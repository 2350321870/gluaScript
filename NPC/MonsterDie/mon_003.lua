T91_nTotalMonsterNum = 7
Txhuanxing_nTotalMonsterNum = 9
Tfjtx_nTotalMonsterNum = 9
T87_nTotalMonsterNum = 4
Thx03_nTotalMonsterNum = 51
T464_nTotalMonsterNum = 21
function OnDie()
if(LuaQueryTask("T91")==1) then	
  if(LuaQueryTask("task_kill/mon_003/T91") == 7) then   
  CheckNpcStatusByMonItemID("T91","mon_003")       
  LuaSay("���Ѿ�����@26���˵�@0����ȥ������֮�ֵ�@3������@0��")
  LuaOtherSendMenu()
  end
end
if(LuaQueryTask("T87")==2)then
	if(LuaQueryTask("task_kill/mon_003/T87") == 5) then          
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��4ֻ�˵�")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Thx03")==1)then
	if(LuaQueryTask("task_kill/mon_003/Thx03")==51)then
		LuaSay("���Ѿ��ɹ��Ļ�ɱ��50ֻ����")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("Txhuanxing")==1)then
	if(LuaQueryTask("task_kill/mon_003/Txhuanxing")==9)then
		LuaSay("���Ѿ�ɱ��8ֻ���ˣ�����˻�������ĵ�һ����ȥ��л���ظ���")
		LuaOtherSendMenu()
	end
end
if(LuaQueryTask("T464")==1)then
	if(LuaQueryTask("task_kill/mon_003/T464")==21)then
		LuaSay("���Ѿ�ɱ��20ֻ���ˣ���ȥ�ظ���ǫ�ɣ�")
		LuaOtherSendMenu()
	end
end	




return 1
end