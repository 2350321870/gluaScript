NPCINFO = {
serial= "182" ,
icon= 2545 ,
NpcMove=2545,
name= "����ʹ��" , 
iconaddr=1, 
butt="30|10|72", 
name_color ="CEFFCE" , 
lastsay="һֱ��ǰ�����߲������;",
LuaType=1,
}
function do_talk(answer)
local level= LuaQuery("level")
if(answer=="ask")then
	havetask =0
	local havetask0=0	--Ĭ��û��
	local havetask1=0	--��̾��
	local havetask2=0	--��ɫ�ʺ�
	--local havetask3=0	--��ɫ�˵�
	local havetask4=0
	
	AddTopSayMenuItem("@7ϲ��","")	
    if(LuaQueryStr("country_id")=="100" or true)then
		
		AddTopSayMenuItem("@4װ������","Bc_1")	
		AddTopSayMenuItem("[����]@3Ԫ�����","Bc_94")
		--AddTopSayMenuItem("@3��Ʒͭ��2","Bc_4")
	end

-----------------------------------���첿��-------------------------------	
	
if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(������havetask0=1)
	havetask=0
end

if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==4) then
	AddTopSayMenuItem("����","liaotian","4")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("�������ͻ����","liaotian","0")
end

return 1

---------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("ͳһonline�ڲ��� ��ӭ��λ����������� ����@2����@0��Ⱥ��@3����@0 QQ��2350321870") 
elseif(answer=="1111")then
	LuaSay("���޺�������")
	
	
---------------------�˵���������-------------------------------------


elseif(answer=="Bc_1")then
	if(level>=15)then
		if(LuaQueryTask("Bc_1")==0 or true)then
			if(LuaFreeBag()>=12)then
				if(level>=50)then
					LuaGive("e_falchion153",1,3,"Bc_1")
					LuaGive("e_shield153",1,3,"Bc_1")
					LuaGive("e_sword153",1,3,"Bc_1")
					LuaGive("e_knife153",1,3,"Bc_1")
					LuaGive("e_book153",1,3,"Bc_1")
					LuaGive("e_pen153",1,3,"Bc_1")
					LuaGive("e_head153",1,3,"Bc_1")		--��ս��
					LuaGive("e_clothes153",1,3,"Bc_1")	--��ս��
					LuaGive("e_pants153",1,3,"Bc_1")		--��ս����
					LuaGive("e_shoes153",1,3,"Bc_1")		--��սѥ	
					LuaGive("e_earring153",1,3,"Bc_1")	--��ս��׹
					LuaGive("e_necklace153",1,3,"Bc_1")
				elseif(level>=40)then
					
					LuaGive("e_falchion151",1,2,"Bc_1")
					LuaGive("e_shield151",1,2,"Bc_1")
					LuaGive("e_sword151",1,2,"Bc_1")
					LuaGive("e_knife151",1,2,"Bc_1")
					LuaGive("e_book151",1,2,"Bc_1")
					LuaGive("e_pen151",1,2,"Bc_1")
					LuaGive("e_head151",1,2,"Bc_1")		--ǿ�߹�
					LuaGive("e_clothes151",1,2,"Bc_1")	--ǿ����
					LuaGive("e_pants151",1,2,"Bc_1")		--ǿ�߻���
					LuaGive("e_shoes151",1,2,"Bc_1")		--ǿ��ѥ	
					LuaGive("e_earring151",1,2,"Bc_1")	--ǿ�߶�׹
					LuaGive("e_necklace151",1,2,"Bc_1")
				else
					
					LuaGive("e_falchion166",1,2,"Bc_1")
					LuaGive("e_shield166",1,2,"Bc_1")
					LuaGive("e_sword166",1,2,"Bc_1")
					LuaGive("e_knife166",1,2,"Bc_1")
					
					LuaGive("e_book166",1,2,"Bc_1")
					LuaGive("e_pen166",1,2,"Bc_1")
					
					LuaGive("e_head166",1,2,"Bc_1")		--ǿ�߹�
					LuaGive("e_clothes166",1,2,"Bc_1")	--ǿ����
					LuaGive("e_pants166",1,2,"Bc_1")		--ǿ�߻���
					LuaGive("e_shoes166",1,2,"Bc_1")		--ǿ��ѥ	
					LuaGive("e_earring166",1,2,"Bc_1")	--ǿ�߶�׹
					LuaGive("e_necklace166",1,2,"Bc_1")
				end
				LuaSetTask("Bc_1",99)
				if(LuaQueryTask("Bc_1")==99 and  LuaQueryTask("Bc_94")==99 and  LuaQueryTask("Bc_4")==99 and  LuaQueryTask("Bc_5")==99)then
					LuaSetTask("Customer",99)
					UpdateMenu()
				end
			else
				LuaSay("��ʾ����ı����ռ䲻��11������������������ȡŶ@!")
			end
		else
			LuaSay("���Ĳ����Ѿ���ȡ���ˣ����������Ĳ����ʾ�����Ǹ��")
		end
	else
		LuaSay("��ĵȼ���û�е�@315��@0Ŷ����������")
	end
	

