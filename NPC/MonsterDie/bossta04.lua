function OnDie()
if(LuaQueryTask("Tbossta")==3)then
--	if(TeamCount()>=2  ) then
--		LuaSay("你已经杀死了boss，赶紧和你的队友进入下一层挑战吧！")
--		AddAllTeamMemberValueTask("Tbossta",4)
--	else
		LuaSay("你已经杀死了boss，赶紧进入下一层挑战吧！")
		LuaSetTask("Tbossta",4)
--	end
end
LuaOtherSendMenu()
return 1
end