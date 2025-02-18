function do_use()
if(LuaFreeBag()<5)then	LuaShowNotify("请至少保有@25@0格背包空间")	return 0 end
local level=LuaQuery("level")
if(level>=1) then
--------------------------------------统一礼包
	LuaGive("o_state021j",1,"Tpresent040")   --力量+250 
	LuaGive("o_state031j",1,"Tpresent040")   --敏捷+250 
	LuaGive("o_state026j",1,"Tpresent040")   --智慧+250
	LuaGive("o_present038",1,"Tpresent040") 
	LuaGive("o_longyu",100,"Tpresent040")
--------------------------------------
	LuaOtherSendMenu()
	return 1
else
  LuaShowNotify("该物品需要等级1级,你还不能打开")
  return 0
end
end
