function OnDie()
if(LuaQueryTask("Tbossta")==19)then
--	if(TeamCount()>=2  ) then
--		LuaSay("��ϲ�����Ѿ�ɱ��������boss��")
--		AddAllTeamMemberValueTask("Tbossta",99)
--	else
		LuaSay("��ϲ�����Ѿ�ɱ��������boss��")
		LuaSetTask("Tbossta",99)
--	end
end
LuaOtherSendMenu()
return 1
end