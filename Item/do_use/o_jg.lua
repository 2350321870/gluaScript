function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("�����ٱ���@25@0�񱳰��ռ�")	return 0 end
local level=LuaQuery("level")
if(level>=1) then
--------------------------------------�弶�������

	LuaGive("coin",1000000,"Tjg")--ǿ��ʯ
	LuaNotice("@2"..LuaQueryStr("name").."@0����@3���@0���õ���@3100��ͭ��")
--------------------------------------
	LuaOtherSendMenu()
	return 1
else
  LuaShowNotify("����Ʒ��Ҫ�ȼ�1��,�㻹���ܴ�")
  return 0
end
end
