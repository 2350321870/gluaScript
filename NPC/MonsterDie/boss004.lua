function OnDie()
if(LuaQueryTask("T614")==1) then
	LuaSetTask("T614",2)
	AddLog("������ҩ[����]",614)
	LuaSay("���Ѿ��ɹ�������@3����Ģ��@0���Ͽ�ظ��׹Ƕ���@3�����@0��")
 	issay = 1
end
if(LuaQueryTask("T583")==1) then
	if (LuaItemCount("o_mission327") < 1) then
     	LuaGive("o_mission327",1)
    	if(LuaItemCount("o_mission327")==1) then
    	CheckNpcStatusByMonItemID("T583","o_mission327")
     	LuaSay("���ѻ�ɱ����Ģ���õ�1�ݾ綾Ģ������ȥ�ظ���������������ʰɡ�")
 	issay = 1
    end
end
end 
if(LuaQueryTask("Tbprw12")==1) then
	if(LuaQueryTask("Tbprw12_3")==1) then
		if(LuaItemCount("o_mission410")==0)then
			LuaGive("o_mission410",1)
			if(LuaItemCount("o_mission410")>=1) then
				LuaSay("���Ѿ��ɹ�ɱ��@3BOSS����Ģ��@0���õ�@3���޾�˿@0����ȥ@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0�ɣ�")
 				issay = 1
			end
		end
	end
end
if(LuaQueryTask("T40bossjl")~=99)then
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
        if(LuaRandom(gailv)==0)  then
			if(LuaQueryStr("class")=="shen") then      --սʿ
			LuaGive("e_falchion012",1,2,"T40bossjl")
			elseif(LuaQueryStr("class")=="wu") then       --����
			LuaGive("e_sword014",1,2,"T40bossjl")
			elseif(LuaQueryStr("class")=="xian") then       --ıʿ
			LuaGive("e_pen007",1,2,"T40bossjl")
			end
			LuaSay("���Ѿ����40�༶��ɫ�������Ժ��ɱ��bossʱ�����ᴥ�������ؽ�����")
			LuaSetTask("T40bossjl",99)
			issay = 1
		end
	end
end
if(QueryAchievement("Tcj3_014")==0) then
	LuaSay("��ϲ��ɱ��BOSS@3����Ģ��@0����óɾ�@3���壡����Ģ��@0��")
	LuaGiveAchievement("Tcj3_014",99)
 	issay = 1
end
if(LuaQueryTask("Txhuanxing004")==1)then
	LuaSay("��ʾ����ɹ��Ļ�ɱ������Ģ��")
	LuaSetTask("Txhuanxing004",2)
 	issay = 1
end
if (issay == 1) then
    LuaOtherSendMenu()
end

return 1
end