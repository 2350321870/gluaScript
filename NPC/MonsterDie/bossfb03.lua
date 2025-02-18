function OnDie()
if(TeamCount()>1) then
LocalMsg("你所在的队伍成功杀死FB1BOSS3可以开箱子3了")
else
LuaSay("你成功杀死FB1BOSS3可以开箱子3了")
end
LuaPublicSet("fbdata/fb01/kb3",1)
LuaOtherSendMenu()
return 1
end