elseif(answer=="Bc_94")then
	if(LuaQuery("level")>=15)then
		if(LuaQueryTask("Bc_94")==0)then
			LuaSay("��ӭ�μ�ͳһ�ڲ� �������@2���1500@0 �� @2Ԫ��1500��@0")
			LuaAddYB(1,1500)
			LuaSay("���ϵͳ����@2Ԫ��1500@0")
			LuaAddYB(2,1500)
			LuaSay("���ϵͳ����@2���1500@0")
            --LuaGive("coin",1000000,"Bc_94")
            --LuaAddJx("combat_exp",50000000,"Bc_94")
			LuaSetTask("Bc_94",99)
			if(LuaQueryTask("Bc_94")==99)then
				LuaSetTask("Customer",99)
				UpdateMenu()
			end
		else
			LuaSay("���Ľ����Ѿ���ȡ����ӭ��æ�ڲ�ͷ�������Ŷ��")
		end
	else
		LuaSay("��ĵȼ���û�е�@315��@0Ŷ����������")
	end

	
	
 --[[elseif(answer=="Bc_3")then
	if(LuaCheckCreateTime("2012-5-21-20-30-0")>0)then
		if(LuaQueryTask("Bc_3")==0)then
			LuaGive("coin",10000,"Bc_3")
			LuaSetTask("Bc_3",99)
		else
			LuaSay("���Ĳ����Ѿ���ȡ���ˣ����������Ĳ����ʾ�����Ǹ��")
		end
	else
		LuaSay("��ĵȼ���û�е�@315��@0Ŷ����������")
	end]]

	
	
elseif(answer=="Bc_4")then
LuaSay("�õ�������Ʒ�������а����ѹ�ͭ��1Wͭ��")
	if(LuaQuery("level")>=20)then
		if(LuaFreeBag()>=4)then
			LuaSay("�õ�������Ʒ�������а����ѹ�ͭ��1Wͭ��")
			LuaGive("o_state061j",3,"Bc_4")
			LuaGive("o_gendery",3,"Bc_4")
			if(level>=50)then
				LuaGive("o_present031",10,"Bc_4")
				LuaGive("o_ybsc002j",50,"Bc_4")
				LuaGive("coin",400000,"Bc_4")
				LuaGive("coin",10000,"Bc_4")
			elseif(level>=40)then
				LuaGive("o_present031",6,"Bc_4")
				LuaGive("o_ybsc002j",40,"Bc_4")
				LuaGive("coin",300000,"Bc_4")
				LuaGive("coin",10000,"Bc_4")
			elseif(level>=30)then
				LuaGive("o_present031",4,"Bc_4")
				LuaGive("o_ybsc002j",20,"Bc_4")
				LuaGive("coin",200000,"Bc_4")
				LuaGive("coin",10000,"Bc_4")
			end
				LuaSetTask("Bc_4",99)
			if(LuaQueryTask("Bc_4")==99)then
				LuaSetTask("Customer",99)
				UpdateMenu()
			end
		else
			LuaSay("��ʾ����ı����ռ䲻��4������������������ȡŶ@!")
		end
	else
			LuaSay("��ĵȼ���û�е�@320��@0Ŷ���������ɣ�")
	end
end
LuaSendMenu()
return 1
end 