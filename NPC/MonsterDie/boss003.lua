function OnDie()
-------------����
if(LuaQueryTask("T473")==2) then
	if (LuaItemCount("o_mission315") ==0) then
		LuaGive("o_mission315",1)
		if(LuaItemCount("o_mission315")== 1)then
		LuaSay("���ѵõ�@2����֮��@0����ظ�@2��ˮ�԰�@0��@2����@0�ɣ�")
 		issay = 1
		end
	end
end
if(LuaQueryTask("T30bossjl")~=99)then
	local gailv
	if(TeamCount()>= 2) then
        if(TeamCount()== 2) then
        gailv=5
        elseif(TeamCount()== 3) then
        gailv=4
        elseif(TeamCount()== 4) then
        gailv=3
        elseif(TeamCount()== 5) then
        gailv=2
        end
        if(LuaRandom(gailv)==0) then
			if(LuaQueryStr("class")=="shen") then      --սʿ
			LuaGive("e_falchion009",1,2,"T30bossjl")
			elseif(LuaQueryStr("class")=="wu") then       --����
			LuaGive("e_sword011",1,2,"T30bossjl")
			elseif(LuaQueryStr("class")=="xian") then       --ıʿ
			LuaGive("e_fan005",1,2,"T30bossjl")
			end
			LuaSay("���Ѿ����30�༶��ɫ�������Ժ��ɱ��bossʱ�����ᴥ�������ؽ�����")
			LuaSetTask("T30bossjl",99)
			issay = 1
		end
	end
end
if(LuaQueryTask("Tbprw12")==1) then
	if(LuaQueryTask("Tbprw12_2")==1) then
		if(LuaItemCount("o_mission409")==0)then
			LuaGive("o_mission409",1)
			if(LuaItemCount("o_mission409")>=1) then
				LuaSay("���Ѿ��ɹ�ɱ��@3BOSS����@0���õ�@3�ߵ�@0����ȥ@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0�ɣ�")
 				issay = 1
			end
		end
	end
end
if(QueryAchievement("Tcj3_013")==0) then
	LuaSay("��ϲ��ɱ��BOSS@3����@0����óɾ�@3���壡����@0��")
	LuaGiveAchievement("Tcj3_013",99)
 	issay = 1
end
if(LuaQueryTask("Txhuanxing003")==1)then
	LuaSay("��ʾ����ɹ��Ļ�ɱ������")
	LuaSetTask("Txhuanxing003",2)
 	issay = 1
end
if (issay == 1) then
    LuaOtherSendMenu()
end
return 1
end
