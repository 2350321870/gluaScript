NPCINFO = { 
serial="100" ,
base_name="mother",
icon=2524,
NpcMove=2559,
name="����" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="��Щ���޷�˵�����ĺã�ȴ�����������",
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
	local day=GetCurrentDay()
	AddTopSayMenuItem("@7�����б�","")
	AddTopSayMenuItem("@5�����կ","jrbpzz")
	AddTopSayMenuItem("@5��Ѫ�ĵ���","Ac13")
	havetask1=1

if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(������havetask0=1)
	havetask=0
end
------------------------------------------------
if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==4) then
	AddTopSayMenuItem("����","liaotian","4")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("����","liaotian","0")
end

return 1

---------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("������PK���ҾͰ�PK!") 	
elseif(answer=="jrbpzz") then
	local pm=LuaQuery("partyid")+8	
	ChangeMap("lu_partymap"..pm)	
elseif(answer=="Ac13")then
		if(LuaQueryTask("Ac13")==99)then
			if(GetCurrentDay()==LuaQueryStrTask("fllqsj"))then
			LuaSay("��������ȡ,��������ս������!")
			else
			if(LuaQueryRank()>=1) then
				local a = GetUserPartyOffer() - LuaQueryTask("Ac13_bg") 
				if(a~=0)then
					LuaSay("�����ϴεİ�ս�й����"..a.."�ﹱ��ϵͳ��������"..a.."��ﹱ��ɱ��Խ�࣬��ðﹱԽ��Ŷ@!")
					local rd=LuaRandom(100)
					if(rd==1)then
						LuaGive("o_present045",1)
						LuaAddYB(1,200)
					elseif(rd<3)then
						LuaGive("o_present032",1)
						LuaAddYB(1,100)
					elseif(rd<10)then
						LuaGive("o_present030",1)
						LuaAddYB(1,50)
					elseif(rd<40)then
						LuaGive("o_present028",1)
						LuaAddYB(1,25)
					elseif(rd<80)then
						LuaGive("o_present026",1)
						LuaAddYB(1,10)
					else
						LuaGive("o_present025",1)
						LuaAddYB(1,5)
					end
					LuaAddPartyMoney(0,a)
					LuaSetTask("fllqsj",GetCurrentDay())
					LuaSetTask("Ac13_bg",GetUserPartyOffer())
				else
					LuaSay("���޻��֣����ܵõ��κν���Ŷ")
				end
			else
				LuaSay("����δ�����κΰ��ɣ�������ȡ��ս��ͷ�Ľ���Ŷ���Ͽ�ȥ���������Լ��İ��ɰ�@!")
			end
			end
		else
			LuaSay("��ڼ�����δ�μӹ���ս��ÿ��22�㵽23�㣬���ǲ�����ɢ")
		end
elseif(answer=="Ac14")then
	if(LuaQueryTask("Ac14")==99)then
		local a = LuaQuery("gj_gx")
		LuaSay("ͳһ����ʿ����ӭ�����μӴ�˵�лҳ������Ĺ�սɱ�˻���������Ī��")
		local b = a - LuaQueryTask("Ac14_gz")
		if(b~=0)then
			LuaSay("�����ϴεĹ�ս�й�ȡ��"..b.."����ͷ�����Ի��"..b.."��ң������Բ��ԣ�����Ҫɱ�Σ�")
			LuaAddYB(2,b)
			LuaSetTask("Ac14_gz",a)
		else
			LuaSay("�����ϴι�ս��δ��ɱ�κ��ˣ����ܵõ�����Ŷ���Ͽ�ȥ����ɱ�а�")
		end
	else
		LuaSay("��ڼ�����δ�μӹ���ս��ÿ��20�㵽21�㣬���ǲ�����ɢ")
	end


--DayCostYB		--����Ԫ������
--BeforeDayCostYB	--����Ԫ������
		
