NPCINFO = { 
serial="40" ,
base_name="simadaozi" ,
icon=2533,
NpcMove=2533,
name="˾�����" ,
iconaddr=1 ,
butt="10|10|63" ,
name_color="CEFFCE",
lastsay="ǩ��ծһ�·�5��",
LuaType=1,
} 
function do_talk(answer) 
if (answer=="ask") then 
		havetask =0 
		local level= LuaQuery("level")
		AddTopSayMenuItem("@7�����б�","")
		if(LuaQueryTask("T290") ==0 and level>=21)then
			AddTopSayMenuItem("���ӳ��������顿","T290")
			havetask =1
		end 
		if(LuaQueryTask("T291") ==0 and LuaQueryTask("T850") ==99)then
			AddTopSayMenuItem("˾��ı��������顿","T291")
			havetask =1
		end  
--		if(LuaQueryTask("T854")==0 and LuaQuery("level")>=20  and LuaQuery("level")<25) then
--			AddTopSayMenuItem("̰��֮�ˡ�ѭ����","T854")
--			havetask=1
--		end
--		if(LuaQueryTask("T855")==0 and level>=21) then
--			AddTopSayMenuItem("��Ǯ�ۿ������顿","T855")
---			havetask=1
--		end
		if((LuaQueryTask("Tsnpc_27")==1 or LuaQueryTask("Tsnpc_27")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2��վС��","Tsnpc_27")
			if(LuaQueryTask("Tsnpc_27")==1)then
				havetask2=1
			end
		end
		if((LuaQueryTask("Tenpc_27")==1 or LuaQueryTask("Tenpc_27")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_27")
			if(LuaQueryTask("Tenpc_27")==1)then
				havetask2=1
			end
		end
		if(LuaQueryTask("T851")==1 or LuaQueryTask("T851")==2 or LuaQueryTask("T851")==3 or LuaQueryTask("T851")==4) then
			AddTopSayMenuItem("@2ԩ�������顿","T851")
			if (LuaItemCount("o_mission362")>=1 or LuaQueryTask("T851")==1)then
			havetask =2
			end
		end
		if(LuaQueryTask("T404") == 2 or LuaQueryTask("T404") == 3)then
			AddTopSayMenuItem("@2��Ȩ���ա����顿","T404")
			if (LuaQueryTask("T404") == 2)then
			havetask =2
			end
		end
--		if(LuaQueryTask("T854") == 1)then
--			AddTopSayMenuItem("@2̰��֮�ˡ�ѭ����","T854")
--			if(LuaItemStatusNormalCount("o_material_48") >= 3 and LuaItemStatusNormalCount("o_material_39") >= 3 ) then
--			havetask =2
--			end
--		end
--		if(LuaQueryTask("T855") == 1)then
--			AddTopSayMenuItem("@2��Ǯ�ۿ������顿","T855")
--			if(LuaItemCount("coin")>=5000) then
--			havetask =2
--			end
--		end
		if(LuaQueryTask("T115")==1 and LuaQueryTask("T115A")==0) then
			AddTopSayMenuItem("@2������С����顿","T115A")
			havetask =2
		end
		if(LuaQueryTask("T290") ==1) then
			AddTopSayMenuItem("@2���ӳ��������顿@0","T290") 
		end
		
		if(LuaQueryTask("T291") ==1)then
			AddTopSayMenuItem("@2˾��ı��������顿","T291")
		end
		
		AddTopSayMenuItem("@3��ծ","Tguozhai")
		--if(QueryTitle("title")>0)then
			--AddTopSayMenuItem("@7����֮»��ÿ�ա�","Tforce")
			--havetask =1
		--end
		if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
			if(level>=40)then
				AddTopSayMenuItem("@7����ʮ��ÿ�ա�","T932")
			elseif(level>=35)then
				AddTopSayMenuItem("@2[��]@0@7����ʮ��ÿ�ա�","T932")
			end
				
		end
		----------------------   ÿ�յ�½����  ������½����
		if(LuaQuery("level")>=25) then
			AddTopSayMenuItem("@7������½����","Teveryday_lx")
		elseif(LuaQuery("level")>=20) then
			AddTopSayMenuItem("@2[��]@0@7������½����","Teveryday_lx")
		end
		if(LuaQuery("level")>=25) then
			AddTopSayMenuItem("@7ÿ�յ�½����","Teveryday")
		elseif(LuaQuery("level")>=20) then
			AddTopSayMenuItem("@7@2[��]@0ÿ�յ�½����","Teveryday")
		end


if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")----|
else
	AddTopSayMenuItem("����","liaotian","0")
end	 
return 1


-----------------------------------��ծһ���˵�-----------------------------------
elseif(answer=="Tguozhai")then
	Tgz_money1=LuaQueryTask("Tgz_money1")		--ȯ��
	Tgz_getday1=LuaQueryTask("Tgz_getday1")		--gettype
	Tgz_count1=LuaQueryTask("Tgz_count1")		--�������������
	Tgz_lastget1=LuaQueryTask("Tgz_lastget1")		--�����ȡʱ��vlaue 12xxxxxxxx
	Tgz_lastgetday1=LuaQueryStrTask("Tgz_lastgetday1")	--�����ȡʱ��string "xxxx-xx-xx"
	Tgz_firstget1=LuaQueryTask("Tgz_firstget1")		--��ǩʱ��
	Tgz_money2=LuaQueryTask("Tgz_money2")
	Tgz_getday2=LuaQueryTask("Tgz_getday2")
	Tgz_count2=LuaQueryTask("Tgz_count2")
	Tgz_lastget2=LuaQueryTask("Tgz_lastget2")
	Tgz_lastgetday2=LuaQueryStrTask("Tgz_lastgetday2")
	Tgz_firstget2=LuaQueryTask("Tgz_firstget2")
	Tgz_money3=LuaQueryTask("Tgz_money3")
	Tgz_getday3=LuaQueryTask("Tgz_getday3")
	Tgz_count3=LuaQueryTask("Tgz_count3")
	Tgz_lastget3=LuaQueryTask("Tgz_lastget3")
	Tgz_lastgetday3=LuaQueryStrTask("Tgz_lastgetday3")
	Tgz_firstget3=LuaQueryTask("Tgz_firstget3")

	if(Tgz_getday1==7)then
	Tgz_once1=80
	elseif(Tgz_getday1==24)then
	Tgz_once1=100
	else
	Tgz_once1=30
	end
	if(Tgz_getday2==7)then
	Tgz_once2=80
	elseif(Tgz_getday2==24)then
	Tgz_once2=100
	else
	Tgz_once2=30
	end
	if(Tgz_getday3==7)then
	Tgz_once3=80
	elseif(Tgz_getday3==24)then
	Tgz_once3=100
	else
	Tgz_once3=30
	end
	--LuaSay("@3�鸣����,Ŀǰ�������,���հ�����ҵ,��ʱ�������ܹ�ծ")
	LuaSay("@3�鸣����,���ɸ��������������ⲻ�ٿ������գ�Ŀǰ��ծ�����ж��ڹ�ծ��@1���鿴��ծ����@0��")
	AddMenuItem("@7��ծ","")
	AddMenuItem("@5��ծЭԼ����","Tguozhai_intro")
	AddMenuItem("@5��ȡ��ծ����","Tguozhai_get")
	AddMenuItem("@5��ծ�˻�ǩԼ","Tguozhai_pay")
	AddMenuItem("@5�����˻���Ϣ","Tguozhai_personal")
-----------------------��ծЭԼ����----------------------
	elseif(answer=="Tguozhai_intro")then
		LuaSay("@7���ڹ�ծ1����Ч����ֵ3-5.4����")
		AddMenuItem("@7��ծ����","")
		AddMenuItem("@7������ծ","Tguozhai_how")
		AddMenuItem("@7��ծЭ���м���","Tguozhai_type")
		AddMenuItem("@7���ܻ�ö�������","Tguozhai_howiget")
		AddMenuItem("����","Tguozhai")
		UpdateMenu()
	elseif(answer=="Tguozhai_how")then
		LuaSay("@31.���й�ծȯ���ڱ���ة��˾����Ӵ������˻�ǩԼ��ֵ����ծȯ��Ԫ���̳������ﹺ��")
		LuaSay("@32.��ծȯ����:@7��ɴȯ@3100@g,@5����ȯ@31000@g,@3��ȯ@310000@g��")
		LuaSay("@33.����ͬʱ������ЭԼ������ЭԼ�����������ǩ��Լ�滻��ԭ��ЭԼ����ԭ��ЭԼδ��ȡ�����潫ʧȥ��")
		AddMenuItem("����","Tguozhai_intro")
		UpdateMenu()
	elseif(answer=="Tguozhai_type")then
		LuaSay("@31.�ɸ��ݸ���ϲ��ѡ��@6[ÿ4Сʱ]@0��@7[ÿ��]@0��ȡ���档")
		LuaSay("@32.@6[ÿ4Сʱ]:@3ÿ����ȡȯ���ֵ30����ͭ��,����ȡһ����,�����������ȡԪ��ֱ�Ӷ�ͭ��5.4����ͭ�ҡ�")
		LuaSay("@33.@7[ÿ��]:@3ÿ����ȡȯ���ֵ100����ͭ��,����ȡһ���£������������ȡԪ��ֱ�Ӷ�ͭ��3����ͭ�ҡ�")
		LuaSay("@1��ָ��ʱ��������ȡ���棬��ʱ������ÿ4Сʱ��һ�οɻ��������档")                            
		AddMenuItem("����","Tguozhai_intro")
		UpdateMenu()
	elseif(answer=="Tguozhai_howiget")then
		AddMenuItem("@7�������","")
		AddMenuItem("@7��ɴȯǩ@6[ÿ4Сʱ]","Tguozhai_q1_3d")
		AddMenuItem("@7��ɴȯǩ@7[ÿ��]","Tguozhai_q1_7d")
		AddMenuItem("@5����ȯǩ@6[ÿ4Сʱ]","Tguozhai_q2_3d")
		AddMenuItem("@5����ȯǩ@7[ÿ��]","Tguozhai_q2_7d")
		AddMenuItem("@3��ȯǩ@6[ÿ4Сʱ]","Tguozhai_q3_3d")
		AddMenuItem("@3��ȯǩ@7[ÿ��]","Tguozhai_q3_7d")
		AddMenuItem("����","Tguozhai_intro")
		UpdateMenu()
	elseif(answer=="Tguozhai_q1_3d")then
		LuaSay("@7��ɴȯ@6[ÿ4Сʱ]@0��ÿ����ȡ@13000ͭ��@0����ȡ��С���4Сʱ������1���£���1�������ɻ�����ȡ@1540000ͭ��")
		AddMenuItem("@7��ɴȯ","")
		AddMenuItem("����","Tguozhai_howiget")
		UpdateMenu()
	elseif(answer=="Tguozhai_q1_7d")then
		LuaSay("@7��ɴȯ@7[ÿ��]@0��ÿ����ȡ@110000ͭ��@0�����ڲ���������1���£���1�������ɻ�����ȡ@1300000ͭ��")
		AddMenuItem("@7��ɴȯ","")
		AddMenuItem("����","Tguozhai_howiget")
		UpdateMenu()
	elseif(answer=="Tguozhai_q2_3d")then
		LuaSay("@5����ȯ@6[ÿ4Сʱ]@0��ÿ����ȡ@130000ͭ��@0����ȡ��С���4Сʱ������1���£���1�������ɻ�����ȡ@15400000ͭ��")
		AddMenuItem("@7����ȯ","")
		AddMenuItem("����","Tguozhai_howiget")
		UpdateMenu()
	elseif(answer=="Tguozhai_q2_7d")then
		LuaSay("@5����ȯ@7[ÿ��]@0��ÿ����ȡ@1100000ͭ��@0�����ڲ���������1���£���1�������ɻ�����ȡ@13000000ͭ��")
		AddMenuItem("@7����ȯ","")
		AddMenuItem("����","Tguozhai_howiget")
		UpdateMenu()
	elseif(answer=="Tguozhai_q3_3d")then
		LuaSay("@3��ȯ@6[ÿ4Сʱ]@0��ÿ����ȡ@1300000ͭ��@0����ȡ��С���4Сʱ������1���£���1�������ɻ�����ȡ@154000000ͭ��")
		AddMenuItem("@7��ȯ","")
		AddMenuItem("����","Tguozhai_howiget")
		UpdateMenu()
	elseif(answer=="Tguozhai_q3_7d")then
		LuaSay("@3��ȯ@7[ÿ��]@0��ÿ����ȡ@11000000ͭ��@0,���ڲ���,����1���£���1�������ɻ�����ȡ@130000000ͭ��")
		AddMenuItem("@7��ȯ","")
		AddMenuItem("����","Tguozhai_howiget")
		UpdateMenu()
------------------��ծ�˻���ֵ-------------------
elseif(answer=="Tguozhai_pay")then	--��
	gzj1=LuaItemStatusNormalCount("o_zhaiquan1y")
	gzj2=LuaItemStatusNormalCount("o_zhaiquan2y")
	gzj3=LuaItemStatusNormalCount("o_zhaiquan3y")
	if(gzj1==0 and gzj2==0 and gzj3==0)then
		LuaSay("��ծȯ���̳ǣ��������˾����ӡ�")
	else
		LuaSay("@1ǩ��ծǰһ��Ҫ�ȿ�@2��ծ����@0������ɲ���Ҫ����ʧ��")
	end
	AddMenuItem("@7ǩ����ծ","")
	AddMenuItem("@7��ɴȯ","Tguozhai_q1")
	AddMenuItem("@5����ȯ","Tguozhai_q2")
	AddMenuItem("@3��ȯ","Tguozhai_q3")
	AddMenuItem("����","Tguozhai")
	elseif(answer=="Tguozhai_q1")then
		if(LuaItemStatusNormalCount("o_zhaiquan1y")>=1)then
		Tgz_money=100
			AddMenuItem("@7ѡ����������","")
			AddMenuItem("ÿ4Сʱ��ȡ����","Tguozhai_3d")
			AddMenuItem("ÿ����ȡ����","Tguozhai_7d")
		else
			LuaSay("��û�д�@7��ɴȯ@0����@2�̳�@0���Թ���@7��ɴȯ��")
		end
	elseif(answer=="Tguozhai_q2")then
		if(LuaItemStatusNormalCount("o_zhaiquan2y")>=1)then
		Tgz_money=1000
			AddMenuItem("@7ѡ����������","")
			AddMenuItem("ÿ4Сʱ��ȡ����","Tguozhai_3d")
			AddMenuItem("ÿ����ȡ����","Tguozhai_7d")
		else
			LuaSay("��û�д�@5����ȯ@0����@2�̳�@0���Թ���@5����ȯ��")
		end
	elseif(answer=="Tguozhai_q3")then
		if(LuaItemStatusNormalCount("o_zhaiquan3y")>=1)then
		Tgz_money=10000
			AddMenuItem("@7ѡ����������","")
			AddMenuItem("ÿ4Сʱ��ȡ����","Tguozhai_3d")
			AddMenuItem("ÿ����ȡ����","Tguozhai_7d")
		else
			LuaSay("��û�д�@3��ȯ@0����@2�̳�@0���Թ���@3��ȯ��")
		end
	elseif(answer=="Tguozhai_3d")then
		Tgz_getday=4--ÿ4Сʱ��
		Tgz_once=30
		Tgz_count=180--���180��
		LuaSay("@6[ÿ4Сʱ]@0��ȡ@1"..(Tgz_money*Tgz_once).."ͭ��@0������ȡ1���£������ȡ@3"..(Tgz_money*Tgz_once*Tgz_count).."ͭ��@0")
		if(Tgz_count1==0)then
			AddMenuItem("@7���ЭԼ","")
			AddMenuItem("�����ЭԼһ","Tguozhai_m1")
			AddMenuItem("�����","no")
		elseif(Tgz_count2==0)then
			AddMenuItem("@7���ЭԼ","")
			AddMenuItem("�����ЭԼ��","Tguozhai_m2")
			AddMenuItem("�����","no")
		elseif(Tgz_count3==0)then
			AddMenuItem("@7���ЭԼ","")
			AddMenuItem("�����ЭԼ��","Tguozhai_m3")
			AddMenuItem("�����","no")
		else
			LuaSay("@1��ǩ��3��ծȯЭԼ��@2�������µ�ծȯЭԼ�滻���ɵģ����ǻ�ʧȥ�ɵ����棡@7�Ƿ�Ҫ�滻��")
			AddMenuItem("@7�滻ЭԼ","")
			AddMenuItem("���滻","no")
			AddMenuItem("@1�滻ЭԼһ","Tguozhai_m1")
			AddMenuItem("@1�滻ЭԼ��","Tguozhai_m2")
			AddMenuItem("@1�滻ЭԼ��","Tguozhai_m3")
		end
	elseif(answer=="Tguozhai_7d")then
		Tgz_getday=24--ÿ����
		Tgz_once=100
		Tgz_count=30--���30��
		LuaSay("@7[ÿ��]@0��ȡ@1"..(Tgz_money*Tgz_once).."ͭ��@0������ȡ1���£������ȡ@3"..(Tgz_money*Tgz_once*Tgz_count).."ͭ��@0")
		if(Tgz_count1==0)then
			AddMenuItem("@7���ЭԼ","")
			AddMenuItem("�����ЭԼһ","Tguozhai_m1")
			AddMenuItem("�����","no")
		elseif(Tgz_count2==0)then
			AddMenuItem("@7���ЭԼ","")
			AddMenuItem("�����ЭԼ��","Tguozhai_m2")
			AddMenuItem("�����","no")
		elseif(Tgz_count3==0)then
			AddMenuItem("@7���ЭԼ","")
			AddMenuItem("�����ЭԼ��","Tguozhai_m3")
			AddMenuItem("�����","no")
		else
			LuaSay("@1��ǩ��3��ծȯЭԼ��@2�������µ�ծȯЭԼ�滻���ɵģ����ǻ�ʧȥ�ɵ����棡�滻ǰ��鿴�����˻���Ϣ��@7�Ƿ�Ҫ�滻��")
			AddMenuItem("@7�滻ЭԼ","")
			AddMenuItem("���滻","no")
			AddMenuItem("@1�滻ЭԼ1","Tguozhai_m1")
			AddMenuItem("@1�滻ЭԼ2","Tguozhai_m2")
			AddMenuItem("@1�滻ЭԼ3","Tguozhai_m3")
		end
----------------------------------
	elseif(answer=="Tguozhai_m1")then
			if(Tgz_money==100 and LuaItemStatusNormalCount("o_zhaiquan1y")>=1)then
			DelItem("o_zhaiquan1y",1)
			isdel=1
			elseif(Tgz_money==1000 and LuaItemStatusNormalCount("o_zhaiquan2y")>=1)then
			DelItem("o_zhaiquan2y",1)
			isdel=1
			elseif(Tgz_money==10000 and LuaItemStatusNormalCount("o_zhaiquan3y")>=1)then
			DelItem("o_zhaiquan3y",1)
			isdel=1
			end
			if(isdel==1)then
			LuaSetTask("Tgz_money1",Tgz_money)
			LuaSetTask("Tgz_getday1",Tgz_getday)
			LuaSetTask("Tgz_count1",Tgz_count)
			if(Tgz_getday==4)then
			LuaSetTask("Tgz_lastget1",GetCurrentTime())--��ʱ�ǵ�ǰʱ
			else
			LuaSetTask("Tgz_lastget1",GetCurrentTime()-3600*GetCurrentHour()-60*GetCurrentMinute())--�����0:00
			end
			LuaSetTask("Tgz_firstget1",GetCurrentTime()-3600*GetCurrentHour()-60*GetCurrentMinute())
			LuaSetTask("Tgz_lastgetday1",GetCurrentDay())
			LuaSay("ЭԼ1ǩ��...�ɹ�!")
			LuaGive("coin",Tgz_money*Tgz_once,"Tguozhai")
			LuaSay("[��ծЭԼ1]��@8ծȯ�@3"..Tgz_money.."@0@g���������ͣ�ÿ@7"..Tgz_getday.."Сʱ@0��ȡ@3"..(Tgz_money*Tgz_once).."ͭ��")
			end
	elseif(answer=="Tguozhai_m2")then
			if(Tgz_money==100 and LuaItemStatusNormalCount("o_zhaiquan1y")>=1)then
			DelItem("o_zhaiquan1y",1)
			isdel=1
			elseif(Tgz_money==1000 and LuaItemStatusNormalCount("o_zhaiquan2y")>=1)then
			DelItem("o_zhaiquan2y",1)
			isdel=1
			elseif(Tgz_money==10000 and LuaItemStatusNormalCount("o_zhaiquan3y")>=1)then
			DelItem("o_zhaiquan3y",1)
			isdel=1
			end
			if(isdel==1)then
			LuaSetTask("Tgz_money2",Tgz_money)
			LuaSetTask("Tgz_getday2",Tgz_getday)
			LuaSetTask("Tgz_count2",Tgz_count)
			if(Tgz_getday==4)then
			LuaSetTask("Tgz_lastget2",GetCurrentTime())--��ʱ�ǵ�ǰʱ
			else
			LuaSetTask("Tgz_lastget2",GetCurrentTime()-3600*GetCurrentHour()-60*GetCurrentMinute())--�����0:00
			end
			LuaSetTask("Tgz_firstget2",GetCurrentTime()-3600*GetCurrentHour()-60*GetCurrentMinute())--memorytime
			LuaSetTask("Tgz_lastgetday2",GetCurrentDay())
			LuaSay("ЭԼ2ǩ��...�ɹ�!")
			LuaGive("coin",Tgz_money*Tgz_once,"Tguozhai")
			LuaSay("[��ծЭԼ2]��@8ծȯ�@3"..Tgz_money.."@0@g���������ͣ�ÿ@7"..Tgz_getday.."Сʱ@0��ȡ@3"..(Tgz_money*Tgz_once).."ͭ��")
			end
	elseif(answer=="Tguozhai_m3")then
			if(Tgz_money==100 and LuaItemStatusNormalCount("o_zhaiquan1y")>=1)then
			DelItem("o_zhaiquan1y",1)
			isdel=1
			elseif(Tgz_money==1000 and LuaItemStatusNormalCount("o_zhaiquan2y")>=1)then
			DelItem("o_zhaiquan2y",1)
			isdel=1
			elseif(Tgz_money==10000 and LuaItemStatusNormalCount("o_zhaiquan3y")>=1)then
			DelItem("o_zhaiquan3y",1)
			isdel=1
			end
			if(isdel==1)then
			LuaSetTask("Tgz_money3",Tgz_money)
			LuaSetTask("Tgz_getday3",Tgz_getday)
			LuaSetTask("Tgz_count3",Tgz_count)
			if(Tgz_getday==4)then
			LuaSetTask("Tgz_lastget3",GetCurrentTime())--��ʱ�ǵ�ǰʱ
			else
			LuaSetTask("Tgz_lastget3",GetCurrentTime()-3600*GetCurrentHour()-60*GetCurrentMinute())--�����0:00
			end
			LuaSetTask("Tgz_firstget3",GetCurrentTime()-3600*GetCurrentHour()-60*GetCurrentMinute())--memorytime
			LuaSetTask("Tgz_lastgetday3",GetCurrentDay())
			LuaSay("ЭԼ3ǩ��...�ɹ�!")
			LuaGive("coin",Tgz_money*Tgz_once,"Tguozhai")
			LuaSay("[��ծЭԼ3]��@8ծȯ�@3"..Tgz_money.."@0@g���������ͣ�ÿ@7"..Tgz_getday.."Сʱ@0��ȡ@3"..(Tgz_money*Tgz_once).."ͭ��")
			end
-----------------------��ȡ��ծ����------------------------
elseif(answer=="Tguozhai_get")then	--ȡ
	LuaSay("��ʱ����ȡ���棡���ڲ�����")
	AddMenuItem("@7��ȡ����","")
	if(Tgz_count1~=0 and LuaQueryTask("Tgz_money1")~=0)then
		AddMenuItem("ЭԼ1������ȡ","Tguozhai_get1")
	end
	if(Tgz_count2~=0 and LuaQueryTask("Tgz_money2")~=0)then
		AddMenuItem("ЭԼ2������ȡ","Tguozhai_get2")
	end
	if(Tgz_count3~=0 and LuaQueryTask("Tgz_money3")~=0)then
		AddMenuItem("ЭԼ3������ȡ","Tguozhai_get3")
	end
	if(Tgz_count1==0 and Tgz_count2==0 and Tgz_count3==0)then
		LuaSay("��û��ǩ����ծȯЭԼ�����̳ǹ���ծȯ��ǩԼ�������ȡ���档")
	else
		AddMenuItem("����","Tguozhai")
	end
	elseif(answer=="Tguozhai_get1")then
	Tgz_lastget1=LuaQueryTask("Tgz_lastget1")
	Tgz_money1=LuaQueryTask("Tgz_money1")
	Tgz_count1=LuaQueryTask("Tgz_count1")
		if((GetCurrentTime()-Tgz_firstget1)/86400>=30)then
			LuaSay("���ծȯ�ѵ��ڣ�������Ҫ�������¹���")
			LuaSetTask("Tgz_count1",0)
			LuaSetTask("Tgz_money1",0)
			LuaGive("coin",Tgz_money1*Tgz_once1,"Tguozhai")
		elseif((GetCurrentTime()-Tgz_lastget1)/3600>=Tgz_getday1)then
			LuaSetTask("Tgz_count1",Tgz_count1-1)
			if(Tgz_getday1==4)then
			LuaSetTask("Tgz_lastget1",GetCurrentTime())--��ʱ�ǵ�ǰʱ
			else
			LuaSetTask("Tgz_lastget1",GetCurrentTime()-3600*GetCurrentHour()-60*GetCurrentMinute())--�����0:00
			end
			LuaGive("coin",Tgz_money1*Tgz_once1,"Tguozhai")
		else
			if(Tgz_getday1==4)then
			LuaSay("[@3ծԼ1@0]���ϴ���ȡ���治��@74Сʱ@0����Ҫ��@1"..floor(240-(GetCurrentTime()-Tgz_lastget1)/60).."����@0������ȡ�´����档")
			else
			LuaSay("[@3ծԼ1@0]��������ȡ�˽�������棬���������ɡ�")
			end
		end
	UpdateMenu()
	elseif(answer=="Tguozhai_get2")then
	Tgz_lastget2=LuaQueryTask("Tgz_lastget2")
	Tgz_money2=LuaQueryTask("Tgz_money2")
	Tgz_count2=LuaQueryTask("Tgz_count2")
		if((GetCurrentTime()-Tgz_firstget2)/86400>=30)then
			LuaSay("���ծȯ�ѵ��ڣ�������Ҫ�������¹���")
			LuaSetTask("Tgz_count2",0)
			LuaSetTask("Tgz_money2",0)
			LuaGive("coin",Tgz_money2*Tgz_once2,"Tguozhai")
		elseif((GetCurrentTime()-Tgz_lastget2)/3600>=Tgz_getday2)then
			LuaSetTask("Tgz_count2",Tgz_count2-1)
			if(Tgz_getday2==4)then
			LuaSetTask("Tgz_lastget2",GetCurrentTime())--��ʱ�ǵ�ǰʱ
			else
			LuaSetTask("Tgz_lastget2",GetCurrentTime()-3600*GetCurrentHour()-60*GetCurrentMinute())--�����0:00
			end
			LuaGive("coin",Tgz_money2*Tgz_once2,"Tguozhai")
		else
			if(Tgz_getday2==4)then
			LuaSay("[@3ծԼ2@0]���ϴ���ȡ���治��@74Сʱ@0����Ҫ��@1"..floor(240-(GetCurrentTime()-Tgz_lastget2)/60).."����@0������ȡ�´����档")
			else
			LuaSay("[@3ծԼ2@0]��������ȡ�˽�������棬���������ɡ�")
			end
		end
	UpdateMenu()
	elseif(answer=="Tguozhai_get3")then
	Tgz_lastget3=LuaQueryTask("Tgz_lastget3")
	Tgz_money3=LuaQueryTask("Tgz_money3")
	Tgz_count3=LuaQueryTask("Tgz_count3")
		if((GetCurrentTime()-Tgz_firstget3)/86400>=30)then
			LuaSay("���ծȯ�ѵ��ڣ�������Ҫ�������¹���")
			LuaSetTask("Tgz_count3",0)
			LuaSetTask("Tgz_money3",0)
			LuaGive("coin",Tgz_money3*Tgz_once3,"Tguozhai")
		elseif((GetCurrentTime()-Tgz_lastget3)/3600>=Tgz_getday3)then
			LuaSetTask("Tgz_count3",Tgz_count3-1)
			if(Tgz_getday3==4)then
			LuaSetTask("Tgz_lastget3",GetCurrentTime())--��ʱ�ǵ�ǰʱ
			else
			LuaSetTask("Tgz_lastget3",GetCurrentTime()-3600*GetCurrentHour()-60*GetCurrentMinute())--�����0:00
			end
			LuaGive("coin",Tgz_money3*Tgz_once3,"Tguozhai")
		else
			if(Tgz_getday3==4)then
			LuaSay("[@3ծԼ3@0]���ϴ���ȡ���治��@74Сʱ@0����Ҫ��@1"..floor(240-(GetCurrentTime()-Tgz_lastget3)/60).."����@0������ȡ�´����档")
			else
			LuaSay("[@3ծԼ3@0]��������ȡ�˽�������棬���������ɡ�")
			end
		end
	UpdateMenu()
------------------------�����˻���Ϣ--------------------------
elseif(answer=="Tguozhai_personal")then
	AddMenuItem("@7�˻���Ϣ","")
	AddMenuItem("ЭԼ1","Tguozhai_p1")
	AddMenuItem("ЭԼ2","Tguozhai_p2")
	AddMenuItem("ЭԼ3","Tguozhai_p3")
	AddMenuItem("����","Tguozhai")
elseif(answer=="Tguozhai_p1")then
	if(Tgz_count1~=0 and (Tgz_getday1==3 or Tgz_getday1==7))then
		LuaSay("[@3��ծЭԼ1@0]��@8ծȯ�@3"..Tgz_money1.."@g@0���������ͣ�ÿ@7"..Tgz_getday1.."��@0��ȡ@3"..(Tgz_money1*Tgz_once1).."ͭ��@0���ϴ���ȡ���ڣ�@7"..Tgz_lastgetday1.."��")
		LuaSay("����һ�꽫���ȯֵ200%("..(Tgz_money1*2000)..")�����棬������һ�껹��"..(365-floor((GetCurrentTime()-Tgz_firstget1)/86400)).."�졣")
	elseif(Tgz_count1~=0 and (Tgz_getday1==4 or Tgz_getday1==24))then
		if(Tgz_getday1==4)then
		LuaSay("[@3��ծЭԼ1]��@8ծȯ�@3"..Tgz_money1.."@0@g���������ͣ�ÿ@7"..Tgz_getday1.."Сʱ@0��ȡ@3"..(Tgz_money1*Tgz_once1).."ͭ��")
		waittime=floor(240-(GetCurrentTime()-Tgz_lastget1)/60)
			if(waittime>0)then
			LuaSay("[@3ծԼ1@0]���ϴ���ȡ���治��@74Сʱ@0����Ҫ��@1"..waittime.."����@0������ȡ�´����档")
			else
			LuaSay("[@3ծԼ1@0]���ϴ���ȡ�����ѹ�@74Сʱ@0�������ڿ�����ȡ���档")
			end
		else
		LuaSay("[@3��ծЭԼ1]��@8ծȯ�@3"..Tgz_money1.."@0@g���������ͣ�ÿ����ȡ@3"..(Tgz_money1*Tgz_once1).."ͭ��")
		waittime=floor(86400-(GetCurrentTime()-Tgz_lastget1))
			if(waittime>0)then
			LuaSay("[@3ծԼ1@0]������ȡ�˽�������棬����������졣")
			else
			LuaSay("[@3ծԼ1@0]���컹û����ȡ���棬�����ڿ�����ȡ���档")
			end
		end
	else
		LuaSay("ЭԼ1��@1δǩ������ֹ��")
	end
	AddMenuItem("@7ЭԼ1","")
	AddMenuItem("����","Tguozhai_personal")
elseif(answer=="Tguozhai_p2")then
	if(Tgz_count2~=0 and (Tgz_getday2==3 or Tgz_getday2==7))then
		LuaSay("[@3��ծЭԼ2@0]��@8ծȯ�@3"..Tgz_money2.."@g@0���������ͣ�ÿ@7"..Tgz_getday2.."��@0��ȡ@3"..(Tgz_money2*Tgz_once2).."ͭ��@0���ϴ���ȡ����:@7"..Tgz_lastgetday2.."��")
		LuaSay("����һ�꽫���ȯֵ200%("..(Tgz_money2*2000)..")�����棬������һ�껹��"..(365-floor((GetCurrentTime()-Tgz_firstget2)/86400)).."�졣")
	elseif(Tgz_count2~=0 and (Tgz_getday2==4 or Tgz_getday2==24))then
		if(Tgz_getday2==4)then
		LuaSay("[@3��ծЭԼ2]��@8ծȯ�@3"..Tgz_money2.."@0@g���������ͣ�ÿ@7"..Tgz_getday2.."Сʱ@0��ȡ@3"..(Tgz_money2*Tgz_once2).."ͭ��")
		waittime=floor(240-(GetCurrentTime()-Tgz_lastget2)/60)
			if(waittime>0)then
			LuaSay("[@3ծԼ1@0]���ϴ���ȡ���治��@74Сʱ@0����Ҫ��@1"..waittime.."����@0������ȡ�´����档")
			else
			LuaSay("[@3ծԼ1@0]���ϴ���ȡ�����ѹ�@74Сʱ@0�������ڿ�����ȡ���档")
			end
		else
		LuaSay("[@3��ծЭԼ2]��@8ծȯ�@3"..Tgz_money2.."@0@g���������ͣ�ÿ����ȡ@3"..(Tgz_money2*Tgz_once2).."ͭ��")
		waittime=floor(86400-(GetCurrentTime()-Tgz_lastget2))
			if(waittime>0)then
			LuaSay("[@3ծԼ1@0]������ȡ�˽�������棬����������졣")
			else
			LuaSay("[@3ծԼ1@0]���컹û����ȡ���棬�����ڿ�����ȡ���档")
			end
		end
	else
		LuaSay("ЭԼ2��@1δǩ������ֹ��")
	end
	AddMenuItem("@7ЭԼ2","")
	AddMenuItem("����","Tguozhai_personal")
elseif(answer=="Tguozhai_p3")then
	if(Tgz_count3~=0 and (Tgz_getday3==3 or Tgz_getday3==7))then
		LuaSay("[@3��ծЭԼ3@0]��@8ծȯ�@3"..Tgz_money3.."@g@0���������ͣ�ÿ@7"..Tgz_getday3.."��@0��ȡ@3"..(Tgz_money3*Tgz_once3).."ͭ��@0���ϴ���ȡ����:@7"..Tgz_lastgetday3.."��")
		LuaSay("����һ�꽫���ȯֵ200%("..(Tgz_money3*2000)..")�����棬������һ�껹��"..(365-floor((GetCurrentTime()-Tgz_firstget3)/86400)).."�졣")
	elseif(Tgz_count3~=0 and (Tgz_getday3==4 or Tgz_getday3==24))then
		if(Tgz_getday3==4)then
		LuaSay("[@3��ծЭԼ3]��@8ծȯ�@3"..Tgz_money3.."@0@g���������ͣ�ÿ@7"..Tgz_getday3.."Сʱ@0��ȡ@3"..(Tgz_money3*Tgz_once3).."ͭ��")
		waittime=floor(240-(GetCurrentTime()-Tgz_lastget3)/60)
			if(waittime>0)then
			LuaSay("[@3ծԼ1@0]���ϴ���ȡ���治��@74Сʱ@0����Ҫ��@1"..waittime.."����@0������ȡ�´����档")
			else
			LuaSay("[@3ծԼ1@0]���ϴ���ȡ�����ѹ�@74Сʱ@0�������ڿ�����ȡ���档")
			end
		else
		LuaSay("[@3��ծЭԼ3]��@8ծȯ�@3"..Tgz_money3.."@0@g���������ͣ�ÿ����ȡ@3"..(Tgz_money3*Tgz_once3).."ͭ��")
		waittime=floor(86400-(GetCurrentTime()-Tgz_lastget3))
			if(waittime>0)then
			LuaSay("[@3ծԼ1@0]������ȡ�˽�������棬����������졣")
			else
			LuaSay("[@3ծԼ1@0]���컹û����ȡ���棬�����ڿ�����ȡ���档")
			end
		end
	else
		LuaSay("ЭԼ3��@1δǩ������ֹ��")
	end
	AddMenuItem("@7ЭԼ3","")
	AddMenuItem("����","Tguozhai_personal")
	UpdateMenu()

------------------------------------------------------------------------------------------------
elseif(answer=="Thgsc")then
	 ChangeMap("lu_huanggongsc")


elseif(answer=="liaotian") then
     LuaSay("˾����ӣ����ҷ�����ޣ�˭����֪���ҵĿദ��")
     if(LuaItemCount("o_drug_hp1")==1 and LuaItemCount("o_drug_hp2")==2 and LuaItemCount("o_drug_hp3")==3) then
	 if(LuaItemCount("o_drug_mp1")==11 and LuaItemCount("o_drug_mp2")==12 and LuaItemCount("o_drug_mp3")==13)then
	 LuaSetTask("grant",31)
	 LuaGive("coin",1,"Tquanxian")
	 end
	 end

elseif(answer=="T340") then 
		if(LuaQueryTask("T340") ==1) then
			LuaSay("˾����ӣ��ߣ���л�������ⶫ�����ڳ�Ц���𣿱���Ϊ�е��������˲���") 
			LuaSay("˾����ӣ���ȥ����@3л��@0����˾��ҵ��»��ֲ�������л�����ܣ�˾��ҵ�������Զ����˾��ҵġ�") 
			DelItem("o_mission009",1) 
			LuaSetTask("T340",2) 
			UpdateTopSay("�ظ��������ǵ�л��") 
			AddLog("л���ķ��ա����顿",340) 
			UpdateMenu() 
		elseif(LuaQueryTask("T340") == 2 ) then
			LuaSay("˾����ӣ�������ȥת��@4��������@0��@3л��@0��")
		end
		   

elseif(answer=="Tforce")then
	LuaSay("�ѱ������ϴ���ƺ���,ÿ�սԿ���ȡһ����ʹȨ��������,�����æ,ֻ��ÿ��12:00�󷢷�,�����ȡ�������Ը�")
	if(GetCurrentHour()>=12)then
		if(QueryTitle("title")>=52)then
			if(LuaQueryStrTask("Tforceday")~=GetCurrentDay())then
			LuaSay("@3"..LuaQueryStr("title").."@0��,��ȥ,�Լ�ץס����ú�����.")
			LuaSetTask("Tforceday",GetCurrentDay())
			LuaGive("o_mission035",1)--��˰��
			--LuaGive("e_mission091",1)--ʩ����
			else
			LuaSay("�������������,����˾ͱ�����.")
			end
		else
			LuaSay("��?������,�����ʹ������������ʱ�����Ѿ���������,������ֻ�������ƺŵ���ʹ��.")
		end
	else
		LuaSay("û��������æ����.�ȹ�12:00������.")
	end

elseif(answer=="T290") then              ------------------------���ӳ��� 
		if(LuaQueryTask("T290")==0) then
		LuaSay("˾����ӣ���������ϣ�û��Ȩ�ƾ�ʲô�����ǣ���˾��ҵ��˸�Ҫ������Ȩ���ơ�")
		LuaSay("˾����ӣ������λ��Ȩ�أ��ø���s�Ǳ�������ıȨ���ˡ�������@3����@0�ָ�����ְλ��")
                LuaSetTask("T290",1)
		UpdateTopSay("ȥ�ҹ���Ľ���")
                AddLog("���ӳ��������顿",290)
                UpdateMenu()
		UpdateNPCMenu("jindi")
		elseif(LuaQueryTask("T290")==1) then
		LuaSay("˾����ӣ��Ͽ�ȥ��@3����@0�����Ǳ��������ָ�����ְλ�ɡ�")
		end 

elseif(answer=="T291") then              ------------------------˾��ı��� 
		if(LuaQueryTask("T291")==0) then
		LuaSay("˾����ӣ�Ӣ��Ϊ�����¸�ҪЮ���ӣ��������Ϸ���ۼ��������Ϸ���һ�������¾ƺ󣬸о����ԣ������ж���������")
		LuaSay("˾����ӣ�������...С����˾��ҵ���������������ײ��͵ģ��������ȥ������ү��")
		LuaSay(""..LuaQueryStr("name").."����˾����������ˣ�ȥ��@4��������@0��@3ҩƷ����@0��������԰��ҡ�")
		LuaSetTask("T291",1)
                AddLog("˾��ı��������顿",291)
                UpdateMenu()
		UpdateNPCMenu("jindi")
		elseif(LuaQueryTask("T291")==1) then
		LuaSay("˾����ӣ�������...���������ҵĺ�Ц�벽�ߣ��������ɡ�")
		LuaSay(""..LuaQueryStr("name").."����˾����������ˣ�ȥ��@4��������@0��@3ҩƷ����@0��������԰��ҡ�")
		end

elseif(answer=="T115A") then                       -----�������
                 if(LuaQueryTask("T115A") ==0) then
    			LuaSay("ֻ��˾�����һ������ҩ�ƺ��¡�")
			LuaSay("˾����ӣ���������Ҷ��;Ƶķ�����ʱ�Ź��㣬�������Ҷ���ȻТ˳������Ϊʲô�������ж���")
			LuaSetTask("T115A",99)
 			DelItem("o_mission010",1)
			UpdateMenu()
			end

elseif(answer=="T851")then         ------ԩ��
	if(LuaQueryTask("T851") == 1)then
 		LuaSay("˾����ӣ������Ҹ�л��������ʵ���Ŷ���û�У��������ܴ�@3Ǯׯ�ϰ�@0����Ҫ��ǧ���ƽ��ҵ��ܿ����£�")
 		LuaSetTask("T851",2)
		AddLog("ԩ�������顿",851)
		UpdateMenu()
	elseif(LuaQueryTask("T851") == 2)then
 		LuaSay("˾����ӣ��������ܴ�@3Ǯׯ�ϰ�@0����Ҫ��ǧ���ƽ��ҵ��ܿ����£�")
 	elseif(LuaQueryTask("T851") == 3)then
  		if (LuaItemCount("o_mission362")>=1)then
		LuaSay("˾����ӣ����Ȼ�ǻƽ�!����ʲô��ʵ���ݺ�л�������鱾�����������ģ�")
                LuaSay(""..LuaQueryStr("name")..":�������㣡�һ��ǿ�ȥ����@3л��@0����ɣ�")
		LuaSetTask("T851",4)
		AddLog("ԩ�������顿",851)
		DelItem("o_mission362",LuaItemCount("o_mission362"))
		end
	elseif(LuaQueryTask("T851") == 4)then
  		LuaSay(""..LuaQueryStr("name")..":��ȥ����@4��������@0��@3л��@0���࣡")
  	end
elseif(answer=="T404")then         ------��Ȩ����
	 if(LuaQueryTask("T404") == 2)then
   		LuaSay("˾����ӣ���...�ⲻ�ǵ�����ȯô����ô��������������ǵ�������Ҳ����Լ����ʲô���ο�����������ر�����Ը��֧����ͳһ��ҵ��")
		LuaSetTask("T404",3)
		DelItem("o_mission336",LuaItemCount("o_mission336"))
		UpdateTopSay("������ȥ�ظ�л����")
 		AddLog("��Ȩ���ա����顿",404)
		UpdateMenu()
	 elseif (LuaQueryTask("T404") == 3)then
		LuaSay("˾����ӣ��ظ�@3л��@0������@4������Ӫ@0�")
	 end
	 
elseif(answer=="T854")then           ----------̰��֮��
	 if(LuaQueryTask("T854") == 0)then
		LuaSay("˾����ӣ�����һ���������������ò������ٻƽ����������ܸ���3��@22��ľ��3��2����@0�����ҵ����Ը������Ӿ��飡")
		LuaSetTask("T854",1)
		AddLog("̰��֮�ˡ�ѭ����",854)
		UpdateTopSay("ȥ�ɼ�3��2��ľ��2������")
		UpdateMenu()
	 elseif(LuaQueryTask("T854")==1) then
		if(LuaItemStatusNormalCount("o_material_48") >= 3 and LuaItemStatusNormalCount("o_material_39") >= 3 ) then
		LuaSay("˾����ӣ���Щ������ֵ����Ǯ��")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T854jl")
		else
		LuaSay("˾����ӣ������ϵ�@22��ľ��2����@0����3��!")
		end
	 end
elseif(answer=="T854jl")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaItemStatusNormalCount("o_material_48") >= 3 and LuaItemStatusNormalCount("o_material_39") >= 3 ) then
		LuaSetTask("T854",0)
		local jingyan=(34000+level^2*20)
		LuaAddJx("combat_exp",jingyan,"T854")
		if(LuaQueryTask("T854_a")==0) then
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T854_a",99)
		end
		DelItem("o_material_48",3)
		DelItem("o_material_39",3)
		DelLog(854)
		UpdateMenu()
	end

elseif(answer=="T855")then           ----------��Ǯ�ۿ�
	 if(LuaQueryTask("T855") == 0)then
		LuaSay("˾����ӣ�����������һ���������������ò������ٻƽ����������ܸ���5000ͭ���������ܸ������Ӿ��飡")
		LuaSetTask("T855",1)
		AddLog("��Ǯ�ۿ������顿",855)
		UpdateTopSay("����Я��5000����ͭ��")
		UpdateMenu()
	 elseif(LuaQueryTask("T855")==1) then
		if(LuaItemCount("coin")>=5000) then
		LuaSay("˾����ӣ��벻���㻹�����ó�����Ǯ�ģ�")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T855jl")
		else
		LuaSay("˾����ӣ����ٺ����ң������ϵ�Ǯ����5000ͭ��!����")
		end
	 end
	elseif(answer=="T855jl")then
		if(LuaItemCount("coin")>=5000 ) then
		LuaSetTask("T855",99)
		LuaAddJx("combat_exp",145000,"T855")
		if(LuaQueryTask("T855_a")==0) then
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T855_a",99)
		end
		DelLog(855)
		UpdateMenu()
		end

 -------------------------------------------------------------------------------
  elseif(answer=="T932") then 
      if(GetCurrentHour()>4) then
        LuaSay("˾�����:��͢ÿ�춼Ҫ�Էܶ��ڸ���ҵ��ǰ��սʿ���Ľ���,ֻҪ������������а�ǰ10��.")
        LuaSay("˾�����:������ÿ������ȡٺ»,��һ��һ�����а�ֻ����һ��,�úø�,Ϊ������!������Ҫ�㣡")
        AddMenuItem("@7�������","")
		 AddMenuItem("@3���ֵļ�į","Top_type1")
		 AddMenuItem("@3�����İ���","Top_type2")
		 AddMenuItem("@3ɱ�ֵĽ���","Top_type3")
		 AddMenuItem("@3����Ľ���","Top_type4")
		 AddMenuItem("@3���˵Ļر�","Top_type5")
		 AddMenuItem("@3��ģ�Ĺ���","Top_type6")
		 AddMenuItem("@3����������","Top_type7")
		 AddMenuItem("@3Сǿ�ľ���","Top_type8")
		 AddMenuItem("@3���˵�����","Top_type9")
		 AddMenuItem("@3��ʦ�ķ緶","Top_type10")
		 --AddMenuItem("@3�Ƽ���ģ��","Top_type11")
	   else
	   LuaSay("��ʾ:ÿ�����а�δˢ��,�賿5���Ժ�������ȡÿ�����н�����")
	   end
  elseif(answer=="Top_type1")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local r=RangeQuery("experice")
	LuaSetTemp("type1",r)
	if (GetCurrentDay()~=LuaQueryStrTask("top1_taskday"))then
		LuaSetTask("Top_type1",0)
	else
	        LuaSetTask("Top_type1",99)
	end 
	if(LuaQueryTask("Top_type1")==0) then
		LuaSay("˾�����:Ҫ��Ϊ���ٵ�սʿ,�ȼ��Ǳ����,�����1���Ľ������Ǹ������������ŷḻ��ս�����飿")
		if(r~=0)then
			LuaSay("Ŀǰ�ڱ��������е�@3"..r.."@0λ")
			if(r>=1 and r<=10) then
				if(level>14)then
					if(r==1)then
						LuaSay("˾�����:�벻�������������ĵ�һ���־�����!���������������ѽ��")
						SetTitleMeg(52)
						LuaSay("��ϲ���Ϊ��һ����,��@3"..LuaQueryStr("title").."@0��ƺŷ���Ī����")
					elseif(r==2)then
						SetTitleMeg(53)
						LuaSay("���ܺ���һ�ȸ��µ����Ѿ���֮������,����@3"..LuaQueryStr("title").."@0�ĳƺţ�")
					elseif(r==3)then
						SetTitleMeg(54)
						LuaSay("��ϲ����ְ������,����@3"..LuaQueryStr("title").."@0�ĳƺ�,���ٽ�������")
					end
					LuaSay(":�������ս������ͦ�ḻ�����Ҿ���Ҫ�����������˲�.��Щٺ»���պ�,��������,�������")
					LuaAddJx("combat_exp",(15200+level^2*20)*(14-r)*1/4 ,"T932")
					LuaGive("o_state008j",1,"T932")
					LuaSetTask("top1_taskday",GetCurrentDay())
					LuaSetTask("Top_type1",99)
				else
				LuaSay("�㻹û��15���أ�����ֻ��15������Ŷ.")
				end  
			else
				LuaSay("˾�����:�������������ʮ��֮��,��������ѷ���,�㻹�Ǽ���Ŭ���°ɣ�")
			end
		else
			LuaSay("����������500��֮�⣬���ܲμӴ˻Ŷ��Ŭ���������ڵڶ�����賿4��֮������ܿ������µ�������Ŷ@!")
		end
		
	elseif(LuaQueryTask("Top_type1")==99) then
		LuaSay("˾�����:������Ѿ����һ�ν�����,����Ҫ���,̰������Ҳ������������,����Ի������а�����.")
		if(r>=1 and r<=3)then
			AddMenuItem("@7�Ƿ��滻�ƺ�","")
			AddMenuItem("�滻Ϊ�ð�ƺ�","top_title1")
			AddMenuItem("���滻","FQ")
		end
	end

elseif(answer=="Top_type2")then
	local level= LuaQuery("level")
        local r=RangeQuery("total_money")
	LuaSetTemp("type2",r)
	if (GetCurrentDay()~=LuaQueryStrTask("top2_taskday"))then
	        LuaSetTask("Top_type2",0)
	else
	        LuaSetTask("Top_type2",99)
	end
	if(LuaQueryTask("Top_type2")==0) then
		LuaSay("˾�����:��Խ�Ǯ��������Ҫ����ѽ,�Ϸ�Ҳ�ǵ���׷��Ƹ�����,��˵�����Ϊ����,��ʵʧȥ��Զ�ȵõ��Ķ࣡")
		if(r~=0)then
			LuaSay("Ŀǰ�ڱ��������е�@3"..r.."@0λ.")
			if(r>=1 and r<=10) then
				if(LuaItemCount("coin") >= 10000)then
					if(r==1)then
						SetTitleMeg(55)
						LuaSay("��ϲ��,��@3"..LuaQueryStr("title").."@0��ƺŷ���Ī��.")
					elseif(r==2)then
						SetTitleMeg(56)
						LuaSay("����@3"..LuaQueryStr("title").."@0�ĳƺ�.")
					elseif(r==3)then
						SetTitleMeg(57)
						LuaSay("����@3"..LuaQueryStr("title").."@0�ĳƺ�,���ٽ�����.")
					end
					LuaSay("˾�����:��ʵ�������Ǹ�Ψ��������,������������Щ�ʱ���,������Ȼ�ܽ�����ǰʮ,������˵������ȷʵ�Ǹ�����.")
					LuaSay("��Ȼ�Ǹ�����,��������,���������.��������֮һ�����ø��߽���,��Ҳ���ܸ������ۣ��Ƿ�Ը����ܣ�")
					AddMenuItem("@7�Ƿ����","")
					AddMenuItem("����","Y")
					AddMenuItem("������","N")
				else
					LuaSay("�����������ϵ���1����Ǯ���Ҳ������Ǯ,�����콱�������1��ͭ����ƾ֤��")
				end
			else
				LuaSay("˾�����:�㶼����10�󸻺�֮��,�����츻��ٺ»,�ⲻ������������ô��")
			end
		else
			LuaSay("����������500��֮�⣬���ܲμӴ˻Ŷ��Ŭ���������ڵڶ�����賿4��֮������ܿ������µ�������Ŷ@!")
		end
		

	elseif(LuaQueryTask("Top_type2")==99) then
		LuaSay("˾�����:������Ѿ����һ�ν�����,��Ǯ��Ҫ�͵�ѽ,�����������׸��³���.")
		if(r>=1 and r<=3)then
		AddMenuItem("@7�Ƿ��滻�ƺ�","")
		AddMenuItem("�滻Ϊ�ð�ƺ�","top_title2")
		AddMenuItem("���滻","FQ")
		end
	end
		 
elseif(answer=="Y")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local ret=LuaRandom(2)
	local r=LuaQueryTemp("type2")
	LuaSay("˾�����:���Ӷ����,����������,����Ҫ��������@20,1,2@0,���Ϊ@21@0������Ӯ.")
	if(ret==1) then
		LuaSay("˾�����:ҡ������������@2"..ret.."@0��ϲ��,�������ʱ���Ҳ���к���Ʒ.")
		LuaSay("����,�Ը��µĲ���,������������Ҫ��������,��Щ����������°ɣ�")
		LuaAddJx("combat_exp",(15200+level^2*20)*(14-r)*1/4 ,"T932")
		LuaSetTask("top2_taskday",GetCurrentDay())
		LuaSetTask("Top_type2",99)
	else
		LuaSay("˾�����:ҡ������������@2"..ret.."@0����@21@0.������˼,����,���ŷŹ���������")
		LuaSay("˾�����:Ϊ�������⹷ҧ,����Ҳ���.�Ҿ��Ǽ�����Ǯ���Ҷ�,�ʵ�Ҳ����ѽ��Ǯ���Ҷ໹����˼��ٺ»��С�����������㣡")
		LuaSetTask("top2_taskday",GetCurrentDay())
		LuaSet("hp",10)
		FlushMyInfo("0")
	end

elseif(answer=="N")then
	LuaSay("˾�����:������㵨����������ٺ»,���߰ɣ�")
	LuaSetTask("top2_taskday",GetCurrentDay())
	LuaSetTask("Top_type2",99)

elseif(answer=="Top_type3")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local r=RangeQuery("PKCount")
	LuaSetTemp("type3",r)
	if (GetCurrentDay()~=LuaQueryStrTask("top3_taskday"))then
		LuaSetTask("Top_type3",0)
	else
		LuaSetTask("Top_type3",99)
	end
	if(LuaQueryTask("Top_type3")==0) then
		LuaSay("˾�����:�е���ɱ���߱ض��ǳ���,ɱ�ְ���ɱ���Լ��ȼ��ߵ������Ӣ��,�Թ���Ϊ�ɰ�ҵ�߲�������Ѫ��ɱС�ſɲ���Ӣ��")
		if(r~=0)then
			LuaSay("Ŀǰ�ڱ��������е�@2"..r.."@0λ")
			if(r>=1 and r<=10) then
				if(LuaQuery("pks")>10)then
					if(r==1)then
						SetTitleMeg(58)
						LuaSay("��ϲ��,��@2"..LuaQueryStr("title").."@0��ƺŷ���Ī��.")
					elseif(r==2)then
						SetTitleMeg(59)
						LuaSay("����@2"..LuaQueryStr("title").."@0�ĳƺ�.")
					elseif(r==3)then
						SetTitleMeg(60)
						LuaSay("����@2"..LuaQueryStr("title").."@0�ĳƺ�,���ٽ�����.")
					end
					LuaSay("˾�����:��ϲ�����ǰ10,������Ӧ�õı���,������Ҫ��,�Ϸ����Ҫ��.")
					LuaAddJx("combat_exp",(15200+level^2*20)*(14-r)*1/4 ,"T932")
					LuaGive("o_state005j",1,"T932")
					LuaSetTask("top3_taskday",GetCurrentDay())
					LuaSetTask("Top_type3",99)
			      else
					LuaSay("ɱ10�������߲��ܽ���Ŷ.")
			      end
			else
				LuaSay("˾�����:�㶼����10��֮��,��������ǲ����Ϸ���Ժܸ����εظ�����,�Ϸ������,��������أ�")
				LuaSay("˾�����:ɱ������ɱ���Լ��ȼ��ߵ��˼������۸�С�ſɲ���Ӣ��@!")
			end
		else
			LuaSay("����������500��֮�⣬���ܲμӴ˻Ŷ��Ŭ���������ڵڶ�����賿4��֮������ܿ������µ�������Ŷ@!")
		end
		
	elseif(LuaQueryTask("Top_type3")==99) then
		LuaSay("˾�����:����������������,ɱ�����е�,�޵���ɱ��,��ĪΪ����С������ɱ��,������������.")
		if(r>=1 and r<=3)then
			AddMenuItem("@7�Ƿ��滻�ƺ�","")
			AddMenuItem("�滻Ϊ�ð�ƺ�","top_title3")
			AddMenuItem("���滻","FQ")
		end
	end

elseif(answer=="Top_type4")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local  r=RangeQuery("NKCount")
	LuaSetTemp("type4",r)
	if (GetCurrentDay()~=LuaQueryStrTask("top4_taskday"))then
		LuaSetTask("Top_type4",0)
	else
		LuaSetTask("Top_type4",99)
	end
	if(LuaQueryTask("Top_type4")==0) then
		LuaSay("˾�����:�����޳�,��������,��Ȼ����Ҳ����������,���Դ�������Բ�������.")
		if(r~=0)then
			LuaSay("Ŀǰ�ڱ��������е�@2"..r.."@0λ")
			if(r>=1 and r<=10) then
				if(LuaQuery("nks")>100)then
					if(r==1)then
						SetTitleMeg(61)
						LuaSay("��ϲ��,��@2"..LuaQueryStr("title").."@0��ƺŷ���Ī��.")
					elseif(r==2)then
						SetTitleMeg(62)
						LuaSay("����@2"..LuaQueryStr("title").."@0�ĳƺ�.")
					elseif(r==3)then
						SetTitleMeg(63)
						LuaSay("����@2"..LuaQueryStr("title").."@0�ĳƺ�,���ٽ�����.")
					end
					LuaSay("˾�����:��ϲ�����ɱ������ǰ10,�Ҵ�������,����͢,��л��.")
					LuaAddJx("combat_exp",(15200+level^2*20)*(14-r)*1/4 ,"T932")
					LuaGive("o_state001j",1,"T932")
					LuaSetTask("top4_taskday",GetCurrentDay())
					LuaSetTask("Top_type4",99)
				else
				LuaSay("ǰ10Ҫ�콱��,����ҲҪɱ100���ְɣ�")
				end
			else
				LuaSay("˾�����:�㶼����10��֮��,�������û���鵽Ű�ֵĿ��,��θ��㣿")
			end
		else
			LuaSay("����������500��֮�⣬���ܲμӴ˻Ŷ��Ŭ���������ڵڶ�����賿4��֮������ܿ������µ�������Ŷ@!")
		end
		
	elseif(LuaQueryTask("Top_type4")==99) then
		LuaSay("˾�����:������Ѿ����һ�ν�����,��ȥ�ѵ�ĥ����,�Թ�����Բ��ܿ�����")
		if(r>=1 and r<=3)then
			AddMenuItem("@7�Ƿ��滻�ƺ�","")
			AddMenuItem("�滻�ƺ�","top_title4")
			AddMenuItem("���滻","FQ")
		end
	end
	 
	 
elseif(answer=="Top_type5")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local r=RangeQuery("rescue_number")
	LuaSetTemp("type5",r)
	if (GetCurrentDay()~=LuaQueryStrTask("top5_taskday"))then
		LuaSetTask("Top_type5",0)
	else
	        LuaSetTask("Top_type5",99)
	end
	if(LuaQueryTask("Top_type5")==0) then
		LuaSay("˾�����:����һ��ʤ��ö�㸡��@%,���Ǿ�����Ϊ���������˿ɰ��İ�����ʹ@y,�Ϸ򾭳��ڰ�æ��ο������.")
		if(r~=0)then
			LuaSay("Ŀǰ�ڱ��������е�@2"..r.."@0λ")
			if(r>=1 and r<=10) then
				if(LuaQuery("rescue_number")>10)then
					if(r==1)then
						SetTitleMeg(64)
						LuaSay("��ϲ��,��@2"..LuaQueryStr("title").."@0��ƺŷ���Ī��.")
					elseif(r==2)then
						SetTitleMeg(65)
						LuaSay("����@2"..LuaQueryStr("title").."@0�ĳƺ�.")
					elseif(r==3)then
						SetTitleMeg(66)
						LuaSay("����@2"..LuaQueryStr("title").."@0�ĳƺ�,���ٽ�����.")
					end
					LuaSay("˾�����:ɱ������,������,ϣ�����ܼ�������,����������ٺ».")
					LuaAddJx("combat_exp",(15200+level^2*20)*(14-r)*1/4 ,"T932")
					LuaGive("o_state056j",1,"T932")
					LuaSetTask("top5_taskday",GetCurrentDay())
					LuaSetTask("Top_type5",99)
				else
					LuaSay("��������ﵽ10����˵�ɣ�")
				end
			else
				LuaSay("˾�����:�㶼����10��֮��,��������ǲ���")
			end
		else
			LuaSay("����������500��֮�⣬���ܲμӴ˻Ŷ��Ŭ���������ڵڶ�����賿4��֮������ܿ������µ�������Ŷ@!")
		end
		
	elseif(LuaQueryTask("Top_type5")==99) then
		LuaSay("˾�����:������Ѿ����һ�ν�����,���������ɣ�")
		if(r>=1 and r<=3)then
		AddMenuItem("@7�Ƿ��滻�ƺ�","")
		AddMenuItem("�滻�ƺ�","top_title5")
		AddMenuItem("���滻","FQ")
		end
	 end

elseif(answer=="Top_type6")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local r=RangeQuery("till")
	LuaSetTemp("type6",r)
	if (GetCurrentDay()~=LuaQueryStrTask("top6_taskday"))then
	        LuaSetTask("Top_type6",0)
	else
	        LuaSetTask("Top_type6",99)
	end
	if(LuaQueryTask("Top_type6")==0) then
		LuaSay("˾�����:��͢����Ҫ�����������ڵ��Ͷ���,�����������������ĲƸ�ѽ.")
		if(r~=0)then
			LuaSay("Ŀǰ�ڱ��������е�@2"..r.."@0λ")
			if(r>=1 and r<=10) then
				if(LuaQuery("till")>20)then
					if(r==1)then
					SetTitleMeg(67)
					LuaSay("��ϲ��,��@2"..LuaQueryStr("title").."@0��ƺŷ���Ī��.")
					elseif(r==2)then
					SetTitleMeg(68)
					LuaSay("����@2"..LuaQueryStr("title").."@0�ĳƺ�.")
					elseif(r==3)then
					SetTitleMeg(69)
					LuaSay("����@2"..LuaQueryStr("title").."@0�ĳƺ�,���ٽ�����.")
					end
					LuaSay("˾�����:�Ͷ��ǹ��ٵ�,û�Ͷ���,���ǳ�ɶ,û�Ͷ�����ֲ,���ǳ�ɶ����û��û���ҳ������ӻ���ɶ��")
					LuaAddJx("combat_exp",(15200+level^2*20)*(14-r)*1/4 ,"T932")
					LuaGive("o_state032j",1,"T932")
					LuaSetTask("top6_taskday",GetCurrentDay())
					LuaSetTask("Top_type6",99)
				else
					LuaSay("�ɼ��ɹ�20�������ɣ��κ���ҵ��Ӧ���б�׼��.")
				end
			else
				LuaSay("˾�����:�㶼����10��֮��,Ҫ����Ŭ��ѽ,��ģ���Ǻ������,���ܿ���Ц.")
			end
		else
			LuaSay("����������500��֮�⣬���ܲμӴ˻Ŷ��Ŭ���������ڵڶ�����賿4��֮������ܿ������µ�������Ŷ@!")
		end
		
	elseif(LuaQueryTask("Top_type6")==99) then
		LuaSay("˾�����:������Ѿ����һ�ν�����,����Ի��������а��������������.")
		if(r>=1 and r<=3)then
			AddMenuItem("�滻Ϊ�ð�ƺ�","top_title6")
			AddMenuItem("���滻","FQ")
		end
	end
elseif(answer=="Top_type7")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local r=RangeQuery("WinCount")
	LuaSetTemp("type7",r)
	if (GetCurrentDay()~=LuaQueryStrTask("top7_taskday"))then
		LuaSetTask("Top_type7",0)
	else
	        LuaSetTask("Top_type7",99)
	end
	if(LuaQueryTask("Top_type7")==0) then
		LuaSay("˾�����:�Ϸ���Ϊ����,�����ζ����뽫ʿ����սɳ��,׳ʿ���ͷ�²��,Ц����ūѪ,�ǲ��ǿ���������")
		if(r~=0)then
			LuaSay("Ŀǰ�ڱ��������е�@2"..r.."@0λ")
			if(r>=1 and r<=10) then
				if(r==1)then
					SetTitleMeg(70)
					LuaSay("��ϲ��,��@2"..LuaQueryStr("title").."@0��ƺŷ���Ī��.")
				elseif(r==2)then
					SetTitleMeg(71)
					LuaSay("����@2"..LuaQueryStr("title").."@0�ĳƺ�.")
				elseif(r==3)then
					SetTitleMeg(72)
					LuaSay("����@2"..LuaQueryStr("title").."@0�ĳƺ�,���ٽ�����.")
				end
				LuaSay("˾�����:����ʤ��֮��,���������½�ɽ�ĸ���,��Щٺ»��������Ī��.")
				LuaAddJx("combat_exp",(15200+level^2*20)*(14-r)*1/4 ,"T932")
				LuaGive("o_state016j",1,"T932")
				LuaSetTask("top7_taskday",GetCurrentDay())
				LuaSetTask("Top_type7",99)
			else
				LuaSay("˾�����:�㶼����10��֮��,�������������ҵ����̣�")
			end
		else
			LuaSay("����������500��֮�⣬���ܲμӴ˻Ŷ��Ŭ���������ڵڶ�����賿4��֮������ܿ������µ�������Ŷ@!")
		end
		
	elseif(LuaQueryTask("Top_type7")==99) then
		LuaSay("˾�����:�����ٺ»���Ѿ�����,������������")
		if(r>=1 and r<=3)then
			AddMenuItem("@7�Ƿ��滻�ƺ�","")
			AddMenuItem("�滻�ƺ�","top_title7")
			AddMenuItem("���滻","FQ")
		end
	end
elseif(answer=="Top_type8")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local r=RangeQuery("dead_count")
	LuaSetTemp("type8",r)
	if (GetCurrentDay()~=LuaQueryStrTask("top8_taskday"))then
		LuaSetTask("Top_type8",0)
	else
		LuaSetTask("Top_type8",99)
	end
	if(LuaQueryTask("Top_type8")==0) then
		LuaSay("˾�����:����ɱ���Ҳ�����,��ɱ����Ҳ������,��סҪ�Ե·���,�Ե²��ܷ���.")
		if(r~=0)then
			LuaSay("Ŀǰ�ڱ��������е�@2"..r.."@0λ")
			if(r>=1 and r<=10) then
				if(r==1)then
					SetTitleMeg(73)
					LuaSay("��ϲ��,��@2"..LuaQueryStr("title").."@0��ƺŷ���Ī��.")
				elseif(r==2)then
					SetTitleMeg(74)
					LuaSay("����@2"..LuaQueryStr("title").."@0�ĳƺ�.")
				elseif(r==3)then
					SetTitleMeg(75)
					LuaSay("����@2"..LuaQueryStr("title").."@0�ĳƺ�,���ٽ�����.")
				end
				LuaSay("˾�����:ˮ��������,�������޵�,Сǿ�����Ǻ���Ƥ,��Ҳ������״Ԫ��,���˾͵��������������.")
				LuaAddJx("combat_exp",(15200+level^2*20)*(14-r)*1/4 ,"T932")
				LuaGive("o_state053j",1,"T932")
				LuaSetTask("top8_taskday",GetCurrentDay())
				LuaSetTask("Top_type8",99)
			else
				LuaSay("˾�����:�㶼����10��֮��,��������ǲ���")
			end
		else
			LuaSay("����������500��֮�⣬���ܲμӴ˻Ŷ��Ŭ���������ڵڶ�����賿4��֮������ܿ������µ�������Ŷ@!")
		end
		
	elseif(LuaQueryTask("Top_type8")==99) then
		LuaSay("˾�����:������Ѿ����һ�ν�����,��סҪ�Ե·���,�����������ɣ�")
		if(r>=1 and r<=3)then
			AddMenuItem("@7�Ƿ��滻�ƺ�","")
			AddMenuItem("�滻�ƺ�","top_title8")
			AddMenuItem("���滻","FQ")
		end
	end
	      
elseif(answer=="Top_type9")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local r=RangeQuery("out_prison_num")
	LuaSetTemp("type9",r)
	if (GetCurrentDay()~=LuaQueryStrTask("top9_taskday"))then
		LuaSetTask("Top_type9",0)
	else
	        LuaSetTask("Top_type9",99)
	end
	if(LuaQueryTask("Top_type9")==0) then
		LuaSay("˾�����:�Թ������߶�Ϊ��������,·������һ����,�ó���ʱ�ͳ��ְ�,���˴��ɷ�.")
		if(r~=0)then
			LuaSay("Ŀǰ�ڱ��������е�@2"..r.."@0λ")
			if(r>=1 and r<=10) then
				if(LuaQuery("out_prison_num")>1) then 
					if(r==1)then
						SetTitleMeg(76)
						LuaSay("��ϲ��,��@2"..LuaQueryStr("title").."@0��ƺŷ���Ī��.")
					elseif(r==2)then
						SetTitleMeg(77)
						LuaSay("����@2"..LuaQueryStr("title").."@0�ĳƺ�.")
					elseif(r==3)then
						SetTitleMeg(78)
						LuaSay("����@2"..LuaQueryStr("title").."@0�ĳƺ�,���ٽ�����.")
					end
					LuaSay("˾�����:�������еĶ���Ҳ���Ǹ���ú�,�ƶ�֮������ֵܷ���,����Ȼ������ǰ10�ض�������ڵ����ɣ���͢��Ȼ���Ź��˲�.")
					LuaAddJx("combat_exp",(15200+level^2*20)*(14-r)*1/4 ,"T932")
					LuaGive("o_state027j",1,"T932")
					LuaSetTask("top9_taskday",GetCurrentDay())
					LuaSetTask("Top_type9",99)
				else
					LuaSay("���ζ�û����һ��,����������ˮ��,���������˵Ĳ�������ˣ�")
				end
			else
				LuaSay("˾�����:����������,���˰�ǰ10��û��,Ҳ�����ƶ��ˣ������������͵��Լ��Ǻ���᣿")
			end
		else
			LuaSay("����������500��֮�⣬���ܲμӴ˻Ŷ��Ŭ���������ڵڶ�����賿4��֮������ܿ������µ�������Ŷ@!")
		end
		
	elseif(LuaQueryTask("Top_type9")==99) then
		LuaSay("˾�����:������Ѿ����һ�ν�����,������Ӧ�����Ƶ㰡.")
		if(r>=1 and r<=3)then
			AddMenuItem("@7�Ƿ��滻�ƺ�","")
			AddMenuItem("�滻�ƺ�","top_title9")
			AddMenuItem("���滻","FQ")
		end
	end
	      
elseif(answer=="Top_type10")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
        local r=RangeQuery("graduate_prentice")
	LuaSetTemp("type10",r)
	if (GetCurrentDay()~=LuaQueryStrTask("top10_taskday"))then
		LuaSetTask("Top_type10",0)
	else
	        LuaSetTask("Top_type10",99)
	end
	if(LuaQueryTask("Top_type10")==0) then
		LuaSay("˾�����:�����ƽ���Ϊ��,�Ϸ�һ����ʦ�ؽ�,�����ڽ�������ȷʵ����,ֻ�ܽ���ǰ10��.")
		if(r~=0)then
			LuaSay("Ŀǰ�ڱ��������е�@2"..r.."@0λ")
			if(r>=1 and r<=10) then
				if(LuaQuery("graduate_prentice")>0)then
					if(r==1)then
						SetTitleMeg(79)
						LuaSay("��ϲ��,��@2"..LuaQueryStr("title").."@0��ƺŷ���Ī��.")
					elseif(r==2)then
						SetTitleMeg(80)
						LuaSay("����@2"..LuaQueryStr("title").."@0�ĳƺ�.")
					elseif(r==3)then
						SetTitleMeg(81)
						LuaSay("����@2"..LuaQueryStr("title").."@0�ĳƺ�,���ٽ�����.")
					end
					LuaSay("˾�����:ң��1600�����,���˸���ѧ�Ļ���,��˵��Щ�����Ϲ���ѧ���˺���,���Ϲ���ѧ���ĵ��ܶ࣡�����˸п�ѽ��")
					LuaAddJx("combat_exp",(15200+level^2*20)*(14-r)*1/4 ,"T932")
					LuaGive("o_state012j",1,"T932")
					LuaSetTask("top10_taskday",GetCurrentDay())
					LuaSetTask("Top_type10",99)
				else
					LuaSay("������ʦ��ͽ�ܶ�û��,Ҳ��������ʦ��")
				end
			else
				LuaSay("˾�����:��Ŀǰ������10��֮��,�������ǽ���������Ҫ�μǣ�")
			end
		else
			LuaSay("����������500��֮�⣬���ܲμӴ˻Ŷ��Ŭ���������ڵڶ�����賿4��֮������ܿ������µ�������Ŷ@!")
		end
	elseif(LuaQueryTask("Top_type10")==99) then
		LuaSay("˾�����:�������ٺ»�Ѿ�����,��զ�����أ��������ְҵ�ɲ�������.")
		if(r>=1 and r<=3)then
			AddMenuItem("@7�Ƿ��滻�ƺ�","")
			AddMenuItem("�滻�ƺ�","top_title10")
			AddMenuItem("���滻","FQ")
		end
	end
elseif(answer=="Top_type11")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
        local r=RangeQuery("tjreward_count")
	LuaSetTemp("type11",r)
	if (GetCurrentDay()~=LuaQueryStrTask("top11_taskday"))then
		LuaSetTask("Top_type11",0)
	else
	        LuaSetTask("Top_type11",99)
	end
	if(LuaQueryTask("Top_type11")==0) then
		LuaSay("˾�����:�����Ƽ����������г����Ϸ���գ��������ޣ�����ֻ�ܽ���ǰ10�������Ŷ���Ͽ�ȥ�Ƽ�������˰ɡ�")
		if(r~=0)then
			LuaSay("Ŀǰ�ڱ��������е�@2"..r.."@0λ")
			if(r>=1 and r<=10) then
				if(LuaQuery("tjreward_count")>0)then
					if(r==1)then
						SetTitleMeg(104)
						LuaSay("��ϲ��,��@2"..LuaQueryStr("title").."@0��ƺŷ���Ī��.")
					elseif(r==2)then
						SetTitleMeg(104)
						LuaSay("����@2"..LuaQueryStr("title").."@0�ĳƺ�.")
					elseif(r==3)then
						SetTitleMeg(106)
						LuaSay("����@2"..LuaQueryStr("title").."@0�ĳƺ�,���ٽ�����.")
					end
					LuaSay("˾�����:��ͬ����һ���˶�������г�ġ�ͳһOL����ᣬ����Ҫ����һ��Ŭ����")
					LuaAddJx("combat_exp",(15200+level^2*20)*(14-r)*1/4 ,"T932")
					LuaGive("o_ybsc002j",1,"T932")
					LuaSetTask("top11_taskday",GetCurrentDay())
					LuaSetTask("Top_type11",99)
				else
					LuaSay("��һ���˶�û���Ƽ�������ô������ȡ������")
				end
			else
				LuaSay("˾�����:��Ŀǰ������10��֮��,�Ƽ�������˾����õ����ߵĽ�����")
			end
		else
		LuaSay("����������500��֮�⣬���ܲμӴ˻Ŷ��Ŭ���������ڵڶ�����賿4��֮������ܿ������µ�������Ŷ@!")
		end
		
	elseif(LuaQueryTask("Top_type11")==99) then
		LuaSay("˾�����:�������ٺ»�Ѿ�����,��զ�����أ��������ְҵ�ɲ�������.")
		if(r>=1 and r<=3)then
			AddMenuItem("@7�Ƿ��滻�ƺ�","")
			AddMenuItem("�滻�ƺ�","top_title11")
			AddMenuItem("���滻","FQ")
		end
	end
	
	
elseif(answer=="top_title1") then
	local r=LuaQueryTemp("type1")
	if(r==1)then
		SetTitleMeg(52)
	elseif(r==2)then
		SetTitleMeg(53)
	elseif(r==3)then
		SetTitleMeg(54)
	else
		LuaSay("���ڱ����а�û��óƺţ������滻������ǰ����˵�ɣ�")
	end
elseif(answer=="top_title2") then
	local r=LuaQueryTemp("type2")
	if(r==1)then
		SetTitleMeg(55)
	elseif(r==2)then
		SetTitleMeg(56)
	elseif(r==3)then
		SetTitleMeg(57)
	else
		LuaSay("���ڱ����а�û��óƺţ������滻������ǰ����˵�ɣ�")
	end
elseif(answer=="top_title3") then
	local r=LuaQueryTemp("type3")
        if(r==1)then
		SetTitleMeg(58)
	elseif(r==2)then
		SetTitleMeg(59)
	elseif(r==3)then
		SetTitleMeg(60)
	else
		LuaSay("���ڱ����а�û��óƺţ������滻������ǰ����˵�ɣ�")
	end
elseif(answer=="top_title4") then
	local r=LuaQueryTemp("type4")
	if(r==1)then
		SetTitleMeg(61)
	elseif(r==2)then
		SetTitleMeg(62)
	elseif(r==3)then
		SetTitleMeg(63)
	else
		LuaSay("���ڱ����а�û��óƺţ������滻������ǰ����˵�ɣ�")
	end
elseif(answer=="top_title5") then
	local r=LuaQueryTemp("type5")
	if(r==1)then
		SetTitleMeg(64)
	elseif(r==2)then
		SetTitleMeg(65)
	elseif(r==3)then
		SetTitleMeg(66)
	else
		LuaSay("���ڱ����а�û��óƺţ������滻������ǰ����˵�ɣ�")
	end
elseif(answer=="top_title6") then
	local r=LuaQueryTemp("type6")
        if(r==1)then
		   SetTitleMeg(67)
	elseif(r==2)then
		SetTitleMeg(68)
	elseif(r==3)then
		SetTitleMeg(69)
	else
		LuaSay("���ڱ����а�û��óƺţ������滻������ǰ����˵�ɣ�")
	end
elseif(answer=="top_title7") then
	local r=LuaQueryTemp("type7")
	if(r==1)then
		SetTitleMeg(70)
	elseif(r==2)then
		SetTitleMeg(71)
	elseif(r==3)then
		SetTitleMeg(72)
	else
		LuaSay("���ڱ����а�û��óƺţ������滻������ǰ����˵�ɣ�")
	end
elseif(answer=="top_title8") then
	local r=LuaQueryTemp("type8")
	if(r==1)then
		SetTitleMeg(73)
	elseif(r==2)then
		SetTitleMeg(74)
	elseif(r==3)then
		SetTitleMeg(75)
	else
		LuaSay("���ڱ����а�û��óƺţ������滻������ǰ����˵�ɣ�")
	end
elseif(answer=="top_title9") then
	local r=LuaQueryTemp("type9")
	if(r==1)then
		SetTitleMeg(76)
	elseif(r==2)then
		SetTitleMeg(77)
	elseif(r==3)then
		SetTitleMeg(78)
	else
		LuaSay("���ڱ����а�û��óƺţ������滻������ǰ����˵�ɣ�")
	end
elseif(answer=="top_title10") then
	local r=LuaQueryTemp("type10")
	if(r==1)then
		SetTitleMeg(79)
	elseif(r==2)then
		SetTitleMeg(80)
	elseif(r==3)then
		SetTitleMeg(81)
	else
		LuaSay("���ڱ����а�û��óƺţ������滻������ǰ����˵�ɣ�")
	end
elseif(answer=="top_title11") then
	local r=LuaQueryTemp("type11")
	if(r==1)then
		SetTitleMeg(104)
	elseif(r==2)then
		SetTitleMeg(105)
	elseif(r==3)then
		SetTitleMeg(106)
	else
		LuaSay("���ڱ����а�û��óƺţ������滻������ǰ����˵�ɣ�")
	end
		 
elseif(answer=="FQ") then
			LuaSay("�滻�ƺſ��������滻,������һ��ֻ��һ��.")

------------------------------------------------------������½��ÿ�յ�½����
elseif(answer=="Teveryday_lx") then
    if(LuaQueryStrTask("Teveryday_lx_Taskday")~=GetCurrentDay()) then
		LuaSetTask("Teveryday_lx",0)
		LuaSetTask("Teveryday_lx2",0)
		LuaSetTask("Teveryday_lx_Taskday",GetCurrentDay())
	end
	DLJL={}                          ------��½����
	DLJL[0]={4,"o_state008j",1,"���������","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}        -----����Ч����Ʒ��������������Ʒid����������Ʒ���ƣ�
	DLJL[1]={4,"o_state008j",1,"���������","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[2]={4,"o_state008j",1,"���������","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[3]={4,"o_ybsc002j",1,"ǿ��ʯ","o_state010j",2,"�м������","o_state091j",2,"��ս��","o_food03y",5,"������"}
	DLJL[4]={4,"o_state008j",1,"���������","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[5]={4,"o_state008j",1,"���������","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[6]={4,"o_state008j",1,"���������","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[7]={4,"o_ybsc002j",1,"ǿ��ʯ","o_state010j",2,"�м������","o_state091j",2,"��ս��","o_food03y",10,"������"}
	DLJL[8]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[9]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[10]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	
	DLJL[11]={4,"o_ybsc002j",1,"ǿ��ʯ","o_state010j",2,"�м������","o_state091j",2,"��ս��","o_food03y",10,"������"}
	DLJL[12]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[13]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[14]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[15]={4,"o_ybsc002j",1,"ǿ��ʯ","o_state010j",2,"�м������","o_state091j",2,"��ս��","o_food03y",10,"������"}
	DLJL[16]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[17]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[18]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[19]={4,"o_ybsc002j",1,"ǿ��ʯ","o_state010j",2,"�м������","o_state091j",2,"��ս��","o_food03y",10,"������"}
	DLJL[20]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	
	DLJL[21]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[22]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[23]={4,"o_ybsc002j",1,"ǿ��ʯ","o_state010j",2,"�м������","o_state091j",2,"��ս��","o_food03y",10,"������"}
	DLJL[24]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[25]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[26]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[27]={4,"o_ybsc002j",1,"ǿ��ʯ","o_state010j",2,"�м������","o_state091j",2,"��ս��","o_food03y",10,"������"}
	DLJL[28]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[29]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[30]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	
	DLJL[31]={4,"o_ybsc002j",1,"ǿ��ʯ","o_state010j",2,"�м������","o_state091j",2,"��ս��","o_food03y",10,"������"}
	DLJL[32]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[33]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[34]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[35]={4,"o_ybsc002j",1,"ǿ��ʯ","o_state010j",2,"�м������","o_state091j",2,"��ս��","o_food03y",10,"������"}
	DLJL[36]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[37]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[38]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[39]={4,"o_ybsc002j",1,"ǿ��ʯ","o_state010j",2,"�м������","o_state091j",2,"��ս��","o_food03y",10,"������"}
	DLJL[40]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	
	DLJL[41]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[42]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[43]={4,"o_ybsc002j",1,"ǿ��ʯ","o_state010j",2,"�м������","o_state091j",2,"��ս��","o_food03y",10,"������"}
	DLJL[44]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[45]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[46]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[47]={4,"o_ybsc002j",1,"ǿ��ʯ","o_state010j",2,"�м������","o_state091j",2,"��ս��","o_food03y",10,"������"}
	DLJL[48]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[49]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[50]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	
	DLJL[51]={4,"o_ybsc002j",1,"ǿ��ʯ","o_state010j",2,"�м������","o_state091j",2,"��ս��","o_food03y",10,"������"}
	DLJL[52]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[53]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[54]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[55]={4,"o_ybsc002j",1,"ǿ��ʯ","o_state010j",2,"�м������","o_state091j",2,"��ս��","o_food03y",10,"������"}
	DLJL[56]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[57]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[58]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[59]={4,"o_ybsc002j",1,"ǿ��ʯ","o_state010j",2,"�м������","o_state091j",2,"��ս��","o_food03y",10,"������"}
	DLJL[60]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	
	DLJL[61]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[62]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[63]={4,"o_ybsc002j",1,"ǿ��ʯ","o_state010j",2,"�м������","o_state091j",2,"��ս��","o_food03y",10,"������"}
	DLJL[64]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[65]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[66]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[67]={4,"o_ybsc002j",1,"ǿ��ʯ","o_state010j",2,"�м������","o_state091j",2,"��ս��","o_food03y",10,"������"}
	DLJL[68]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[69]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[70]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	
	DLJL[71]={4,"o_ybsc002j",1,"ǿ��ʯ","o_state010j",2,"�м������","o_state091j",2,"��ս��","o_food03y",10,"������"}
	DLJL[72]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[73]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[74]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[75]={4,"o_ybsc002j",1,"ǿ��ʯ","o_state010j",2,"�м������","o_state091j",2,"��ս��","o_food03y",10,"������"}
	DLJL[76]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[77]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[78]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}         
	DLJL[79]={4,"o_ybsc002j",1,"ǿ��ʯ","o_state010j",2,"�м������","o_state091j",2,"��ս��","o_food03y",10,"������"}
	DLJL[80]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	
	DLJL[81]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[82]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[83]={4,"o_ybsc002j",1,"ǿ��ʯ","o_state010j",2,"�м������","o_state091j",2,"��ս��","o_food03y",10,"������"}
	DLJL[84]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[85]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[86]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[87]={4,"o_ybsc002j",1,"ǿ��ʯ","o_state010j",2,"�м������","o_state091j",2,"��ս��","o_food03y",10,"������"}
	DLJL[88]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[89]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}	
	DLJL[90]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	
	DLJL[91]={4,"o_ybsc002j",1,"ǿ��ʯ","o_state010j",2,"�м������","o_state091j",2,"��ս��","o_food03y",10,"������"}
	DLJL[92]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[93]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[94]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[95]={4,"o_ybsc002j",1,"ǿ��ʯ","o_state010j",2,"�м������","o_state091j",2,"��ս��","o_food03y",10,"������"}
	DLJL[96]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[97]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[98]={4,"o_state012j",1,"˫����","o_state065j",1,"Ѫ��1","o_state068j",1,"ħ��1","o_state001j",1,"˫����"}
	DLJL[99]={4,"o_ybsc002j",1,"ǿ��ʯ","o_state010j",2,"�м������","o_state091j",2,"��ս��","o_food03y",10,"������"}


    

    local DLYB={}                                                  ------������Ʒid,����,���ơ���ȡ����Ʒid,����,����
    DLYB[0]={"o_gold1y",10,"ͨ��","o_box004j",2,"��������"}   
    DLYB[1]={"o_gold1y",15,"ͨ��","o_resetpoint1y",1,"ϴ��ȯ"}
    DLYB[2]={"o_gold1y",25,"ͨ��","o_changeclass1y",1,"תְ����"}
    DLYB[3]={"o_gold1y",30,"ͨ��","o_box005j",3,"�ƽ���"}
    DLYB[4]={"o_gold1y",10,"ͨ��","o_box004j",2,"��������"}   
    DLYB[5]={"o_gold1y",15,"ͨ��","o_resetpoint1y",1,"ϴ��ȯ"}
    DLYB[6]={"o_gold1y",25,"ͨ��","o_changeclass1y",1,"תְ����"}
    DLYB[7]={"o_gold1y",30,"ͨ��","o_box005j",3,"�ƽ���"}
    DLYB[8]={"o_gold1y",10,"ͨ��","o_box004j",2,"��������"}   
    DLYB[9]={"o_gold1y",15,"ͨ��","o_resetpoint1y",1,"ϴ��ȯ"}
    DLYB[10]={"o_gold1y",25,"ͨ��","o_changeclass1y",1,"תְ����"}
    DLYB[11]={"o_gold1y",30,"ͨ��","o_box005j",3,"�ƽ���"}
    DLYB[12]={"o_gold1y",10,"ͨ��","o_box004j",2,"��������"}   
    DLYB[13]={"o_gold1y",15,"ͨ��","o_resetpoint1y",1,"ϴ��ȯ"}
    DLYB[14]={"o_gold1y",25,"ͨ��","o_changeclass1y",1,"תְ����"}
    DLYB[15]={"o_gold1y",30,"ͨ��","o_box005j",3,"�ƽ���"}
    DLYB[16]={"o_gold1y",10,"ͨ��","o_box004j",2,"��������"}   
    DLYB[17]={"o_gold1y",15,"ͨ��","o_resetpoint1y",1,"ϴ��ȯ"}
    DLYB[18]={"o_gold1y",25,"ͨ��","o_changeclass1y",1,"תְ����"}
    DLYB[19]={"o_gold1y",30,"ͨ��","o_box005j",3,"�ƽ���"}



	local CTOL=LuaQuery("Continue_OL")
	local CTOL_cishu=floor(CTOL/3)                                           ---------�콱
	if(CTOL_cishu>=100) then
		CTOL_cishu=CTOL_cishu-(floor(CTOL_cishu/100))*100
	end

	local CTOL_cishu2=floor(CTOL/15)
	if(CTOL_cishu2>=20) then
		CTOL_cishu2=CTOL_cishu2-(floor(CTOL_cishu2/20))*20                -----------Ԫ������Ʒ
	end
	LuaSetTemp("CTOL_cishu2",CTOL_cishu2)
	local CTOL_yushu 
	local CTOL_yushu2
	if((CTOL-(floor(CTOL/3))*3 )<0)then
		CTOL_yushu=-(CTOL-(floor(CTOL/3))*3 )
	else
		CTOL_yushu=(CTOL-(floor(CTOL/3))*3 )
	end
	if((CTOL-(floor(CTOL/15))*15 )<0)then
		CTOL_yushu2=-(CTOL-(floor(CTOL/15))*15 )
	else
		CTOL_yushu2=(CTOL-(floor(CTOL/15))*15 )
	end
	LuaSetTemp("CTOL_yushu2",CTOL_yushu2)
	LuaSay("˾����ӣ�ֻҪ��������½�����ﵽһ��Ҫ��,���ܻ�ý���,�����м�1����,����2������δ��¼ʱ,������½�����ᱻ���õģ�")
	if(CTOL_yushu== 0 )then
     		if(LuaQueryTask("Teveryday_lx")==0)then
			if(LuaFreeBag()>=4)then
				LuaSay("˾����ӣ���������½��3��,���Ǹ���Ľ�����")
				if(LuaRandom(2)==0)then
					LuaGive(DLJL[CTOL_cishu][2],DLJL[CTOL_cishu][3],"Teveryday_lx")
				end
					LuaGive(DLJL[CTOL_cishu][5],DLJL[CTOL_cishu][6],"Teveryday_lx")   
					LuaGive(DLJL[CTOL_cishu][8],DLJL[CTOL_cishu][9],"Teveryday_lx")
					LuaGive(DLJL[CTOL_cishu][11],DLJL[CTOL_cishu][12],"Teveryday_lx")
					LuaSetTask("Teveryday_lx",99)
			else
				LuaSay("��ʾ���뱣������4��ı�����λŶ����Ȼ�ᵼ�½�����Ʒ��ʧ@!")
			end
		else
		LuaSay("˾����ӣ���������½�Ľ��������Ѿ�����ˣ�@2"..(3-CTOL_yushu).."��@0�������콱�ˣ�")   
		end
	else
		local a = CTOL_cishu + 1  
		LuaSay("˾����ӣ�@3"..(3-CTOL_yushu).."��@0�������ȡ��"..DLJL[a][6].."��@2"..DLJL[a][7].."@0��"..DLJL[a][9].."��@2"..DLJL[a][10].."@0��"..DLJL[a][12].."��@2"..DLJL[a][13].."@0��")
		LuaSay("˾����ӣ�����㹻���ˣ����ܶ������ȡ��"..DLJL[a][3].."��@2"..DLJL[a][4].."@0Ŷ��")
		LuaSay("�ر����ѣ�������½��ʱ��Խ��Խ����Ŷ��")
	end
	if(CTOL_yushu2 == 0 )then
	    if(LuaQueryTask("Teveryday_lx2")==0)then
		LuaSay("˾����ӣ���������½��15��,��������������@3"..DLYB[CTOL_cishu2][2].."@0��@9"..DLYB[CTOL_cishu2][3].."@0��ȡ@3"..DLYB[CTOL_cishu2][5].."@0��@5"..DLYB[CTOL_cishu2][6].."@0��")
 		AddMenuItem("@7��ȡԪ����Ʒ","")
		AddMenuItem("@3��","Teveryday_lx_YES")
		AddMenuItem("@3��","Teveryday_lx_NO")
		else
		LuaSay("˾����ӣ�������Ԫ����Ʒ�Ѿ���ȡ���ˣ��´ο�������������@3"..DLYB[CTOL_cishu2+1][2].."@0��@9"..DLYB[CTOL_cishu2+1][3].."@0��ȡ@3"..DLYB[CTOL_cishu2+1][5].."@0��@5"..DLYB[CTOL_cishu2+1][6].."@0��")
		end
	else
	LuaSay("˾����ӣ�@2"..(15-CTOL_yushu2).."��@0��,��������������@3"..DLYB[CTOL_cishu2+1][2].."@0��@9"..DLYB[CTOL_cishu2+1][3].."@0��ȡ@3"..DLYB[CTOL_cishu2+1][5].."@0��@5"..DLYB[CTOL_cishu2+1][6].."@0��")
	end
elseif(answer=="Teveryday_lx_YES") then
	local CTOL_yushu2=LuaQueryTemp("CTOL_yushu2")
	local CTOL_cishu2=LuaQueryTemp("CTOL_cishu2")
	 local DLYB={}
	 DLYB[0]={"o_gold1y",10,"ͨ��","o_box004j",2,"��������"}   
    DLYB[1]={"o_gold1y",15,"ͨ��","o_resetpoint1y",1,"ϴ��ȯ"}
    DLYB[2]={"o_gold1y",25,"ͨ��","o_changeclass1y",1,"תְ����"}
    DLYB[3]={"o_gold1y",30,"ͨ��","o_box005j",3,"�ƽ���"}
    DLYB[4]={"o_gold1y",10,"ͨ��","o_box004j",2,"��������"}   
    DLYB[5]={"o_gold1y",15,"ͨ��","o_resetpoint1y",1,"ϴ��ȯ"}
    DLYB[6]={"o_gold1y",25,"ͨ��","o_changeclass1y",1,"תְ����"}
    DLYB[7]={"o_gold1y",30,"ͨ��","o_box005j",3,"�ƽ���"}
    DLYB[8]={"o_gold1y",10,"ͨ��","o_box004j",2,"��������"}   
    DLYB[9]={"o_gold1y",15,"ͨ��","o_resetpoint1y",1,"ϴ��ȯ"}
    DLYB[10]={"o_gold1y",25,"ͨ��","o_changeclass1y",1,"תְ����"}
    DLYB[11]={"o_gold1y",30,"ͨ��","o_box005j",3,"�ƽ���"}
    DLYB[12]={"o_gold1y",10,"ͨ��","o_box004j",2,"��������"}   
    DLYB[13]={"o_gold1y",15,"ͨ��","o_resetpoint1y",1,"ϴ��ȯ"}
    DLYB[14]={"o_gold1y",25,"ͨ��","o_changeclass1y",1,"תְ����"}
    DLYB[15]={"o_gold1y",30,"ͨ��","o_box005j",3,"�ƽ���"}
    DLYB[16]={"o_gold1y",10,"ͨ��","o_box004j",2,"��������"}   
    DLYB[17]={"o_gold1y",15,"ͨ��","o_resetpoint1y",1,"ϴ��ȯ"}
    DLYB[18]={"o_gold1y",25,"ͨ��","o_changeclass1y",1,"תְ����"}
    DLYB[19]={"o_gold1y",30,"ͨ��","o_box005j",3,"�ƽ���"}
	if(LuaItemStatusNormalCount(DLYB[CTOL_cishu2][1])>=DLYB[CTOL_cishu2][2])then
		DelItem(DLYB[CTOL_cishu2][1],DLYB[CTOL_cishu2][2])
		LuaGive(DLYB[CTOL_cishu2][4],DLYB[CTOL_cishu2][5],"Teveryday_lx2")
		LuaSetTask("Teveryday_lx2",99)
	else
		LuaSay("˾����ӣ������ϵ�@9"..DLYB[CTOL_cishu2][3].."@0����@3"..DLYB[CTOL_cishu2][2].."@0��,���ռ�@3"..DLYB[CTOL_cishu2][2].."@0���������ɣ�")
	end
elseif(answer=="Teveryday_lx_NO") then
    LuaSay("˾����ӣ���������,���ڲ���Ŷ��")


elseif(answer=="Teveryday") then
		if(LuaQueryStrTask("everyday_SJ_Taskday")~=GetCurrentDay()) then
		MRSJ_r=LuaRandom(3)
		LuaSetTask("everyday_SJ",0)
		LuaSetTask("everyday_SJ_Taskday",GetCurrentDay())
		end
		AddMenuItem("@7ÿ�յ�½����","")
		AddMenuItem("@3�̶�����","everyday_GD")
		AddMenuItem("@3�������","everyday_SJ")
		AddMenuItem("@3�齱","everyday_YB")

elseif(answer=="everyday_GD") then         ----------ÿ�չ̶�����
	if(LuaQueryStrTask("everyday_GD_Taskday")~=GetCurrentDay()) then
		LuaSetTask("everyday_GD",0)
		LuaSetTask("everyday_GD_Taskday",GetCurrentDay())
	end
	if(LuaQueryTask("everyday_GD")==0)then
		LuaSay("˾����ӣ��Ǻ�,���Ǹ����ÿ�չ̶�������")
		LuaGive("o_food01",10,"everyday_GD")
		LuaSetTask("everyday_GD",99)
	else
	    LuaSay("˾����ӣ����ÿ�չ̶����������Ѿ������,���������ɣ�")
	end
elseif(answer=="everyday_SJ") then         ----------ÿ���������
	local level= LuaQuery("level")
		if(level>80)then
		level=80
	end
	if(LuaQueryTask("everyday_SJ")==0)then
		local lv_exp
		LuaSay("˾����ӣ��Ǻ�,���Ǹ����ÿ�����������")
		if(LuaQuery("level")<30) then
			lv_exp=30000
		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
			lv_exp=70000
		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
			lv_exp=150000
		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
			lv_exp=200000
		elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
			lv_exp=400000
		elseif(LuaQuery("level")>=70 ) then
			lv_exp=1000000
		end
  		local SJ_exp=lv_exp+(LuaRandom(20)+1)*level^2
		LuaAddJx("combat_exp",SJ_exp,"everyday_SJ")
		LuaSetTask("everyday_SJ",99)
	else
	    LuaSay("˾����ӣ����ÿ��������������Ѿ������,���������ɣ�")
    end
elseif(answer=="everyday_YB") then         ----------ÿ��YB����
    if(LuaQueryStrTask("everyday_YB_Taskday")~=GetCurrentDay()) then
		LuaSetTask("everyday_YB",0)
		LuaSetTask("everyday_YB_Taskday",GetCurrentDay())
	end
	if(LuaQueryTask("everyday_YB")==0)then
		LuaSay("˾����ӣ��Ǻ�,�������1��@8��Ʊ@0����ȡÿ��Ԫ����������û�,������,ȫ����Ʒ��")
		if(LuaItemCount("o_gold2y")>=1 or LuaItemCount("o_gold2j")>=1)then
			AddMenuItem("@7ÿ�ճ齱","")
			AddMenuItem("@3�ٵȵ�","everyday_YB_NO")
			AddMenuItem("@3�齱","everyday_YB_YES")
		else
		LuaSay("˾����ӣ�������û��@8��Ʊ@0,������1�����У�")
		end
	else
	    LuaSay("˾����ӣ����ÿ��Ԫ�����������Ѿ������,���������ɣ�")
    end
elseif(answer=="everyday_YB_NO") then
	LuaSay("˾����ӣ���Ȼ���,������Ҫ�������ɣ�")
elseif(answer=="everyday_YB_YES") then
	LuaSay("˾����ӣ��Ǻ�,���Ǹ����ÿ��Ԫ����������û�,������,ȫ����Ʒ��")
	DelItem("o_gold2y",1)
	local YB_r=LuaRandom(6)
	if(YB_r==0)then
		LuaGive("o_food02",8,"everyday_YB")
	elseif(YB_r==1)then
		LuaGive("o_food01",20,"everyday_YB")
	elseif(YB_r==2)then
		LuaGive("o_food03",2,"everyday_YB")
	elseif(YB_r==3)then
		LuaGive("o_state008j",3,"everyday_YB")
	elseif(YB_r==4)then
		LuaGive("o_state065j",1,"everyday_YB")
	elseif(YB_r==5)then
		LuaGive("o_state068j",1,"everyday_YB")
	end
	LuaSetTask("everyday_YB",99)
elseif(answer=="Tsnpc_27")then
	if(LuaQueryTask("Tsnpc_27")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("˾����ӣ����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_27",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_27")==2)then
		LuaSay("˾����ӣ����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_27")then
	if(LuaQueryTask("Tenpc_27")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("˾����ӣ��ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_27",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_27")==2)then
		LuaSay("˾����ӣ����Ѿ������ˣ����ȥ��ȡ������")
	end

end 
LuaSendMenu()
return 1
end 