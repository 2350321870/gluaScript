function OnDie()
if(LuaQueryTask("Tbossta")==3)then
--	if(TeamCount()>=2  ) then
--		LuaSay("���Ѿ�ɱ����boss���Ͻ�����Ķ��ѽ�����һ����ս�ɣ�")
--		AddAllTeamMemberValueTask("Tbossta",4)
--	else
		LuaSay("���Ѿ�ɱ����boss���Ͻ�������һ����ս�ɣ�")
		LuaSetTask("Tbossta",4)
--	end
end
LuaOtherSendMenu()
return 1
end