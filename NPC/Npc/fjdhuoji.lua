NPCINFO = {
serial= "33" ,
base_name="fjdhuoji",
icon= 2506, 
NpcMove=2506, 
name= "�������ˡ��̡�" , 
--level=10 ,
iconaddr=1, 
butt="19|15|63", 
name_color = "CEFFCE" , 
lastsay="�����Ĺؼ�����Ƕ",
have_sell_item=1,
LuaType=1,
}
addBuyitem={
count=13,
{"e_head006" , 2000  , 8 },
{"e_head009" , 2000  , 8 },
{"e_head013" , 2000  , 8 },
{"e_shield001" , 2000, 8 }, 
{"e_shield003" , 2000 , 8 },  
{"e_clothes006" , 2000 , 8 },
{"e_clothes009" , 2000  , 8 },
{"e_clothes013" , 2000  , 8 },
{"e_pants006" , 2000  , 8 },
{"e_pants009" , 2000  , 8 },
{"e_pants013" , 2000  , 8 },
{"e_shoes005" , 2000  , 8 },
{"e_shoes007" , 2000  , 8 },
} 

function do_talk(answer)
 if (answer=="ask") then
 		havetask =0
		local level= LuaQuery("level")
		local Tbaitan=LuaQueryTask("Tbaitan")
		AddTopSayMenuItem("@7�����б�","")
		AddTopSayMenuItem("@3����","list")
		if(LuaQueryTask("bao_D")~=0)then
			AddTopSayMenuItem("@2�Ŷ������ء�","T220")
			havetask =1
		end
		if(level>14 and Tbaitan==0)then
			AddTopSayMenuItem("��̯���̡̳�","Tbaitan")
 			havetask =1
		elseif(Tbaitan>0 and Tbaitan<99)then
			AddTopSayMenuItem("@2��̯���̡̳�","Tbaitan")
			havetask =2
		end
		if((LuaQueryTask("Tsnpc_20")==1 or LuaQueryTask("Tsnpc_20")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2��վС��","Tsnpc_20")
			if(LuaQueryTask("Tsnpc_20")==1)then
				havetask2=1
			end
		end
		if((LuaQueryTask("Tenpc_20")==1 or LuaQueryTask("Tenpc_20")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_20")
			if(LuaQueryTask("Tenpc_20")==1)then
				havetask2=1
			end
		end
		if(LuaQueryTask("T385")==1)then
			if(LuaQueryTask("TfindNPC_6")==1 or LuaQueryTask("TfindNPC_6")==2)then
				AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
				havetask=2
			end
		elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_6")==98)then
			AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
		end
		if(LuaQueryTask("T265")==1 and LuaQueryTask("T265A")==0)  then
			AddTopSayMenuItem("@2���ٽ��������顿","T265A")
			havetask =2
		end
		if(level>=20)then
		AddTopSayMenuItem("@7��װ��","Tequipbind")
		AddTopSayMenuItem("@7װ�����","Tequipbind_out")
		AddTopSayMenuItem("@7ϴװ������","TCleanMagic")
		AddTopSayMenuItem("@7����װ���ȼ�����","Tlvdep")
		end
		if(LuaQueryTask("Tcoc")==5)then
			AddTopSayMenuItem("@2�̼��򱳡�ÿ�ա�","Tcoc")
			havetask =2
			end
		if(Tbaitan==99 and level<20)then
			AddTopSayMenuItem("@9��̯���̡̳�","Tbaitan")
		end

if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("����","liaotian","0")
end

return 1
elseif(answer=="liaotian") then
	LuaSay("�������ˣ�@2��ծ@0ʵ����Ǯ֮��ѡ����������С�������������˼���Ǯ��")
elseif(answer=="Tequipbind_out") then
	LuaSay("��ʾ:װ���������δ���ţ������ڴ���")
elseif(answer=="Tequipbind") then
	local level= LuaQuery("level")
	LuaSay("��ʾ:������Ҫ�󶨵�װ�������,ѡ��˵��Ϳ��Խ��а���,@2�󶨺��޷��ٽ����,����������!")
	LuaSay("��ʾ:��װ����Ҫ����һ�������ĵ��ߡ�")
	AddMenuItem("��ѡ��Ҫ�󶨵�װ��","")
	if(level>20)then
	AddMenuItem("@5�鿴��Ŀ��˵��","vlist")
	end	
	AddMenuItem("����","equip1")
	AddMenuItem("����","equip2")
	AddMenuItem("ͷ��","equip3")
	AddMenuItem("�·�","equip4")
	AddMenuItem("����","equip5")
	AddMenuItem("Ь��","equip6")
	AddMenuItem("����","equip8")
	AddMenuItem("����","equip9")

elseif(answer=="vlist")then	
	local level= LuaQuery("level")
	LuaSay("��ʾ:�����ƽ���ף�ͯ�����ۣ�������������ѡ�������Ҫһ�������ѵġ�")
	if(level>20)then
	LuaSay("��ʾ:ֻ�ṩ�󶨷���,һ���󶨲��ɽ��,��װ����@25��@8��Ʊ.@0��ɫװ�����ܰ�")
	end
	LuaSay("��ʾ:һ���󶨲��ɽ��,�󶨺�װ����NPC���ռ�ֵ����Ϊԭ����1%.")
	if(LuaQueryTask("ebintrok")<99)then
	AddMenuItem("����������?","")
	AddMenuItem("û��","ebintrno")
	AddMenuItem("�ǵ�,��������","ebintrok")
	end
	elseif(answer=="ebintrno")then
	LuaSay("��ʾ:û�������Ҳ����ṩ��װ������!")
	elseif(answer=="ebintrok")then
	LuaSetTask("ebintrok",99)
	LuaSay("��ʾ:����,�����ڶ��㿪��װ���󶨷���,�����������󶨲��뽻�׵�װ��,���ǲ��ṩ������!")
	UpdateMenu()

elseif(answer=="equip1" or answer=="equip2" or answer=="equip3" or answer=="equip4"
		or answer=="equip5" or answer=="equip6" or answer=="equip8" or answer=="equip9") then
	local e_pos
	if(answer=="equip1")then	e_pos=1		--Ϊ�ظ����ú������,����һ��,�ٷ�һ��װ��λ����
	elseif(answer=="equip2")then	e_pos=2
	elseif(answer=="equip3")then	e_pos=3
	elseif(answer=="equip4")then	e_pos=4
	elseif(answer=="equip5")then	e_pos=5
	elseif(answer=="equip6")then	e_pos=6
	elseif(answer=="equip8")then	e_pos=8
	elseif(answer=="equip9")then	e_pos=9
	end
	local h=LuaQueryEquipStone(e_pos)
	local color="@1"
	if(EquipInfo(e_pos)~="")then
		if(h==1)then	color="@7"
		elseif(h==2)then	color="@5"
		elseif(h==3)then	color="@3"
		end	
		if(h>0)then
			LuaSay("ֻ�ṩ�󶨷���,@2һ���󶨲��ɽ��,�󶨺��ֵ����Ϊԭ����1%@0,����@25��@8��Ʊ.@0��ɫװ�����ܰ�")
			AddMenuItem("ȷ��Ҫ��"..color..EquipInfo(e_pos).."@0��?","")--����:m/h
			AddMenuItem("��������","no")
			AddMenuItem("@1ȷ��,��Ҫ��","eb"..e_pos.."")
		else
			LuaSay("��ʾ:��װ�����ܰ�")
		end
	else
		LuaSay("��ʾ:��װ��λ��û���κ�װ��")
	end
elseif(answer=="eb1" or answer=="eb2" or answer=="eb3" or answer=="eb4"
		or answer=="eb5" or answer=="eb6" or answer=="eb8" or answer=="eb9") then
	local e_pos
	if(answer=="eb1")then		e_pos=1
	elseif(answer=="eb2")then	e_pos=2
	elseif(answer=="eb3")then	e_pos=3
	elseif(answer=="eb4")then	e_pos=4
	elseif(answer=="eb5")then	e_pos=5
	elseif(answer=="eb6")then	e_pos=6
	elseif(answer=="eb8")then	e_pos=8
	elseif(answer=="eb9")then	e_pos=9
	end
	if(EquipInfo(e_pos)~="")then--���ǵ����ж���,������;�б�
		if(LuaQueryEquipStone(e_pos)>0)then
			if(LuaItemStatusNormalCount("o_gold2y")>=5)then
				local be=LuaBindEquip(e_pos)
				if(be==1)then
				LuaSay("�󶨳ɹ�!����@8��Ʊ@25��")
				DelItem("o_gold2y",5)
				LuaLogRecord("��װ��","o_gold2y","Ԫ��","����",50)
				elseif(be==2)then
				LuaSay("��װ�����а�����,�����ٰ�")
				else
				LuaSay("��װ�����ܰ�����")
				end
			else	LuaSay("��ʾ:��Ʒ����,��װ��������@8��Ʊ@25��")
			end
		else
		LuaSay("��ʾ:��ɫװ�����ܰ�")
		end	
	else
	LuaSay("��ʾ:��װ��λ��û���κ�װ��")
	end

elseif(answer=="TCleanMagic")then        ---------��ֵϴװ��
	local level= LuaQuery("level")
	LuaSay("��ʾ:������Ҫ��ϴ���Ե�װ�������,ѡ��˵��Ϳ��Խ������Ե���ϴ��,��ϴ��@3����ȫ�����Ժ���Ƕ����,������Ӧ������")
	LuaSay("��ʾ:ϴװ����Ҫ����һ���������ĵ��ߡ�")
	AddMenuItem("��ѡ��Ҫϴ���Ե�װ��","")
	if(level>20)then
	AddMenuItem("@5�鿴��Ŀ��˵��","vlist1")
	end
	AddMenuItem("����","equip11")
	AddMenuItem("����","equip21")
	AddMenuItem("ͷ��","equip31")
	AddMenuItem("�·�","equip41")
	AddMenuItem("����","equip51")
	AddMenuItem("Ь��","equip61")
	AddMenuItem("����","equip81")
	AddMenuItem("����","equip91")

elseif(answer=="vlist1")then
	LuaSay("�����Ǽ�Ŀ��,��ƽ����,�������,�����ѡ�")
	LuaSay("@7��װ@2[1/1]@0:ϴ������@25��@9ͨ��")
	LuaSay("@5��װ@2[1/2]@0:ϴ������@22��@8��Ʊ")
	LuaSay("@5��װ@2[2/2]@0:ϴ������@24��@8��Ʊ")
	LuaSay("@3��װ@2[1/3]@0:ϴ������@21��@7��ɴȯ")
	LuaSay("@3��װ@2[2/3]@0:ϴ������@22��@7��ɴȯ")
	LuaSay("@3��װ@2[3/3]@0:ϴ������@24��@7��ɴȯ")
	if(LuaQueryTask("cmintrok")<99)then
	AddMenuItem("����������?","")
	AddMenuItem("û��","ceintrono")
	AddMenuItem("�ǵ�,��������","ceintrook")
	end
	elseif(answer=="ceintrono")then
	LuaSay("û�������Ҳ����ṩ��ϴװ�����Է���,���������ʿͷ�����Ǹ�,�ͷ��ͱ�����.")
	elseif(answer=="ceintrook")then
	LuaSetTask("cmintrok",99)
	LuaSay("����,�����ڶ�����ϴװ�����Է���,�����ȥ������Ҫ��װ������������������.")
	UpdateMenu()


elseif(answer=="equip11" or answer=="equip21" or answer=="equip31" or answer=="equip41"
		or answer=="equip51" or answer=="equip61" or answer=="equip81" or answer=="equip91") then
	local e_pos
	if(answer=="equip11")then	e_pos=1		--Ϊ�ظ����ú������,����һ��,�ٷ�һ��װ��λ����
	elseif(answer=="equip21")then	e_pos=2
	elseif(answer=="equip31")then	e_pos=3
	elseif(answer=="equip41")then	e_pos=4
	elseif(answer=="equip51")then	e_pos=5
	elseif(answer=="equip61")then	e_pos=6
	elseif(answer=="equip81")then	e_pos=8
	elseif(answer=="equip91")then	e_pos=9
	end
	if(EquipInfo(e_pos)~="")then
	local m=LuaQueryEquipMagic(e_pos)
	local h=LuaQueryEquipStone(e_pos)
	local color
	local need
	local needs
		if(m==1 and h==1)then
		color="@7"	need=5	needs="@9ͨ��@0"	--5Ԫ��
		elseif(m==1 and h==2)then
		color="@5"	need=2	needs="@8��Ʊ@0"	--20Ԫ��
		elseif(m==2 and h==2)then
		color="@5"	need=4	needs="@8��Ʊ@0"	--40Ԫ��
		elseif(m==1 and h==3)then
		color="@3"	need=1	needs="@7��ɴȯ@0"	--100Ԫ��
		elseif(m==2 and h==3)then
		color="@3"	need=2	needs="@7��ɴȯ@0"	--200Ԫ��
		elseif(m==3 and h==3)then
		color="@3"	need=4	needs="@7��ɴȯ@0"	--400Ԫ��
		else
			need=0
		end
		if(need~=0)then
		LuaSay(""..color..EquipInfo(e_pos)..":["..m.."/"..h.."].@0��ϴ������@2"..need.."��"..needs..".")
		AddMenuItem("ȷ��Ҫϴ"..color..EquipInfo(e_pos)..":["..m.."/"..h.."]@0��?","")--����:m/h
		AddMenuItem("��������","no")
		AddMenuItem("ȷ����Ҫ��ϴ","ecm"..e_pos.."")
		else
		LuaSay("��ʾ:��װ������Ҫ��ϴ")
		end

	else
	LuaSay("��ʾ:��װ��λ��û���κ�װ��")
	end
elseif(answer=="ecm1" or answer=="ecm2" or answer=="ecm3" or answer=="ecm4"
		or answer=="ecm5" or answer=="ecm6" or answer=="ecm8" or answer=="ecm9") then
	local e_pos
	if(answer=="ecm1")then		e_pos=1
	elseif(answer=="ecm2")then	e_pos=2
	elseif(answer=="ecm3")then	e_pos=3
	elseif(answer=="ecm4")then	e_pos=4
	elseif(answer=="ecm5")then	e_pos=5
	elseif(answer=="ecm6")then	e_pos=6
	elseif(answer=="ecm8")then	e_pos=8
	elseif(answer=="ecm9")then	e_pos=9
	end
	if(EquipInfo(e_pos)~="")then--���ǵ����ж���,������;�б�
		local m=LuaQueryEquipMagic(e_pos)
		if(m==0)then
		LuaSay("��ʾ:��װ����û�п���ϴ������")
		else		
			local h=LuaQueryEquipStone(e_pos)
			if(h==1)then
				if(m==1)then
					if(LuaItemStatusNormalCount("o_gold1y")>=5)then
					if(LuaCleanMagic(e_pos)==0)then--1/1:5
					LuaSay("��ϴ���Գɹ�")
					DelItem("o_gold1y",5)
					LuaLogRecord("��ϴ����","o_gold1y","Ԫ��","����",5)
					end
					else	LuaSay("��ʾ:��Ʒ����,�밴��Ŀ��׼����Ʒ")
					end
				else
				LuaSay("��ʾ:��װ������Ҫ��ϴ")
				end
			elseif(h==2)then
				if(m==1)then
					if(LuaItemStatusNormalCount("o_gold2y")>=2)then
					if(LuaCleanMagic(e_pos)==0)then--1/2:20
					LuaSay("��ϴ���Գɹ�")
					DelItem("o_gold2y",2)
					LuaLogRecord("��ϴ����","o_gold2y","Ԫ��","����",20)
					end
					else	LuaSay("��ʾ:��Ʒ����,�밴��Ŀ��׼����Ʒ")
					end
				elseif(m==2)then
					if(LuaItemStatusNormalCount("o_gold2y")>=4)then
					if(LuaCleanMagic(e_pos)==0)then--2/2:40
					LuaSay("��ϴ���Գɹ�")
					DelItem("o_gold2y",4)
					LuaLogRecord("��ϴ����","o_gold2y","Ԫ��","����",40)
					end
					else	LuaSay("��ʾ:��Ʒ����,�밴��Ŀ��׼����Ʒ")
					end
				else
				LuaSay("��ʾ:��װ������Ҫ��ϴ")
				end
			elseif(h==3)then
				if(m==1)then
					if(LuaItemStatusNormalCount("o_zhaiquan1y")>=1)then
					if(LuaCleanMagic(e_pos)==0)then--1/3:100
					DelItem("o_zhaiquan1y",1)
					LuaSay("��ϴ���Գɹ�")
					LuaLogRecord("��ϴ����","o_zhaiquan1y","Ԫ��","����",100)
					end
					else	LuaSay("��ʾ:��Ʒ����,�밴��Ŀ��׼����Ʒ")
					end
				elseif(m==2)then
					if(LuaItemStatusNormalCount("o_zhaiquan1y")>=2)then
					if(LuaCleanMagic(e_pos)==0)then--2/3:200
					DelItem("o_zhaiquan1y",2)
					LuaSay("��ϴ���Գɹ�")
					LuaLogRecord("��ϴ����","o_zhaiquan1y","Ԫ��","����",200)
					end
					else	LuaSay("��ʾ:��Ʒ����,�밴��Ŀ��׼����Ʒ")
					end
				elseif(m==3)then
					if(LuaItemStatusNormalCount("o_zhaiquan1y")>=4)then
					if(LuaCleanMagic(e_pos)==0)then--3/3:400
					DelItem("o_zhaiquan1y",4)
					LuaSay("��ϴ���Գɹ�")
					LuaLogRecord("��ϴ����","o_zhaiquan1y","Ԫ��","����",400)
					end
					else	LuaSay("��ʾ:��Ʒ����,�밴��Ŀ��׼����Ʒ")
					end
				else
				LuaSay("��ʾ:��װ������Ҫ��ϴ")
				end
			else		
				LuaSay("��ʾ:��װ������Ҫ��ϴ")
			end
		end
	else
	LuaSay("��ʾ:��װ��λ��û���κ�װ��")
	end


elseif(answer=="Tbaitan") then
	local Tbaitan=LuaQueryTask("Tbaitan")
	if(Tbaitan==0)then
		if(LuaQueryStr("MobieType") ~= "S20")then
			LuaSay("�������ˣ�����˵�Ȼ�����������򿪱����������Ʒ@22��@0����@2���6��̯@0��@2�����ۼ�@0���ܰ�̯�ˡ�")
			LuaSay("�������ˣ��κεط������԰�̯����̯ʱ�û�����ȥ���κ����飬��̯����ͷ�����и���̯���֡��㻹Ҫѧ��@2��̯@0��")
			LuaSay("�������ˣ���@2�����ڵİ�̯����@0�����ѡ���Ѿ���̯����Ʒ��@2�ٴε��@0@2����ջ�@0�Ϳ����ˡ��򵥰�@!")
		else
			LuaSay("�������ˣ�ȷ�����ٰ�3�򿪱�����������ƶ�ѡ����Ʒ��@2��ȷ��@0��@2����̯@0��@2�����ۼ�@0���ܰ�̯�ˡ�")
			LuaSay("�������ˣ��κεط������԰�̯����̯ʱ�û�����ȥ���κ����飬��̯����ͷ�����и���̯���֡��㻹Ҫѧ��@2��̯@0��")
			LuaSay("�������ˣ���@2�����ڵİ�̯����@0��������ƶ�ѡ���Ѿ���̯����Ʒ��@2��ȷ��@0��@2���ջ�@0�Ϳ����ˡ��򵥰�@!")
		end
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","Tbaitanjl")
	elseif(Tbaitan==99)then
		if(LuaQueryStr("MobieType") ~= "S20")then
			LuaSay("�������ˣ�����˵�Ȼ�����������򿪱����������Ʒ@22��@0����@2���6��̯@0��@2�����ۼ�@0���ܰ�̯�ˡ�")
			LuaSay("�������ˣ��κεط������԰�̯����̯ʱ�û�����ȥ���κ����飬��̯����ͷ�����и���̯���֡��㻹Ҫѧ��@2��̯@0��")
			LuaSay("�������ˣ���@2�����ڵİ�̯����@0�����ѡ���Ѿ���̯����Ʒ��@2�ٴε��@0@2����ջ�@0�Ϳ����ˡ��򵥰�@!")
		else
			LuaSay("�������ˣ�ȷ�����ٰ�3�򿪱�����������ƶ�ѡ����Ʒ��@2��ȷ��@0��@2����̯@0��@2�����ۼ�@0���ܰ�̯�ˡ�")
			LuaSay("�������ˣ���@2�����ڵİ�̯����@0��������ƶ�ѡ���Ѿ���̯����Ʒ��@2��ȷ��@0��@2���ջ�@0������@2��̯@0@!")
			LuaSay("��ʾ�������������")
		end	
	end
elseif(answer=="Tbaitanjl")then
		local Tbaitan=LuaQueryTask("Tbaitan")
		if(Tbaitan==0)then
		LuaAddJx("combat_exp",41000,"Tbaitan")
		LuaAddAchievementSchedule("Task_num",1)
		LuaSetTask("Tbaitan",99)	
		UpdateMenu()
		end

elseif(answer=="Tcoc")then---------------------�̼���3 Tcoc===5
	if(LuaQueryTask("Tcoc")==5)then
	LuaSay("��������:ƽʱ����Ǯׯ�Ĵ���չ�,�齨�̻���˫���޳�.")
	LuaSetTask("Tcoc",6)
	LuaSetTask("T955",6)
		AddLog("�̼��򱳡�ÿ�ա�",955)
		if(LuaQuery("level")>=25)then
		LuaGive("coin",700,"Tcoc")
		else
		LuaGive("coin",400,"Tcoc")
		LuaGive("o_drug_hp4",2,"Tcoc")
		end
	end
	UpdateMenu()

elseif(answer=="T265A") then                       -----���ٽ��� 
                 if(LuaQueryTask("T265A") ==0) then
    			LuaSay("�������ˣ�������������֮���ϣ��в���С�ӣ�����200ͭ�����������������߰�@!")
			LuaSetTask("T265A",99)
			LuaGive("coin",200,"T265A")
			UpdateMenu()
			UpdateNPCMenu("xiean")
		end

elseif(answer=="Tlvdep") then
	AddMenuItem("��ѡ��","")
	AddMenuItem("˵��","Tlvdepintro")
	AddMenuItem("����װ���ȼ�����","Tlvdepyes")
	elseif(answer=="Tlvdepintro") then
	LuaSay("ÿ�ο��Խ���װ���ȼ�����1��,ÿ�κķ�һ������Ʊ,�ķ�����ԭ�ȼ�������Ҫ�����ĵȼ��Ĳ�.")
	LuaSay("��ԭ�ȼ�60,��1�κķ�1����Ʊ,��2�κķ�2��...ͬһװ��Ŀǰ��ཱུ20��")
	elseif(answer=="Tlvdepyes") then
	LuaItemLevelDep()



	-----------------------------------------
elseif(answer=="T220")then
	if(LuaQueryTask("T220")==0)then
		if(LuaQueryStrTask("220Taskday")~=GetCurrentDay()) then
		      	LuaSetTask("220dotime",0)
		end
		if(LuaItemStatusNormalCount("o_mission018")>=1)then
			if(LuaQueryTask("220dotime")<10) then
				LuaSay(""..LuaQueryStr("name").."����磬��������@3�ƾɹŶ�@0һ������֪����ʲô�ð�")
				LuaSay("�������ˣ�������Ȿ�����ã�������Ū���ѣ��⼸����˵���ĺ��ǵ������������ռ��ⶫ��������Թ�ȥ������")
				LuaSay("�������ˣ��������˿��Ǻ��ˣ�û׼��һ���˸���100W�أ�")
				LuaSetTask("T220",1)
				AddLog("�Ŷ������ء�",220)
				UpdateMenu()
			else
				LuaSay("��ʾ����֪�����Ǹ���ģ�������������������������Щʲô��")
				LuaDelTask("bao_D")
				UpdateMenu()
			end
		else
			LuaSay("�������ˣ��۸�һ��NPC������ȥ����û���ƾɹŶ�����")
		end
		elseif(LuaQueryTask("T220")==1)then
			LuaSay("�������ˣ���������������ǧ������ȥ���ĺ��ǵ�������������ȥ��������Ҳ�����Щ��������Ȥ��")
		end


--��ڽ�ɽ
elseif(answer=="T385")then
	if(TeamCount()>=2)then
		if(LuaQueryTask("T385")==1)then
			if(TeamQueryTask("T385")>=1)then
				if(LuaQueryTask("TfindNPC_6")==1)then
					LuaSay("�������ˣ��ܺã�лл����Ҵ���@2��ɽ����[�Ͼ�]@0�����Ҽ�ʱ���˽⵽��ǰ���������")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_6",98)
					DelItem("o_mission417",1)
					UpdateMenu()
				elseif(LuaQueryTask("TfindNPC_6")==2)then
					LuaSay("�������ˣ��ܺã�лл����Ҵ���@2��ɽ����[�¾�]@0�����Ҽ�ʱ���˽⵽��ǰ���������")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_6",98)
					DelItem("o_mission418",1)
					UpdateMenu()
				end
			else
				LuaSay("�������ˣ���Ķ��ѻ�û�������ۣ��Ͽ�֪ͨ��������Ŷ")
			end
		elseif(LuaQueryTask("T385")==98)then
			LuaSay("�������ˣ����Ѿ���һ��Ľ�ɽ�����͵����ҵ����ϣ���ȥ���������ȡ�����ɡ�")

		end

	else
		LuaSay("��ʾ����������Ҫ��Ӳ��ܽ�����һ��")	
	end

elseif(answer=="Tsnpc_20")then
	if(LuaQueryTask("Tsnpc_20")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸�����ż�����������߶����Ϊ���ҹ��״���")
		LuaSay("�������ˣ��ҿ�����˵")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_20",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_20")==2)then
		LuaSay("�������ˣ����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_20")then
	if(LuaQueryTask("Tenpc_20")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҹ���������һЩ���ߣ������Ҫ����")
		LuaSay("�������ˣ����ǹ��Ҵ����ḻ�����칻�õġ�")
		LuaSetTask("Tenpc_20",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_20")==2)then
		LuaSay("�������ˣ���ȥ������������Ͱ�")
	end	

end
LuaSendMenu()
return 1
end
