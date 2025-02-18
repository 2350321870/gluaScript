function OnDie()
if(TeamCount()>1) then
LocalMsg("你所在的队伍成功杀死FB1BOSS1可以开箱子1了")
else
LuaSay("你成功杀死FB1BOSS1可以开箱子1了")
end
LuaPublicSet("fbdata/fb01/kb1",1)
LuaOtherSendMenu()
return 1
end