function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("�����ٱ���@25@0�񱳰��ռ�")	return 0 end
local level=LuaQuery("level")
if(level>=1) then
--------------------------------------�弶�������

	LuaGive("o_ybsc002j",20,"Tpresent44")--ǿ��ʯ
--------------------------------------
	LuaOtherSendMenu()
	return 1
else
  LuaShowNotify("����Ʒ��Ҫ�ȼ�1��,�㻹���ܴ�")
  return 0
end
end
