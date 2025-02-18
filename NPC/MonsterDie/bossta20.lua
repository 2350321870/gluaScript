function OnDie()
if(LuaQueryTask("Tbossta")==19)then
--	if(TeamCount()>=2  ) then
--		LuaSay("恭喜！你已经杀死了最后的boss！")
--		AddAllTeamMemberValueTask("Tbossta",99)
--	else
		LuaSay("恭喜！你已经杀死了最后的boss！")
		LuaSetTask("Tbossta",99)
--	end
end
LuaOtherSendMenu()
return 1
end