function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("�����ٱ���@21@0�񱳰��ռ�")	return 0 end
local level=LuaQuery("level")
local kj=LuaItemStatusNormalCount("o_key002j")
local ky=LuaItemStatusNormalCount("o_key002y")
if(kj+ky>=1)then
	LuaSay("@2��@3��@4��@5��@7��")
	LuaSay("@1��@2ϲ@3��@4��@5��@6��@7��@8��@9��")
	LuaGive("coin",1000000,"Tbox002s")
	LuaNotice("@2"..LuaQueryStr("name").."@0��һ���������,��æ��@3���˱���@0����������@21000000@0ͭ�ҡ�")
	if(kj>=1)then
	DelItem("o_key002j",1)
	else
	DelItem("o_key002y",1)
	end
	LuaOtherSendMenu()
	return 1
else
LuaSay("������Ҫ@3����Կ��@0,@3����Կ��@0�������̳��������й���")
LuaSay("����@3���˱���@0,�л�����@2����󽱣��߼����Ϻʹ�������")
LuaOtherSendMenu()
return 0
end
end
