function OnDie()
if(LuaQueryTask("T885")==1) then
   if (LuaItemCount("o_mission177") ==0) then
    LuaGive("o_mission177",1)
    if(LuaItemCount("o_mission177")==1) then
    LuaSay("���Ѿ��ɹ���ɱBOSS�������õ���������ȥ�ظ���ū��͢����ū����")
    LuaOtherSendMenu()
    end
   end
end
return 1
end