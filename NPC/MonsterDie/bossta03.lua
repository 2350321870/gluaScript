function OnDie()
if(LuaQueryTask("Tbossta")==2)then
--	if(TeamCount()>=2  ) then
--		LuaSay("���Ѿ�ɱ����boss���Ͻ�����Ķ��ѽ�����һ����ս�ɣ�")
--		AddAllTeamMemberValueTask("Tbossta",3)
--	else
		LuaSay("���Ѿ�ɱ����boss���Ͻ�������һ����ս�ɣ�")
		LuaSetTask("Tbossta",3)
--	end
end
LuaOtherSendMenu()
return 1
end