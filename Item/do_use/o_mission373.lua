function do_use()
 if(LuaQueryTask("T105") == 2) then

   if(MapName()=="lu_jkdj") then
     LuaSay("提示：你已经烧了三炷香，祭拜了阿猛，可以回复@3驯兽师@0了！")
     LuaSetTask("T105",3)
     LuaOtherSendMenu()
     return 1
      else
        LuaShowNotify("必须要在@4建康城东郊@0处使用。")
    end
else
LuaShowNotify("还是别乱用，先回复驯兽师吧")
end
end