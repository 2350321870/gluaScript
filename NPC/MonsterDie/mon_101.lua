function OnDie()
 local r = LuaRandom(25)
if(r==1) then
 local count= LuaItemCount("o_mission011")
  if(count==0) then 
  LuaGive("o_mission011",1)
   local count= LuaItemCount("o_mission011")
   if(count==1) then
    LuaSay("��ʾ�������ڵõ���@2����Կ��@0������ͨ���������뿪��")
    LuaOtherSendMenu()
    end
  end
end


  if(LuaQuery("hp")<LuaQuery("max_hp")/10) then
     LuaSet("hp",1)
     FlushMyInfo("0x4")
     ChangeMap("lu_dilao")
  end

return 1
end