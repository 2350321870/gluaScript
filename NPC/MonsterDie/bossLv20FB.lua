function OnDie()
LuaGive("o_douyu",3,"FB_Lv20_over")
LuaAddJx("combat_exp",level*100,"FB_Lv20_over")
if(QueryAllTeamMemberTaskSuccess("FBTGJL",1)==1)then
SetAllTeamMemberValueTask("FBTGJL",10)
end 
if(TeamCount()>=2  ) then
AddAllTeamMemberValueTask("jjbf_1time",1)
else
LuaAddTask("jjbf_1time",1)
end
LuaOtherSendMenu()
return 1
end