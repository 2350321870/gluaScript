function OnDie()
if(LuaQueryTask("T964")==1) then
   if (LuaItemCount("o_mission179") ==0) then
    LuaGive("o_mission179",1)
    if(LuaItemCount("o_mission179")==1) then
    LuaSay("���Ѿ��ɹ���ɱBOSS�ҷ潫�����õ��˽�����ظ����Źص��عؽ�����")
    LuaOtherSendMenu()
    end
   end
end
return 1
end