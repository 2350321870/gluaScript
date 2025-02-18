function OnDie()
if(LuaQueryTask("T885")==1) then
   if (LuaItemCount("o_mission177") ==0) then
    LuaGive("o_mission177",1)
    if(LuaItemCount("o_mission177")==1) then
    LuaSay("你已经成功击杀BOSS黑龙，得到了龙晶，去回复匈奴王廷的匈奴王吧")
    LuaOtherSendMenu()
    end
   end
end
return 1
end