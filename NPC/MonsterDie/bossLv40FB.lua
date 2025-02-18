function OnDie()
LuaGive("o_douyu",10,"FB_Lv40_over")
LuaAddJx("combat_exp",level*100,"FB_Lv40_over")
if(QueryAllTeamMemberTaskSuccess("FBTGJL",1)==1)then
SetAllTeamMemberValueTask("FBTGJL",10)
end 
if(TeamCount()>=2  ) then
AddAllTeamMemberValueTask("wdspltime",1)
else
LuaAddTask("wdspltime",1)
end
LuaOtherSendMenu()
return 1
end