--Tshikuyi_nTotalMonsterNum = 101 
function OnDie()
if(LuaQueryTask("T446")==1)then
	if(LuaQueryTask("task_kill/mon_112/T446")==21)then   
		LuaSay("���Ѿ��������20��Ҧ��ʿ�������ȥ����@4��Ӫǰ��@0��@3л��@0�ɣ�")
		CheckNpcStatusByMonItemID("T446","mon_112")	
		LuaOtherSendMenu()
	end
end
return 1
end