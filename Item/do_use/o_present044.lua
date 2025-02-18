function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@25@0格背包空间")	return 0 end
local level=LuaQuery("level")
if(level>=1) then
--------------------------------------冲级豪华礼包

	LuaGive("o_ybsc002j",20,"Tpresent44")--强化石
--------------------------------------
	LuaOtherSendMenu()
	return 1
else
  LuaShowNotify("该物品需要等级1级,你还不能打开")
  return 0
end
end
