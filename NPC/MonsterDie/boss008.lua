function OnDie()
if(LuaQueryTask("T35")==1) then
   if (LuaItemCount("o_mission185") ==0) then
    LuaGive("o_mission185",1)
    if(LuaItemCount("o_mission185")==1) then
    LuaSay("你已经成功击杀BOSS宗矢王，得到了宗矢王旗，回复食人部落的戎人荣吧")
    LuaOtherSendMenu()
    end
   end
end
return 1
end