function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("�����ٱ���@25@0�񱳰��ռ�")	return 0 end
local level=LuaQuery("level")
if(level>=1) then
--------------------------------------�弶�������

	LuaGive("o_state065j",3,"Tpresent43")--Ѫ��1
	LuaGive("o_state068j",3,"Tpresent43")--ħ��1
	LuaGive("o_state001j",3,"Tpresent43")--˫����
	LuaGive("o_state012j",3,"Tpresent43")--˫����
	LuaGive("o_state061j",6,"Tpresent43")--������
--------------------------------------
	LuaOtherSendMenu()
	return 1
else
  LuaShowNotify("����Ʒ��Ҫ�ȼ�1��,�㻹���ܴ�")
  return 0
end
end
