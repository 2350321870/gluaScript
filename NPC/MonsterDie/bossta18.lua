function OnDie()
if(LuaQueryTask("Tbossta")==17)then
--	if(TeamCount()>=2  ) then
--		LuaSay("��ϲ�����Ѿ�ɱ��������boss��")
--		AddAllTeamMemberValueTask("Tbossta",99)
--	else
		LuaSay("���Ѿ�ɱ����boss���Ͻ�������һ����ս�ɣ�")
		LuaSetTask("Tbossta",18)
--	end
end
LuaOtherSendMenu()
return 1
end