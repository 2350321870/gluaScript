tS_ewjl={
	--1 ����  2id  3��ҪԪ��              
	{"@2��������@0","o_material_48",""}, --1  ����ľ
	{"@2��������@0","o_material_58",""},	--2   ������
	{"@2���ﵰ@0","o_mission415",""},--	3						   
	{"@2���굤@0","o_state016y","@51Ԫ��@0"},	--	4						   
	{"@2ͨ��@0","o_gold1y","@51Ԫ��@0"},	--		5
	--����Ϊ����2Ԫ�����⽱��  1wͭ�� 	
	{"@2�ļ�����@0","o_material_23",""},-- 6   �ļ�Ƥ
	{"@2���������@0","o_state008y","@52Ԫ��@0"},--		7	
	{"@2����֮Ѫ(+500)@0","o_state053y","@52Ԫ��@0"},--	8					   
	{"@2��ʦˮ��(+500)@0","o_state056y","@52Ԫ��@0"},	--	9				   
	{"@2˫����[1Сʱ]@0","o_state012y","@52Ԫ��@0"},--	10					   
	{"@2˫����[1Сʱ]@0","o_state001y","@52Ԫ��@0"},--	11					   
	{"@2������+50@0","o_state017y","@52Ԫ��@0"},	--	12								   
	{"@2�ǻ۷�+50@0","o_state022y","@52Ԫ��@0"},--	13									   
	{"@2���ݷ�+50@0","o_state027y","@52Ԫ��@0"},	--	14								   
	{"@2Ѫ��1@0","o_state065y","@53Ԫ��@0"},--		15									   
	{"@2�౶̰����(1Сʱ)@0","o_state034y","@53Ԫ��@0"},--		16					   
	{"@2������+100@0","o_state018y","@54Ԫ��@0"},--		17							   
	{"@2�ǻ۷�+100@0","o_state023y","@54Ԫ��@0"},--		18							   
	{"@2���ݷ�+100@0","o_state028y","@54Ԫ��@0"},--19
	--����Ϊ����4Ԫ��	 4wͭ��																   
	{"@2����ʳƷ[��]@0","o_food03y","@55Ԫ��@0"},--	20							   
	{"@2ħ��1@0","o_state068y","@55Ԫ��@0"},	--			21							   						                   						   
	{"@2����֮Ѫ(+1000)@0","o_state054y","@57Ԫ��@0"},--	22							   
	--����6Ԫ��  		
	{"@2�м������@0","o_state010y","@58Ԫ��@0"},--		23
	{"@2��ʦˮ��(+1000)@0","o_state057y","@59Ԫ��@0"},--	24							   
	{"@2��������@0","o_box004y","@510Ԫ��@0"},--			25								   
	{"@2��������@0","o_box004y","@510Ԫ��@0"},--			26							   
	{"@2��Ʊ@0","o_gold2y","@510Ԫ��@0"},--				27
	{"@2�弶����@0","o_material_33","@510Ԫ��@0"},--		28		�弶��
	--����8Ԫ��												   
	{"@2�ǻ۷�+200@0","o_state025y","@511Ԫ��@0"},--		29								   
	{"@2������+200@0","o_state020y","@511Ԫ��@0"},--		30								   
	{"@2���ݷ�+200@0","o_state030y","@511Ԫ��@0"},--		31								   
	{"@2�ǻ۷�+250@0","o_state026y","@515Ԫ��@0"},--		32								   
	--����10Ԫ��											   
	{"@2������+250@0","o_state021y","@515Ԫ��@0"},--		33								   
	{"@2���ݷ�+250@0","o_state031y","@515Ԫ��@0"},--		34	
	{"@2�߼��������@0","o_state059y","@515Ԫ��@0"},--		35
	{"@2С�ز�ū@0","o_state083y","@520Ԫ��@0"},--		36							   						   
	--����12Ԫ��											   
	}
function do_use()
if(LuaQueryTask("Tguaji")==0) then
	if(LuaQuery("level")<10) then
		LuaSay("ë��ϯ˵�ĺã��Լ�����,������ʳ��@210�����ϲ��ܹһ�@0���Ͽ�Ŭ������10����@!")
	else
		LuaDoHook()
	end