elseif(answer=="Ac15")then
	if(GetCurrentDay()~=LuaQueryStrTask("Ac15_day")) then
		LuaSetTask("Ac15",0)
	end
	local a = LuaQuery("DayCostYB")
	LuaSay("�����ǣ����ҵĳǱ�������Ҫ�Ķ����ɣ�ֻҪ�����Ҿ��͡��������2��Ϳ�����ȡ�����������ۼ�ֻ���㵱������ġ�")
	LuaSay("�������Ѿ�������"..a.."Ԫ�������ѵ�Խ�࣬�õ���Խ��Ŷ@!")
	if(LuaQueryTask("Ac15")==0)then
		if(LuaQuery("BeforeDayCostYB")>=5000)then
			LuaSay("��ϲ�����������������Ѿ��ﵽ5000Ԫ���������õ�ϵͳ���͵�ǿ��ʯ50�������˱���20�����ƽ���10����50���ƽ�װ��һ��")
			if(LuaFreeBag()>=11)then
				LuaGive("o_ybsc002j",50,"Ac15_5000")	--��ǿ��ʯ
				LuaGive("o_box002",20,"Ac15_5000")	--���˱���
				LuaGive("o_box005j",10,"Ac15_5000")	--�ƽ���
				if(LuaQueryStr("class")=="shen") then      --սʿ
					LuaGive("e_falchion153",1,3,"Newcountry")
					LuaGive("e_shield153",1,3,"Newcountry")
				elseif(LuaQueryStr("class")=="wu") then       --����
					LuaGive("e_sword153",1,3,"Newcountry")
					LuaGive("e_knife153",1,3,"Newcountry")
				elseif(LuaQueryStr("class")=="xian") then       --ıʿ
					LuaGive("e_book153",1,3,"Newcountry")
					LuaGive("e_pen153",1,3,"Newcountry")
				end
				LuaGive("e_head153",1,3,"Newcountry")		--��ս��
				LuaGive("e_clothes153",1,3,"Newcountry")	--��ս��
				LuaGive("e_pants153",1,3,"Newcountry")		--��ս����
				LuaGive("e_shoes153",1,3,"Newcountry")		--��սѥ	
				LuaGive("e_earring153",1,3,"Newcountry")	--��ս��׹
				LuaGive("e_necklace153",1,3,"Newcountry")	--��ս����
				LuaSay("���Ѿ���ȡ������5000Ԫ���Ľ��������վͲ�������ȡ�����������Ľ�����Ŷ@!")
				LuaSetTask("Ac15",99)
			else
				LuaSay("��ʾ����ı����ռ䲻��11������������������ȡŶ@!")
			end
		elseif(LuaQuery("BeforeDayCostYB")>=2000)then
			LuaSay("��ϲ�����������������Ѿ��ﵽ2000Ԫ���������õ�ϵͳ���͵�30��ǿ��ʯ��10�����˱��䡢5���ƽ���")
			LuaSay("�������Ѿ�����"..a.."Ԫ������������ѵ�5000Ԫ�����վ��ܵõ�ǿ��ʯ50�������˱���20�����ƽ���10����50���ƽ�װ��һ��")
			AddMenuItem("@7��������","")
			AddMenuItem("@1[�Ƽ�]@0@5��������","goon")
			AddMenuItem("@5������ȡ","Ac16_2000")
		elseif(LuaQuery("BeforeDayCostYB")>=1000)then
			LuaSay("��ϲ�����������������Ѿ��ﵽ1000Ԫ���������õ�ϵͳ����15��ǿ��ʯ��5�����˱��䡢2���ƽ���")
			LuaSay("�������Ѿ�����"..a.."Ԫ������������ѵ�2000Ԫ�����������ܵõ�ϵͳ���͵�30��ǿ��ʯ��10�����˱��䡢5���ƽ���")
			AddMenuItem("@7��������","")
			AddMenuItem("@1[�Ƽ�]@0@5��������","goon")
			AddMenuItem("@5������ȡ","Ac16_1000")
			
		elseif(LuaQuery("BeforeDayCostYB")>=500)then
			LuaSay("��ϲ�����������������Ѿ��ﵽ500Ԫ���������õ�ϵͳ����5��ǿ��ʯ��2�����˱��䡢1���ƽ���")
			LuaSay("�������Ѿ�����"..a.."Ԫ������������ѵ�1000Ԫ�������ս��õ�ϵͳ����15��ǿ��ʯ��5�����˱��䡢2���ƽ���")
			AddMenuItem("@7��������","")
			AddMenuItem("@1[�Ƽ�]@0@5��������","goon")
			AddMenuItem("@5������ȡ","Ac16_500")
			
		elseif(LuaQuery("BeforeDayCostYB")>=300)then
			LuaSay("��ϲ�����������������Ѿ��ﵽ300Ԫ���������õ�ϵͳ����3��ǿ��ʯ��1�����˱���")
			LuaSay("�������Ѿ�����"..a.."Ԫ������������ѵ�500Ԫ�����������õ�ϵͳ����5��ǿ��ʯ��2�����˱��䡢1���ƽ���")
			AddMenuItem("@7��������","")
			AddMenuItem("@1[�Ƽ�]@0@5��������","goon")
			AddMenuItem("@5������ȡ","Ac16_300")
			
		elseif(LuaQuery("BeforeDayCostYB")>=100)then
			LuaSay("��ϲ�����������������Ѿ��ﵽ100Ԫ���������õ�ϵͳ����1��ǿ��ʯ��1�����˱���")
			LuaSay("�������Ѿ�����"..a.."Ԫ������������ѵ�300Ԫ�����������õ�ϵͳ����3��ǿ��ʯ��1�����˱���")
			AddMenuItem("@7��������","")
			AddMenuItem("@1[�Ƽ�]@0@5��������","goon")
			AddMenuItem("@5������ȡ","Ac16_100")
			
		end
		LuaSetTask("Ac15_day",GetCurrentDay())
	else
		LuaSay("�������Ѿ�������ѽ�����Ŷ����ڼ�ÿ�춼��������ȡһ�Σ��������ͣ���׼������������")
	end

	elseif(answer=="Ac16_2000")then
		if(LuaFreeBag()>=3)then
			LuaGive("o_ybsc002j",30,"Ac15_2000")	--��ǿ��ʯ
			LuaGive("o_box002",10,"Ac15_2000")	--���˱���
			LuaGive("o_box005j",5,"Ac15_2000")	--�ƽ�
			LuaSay("���Ѿ���ȡ������2000Ԫ���Ľ��������վͲ�������ȡ�����������Ľ�����Ŷ@!")
			LuaSetTask("Ac15",99)
		else
			LuaSay("��ʾ����ı����ռ䲻��3������������������ȡŶ@!")
		end
	elseif(answer=="Ac16_1000")then
		if(LuaFreeBag()>=3)then
			LuaGive("o_ybsc002j",15,"Ac15_1000")	--��ǿ��ʯ
			LuaGive("o_box002",5,"Ac15_1000")	--���˱���
			LuaGive("o_box005j",2,"Ac15_1000")	--�ƽ�
			LuaSay("���Ѿ���ȡ������1000Ԫ���Ľ��������վͲ�������ȡ�����������Ľ�����Ŷ@!")
			LuaSetTask("Ac15",99)
		else
			LuaSay("��ʾ����ı����ռ䲻��3������������������ȡŶ@!")
		end
	elseif(answer=="Ac16_500")then
		if(LuaFreeBag()>=3)then
			LuaGive("o_ybsc002j",5,"Ac15_500")	--��ǿ��ʯ
			LuaGive("o_box002",2,"Ac15_500")	--���˱���
			LuaGive("o_box005j",1,"Ac15_500")	--�ƽ�
			LuaSay("���Ѿ���ȡ������500Ԫ���Ľ��������վͲ�������ȡ�����������Ľ�����Ŷ@!")
			LuaSetTask("Ac15",99)
		else
			LuaSay("��ʾ����ı����ռ䲻��3������������������ȡŶ@!")
		end
	elseif(answer=="Ac16_300")then
		if(LuaFreeBag()>=2)then
			LuaGive("o_ybsc002j",3,"Ac15_300")	--��ǿ��ʯ
			LuaGive("o_box002",1,"Ac15_300")	--���˱���
			LuaSay("���Ѿ���ȡ������300Ԫ���Ľ��������վͲ�������ȡ�����������Ľ�����Ŷ@!")
			LuaSetTask("Ac15",99)
		else
			LuaSay("��ʾ����ı����ռ䲻��2������������������ȡŶ@!")
		end

	elseif(answer=="Ac16_100")then
		if(LuaFreeBag()>=2)then
			LuaGive("o_ybsc002j",1,"Ac15_100")	--��ǿ��ʯ
			LuaGive("o_box002",1,"Ac15_100")	--���˱���
			LuaSay("���Ѿ���ȡ������100Ԫ���Ľ��������վͲ�������ȡ�����������Ľ�����Ŷ@!")
			LuaSetTask("Ac15",99)
		else
			LuaSay("��ʾ����ı����ռ䲻��2������������������ȡŶ@!")
		end
	elseif(answer=="goon")then
		LuaSay("����ѡ�������ǵģ����ѵ�Խ��õ���Խ��Ŷ@!")
