function do_use()
if(LuaFreeBag()<5)then	LuaShowNotify("�����ٱ���@25@0�񱳰��ռ�")	return 0 end
local level=LuaQuery("level")
if(level>=1) then
--------------------------------------������� 
	LuaGive("o_state021j",1,"Tpresent041")   --����+250 
	LuaGive("o_state031j",1,"Tpresent041")   --����+250 
	LuaGive("o_state026j",1,"Tpresent041")   --�ǻ�+250
	LuaGive("o_present039",1,"Tpresent041") 
	LuaGive("o_food03j",20,"Tpresent041")
--------------------------------------
	LuaOtherSendMenu()
	return 1
else
  LuaShowNotify("����Ʒ��Ҫ�ȼ�1��,�㻹���ܴ�")
  return 0
end
end
