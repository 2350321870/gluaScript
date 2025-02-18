function OnDie()
LuaGive("o_douyu",7,"FB_Lv30_over")
LuaAddJx("combat_exp",level*100,"FB_Lv30_over")
if(QueryAllTeamMemberTaskSuccess("FBTGJL",1)==1)then
SetAllTeamMemberValueTask("FBTGJL",10)
end 
if(TeamCount()>=2  ) then
AddAllTeamMemberValueTask("fbxezdintime",1)
else
LuaAddTask("fbxezdintime",1)
end
LuaOtherSendMenu()
return 1
end