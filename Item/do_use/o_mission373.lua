function do_use()
 if(LuaQueryTask("T105") == 2) then

   if(MapName()=="lu_jkdj") then
     LuaSay("��ʾ�����Ѿ����������㣬�����˰��ͣ����Իظ�@3ѱ��ʦ@0�ˣ�")
     LuaSetTask("T105",3)
     LuaOtherSendMenu()
     return 1
      else
        LuaShowNotify("����Ҫ��@4�����Ƕ���@0��ʹ�á�")
    end
else
LuaShowNotify("���Ǳ����ã��Ȼظ�ѱ��ʦ��")
end
end