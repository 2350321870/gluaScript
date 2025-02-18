function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@25@0格背包空间")	return 0 end
local level=LuaQuery("level")
if(level>=1) then
--------------------------------------冲级豪华礼包

	LuaGive("o_state065j",3,"Tpresent43")--血池1
	LuaGive("o_state068j",3,"Tpresent43")--魔池1
	LuaGive("o_state001j",3,"Tpresent43")--双攻符
	LuaGive("o_state012j",3,"Tpresent43")--双防符
	LuaGive("o_state061j",6,"Tpresent43")--疯狂经验卷
--------------------------------------
	LuaOtherSendMenu()
	return 1
else
  LuaShowNotify("该物品需要等级1级,你还不能打开")
  return 0
end
end
