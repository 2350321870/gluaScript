function OnDie()
if(LuaQueryTask("T393")==1)then
		if(LuaItemCount("o_mission190")==0)then
			LuaGive("o_mission190",1)
			if(LuaItemCount("o_mission190")>=1)then
				LuaSay("���ѳɹ���ɱBOSS���а�壬�õ���@2ˮ����@0����ȥ�ظ�@4ɽկ����@0��@3����֮@0��")
				if(LuaQueryTask("T393A")==0)then
					if(LuaQueryStr("class")=="shen") then      --սʿ
					LuaGive("e_falchion099",1,3,"T73")	
					elseif(LuaQueryStr("class")=="wu") then       --����
					LuaGive("e_sword099",1,3,"T73")
					elseif(LuaQueryStr("class")=="xian") then       --ıʿ
					LuaGive("e_pen099",1,3,"T73")
					end
				LuaSetTask("T393A",99)
				end
				issay = 1
			end
		end
end
if(LuaQueryTask("Tbprw12")==1) then
	if(LuaQueryTask("Tbprw12_1")==1) then
		if(LuaItemCount("o_mission408")==0)then
			LuaGive("o_mission408",1)
			if(LuaItemCount("o_mission408")>=1) then
				LuaSay("���Ѿ��ɹ�ɱ��@3BOSS���а��@0���õ�@3ħ��@0����ȥ@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0�ɣ�")
 				issay = 1
			end
		end
	end
end
if(QueryAchievement("Tcj3_012")==0) then
	LuaSay("��ϲ��ɱ��BOSS@3���а��@0����óɾ�@3���壡���а��@0��")
	LuaGiveAchievement("Tcj3_012",99)
 	issay = 1
end
if(LuaQueryTask("Txhuanxing002")==1)then
	LuaSay("��ʾ����ɹ��Ļ�ɱ�����а��")
	LuaSetTask("Txhuanxing002",2)
 	issay = 1
end
if (issay == 1) then
    LuaOtherSendMenu()
end
return 1
end