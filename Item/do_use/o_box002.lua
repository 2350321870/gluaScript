function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("�����ٱ���@21@0�񱳰��ռ�")	return 0 end
local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
if(GetCurrentDay()~=LuaQueryStrTask("Tbox002w"))then--Tbox002w������һ�������һ�ΰ���
LuaDelTask("Tbox002w")
flag=1
else
flag=0
end
local kj=LuaItemStatusNormalCount("o_key002j")
local ky=LuaItemStatusNormalCount("o_key002y")
if(kj+ky>=1)then
	LuaSay("@2��@3��@4��@5��@7��")
	local r1=LuaRandom(100)
	local r2=LuaRandom(100)
	if((r1==50 and r2<=20 and flag==1) or LuaQuery("Tlucky")==8888)then--Tlucky�����ۼ�����ֵδ��
		LuaDelTask("Tlucky")
		LuaSay("@1��@2ϲ@3��@4��@5��@6��@7��@8��@9��")
		LuaGive("coin",1000000,"Tbox002")
		LuaNotice("@2"..LuaQueryStr("name").."@0��һ���������,��æ��@3���˱���@0����������@21000000@0ͭ�ҡ�")
		LuaSet("Tbox002w",GetCurrentDay())
	elseif(r1==20  and r2<=20)then
		LuaSay("@1��@2ϲ@3��@4��@5��@6��@7��@8��@9��")
		LuaGive("o_material_"..(17+9*LuaRandom(6)).."",1,"Tbox002")
		LuaNotice("@2"..LuaQueryStr("name").."@0���˵�ͷ,��@3���˱���@0��õ�@27������һ����")
	elseif(r1==96  and r2<=20)then
		LuaGive("o_material_"..(16+9*LuaRandom(6)).."",1,"Tbox002")
		LuaNotice("@2"..LuaQueryStr("name").."@0���˵�ͷ,��@3���˱���@0��õ�@26������һ����")
	else
		m_exp=50000+(LuaRandom(100)+40)*level^2
		LuaAddJx("combat_exp",m_exp,"Tbox002")
		m_money=(LuaRandom(40)+15)*1000
		LuaGive("coin",m_money,"Tbox002")
		mn=LuaRandom(5)+1
		LuaGive("o_material_"..(mn+10+9*LuaRandom(6)).."",1,"Tbox002")
		if(m_money>=40000 and mn>=5)then
			LuaNotice("@2"..LuaQueryStr("name").."@0��@3���˱���@0���õ�@2"..m_money.."ͭ��"..mn.."������@0һ����")
		elseif(m_money>=45000)then
			LuaNotice("@2"..LuaQueryStr("name").."@0��@3���˱���@0���õ�@2"..m_money.."@0ͭ�ҡ�")
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
LuaSay("������Ҫ@3����Կ��@0,@3����Կ��@0�������̳��������й���")
LuaSay("����@3���˱���@0,�л�����@2����󽱣��߼����Ϻʹ�������")
LuaOtherSendMenu()
return 0
end
end
