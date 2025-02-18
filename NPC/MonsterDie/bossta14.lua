function OnDie()
if(LuaQueryTask("Tbossta")==13)then
--	if(TeamCount()>=2  ) then
--		LuaSay("恭喜！你已经杀死了最后的boss！")
--		AddAllTeamMemberValueTask("Tbossta",99)
--	else
		LuaSay("你已经杀死了boss，赶紧进入下一层挑战吧！")
		LuaSetTask("Tbossta",14)
--	end
end
LuaOtherSendMenu()
return 1
end