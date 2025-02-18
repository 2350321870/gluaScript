function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@21@0格背包空间")	return 0 end
local level=LuaQuery("level")
if(level>=15) then
	if(level>80)then
		level=80
	end
	local kj=LuaItemStatusNormalCount("o_key002j")
	local ky=LuaItemStatusNormalCount("o_key002y")
	if(kj+ky>=1)then
		LuaSay("@2鸿@3运@4开@5开@7开")
		m_exp=30000+(LuaRandom(50)+40)*level^2
		LuaAddJx("combat_exp",m_exp,"Tbox003")
		LuaGive("coin",100000,"Tbox003")
		LuaNotice("@2"..LuaQueryStr("name").."@0打开@3鸿运宝盒@0，得到@2100000铜币和"..m_exp.."经验")
		if(kj>=1)then
		  DelItem("o_key002j",1)
		else
		  DelItem("o_key002y",1)
		end
		LuaOtherSendMenu()
		return 1
	else
	LuaSay("开启@3鸿运宝盒@0,可获得@110W@0的超量铜钱和大量经验，让你不再为缺钱而烦恼")
	LuaSay("而你只需要1把@3幸运钥匙@0,@3幸运钥匙@0可以在商城的其他一项中购买")
	LuaOtherSendMenu()
	return 0
	end
else
LuaSay("@315级以后@0才能使用该@3鸿运宝盒")
LuaOtherSendMenu()
return 0
end
end