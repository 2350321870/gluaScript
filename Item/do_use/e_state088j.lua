function do_use()    
 local r= LuaRandom(3)
 if(r==0) then
 LuaGive("coin",8888,"Thongbao")
 LuaNotice("@3"..LuaQueryStr("name").."@0�򿪺�����@38888��ͭǮ@0�����Ǵ󼪴�����")
 elseif(r==1) then
 LuaGive("coin",6666,"Thongbao")
 LuaNotice("@3"..LuaQueryStr("name").."@0�򿪺�����@36666��ͭǮ@0�����Ǵ󼪴�����")
 elseif(r==2) then
 LuaGive("coin",1314,"Thongbao")
 LuaNotice("@3"..LuaQueryStr("name").."@0�򿪺�����@31314��ͭǮ@0�����Ǵ󼪴�����")
 end	
 LuaOtherSendMenu()
return 1	    
end