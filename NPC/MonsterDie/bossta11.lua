function OnDie()
if(LuaQueryTask("Tbossta")==10)then
--	if(TeamCount()>=2  ) then
--		LuaSay("��ϲ�����Ѿ�ɱ��������boss��")
--		AddAllTeamMemberValueTask("Tbossta",99)
--	else
		LuaSay("���Ѿ�ɱ����boss���Ͻ�������һ����ս�ɣ�")
		LuaSetTask("Tbossta",11)
--	end
end
LuaOtherSendMenu()
return 1
end