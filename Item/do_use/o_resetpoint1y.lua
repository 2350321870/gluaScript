function do_use()
local level= LuaQuery("level")
if(level<10)then
LuaSay("��һ��������ϴ��ȯ����@2������@0�����������������������Ե�")
elseif(level<101)then
quan_number=2^(floor(level/10)-1)
LuaSay("��һ��������ϴ��ȯ����@2������@0�����������������������Ե�")
LuaSay("����Խ��@3ϴ��ȯ@0��Ҫ������Խ��,�����ڵļ�����Ҫ@1"..quan_number.."@0��@3ϴ��ȯ@0���С�")
else
LuaSay("100�������ݲ�����ϴ��")
end
LuaOtherSendMenu()
end
