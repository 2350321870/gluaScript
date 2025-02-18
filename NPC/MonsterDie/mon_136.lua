function OnDie()
LuaAddTask("Tdzhla",1)
if(LuaQueryTask("Tdzhla")==6) then
LuaDelTask("Tdzhla")
LuaSay("@3击败我们是没用的，我家主人正等着你！！！")
LuaOtherSendMenu()
end 
return 1
end