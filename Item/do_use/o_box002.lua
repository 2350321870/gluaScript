function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@21@0格背包空间")	return 0 end
local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
if(GetCurrentDay()~=LuaQueryStrTask("Tbox002w"))then--Tbox002w用于限一天最多中一次百万
LuaDelTask("Tbox002w")
flag=1
else
flag=0
end
local kj=LuaItemStatusNormalCount("o_key002j")
local ky=LuaItemStatusNormalCount("o_key002y")
if(kj+ky>=1)then
	LuaSay("@2幸@3运@4开@5开@7开")
	local r1=LuaRandom(100)
	local r2=LuaRandom(100)
	if((r1==50 and r2<=20 and flag==1) or LuaQuery("Tlucky")==8888)then--Tlucky用于累加幸运值未用
		LuaDelTask("Tlucky")
		LuaSay("@1恭@2喜@3你@4获@5得@6百@7万@8大@9奖")
		LuaGive("coin",1000000,"Tbox002")
		LuaNotice("@2"..LuaQueryStr("name").."@0被一坨鸟粪砸中,急忙打开@3幸运宝盒@0发现里面有@21000000@0铜币。")
		LuaSet("Tbox002w",GetCurrentDay())
	elseif(r1==20  and r2<=20)then
		LuaSay("@1恭@2喜@3你@4获@5得@6高@7级@8材@9料")
		LuaGive("o_material_"..(17+9*LuaRandom(6)).."",1,"Tbox002")
		LuaNotice("@2"..LuaQueryStr("name").."@0鸿运当头,打开@3幸运宝盒@0获得到@27级材料一个。")
	elseif(r1==96  and r2<=20)then
		LuaGive("o_material_"..(16+9*LuaRandom(6)).."",1,"Tbox002")
		LuaNotice("@2"..LuaQueryStr("name").."@0鸿运当头,打开@3幸运宝盒@0获得到@26级材料一个。")
	else
		m_exp=50000+(LuaRandom(100)+40)*level^2
		LuaAddJx("combat_exp",m_exp,"Tbox002")
		m_money=(LuaRandom(40)+15)*1000
		LuaGive("coin",m_money,"Tbox002")
		mn=LuaRandom(5)+1
		LuaGive("o_material_"..(mn+10+9*LuaRandom(6)).."",1,"Tbox002")
		if(m_money>=40000 and mn>=5)then
			LuaNotice("@2"..LuaQueryStr("name").."@0打开@3幸运宝盒@0，得到@2"..m_money.."铜币"..mn.."级材料@0一个。")
		elseif(m_money>=45000)then
			LuaNotice("@2"..LuaQueryStr("name").."@0打开@3幸运宝盒@0，得到@2"..m_money.."@0铜币。")
		end
	end

if(kj>=1)then
DelItem("o_key002j",1)
else
DelItem("o_key002y",1)
end
LuaOtherSendMenu()
return 1
else
LuaSay("开启需要@3幸运钥匙@0,@3幸运钥匙@0可以在商城中其他中购买")
LuaSay("开启@3幸运宝盒@0,有机会获得@2百万大奖，高级材料和大量经验")
LuaOtherSendMenu()
return 0
end
end
