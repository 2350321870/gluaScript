function do_use()
local level= LuaQuery("level")
if(level<=100)then
quan_number=2^(floor(level/10)-1)
LuaSay("��һ��������תְ���ｻ��@2����@0��@3������@0��������ѡ��ְҵ")
LuaSay("תְ�󣬼��ܵ���Զ����ã��������Ե㲻�����ã���Ҫͨ��@3������@0����@2ϴ��@0�������Ե㡣")
LuaSay("����Խ��@3תְ����@0��Ҫ������Խ��,�����ڵļ�����Ҫ@1"..quan_number.."@0��@3תְ����@0���С�")
LuaSay("100�����ϲ�����תְ��ǰ��һ��Ҫѡ���Լ�ϲ����ְҵ")
else
LuaSay("100�����ϲ�����תְ")
end
LuaOtherSendMenu()
end