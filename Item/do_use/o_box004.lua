function do_use()
local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
if(LuaFreeBag()<6)then	LuaShowNotify("�����ٱ���@26@0�񱳰��ռ�")	return 0 end
	local r=LuaRandom(50)
	local re=LuaRandom(8)
	local rf=LuaRandom(3)
	LuaSay("����֮���ӣ�������쵽�֣���~")
	if(r<4)then
		LuaSay("��ϲ�����ڰ����������淢����һ��@3�������@0��@2���˱���@0����Ԥʾ�����@3��@0@5��@0��������Ŷ@!")
		LuaGive("o_box002",1,"Tbox004") --���˱���
		--LuaNotice("@2"..LuaQueryStr("name").."@0��@3��������@0����һֻ���������@5���˱���@0�ҵ�ֱ���")
	elseif(r<10)then
		LuaSay("��ϲ�����������һ�εĻ��ᣬ���ٽ���һ��@2��������@0����Ŷ���⽫������˵Ŀ�ʼŶ@!")
		LuaGive("o_box004j",1,"Tbox004") --��������
	elseif(r<20)then								
		if(rf==0)then
			LuaGive("o_state012j",LuaRandom(2)+1,"Tbox004")------��
			LuaGive("o_state008j",LuaRandom(2)+1,"Tbox004")------��
		elseif(rf==1)then
			LuaGive("o_state012j",LuaRandom(3)+1,"Tbox004")------��
			LuaGive("o_state065j",1,"Tbox004")----СѪ��
		elseif(rf==2)then
			LuaGive("o_state001j",LuaRandom(3)+1,"Tbox004")------��
			LuaGive("o_state068j",1,"Tbox004")----Сħ��
		end
		local m_exp=5000+(LuaRandom(20)+20)*level^2
		LuaAddJx("combat_exp",m_exp,"Tbox004")
		LuaSay("��ϲ��������@3��������@0������˼�ֵ10Ԫ�����ҵĵ��ߺʹ����ľ��顣@!")
	elseif(r<30)then						
		LuaGive("o_material_"..(15+9*LuaRandom(6)).."",1,"Tbox004")	--5
		LuaSay("��ϲ��������@3��������@0���õ���ֵ10Ԫ����@25������@0һ����")
	elseif(r<37)then						
		LuaGive("o_state010j",1,"Tbox004")
	elseif(r<40)then						
		LuaGive("o_resetpoint1y",1,"Tbox004")
		LuaNotice("��ϲ@2"..LuaQueryStr("name").."@0��@3��������@0���õ���ֵ30Ԫ����@2ϴ���@0һ����")
	elseif(r<41)then						
		LuaGive("o_changeclass1y",1,"Tbox004")
		LuaNotice("��ϲ@2"..LuaQueryStr("name").."@0��@3��������@0���õ���ֵ50Ԫ����@2תְ����@0һ����")
	elseif(r<43)then
		LuaGive("o_material_"..(16+9*LuaRandom(6)).."",1,"Tbox004")	--6
		LuaNotice("��ϲ@2"..LuaQueryStr("name").."@0��@3��������@0���õ���ֵ60Ԫ����@26������@0һ����")
	elseif(r<=49)then--%14
		if(re==0)then
		LuaGive("e_head154",1,2,"Tbox004")
		elseif(re==1)then
		LuaGive("e_clothes154",1,2,"Tbox004")
		elseif(re==2)then
		LuaGive("e_pants154",1,2,"Tbox004")
		elseif(re==3)then
		LuaGive("e_shoes154",1,2,"Tbox004")
		elseif(re==4)then
		LuaGive("e_earring154",1,2,"Tbox004")
		elseif(re==5)then
		LuaGive("e_necklace154",1,2,"Tbox004")
		elseif(re==6)then
			if(LuaQueryStr("class")=="shen" or LuaQueryStr("class")=="zhan") then
			LuaGive("e_falchion154",1,2,"Tbox004")	
			elseif(LuaQueryStr("class")=="wu" or LuaQueryStr("class")=="zhan") then
			LuaGive("e_sword154",1,2,"Tbox004")
			elseif(LuaQueryStr("class")=="xian" or LuaQueryStr("class")=="zhan") then
			LuaGive("e_pen154",1,2,"Tbox004")
			end
		elseif(re==7)then
			if(LuaQueryStr("class")=="shen" or LuaQueryStr("class")=="zhan") then
			LuaGive("e_shield154",1,2,"Tbox004")	
			elseif(LuaQueryStr("class")=="wu" or LuaQueryStr("class")=="zhan") then
			LuaGive("e_knife154",1,2,"Tbox004")
			elseif(LuaQueryStr("class")=="xian" or LuaQueryStr("class")=="zhan") then
			LuaGive("e_book154",1,2,"Tbox004")
			end
		end
		LuaNotice("��ϲ@2"..LuaQueryStr("name").."@0��@3��������@0���õ�@3�޼�֮����60����Ʒ������װһ��@0��")
	end
	
LuaOtherSendMenu()
return 1
end
