function OnDie()
if(LuaQueryTask("Tbossta")==4)then
--	if(TeamCount()>=2  ) then
--		LuaSay("���Ѿ�ɱ����boss���Ͻ�����Ķ��ѽ�����һ����ս�ɣ�")
--		AddAllTeamMemberValueTask("Tbossta",5)
--	else
		LuaSay("���Ѿ�ɱ����boss���Ͻ�������һ����ս�ɣ�")
		LuaSetTask("Tbossta",5)
--	end
end
LuaOtherSendMenu()
return 1
end