elseif(answer=="Ac16")then
	LuaSay("�������գ����˱�����콵�����������쳣������������ϳ��ִ������˱��������Կ�ױ������Ӷᣬ��ֻ�������ɱ�־��л��ʻ�����˱��������Կ�ס�")
	if(LuaQueryStr("MobieType") ~= "S20")then
		LuaSay("����ȼ�����ҵȼ�Խ�������Խ�ߡ����˱����п��Կ������ֱ���.")
	else	
		LuaSay("����ȼ�����ҵȼ�Խ�������Խ�ߡ����˱����п��Կ������ֱ���,��֪������ȼ��Ƕ��٣���ȷ����ѡ�������ͼ��ѡ��鿴���ܿ�����ǰ��ͼ�й���ĵȼ���Ŷ@!")
	end
elseif(answer=="Ac17")then
	LuaSay("��ڼ���ÿ�տ��ڽ����ǳ�����NPC������ȡһ�ν���������ʧʧ������Ŷ��ÿ�ս���һ��Ŷ����Ʒ�У�2�ű����衢1�����ͽ���")	
	if(GetCurrentDay()~=LuaQueryStrTask("Ac17day")) then
		LuaSetTask("Ac17",0)
	end
	if(LuaQueryTask("Ac17")==0)then
		LuaSay("����������Ŀ�����������⣬ͷ�����ƣ������вƽ���֮�գ�")
		LuaGive("o_state005j",2,"Ac18")
		LuaGive("o_present020",1,"Ac18")
		LuaSetTask("Ac17",99)
		LuaSetTask("Ac17day",GetCurrentDay())
	end

