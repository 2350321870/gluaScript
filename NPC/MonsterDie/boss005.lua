function OnDie()
if(LuaQueryTask("T655")==1)then
if(LuaItemCount("o_mission341")==0)then
LuaGive("o_mission341",1)
if(LuaItemCount("o_mission341")==1)then
LuaSay("���ѳɹ���ɱ@3ɽ��������@0����ȥ@3̫��ɽ��ʯԽ@0������ȡ������")
 	issay = 1
    end
    end
    end
if(LuaQueryTask("Tbprw12")==1) then
	if(LuaQueryTask("Tbprw12_4")==1) then
		if(LuaItemCount("o_mission411")==0)then
			LuaGive("o_mission411",1)
			if(LuaItemCount("o_mission411")>=1) then
				LuaSay("���Ѿ��ɹ�ɱ��@3BOSS������@0���õ�@3�����@0����ȥ@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0�ɣ�")
 				issay = 1
			end
		end
	end
end
if(QueryAchievement("Tcj3_015")==0) then
	LuaSay("��ϲ��ɱ��BOSS@3������@0����óɾ�@3���壡������@0��")
	LuaGiveAchievement("Tcj3_015",99)
 	issay = 1
end
if(LuaQueryTask("Txhuanxing005")==1)then
	LuaSay("��ʾ����ɹ��Ļ�ɱ��������")
	LuaSetTask("Txhuanxing005",2)
 	issay = 1
end
if (issay == 1) then
    LuaOtherSendMenu()
end
	--[[if(LuaFreeBag()>1)then	
		local r2=LuaRandom(100)
		LuaPrint("1")
		if(r2<3) then
		LuaGive("e_book167t",1,3,"PublicBeta_105_1")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬������ݺ���")
		elseif(r2<6 and r2>3) then
		LuaGive("e_earring167t",1,3,"PublicBeta_105_1")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬������ݺ��׹")
		elseif(r2<9 and r2>6) then
		LuaGive("e_falchion167t",1,3,"PublicBeta_105_1")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬������ݺᵶ")
		elseif(r2<12 and r2>9) then
		LuaGive("e_head167t",1,3,"PublicBeta_105_1")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬������ݺ��")
		elseif(r2<15 and r2>12) then
		LuaGive("e_knife167t",1,3,"PublicBeta_105_1")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬������ݺ���")
		elseif(r2<18 and r2>15) then
		LuaGive("e_necklace167t",1,3,"PublicBeta_105_1")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬������ݺ�����")
		elseif(r2<21 and r2>18) then
		LuaGive("e_pants167t",1,3,"PublicBeta_105_1")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬������ݺỤ��")
		elseif(r2<24 and r2>21) then
		LuaGive("e_pen167t",1,3,"PublicBeta_105_1")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬������ݺ��")
		elseif(r2<27 and r2>24) then
		LuaGive("e_shield167t",1,3,"PublicBeta_105_1")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬������ݺ��")
		elseif(r2<30 and r2>27) then
		LuaGive("e_shoes167t",1,3,"PublicBeta_105_1")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬������ݺ�ѥ")
		elseif(r2<33 and r2>30) then
		LuaGive("e_sword167t",1,3,"PublicBeta_105_1")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬������ݺὣ")
		elseif(r2<36 and r2>33) then
		LuaGive("e_clothes167t",1,3,"PublicBeta_105_1")
		LuaNotice("@2"..LuaQueryStr("name").."��ϲ�㣬������ݺ���")
		end
	else
	 LuaShowNotify("�����ٱ���@21@0�񱳰��ռ�")
	end]]
   LuaOtherSendMenu()
return 1
end