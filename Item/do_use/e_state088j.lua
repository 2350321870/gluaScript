function do_use()    
 local r= LuaRandom(3)
 if(r==0) then
 LuaGive("coin",8888,"Thongbao")
 LuaNotice("@3"..LuaQueryStr("name").."@0打开红包获得@38888的铜钱@0，真是大吉大利啊")
 elseif(r==1) then
 LuaGive("coin",6666,"Thongbao")
 LuaNotice("@3"..LuaQueryStr("name").."@0打开红包获得@36666的铜钱@0，真是大吉大利啊")
 elseif(r==2) then
 LuaGive("coin",1314,"Thongbao")
 LuaNotice("@3"..LuaQueryStr("name").."@0打开红包获得@31314的铜钱@0，真是大吉大利啊")
 end	
 LuaOtherSendMenu()
return 1	    
end