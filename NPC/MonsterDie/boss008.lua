function OnDie()
if(LuaQueryTask("T35")==1) then
   if (LuaItemCount("o_mission185") ==0) then
    LuaGive("o_mission185",1)
    if(LuaItemCount("o_mission185")==1) then
    LuaSay("���Ѿ��ɹ���ɱBOSS��ʸ�����õ�����ʸ���죬�ظ�ʳ�˲���������ٰ�")
    LuaOtherSendMenu()
    end
   end
end
return 1
end