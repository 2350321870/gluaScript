function OnDie()
LuaAddTask("Tdzhla",1)
if(LuaQueryTask("Tdzhla")==6) then
LuaDelTask("Tdzhla")
LuaSay("@3����������û�õģ��Ҽ������������㣡����")
LuaOtherSendMenu()
end 
return 1
end