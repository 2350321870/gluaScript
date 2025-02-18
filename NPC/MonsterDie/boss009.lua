function OnDie()
if(LuaQueryTask("T964")==1) then
   if (LuaItemCount("o_mission179") ==0) then
    LuaGive("o_mission179",1)
    if(LuaItemCount("o_mission179")==1) then
    LuaSay("你已经成功击杀BOSS烈锋将军，得到了将军令，回复雁门关的守关将军吧")
    LuaOtherSendMenu()
    end
   end
end
return 1
end