elseif(LuaQueryTask("Tguaji")==1) then--�һ���ʼ  ��δ����
	--LuaDoHook()
	local q=LuaQueryTask("Tgj_time")-(GetCurrentTime()-LuaQueryTask("Tgj_kstime"))   --��һ������������ʱ��  ��
	local h=floor(q/3600)
	local f=floor((q-h*3600)/60) 
	local s=floor(q%60)
	if(h~=0 and f~=0 and s~=0) then
		LuaSay("@7��Ĺһ�ʱ�仹û��@0���ٵ�@5"..h.."Сʱ"..f.."����"..s.."��@0����@3�һ�Ш��@0��ȡ�һ�����ɣ���@1δ��ȡ����ǰ�����뿪����ͼ@0��������Ϊ@2�Զ������һ�����@0�����ùһ�ϵͳ����@7�һ������п�������@0")
	elseif(h==0 and f~=0 and s~=0) then 
		LuaSay("@7��Ĺһ�ʱ�仹û��@0���ٵ�@5"..f.."������"..s.."��@0����@3�һ�Ш��@0��ȡ�һ�����ɣ���@1δ��ȡ����ǰ�����뿪����ͼ@0��������Ϊ@2�Զ������һ�����@0�����ùһ�ϵͳ����@7�һ������п�������@0")
	elseif(h~=0 and f==0 and s~=0) then 
		LuaSay("@7��Ĺһ�ʱ�仹û��@0���ٵ�@5"..h.."Сʱ��"..s.."��@0����@3�һ�Ш��@0��ȡ�һ�����ɣ���@1δ��ȡ����ǰ�����뿪����ͼ@0��������Ϊ@2�Զ������һ�����@0�����ùһ�ϵͳ����@7�һ������п�������@0")
	elseif(h~=0 and f~=0 and s==0) then 
		LuaSay("@7��Ĺһ�ʱ�仹û��@0���ٵ�@5"..h.."Сʱ��"..f.."����@0����@3�һ�Ш��@0��ȡ�һ�����ɣ���@1δ��ȡ����ǰ�����뿪����ͼ@0��������Ϊ@2�Զ������һ�����@0�����ùһ�ϵͳ����@7�һ������п�������@0")
	elseif(h==0 and f==0 and s~=0) then
		LuaSay("@7��Ĺһ�ʱ�仹û��@0���ٵ�@5"..s.."��@0����@3�һ�Ш��@0��ȡ�һ�����ɣ���@1δ��ȡ����ǰ�����뿪����ͼ@0��������Ϊ@2�Զ������һ�����@0�����ùһ�ϵͳ����@7�һ������п�������@0")
	elseif(h==0 and f~=0 and s==0) then
		LuaSay("@7��Ĺһ�ʱ�仹û��@0���ٵ�@5"..f.."����@0����@3�һ�Ш��@0��ȡ�һ�����ɣ���@1δ��ȡ����ǰ�����뿪����ͼ@0��������Ϊ@2�Զ������һ�����@0�����ùһ�ϵͳ����@7�һ������п�������@0")
	elseif(h~=0 and f==0 and s==0) then
		LuaSay("@7��Ĺһ�ʱ�仹û��@0���ٵ�@5"..h.."Сʱ@0����@3�һ�Ш��@0��ȡ�һ�����ɣ���@1δ��ȡ����ǰ�����뿪����ͼ@0��������Ϊ@2�Զ������һ�����@0�����ùһ�ϵͳ����@7�һ������п�������@0")
	end
