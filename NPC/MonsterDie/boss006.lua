function OnDie()
if(LuaQueryTask("T714")==1) then
	LuaSetTask("T714",2)
	AddLog("���µľ�ս�����顿",714)
	LuaSay("���Ѿ��ɹ���ɱBOSS���꽫������ȥ�ظ����������Ĺ���˰�")
 	issay = 1
end
if(LuaQueryTask("Tbprw12")==1) then
	if(LuaQueryTask("Tbprw12_5")==1) then
		if(LuaItemCount("o_mission412")==0)then
			LuaGive("o_mission412",1)
			if(LuaItemCount("o_mission412")>=1) then
				LuaSay("���Ѿ��ɹ�ɱ��@3BOSS���꽫��@0���õ�@3����ӡ@0����ȥ@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0�ɣ�")
 				issay = 1
			end
		end
	end
end
if(QueryAchievement("Tcj3_016")==0) then
	LuaSay("��ϲ��ɱ��BOSS@3���꽫��@0����óɾ�@3���壡���꽫��@0��")
	LuaGiveAchievement("Tcj3_016",99)
 	issay = 1
end
if(LuaQueryTask("Txhuanxing006")==1)then
	LuaSay("��ʾ����ɹ��Ļ�ɱ�����꽫��")
	LuaSetTask("Txhuanxing006",2)
 	issay = 1
end
if (issay == 1) then
    LuaOtherSendMenu()
end
	--[[if(LuaFreeBag()>1)then	
		local r2=LuaRandom(100)
		LuaPrint("1")
		if(r2<3) then
		LuaGive("e_book168t",1,3,"PublicBeta_106_1")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ��")
		elseif(r2<6 and r2>3) then
		LuaGive("e_earring168t",1,3,"PublicBeta_106_1")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ��׹")
		elseif(r2<9 and r2>6) then
		LuaGive("e_falchion168t",1,3,"PublicBeta_106_1")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ��")
		elseif(r2<12 and r2>9) then
		LuaGive("e_head168t",1,3,"PublicBeta_106_1")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ��")
		elseif(r2<15 and r2>12) then
		LuaGive("e_knife168t",1,3,"PublicBeta_106_1")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ��")
		elseif(r2<18 and r2>15) then
		LuaGive("e_necklace168t",1,3,"PublicBeta_106_1")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ����")
		elseif(r2<21 and r2>18) then
		LuaGive("e_pants168t",1,3,"PublicBeta_106_1")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ����")
		elseif(r2<24 and r2>21) then
		LuaGive("e_pen168t",1,3,"PublicBeta_106_1")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ��")
		elseif(r2<27 and r2>24) then
		LuaGive("e_shield168t",1,3,"PublicBeta_106_1")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ��")
		elseif(r2<30 and r2>27) then
		LuaGive("e_shoes168t",1,3,"PublicBeta_106_1")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵѥ")
		elseif(r2<33 and r2>30) then
		LuaGive("e_sword168t",1,3,"PublicBeta_106_1")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ��")
		elseif(r2<36 and r2>33) then
		LuaGive("e_clothes168t",1,3,"PublicBeta_106_1")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬����˷�ӵ��")
		end
	else
		LuaShowNotify("�����ٱ���@21@0�񱳰��ռ�")
	end]]
LuaOtherSendMenu()
return 1
end