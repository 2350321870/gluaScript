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
if(answer=="ask")then
	havetask =0
	local havetask0=0	--Ĭ��û��
	local havetask1=0	--��̾��
	local havetask2=0	--��ɫ�ʺ�
	--local havetask3=0	--��ɫ�˵�
	local havetask4=0
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7ϲ��","")
    if(LuaQuery("level")>=1)then
		
		--AddTopSayMenuItem("@4װ������","Bc_1")
		AddTopSayMenuItem("[����]@3Ԫ�����","Bc_2578")
		AddTopSayMenuItem("[����]@3��Ʒͭ��[lv20]","Bc_4")
	    AddTopSayMenuItem("[�齱]@3��ԯ������[lv20]","wycj")
		AddTopSayMenuItem("[����]@2�鿴����", "sysinfo BACK", "")
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


--[[elseif(answer=="Bc_1")then
	if(LuaCheckCreateTime("2012-5-21-20-30-0")>0)then
		if(LuaQueryTask("Bc_1")==0)then
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
				if(LuaQueryTask("Bc_1")==99 and  LuaQueryTask("Bc_2578")==99 and  LuaQueryTask("Bc_4")==99 and  LuaQueryTask("Bc_5")==99)then
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
		LuaSay("�˽�ɫ����2012��5��21��20��30��֮�󴴽��ģ�������ȡ�����")
	end]]
	
	
	
elseif(answer=="Bc_2578")then
local level= LuaQuery("level")
	if(level>=1)then
		if(LuaQueryTask("Bc_2578")==0)then			
			LuaAddYB(1,500)
			LuaSay("���@2Ԫ��500@0")
			LuaAddYB(2,500)
			LuaSay("���@2���500@0")
			--LuaGive("e_moyu001",5,"Bc_2578")
			--LuaAddJx("combat_exp",10000000000000,"Bc_2578")
			LuaSetTask("Bc_2578",99)
			if(LuaQueryTask("Bc_2578")==99)then
				LuaSetTask("Customer",99)
				UpdateMenu()
			end
		else
			LuaSay("���Ľ����Ѿ���ȡ����ӭ��æ�ڲ�ͷ�������Ŷ��")
		end
	else
		LuaSay("�˽�ɫ����2018��5��21��20��30��֮�󴴽��ģ�������ȡ�����")
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
		LuaSay("�˽�ɫ����2012��5��21��20��30��֮�󴴽��ģ�������ȡ�����")
	end]]
	
	
	
--[[elseif(answer=="Bc_4")then
	if(LuaQuery("level")>=30)then
		if(LuaQueryTask("Bc_4")==0)then
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
			LuaSay("���Ľ����Ѿ���ȡ����ӭ��æ�ڲ��@3��������@0Ŷ��")
		end
    else
		LuaSay("�˽�ɫ����2018��5��21��20��30��֮�󴴽��ģ�������ȡ�����")
	end]]
---------------------------------��Ʒͭ��-----------------------------------------------
elseif(answer=="Bc_4")then
	local level= LuaQuery("level")
	local taskbc=LuaQueryTask("Bc_4")
	if(level>=20)then
		if(LuaFreeBag()>=4)then
			LuaSay("20,30,40,50������ȡһ��,�õ�������Ʒ,ͭ��")
			if(level>=50 and taskbc<50)then
				LuaGive("o_state061j",3,"Bc_4")
				LuaGive("o_present031",10,"Bc_4")
				LuaGive("o_ybsc002j",50,"Bc_4")
				LuaGive("coin",400000,"Bc_4")
				LuaSetTask("Bc_4",50)
			elseif(level>=40 and taskbc<40)then
				LuaGive("o_state061j",3,"Bc_4")
				LuaGive("o_gendery",1,"Bc_4")
				LuaGive("o_present031",6,"Bc_4")
				LuaGive("o_ybsc002j",40,"Bc_4")
				LuaGive("coin",300000,"Bc_4")
				LuaSetTask("Bc_4",40)
			elseif(level>=30 and taskbc<30)then
				LuaGive("o_state061j",3,"Bc_4")
				LuaGive("o_present031",4,"Bc_4")
				LuaGive("o_ybsc002j",20,"Bc_4")
				LuaGive("coin",200000,"Bc_4")
				LuaSetTask("Bc_4",30)
			elseif(level>=20  and taskbc<20)then
				LuaGive("o_state061j",3,"Bc_4")
				LuaGive("o_present031",2,"Bc_4")
				LuaGive("o_ybsc002j",10,"Bc_4")
				LuaGive("coin",100000,"Bc_4")
				LuaSetTask("Bc_4",20)
			elseif(taskbc<50)then
				LuaSay("��ǰ�ȼ�������ȡ����")
			else
				LuaSay("����ȡ���н׶ν���")
				LuaSetTask("Bc_4",99)
				UpdateMenu()
			end
		else
			LuaSay("��ʾ����ı����ռ䲻��4������������������ȡŶ@!")
		end
	else
		LuaSay("��ĵȼ���û�е�@320��@0Ŷ���������ɣ�")
	end
	---------------------------------��ԯ�齱-----------------------------------------------