elseif(LuaQueryTask("Tguaji")==2) then --�һ����� �콱
	LuaTaskKillAdd(LuaQueryStrTask("Tgj_gwID"),LuaQueryTask("Tgj_num"))  --���ùһ�ɱ�ּ���
	local m=LuaQueryTask("Tgj_tp")--��ѯ��ǰ�һ�ҩ������
	LuaSay("��ϲ����@2"..floor(LuaQueryTask("Tgj_num")*LuaQueryTask("Tgj_gwjy")).."@0�һ����顣") --��������*����*����
	LuaAddJx("combat_exp",floor(LuaQueryTask("Tgj_num")*LuaQueryTask("Tgj_gwjy")),"Tguaji")
	if(m==1 or m==10) then --����2ͨ�� ����1wͭ��
		local p=LuaRandom(40)+1  --5��  5/40
		if(p<=5) then
			LuaSay("��ϲ���ùһ����⽱��"..tS_ewjl[p][1].."һ��")
			LuaGive(tS_ewjl[p][2],1,"Tguaji")
		else
			LuaSay("��������Ʒ���а���û�л�ùһ����⽱��....")
		end
	elseif(m==2 or m==11) then --����4ͨ������4w
		local p=LuaRandom(60)+1 --19���ɵõ�����  19/60
		if(p<=19) then
			if(p<=3 or p==6) then --�̳�û����
				LuaSay("��ϲ���ùһ����⽱����"..tS_ewjl[p][1].."һ��")
				LuaGive(tS_ewjl[p][2],1,"Tguaji") 
				if(p==6) then
					LocalMsg("��ϲ���@3"..LuaQueryStr("name").."@0���@54ͨ���һ�@0���⽱����@2�ļ�����@0һ����")
				end
			else
				LuaSay("��ϲ���ùһ����⽱������ֵ"..tS_ewjl[p][3].."��"..tS_ewjl[p][1].."һ��")
				LuaGive(tS_ewjl[p][2],1,"Tguaji") 
				if(p>=16) then
					LocalMsg("��ϲ���@3"..LuaQueryStr("name").."@0���@54ͨ���һ�@0���⽱������ֵ"..tS_ewjl[p][3].."��"..tS_ewjl[p][1].."һ����")
				end
			end
		else
			LuaSay("��������Ʒ���а���û�л�ùһ����⽱��....")
		end
	elseif(m==3) then --����6ͨ��
		local p=LuaRandom(60)+1  --22���ɵõ�����  22/60
		if(p<=22) then
			if(p<=3 or p==6) then --�̳�û����
				LuaSay("��ϲ���ùһ����⽱����"..tS_ewjl[p][1].."һ��")
				LuaGive(tS_ewjl[p][2],1,"Tguaji") 
			else
				LuaSay("��ϲ���ùһ����⽱������ֵ"..tS_ewjl[p][3].."��"..tS_ewjl[p][1].."һ��")
				LuaGive(tS_ewjl[p][2],1,"Tguaji") 
				if(p>=20) then
					LocalMsg("��ϲ���@3"..LuaQueryStr("name").."@0���@56ͨ���һ�@0���⽱������ֵ"..tS_ewjl[p][3].."��"..tS_ewjl[p][1].."һ����")
				end
			end
		else
			LuaSay("��������Ʒ���а���û�л�ùһ����⽱��....")
		end
	elseif(m==4) then --����8ͨ��  
		local p=LuaRandom(60)+1  --28���ɵõ�����  28/60
		if(p<=28) then
			if(p<=3 or p==6) then --�̳�û����
				LuaSay("��ϲ���ùһ����⽱����"..tS_ewjl[p][1].."һ��")
				LuaGive(tS_ewjl[p][2],1,"Tguaji") 
			else
				LuaSay("��ϲ���ùһ����⽱������ֵ"..tS_ewjl[p][3].."��"..tS_ewjl[p][1].."һ��")
				LuaGive(tS_ewjl[p][2],1,"Tguaji") 
				if(p>=22) then
					LocalMsg("��ϲ���@3"..LuaQueryStr("name").."@0���@58ͨ���һ�@0���⽱������ֵ"..tS_ewjl[p][3].."��"..tS_ewjl[p][1].."һ����")
				end
			end
		else
			LuaSay("��������Ʒ���а���û�л�ùһ����⽱��....")
		end
	elseif(m==5) then --����10ͨ��
		local p=LuaRandom(60)+1  --32���ɵõ�����  32/60
		if(p<=32) then
			if(p<=3 or p==6) then --�̳�û����
				LuaSay("��ϲ���ùһ����⽱����"..tS_ewjl[p][1].."һ��")
				LuaGive(tS_ewjl[p][2],1,"Tguaji") 
			else
				LuaSay("��ϲ���ùһ����⽱������ֵ"..tS_ewjl[p][3].."��"..tS_ewjl[p][1].."һ��")
				LuaGive(tS_ewjl[p][2],1,"Tguaji") 
				if(p>=23) then
					LocalMsg("��ϲ���@3"..LuaQueryStr("name").."@0���@510ͨ���һ�@0���⽱������ֵ"..tS_ewjl[p][3].."��"..tS_ewjl[p][1].."һ����")
				end
			end
		else
			LuaSay("��������Ʒ���а���û�л�ùһ����⽱��....")
		end
	elseif(m==6 or m==7) then --����12ͨ��  
		local p=LuaRandom(60)+1  --36���ɵõ�����  36/60
		if(p<=36) then
			if(p<=3 or p==6) then --�̳�û����
				LuaSay("��ϲ���ùһ����⽱����"..tS_ewjl[p][1].."һ��")
				LuaGive(tS_ewjl[p][2],1,"Tguaji") 
			else
				LuaSay("��ϲ���ùһ����⽱������ֵ"..tS_ewjl[p][3].."��"..tS_ewjl[p][1].."һ��")
				LuaGive(tS_ewjl[p][2],1,"Tguaji") 
				if(m==6) then --12ͨ��
					if(p>=24) then
						LocalMsg("��ϲ���@3"..LuaQueryStr("name").."@0���@512ͨ���һ�@0���⽱������ֵ"..tS_ewjl[p][3].."��"..tS_ewjl[p][1].."һ����")
					end
				elseif(m==7) then --40ͨ��
					if(p>=32) then
						LocalMsg("��ϲ���@3"..LuaQueryStr("name").."@0���@540ͨ���һ�@0���⽱������ֵ"..tS_ewjl[p][3].."��"..tS_ewjl[p][1].."һ����")
					end
				end
			end	
		else
			LuaSay("��������Ʒ���а���û�л�ùһ����⽱��....")
		end
	end
	LuaDeleteBuff("550")  --ɾ�����buff
	LuaDelTask("Tgj_tp") --�һ�ҩ������
	LuaDelTask("Tgj_gwID") --ɾ������id
	LuaDelTask("Tgj_gwjy") --�һ����ﾭ�飨һ����
	LuaDelTask("Tgj_num") --�һ���������
	LuaDelTask("Tguaji")  --�һ����
	LuaDelTask("Tgj_bfID")  --�һ�buffid
	LuaOtherSendMenu()
	LuaLogRecord("�һ�","o_state100y","��Ʒ","����",1)
	return 1
end
LuaOtherSendMenu()
return 0 
end