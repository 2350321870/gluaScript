function OnDie()
if(LuaQueryTask("Tbossta")==0)then
--	if(TeamCount()>=2  ) then
--		LuaSay("���Ѿ�ɱ����boss���Ͻ�����Ķ��ѽ�����һ����ս�ɣ�")
--		AddAllTeamMemberValueTask("Tbossta",1)
--	else
		LuaSay("���Ѿ�ɱ����boss���Ͻ�������һ����ս�ɣ�")
		LuaSetTask("Tbossta",1)
--	end
end
LuaOtherSendMenu()
return 1
end