function do_use()
if(LuaFreeBag()<5)then	LuaShowNotify("�����ٱ���@25@0�񱳰��ռ�")	return 0 end
local level=LuaQuery("level")
if(level>=1) then
--------------------------------------ͳһ���
	LuaGive("o_state021j",1,"Tpresent040")   --����+250 
	LuaGive("o_state031j",1,"Tpresent040")   --����+250 
	LuaGive("o_state026j",1,"Tpresent040")   --�ǻ�+250
	LuaGive("o_present038",1,"Tpresent040") 
	LuaGive("o_longyu",100,"Tpresent040")
--------------------------------------
	LuaOtherSendMenu()
	return 1
else
  LuaShowNotify("����Ʒ��Ҫ�ȼ�1��,�㻹���ܴ�")
  return 0
end
end
