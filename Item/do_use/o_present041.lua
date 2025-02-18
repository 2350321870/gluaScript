function do_use()
if(LuaFreeBag()<5)then	LuaShowNotify("请至少保有@25@0格背包空间")	return 0 end
local level=LuaQuery("level")
if(level>=1) then
--------------------------------------留意礼包 
	LuaGive("o_state021j",1,"Tpresent041")   --力量+250 
	LuaGive("o_state031j",1,"Tpresent041")   --敏捷+250 
	LuaGive("o_state026j",1,"Tpresent041")   --智慧+250
	LuaGive("o_present039",1,"Tpresent041") 
	LuaGive("o_food03j",20,"Tpresent041")
--------------------------------------
	LuaOtherSendMenu()
	return 1
else
  LuaShowNotify("该物品需要等级1级,你还不能打开")
  return 0
end
end
