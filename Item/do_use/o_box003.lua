function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("�����ٱ���@21@0�񱳰��ռ�")	return 0 end
local level=LuaQuery("level")
if(level>=15) then
	if(level>80)then
		level=80
	end
	local kj=LuaItemStatusNormalCount("o_key002j")
	local ky=LuaItemStatusNormalCount("o_key002y")
	if(kj+ky>=1)then
		LuaSay("@2��@3��@4��@5��@7��")
		m_exp=30000+(LuaRandom(50)+40)*level^2
		LuaAddJx("combat_exp",m_exp,"Tbox003")
		LuaGive("coin",100000,"Tbox003")
		LuaNotice("@2"..LuaQueryStr("name").."@0��@3���˱���@0���õ�@2100000ͭ�Һ�"..m_exp.."����")
		if(kj>=1)then
		  DelItem("o_key002j",1)
		else
		  DelItem("o_key002y",1)
		end
		LuaOtherSendMenu()
		return 1
	else
	LuaSay("����@3���˱���@0,�ɻ��@110W@0�ĳ���ͭǮ�ʹ������飬���㲻��ΪȱǮ������")
	LuaSay("����ֻ��Ҫ1��@3����Կ��@0,@3����Կ��@0�������̳ǵ�����һ���й���")
	LuaOtherSendMenu()
	return 0
	end
else
LuaSay("@315���Ժ�@0����ʹ�ø�@3���˱���")
LuaOtherSendMenu()
return 0
end
end