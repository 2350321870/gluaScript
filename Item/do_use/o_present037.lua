function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("�����ٱ���@21@0�񱳰��ռ�")	return 0 end
local level=LuaQuery("level")
if(level>=1) then
--------------------------------------ͭ�� 
	LuaGive("coin",200000,"Tpresent037")
--------------------------------------
	LuaOtherSendMenu()
	return 1
else
  LuaShowNotify("����Ʒ��Ҫ�ȼ�1��,�㻹���ܴ�")
  return 0
end
end