elseif(answer=="wycj")then
		if(LuaQuery("level")>=20)then
			LuaSay("�ʹ�ߣ�@3�齱�齱�����м��ʳ���ԯ�񽣣�@0")
			AddMenuItem("@7��ѡ��","")
			AddMenuItem("@3��Ҫ�齱[50Ԫ��]","wycj1")
			AddMenuItem("@2�齱�����","js")
		else
			LuaSay("�ʹ�ߣ�����̫��ǿ��,�ﵽ99��������ȡ��")
		end

elseif(answer=="js")then
LuaSay("��ʾ���и��ʳ��@2ǿ��ʯ@03�� @2����@03��3�� �͸������� �м��ʳ���������@3��ԯ��@0 �ڳ��ʱ��Ҫ����������Ӵ ")

elseif(answer=="wycj1")then
LuaSetTask("wycj",1)
if(LuaQueryTask("wycj")==1)then
	if(LuaQueryMoney()>=50) then
		LuaSay("�ʹ�ߣ�����50Ԫ��,ת�̿�ʼת�������ڴ��Ŵ󽱰�......")
		LuaSay("�ʹ�ߣ�ͣ......")
		LuaAddYB(1,-50)
		local r = LuaRandom(300)	
		--if(r>=200)then
			--LuaGive("e_horse089",1,5)
		--else
		--	LuaGive("e_xysj2",1,5)
		--end
            if(r==0)then
            	LuaGive("e_xysj",1,"wycj")                      
				LuaNotice("@2"..LuaQueryStr("name").."@0��@3��ԯ��齱@0�����Ʒ�����õ���@3��ԯ��1")
			elseif(r==1)then
				LuaGive("e_xysj2",1,5)
				LuaNotice("@2"..LuaQueryStr("name").."@0��@3��ԯ��齱@0�����Ʒ�����õ���@3��ԯ��2")
			elseif( r>=50 and r<90)then
				LuaGive("o_state070j",5,"wycj")--------ħ��3------------33  
				LuaGive("o_state001j",5,"wycj")--------˫����-----------2
			elseif( r>=90 and r<180)then
				LuaGive("o_state067j",5,"wycj")--------Ѫ��3------------24  
				LuaGive("o_state012j",5,"wycj")--------˫����-----------2 
			elseif( r>=180 and r<230)then
				LuaGive("o_box002",5,"wycj")-----------���˱���
			elseif( r>=230 and r<250)then
				 LuaGive("o_ybsc002j",3,"wycj")---------ǿ��ʯ-----------20
			elseif( r>=250 and r<270)then
				LuaGive("o_ybsc001j",3,"wycj")---------����-----------20
			else
				LuaSay("��ʾ����ɶҲû�鵽������������")	
				local level=LuaQuery("level")
    			local jingyan=level^2*250+level*5000	
				if(LuaQuery("level")<=80)then
					LuaAddJx("combat_exp",jingyan,"wycj")	
				end				
			end			
			--DelItem("o_mission252",6)
			--LuaSetTask("wycj",99)
	else
		LuaSay("�ʹ�ߣ���û���㹻��Ԫ���齱��")
	
    end

end

end
LuaSendMenu()
return 1
end 