elseif(answer=="Ac18")then
	LuaSay("��������˵����ͷ�����ƣ�ԭ����Ҫ������[���ͽ���]���˽���ȴ�����¼�Ʒ���ܿ���������Ʒ��С����������󵽶������ϣ��������У�")
	LuaSay("����������������ֻ����200���������͸���Ե�ˣ���ֻ��Ҫ����20Ԫ�����ܻ��һ��")
	AddMenuItem("@7����һ��@0@3����@0","")
	AddMenuItem("@1[�Ƽ�]@0@5���Ϲ���","Ac18_yes")
	AddMenuItem("�ݲ�����","")

	elseif(answer=="Ac18_yes")then
		if(LuaQueryMoney()>=20)then
			LuaGive("o_present020",1,"Ac18")
			LuaAddYB(1,-20)
		else
			LuaSay("������С�ӣ������ϵ�Ԫ��ľ��20��ѽ�����Ҳ����͸���")
		end



elseif(answer=="Ac19")then
	LuaSay("��ڼ�ɱ�ֿɻ�ù�����ڵ���20���ڵ����Զһ�1�����ͽ��ҡ����ͽ����ڽ����ǳ�����NPC�����һ������ҿ�������������ָ߼����ϣ�30������װ���ϳɾ��Լ����ָߵȼ�װ��Ŷ")
	AddMenuItem("@7�һ�@0@3���ͽ���@0","")
	AddMenuItem("@5���϶һ�","Ac19_yes")
	AddMenuItem("�ݲ��һ�","")
	elseif(answer=="Ac19_yes")then
		if(LuaItemCount("o_mission305")>=20)then
			DelItem("o_mission305",20)
			LuaGive("o_present020",1,"Ac19")
		else
			LuaSay("�����ϵ��ڵ����㣬���ܶһ�@3���ͽ���@0")
		end



end
LuaSendMenu()
return 1
end 

