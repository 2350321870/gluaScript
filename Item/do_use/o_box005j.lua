function do_use()
local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
if(LuaFreeBag()<6)then	LuaShowNotify("�����ٱ���@26@0�񱳰��ռ�")	return 0 end
	local r=LuaRandom(100)
	local re=LuaRandom(8)
	local rf=LuaRandom(3)
	local rc=LuaRandom(100)
	LuaSay("�ƽ�֮���ӣ�������쵽�֣���~")
	if(r<5)then
		LuaSay("��ϲ�����ڻƽ������淢����һ��@3�������@0��@2���˱���@0����Ԥʾ�����@3��@0@5��@0��������Ŷ@!")
		LuaGive("o_box002",1,"Tbox005") --���˱���
		--LuaNotice("@2"..LuaQueryStr("name").."@0��@3�ƽ���@0����һֻ���������@5���˱���@0�ҵ��ڵ�")
	elseif(r<15)then
		LuaSay("��ϲ�����������һ�εĻ��ᣬ���ٽ���һ��@2�ƽ���@0����Ŷ���⽫������˵Ŀ�ʼŶ@!")
		LuaGive("o_box005y",1,"Tbox005") 	
	elseif(r<45)then--30%								
		if(rf==0)then
			LuaGive("o_state012j",LuaRandom(2)+1,"Tbox005")------��
			LuaGive("o_state001j",LuaRandom(2)+1,"Tbox005")------��
			LuaGive("o_state066j",1,"Tbox005")----��Ѫ��
		elseif(rf==1)then
			LuaGive("o_state010j",1,"Tbox005")-----------------3��
			LuaGive("o_state016j",LuaRandom(4)+2,"Tbox005")----��ת
		elseif(rf==2)then
			LuaGive("o_state069j",1,"Tbox005")----��ħ��
		end
		local m_exp=5000+(LuaRandom(20)+40)*level^2
		LuaAddJx("combat_exp",m_exp,"Tbox005")
		LuaSay("��ϲ��������@3�ƽ���@0������˼�ֵ20Ԫ�����ҵĵ��ߺʹ����ľ��顣")
	elseif(r<56)then--11%						
		LuaGive("o_ybsc001y",1,"Tbox005")
		LuaNotice("��ϲ@2"..LuaQueryStr("name").."@0��@3�ƽ���@0���õ�@3�������@0��")
	elseif(r<67)then--11%						
		LuaGive("o_ybsc002y",1,"Tbox005")
		LuaNotice("��ϲ@2"..LuaQueryStr("name").."@0��@3�ƽ���@0���õ�@2ǿ��ʯ@0��")
	elseif(r<73)then--6%						
		LuaGive("o_resetpoint1y",1,"Tbox005")
		LuaNotice("��ϲ@2"..LuaQueryStr("name").."@0��@3�ƽ���@0���õ���ֵ30Ԫ����@2ϴ���@0һ����")
	elseif(r<79)then--6%						
		LuaGive("o_changeclass1y",1,"Tbox005")
		LuaNotice("��ϲ@2"..LuaQueryStr("name").."@0��@3�ƽ���@0���õ���ֵ50Ԫ����@2תְ����@0һ����")
	elseif(r<84)then--5%						
		LuaGive("o_state059j",1,"Tbox005")
	elseif(r<88)then --4%
		if(rc<95)then
		LuaGive("o_material_"..(16+9*LuaRandom(6)).."",1,"Tbox005")	--6
		LuaNotice("��ϲ@2"..LuaQueryStr("name").."@0��@3�ƽ���@0���õ���ֵ60Ԫ����@26������@0һ����")
		elseif(r<=99)then
		LuaGive("o_material_"..(17+9*LuaRandom(6)).."",1,"Tbox005")	--7
		LuaNotice("��ϲ@2"..LuaQueryStr("name").."@0��@3�ƽ���@0���õ���ֵ360Ԫ����@27������@0һ����")
		end
	elseif(r<=99)then --%12
		if(re==0)then
		LuaGive("e_head161",1,2,"Tbox005")
		elseif(re==1)then
		LuaGive("e_clothes161",1,2,"Tbox005")
		elseif(re==2)then
		LuaGive("e_pants161",1,2,"Tbox005")
		elseif(re==3)then
		LuaGive("e_shoes161",1,2,"Tbox005")
		elseif(re==4)then
		LuaGive("e_earring161",1,2,"Tbox005")
		elseif(re==5)then
		LuaGive("e_necklace161",1,2,"Tbox005")
		elseif(re==6)then
			if(LuaQueryStr("class")=="shen" or LuaQueryStr("class")=="zhan") then
			LuaGive("e_falchion161",1,2,"Tbox005")	
			elseif(LuaQueryStr("class")=="wu" or LuaQueryStr("class")=="zhan") then
			LuaGive("e_sword161",1,2,"Tbox005")
			elseif(LuaQueryStr("class")=="xian" or LuaQueryStr("class")=="zhan") then
			LuaGive("e_fan161",1,2,"Tbox005")
			end
		elseif(re==7)then
			if(LuaQueryStr("class")=="shen" or LuaQueryStr("class")=="zhan") then
			LuaGive("e_shield161",1,2,"Tbox005")	
			elseif(LuaQueryStr("class")=="wu" or LuaQueryStr("class")=="zhan") then
			LuaGive("e_knife161",1,2,"Tbox005")
			elseif(LuaQueryStr("class")=="xian" or LuaQueryStr("class")=="zhan") then
			LuaGive("e_book161",1,2,"Tbox005")
			end
		end
		LuaNotice("��ϲ@2"..LuaQueryStr("name").."@0��@3�ƽ���@0���õ�@3�޼�֮����80����Ʒ�ƾ���װһ��@0��")
	end
	
LuaOtherSendMenu()
return 1
end
