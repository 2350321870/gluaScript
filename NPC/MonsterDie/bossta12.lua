function OnDie()
if(LuaQueryTask("Tbossta")==11)then
--	if(TeamCount()>=2  ) then
--		LuaSay("��ϲ�����Ѿ�ɱ��������boss��")
--		AddAllTeamMemberValueTask("Tbossta",99)
--	else
		LuaSay("���Ѿ�ɱ����boss���Ͻ�������һ����ս�ɣ�")
		LuaSetTask("Tbossta",12)
--	end
end
LuaOtherSendMenu()
return 1
end