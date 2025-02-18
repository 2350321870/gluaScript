function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@21@0格背包空间")	return 0 end
local level=LuaQuery("level")
if(level>=1) then
--------------------------------------铜果 
	LuaGive("coin",200000,"Tpresent037")
--------------------------------------
	LuaOtherSendMenu()
	return 1
else
  LuaShowNotify("该物品需要等级1级,你还不能打开")
  return 0
end
end
