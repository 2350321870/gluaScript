function do_use()
      if(LuaFreeBag()<4)then	LuaShowNotify("请至少保有@24@0格背包空间")	return 0 end
             
			 LuaGive("o_state016j",10,"Txinchun") --还魂丹 
			 LuaGive("o_state010j",1,"Txinchun")   --中级经验书
			 LuaGive("o_state068j",1,"Txinchun")   --魔池1
			 LuaGive("o_key002y",1,"Txinchun")   --幸运钥匙
			 local level= LuaQuery("level")
			 	if(level>80)then
		level=80
	end
			 local jingyan=(20000*4+level^2*40*4+level*2500*4)
			 LuaAddJx("combat_exp",jingyan,"Txinchun")
			 
			 LuaNotice("恭喜@3"..LuaQueryStr("name").."@0打开春节【红包】获得10个@5还魂丹@0，一个@5魔池1@0，一个@5幸运钥匙@0，一本@5中级经验书@0，@5海量经验@0.")
			 
				
LuaOtherSendMenu()
LuaGive("coin",400,"Txinchun")
return 1
end
