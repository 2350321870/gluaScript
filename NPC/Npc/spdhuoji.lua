NPCINFO = {
serial= "35" ,
base_name="spdhuoji",
icon= 2507,
NpcMove=2507,
name= "��Ʒ���ˡ��̡�" ,
iconaddr=1, 
butt="15|10|63", 
name_color = "CEFFCE" , 
lastsay="��ʯ���Զ��һ��������",
have_sell_item=1,
LuaType=1,
}
addBuyitem={
count=11,
{"e_necklace001" , 2000  , 8 },
{"e_necklace003" , 2000  , 8 },
{"e_necklace005" , 2000  , 8 },
{"e_earring001" , 2000  , 8 },
{"e_earring003" , 2000  , 8 },
{"e_earring005" , 2000  , 8 },
--{"o_transmittal_05" , 2000  , 8 },                --��ᱵ���
--{"o_transmittal_06" , 2000  , 8 },                --��Ⱥ��
{"o_key100" , 2000  , 8 },
{"o_key101" , 2000  , 8 },
{"o_key102" , 2000  , 8 },
{"o_key103" , 2000  , 8 },
{"o_key104" , 2000  , 8 },
}

function do_talk(answer)
 if (answer=="ask") then
        havetask =0
        local level= LuaQuery("level")
        local T150= LuaQueryTask("T150")
	local T265=LuaQueryTask("T265")
	local T265C=LuaQueryTask("T265C")
        AddTopSayMenuItem("@7�����б�","")
        AddTopSayMenuItem("@3����","buy1")
	if((LuaQueryTask("Tsnpc_22")==1 or LuaQueryTask("Tsnpc_22")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_22")
		if(LuaQueryTask("Tsnpc_22")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_22")==1 or LuaQueryTask("Tenpc_22")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_22")
		if(LuaQueryTask("Tenpc_22")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T385")==1)then
		if(LuaQueryTask("TfindNPC_4")==1 or LuaQueryTask("TfindNPC_4")==2)then
			AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
			havetask=2
		end
	elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_4")==98)then
		AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
	end
	
        if(LuaQueryTask("TPaoShang")==1)then
		AddTopSayMenuItem("@2���̡�ÿ�ա�","TPaoShang")          ----------����
		havetask =2
		end
		if(LuaQueryTask("Tcoc")==1)then
			AddTopSayMenuItem("@2�̼���","Tcoc")
			havetask =2
			end
		if(LuaQueryTask("T265")==1 and LuaQueryTask("T265C")==0)  then
			AddTopSayMenuItem("@2���ٽ��������顿","T265C")
			havetask =2
		end

		if(level>=20)  then
			AddTopSayMenuItem("@7Ե���ڴˡ�ÿ�ա�@0","Tfind")
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
	LuaSay("��Ʒ���ˣ���ƷҲ�Ǳز����ٵ�װ����ɱ��PK֮�ر������򲻿ɺ��Ӱ���")
elseif(answer=="buy1") then
      	if(LuaQueryTask("lendmoney")~=0 and floor(GetCurrentTime()/86400)-LuaQueryTask("lend_day")-floor(LuaQueryTask("credit")/10)*7-7>7)then
		LuaSay("@1������Ĵ����ѹ�����δ�����̽��������������˻��ɣ���ʱ��ֹ�����������")
		LuaSay("@1����ȥ����Ǯׯ�Ĵ�������������,����ʱ�������ֹ�ܶ๦�ܵ�")
	else
		DoBuy()
	end


elseif(answer=="T302H") then
		LuaSay(""..LuaQueryStr("name").."������������Ϸ��������ż���")
       LuaSay("��Ʒ���ˣ���֪���Ϸ���ĸ���ѧ�����Ϸ�д����@!���������������Ҹ�����@!")
		DelItem("o_mission076",1) 
		LuaSetTask("T302H",99)
		UpdateMenu()



elseif(answer=="Tcoc")then---------------------�̼���1 Tcoc===1
	if(LuaQueryTask("Tcoc")==1)then
		LuaSay("��Ʒ����:ƽʱ����Ǯׯ�Ĵ���չ�,�齨�̻���˫���޳�.")
		LuaSetTask("Tcoc",2)
		LuaSetTask("T955",2)
		AddLog("�̼��򱳡�ÿ�ա�",955)
		if(LuaQuery("level")>=25)then
			LuaGive("coin",700,"Tcoc")
		else
			LuaGive("coin",400,"Tcoc")
			LuaGive("o_drug_hp4",2,"Tcoc")
		end
	end
	UpdateMenu()

elseif(answer=="T265C") then                       -----���ٽ��� 
                 if(LuaQueryTask("T265C") ==0) then
    			LuaSay("��Ʒ���ˣ�����������Ҳ�Ǳز����ٵ�װ��Ŷ@!����һ��������������Ҫ13�����ܴ�Ŷ������������@!")
			LuaSetTask("T265C",99)
			LuaGive("e_necklace001",1,1,"T265C")
			UpdateMenu()
			UpdateNPCMenu("xiean")
			end

elseif(answer=="TPaoShang") then------------����
    if((GetCurrentTime()-LuaPublicQuery("PSshuaxin_CD"))>=300) 	 then     -------��Ʒ�۸񣬹���һ��ˢ��ʱ������
        LuaPublicSet("PSshuaxin_CD",GetCurrentTime())   ----------���ù���ˢ��ʱ��
		LuaPublicSet("PS_MN_price1",100*(LuaRandom(20)+90)/100)     -------��Ʒ�۸񲨶���Χ��-10%~25%   ���ݶ�
		LuaPublicSet("PS_FCS_price1",200*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_SJ_price1",300*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_ZZ_price1",500*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_YMZ_price1",1000*(LuaRandom(20)+90)/100)

		LuaPublicSet("PS_MN_price2",100*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_FCS_price2",200*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_SJ_price2",300*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_ZZ_price2",500*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_YMZ_price2",1000*(LuaRandom(20)+90)/100)

		LuaPublicSet("PS_MN_price3",100*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_FCS_price3",200*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_SJ_price3",300*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_ZZ_price3",500*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_YMZ_price3",1000*(LuaRandom(20)+90)/100)

		LuaPublicSet("PS_MN_price4",100*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_FCS_price4",200*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_SJ_price4",300*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_ZZ_price4",500*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_YMZ_price4",1000*(LuaRandom(20)+90)/100)

		LuaPublicSet("PS_MN_price5",100*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_FCS_price5",200*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_SJ_price5",300*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_ZZ_price5",500*(LuaRandom(20)+90)/100)
		LuaPublicSet("PS_YMZ_price5",1000*(LuaRandom(20)+90)/100)
		UpdateMenu()
	end
   -------------------------
   
   
	if(LuaQueryTask("TPaoShang")==1) then
    if(LuaCheckBuff("518")==1)then      --------���̱������
		if(LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit") and(GetCurrentTime()-LuaQueryTask("PSbegin_time"))<3600 and LuaCheckBuff("518")==1)then   -----��ʱ�����̽��������ж�
		LuaSay("��Ʒ���ˣ������´���Ʒ�۸�ˢ�»���@5"..(300-(GetCurrentTime() - LuaPublicQuery("PSshuaxin_CD"))  ).."�룡@0��Ŀǰ�����̽��Ϊ@3"..LuaQueryTask("PSmoney").."ͭ��!@0")
		LuaDeleteBuff("518")
		LuaGiveBuff("518",1)
		LuaSay("���5�������̱���״̬")
    	FlushMyInfo("1")
		if((GetCurrentTime()-LuaQueryTask("PSbegin_time"))>3300 )then   -----������ʱ����
		LuaSay("��Ʒ���ˣ��������������޲���@55����@0�ˣ���@3�Ѷ�������@0�ɣ���Ȼ�������ģ�")
		end
		AddMenuItem("@7��Ʒ�б�","")                  -----------��Ʒ�б��Լ������ڲ˵��ĸ��� 
			AddMenuItem("@3���,����@3"..LuaPublicQuery("PS_MN_price1").."ͭ��@0","PS_MN")
			AddMenuItem("@3���ʯ,����@3"..LuaPublicQuery("PS_FCS_price1").."ͭ��@0","PS_FCS")
			AddMenuItem("@3ˮ��,����@3"..LuaPublicQuery("PS_SJ_price1").."ͭ��@0","PS_SJ")
			AddMenuItem("@3����,����@3"..LuaPublicQuery("PS_ZZ_price1").."ͭ��@0","PS_ZZ")
			AddMenuItem("@3ҹ����,����@3"..LuaPublicQuery("PS_YMZ_price1").."ͭ��@0","PS_YMZ")
		else
		LuaSay("��Ʒ���ˣ������������Ѿ��������޻������̽����������ظ�@4������@0��@3�н�����@0�ɣ�")
		UpdateTopSay("��ظ������ǵ��н����˰�")
		end
    else
    LuaSay("��Ʒ���ˣ������ϵ�@3���̱���״̬@0�Ѿ���ʧ����·���������ܹ������޷��������̣�")
    LuaSay("@1��ʾ@0�����н�����������������ܻ�ö��⽱�����л��ᴥ�����ؽ���������ȷ������������")
    AddMenuItem("@7�����б�","")
	AddMenuItem("@3��������","PS_over")
    end
	end
elseif(answer=="PS_over")then
	DelItem("o_mission376",LuaItemCount("o_mission376"))
	DelItem("o_mission377",LuaItemCount("o_mission377"))
	DelItem("o_mission378",LuaItemCount("o_mission378"))
	DelItem("o_mission379",LuaItemCount("o_mission379"))
	DelItem("o_mission380",LuaItemCount("o_mission380"))
	if(LuaItemCount("o_mission414")~=0) then         ----ɾ�����̽�����
  	DelItem("o_mission414",LuaItemCount("o_mission414"))
  	end
	FlushMyInfo("1")
	LuaSetTask("TPaoShang",99)
	UpdateMenu()
elseif(answer=="PS_MN")then                 ---------------������� 
	AddMenuItem("@7�����б�","")
	AddMenuItem("@3��1��","PS_MN_buy_1")
	AddMenuItem("@3��10��","PS_MN_buy_10")
	AddMenuItem("@3��1��","PS_MN_sell_1")
	AddMenuItem("@3��10��","PS_MN_sell_10")
	AddMenuItem("@3ȫ����","PS_MN_sell_all")
elseif(answer=="PS_MN_buy_1")then          -------------��1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_MN_price1") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_MN_price1")) then
	LuaGive("coin",-LuaPublicQuery("PS_MN_price1"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_MN_price1"))
	LuaGive("o_mission376",1)
	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_MN_buy_10")then          -------------��10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_MN_price1") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_MN_price1")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_MN_price1"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_MN_price1"))
	LuaGive("o_mission376",10)
 	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_MN_sell_1")then          -------------��1 
	if(LuaItemCount("o_mission376") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission376",1)
		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_MN_price1")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_MN_price1"))
		LuaGive("coin",LuaPublicQuery("PS_MN_price1"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��Ʒ���ˣ������̽���Ѿ��������ޣ�")
		
		end
 	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ���������觲����������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_MN_sell_10")then          -------------��10 
	if(LuaItemCount("o_mission376") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission376",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_MN_price1")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_MN_price1"))
		LuaGive("coin",10*LuaPublicQuery("PS_MN_price1"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��Ʒ���ˣ������̽���Ѿ��������ޣ�")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ���������觲����������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_MN_sell_all")then          -------------ȫ���� 
	if(LuaItemCount("o_mission376") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
    	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission376"))*(LuaPublicQuery("PS_MN_price1"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission376"))*(LuaPublicQuery("PS_MN_price1")))
		LuaGive("coin",(LuaItemCount("o_mission376"))*(LuaPublicQuery("PS_MN_price1")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��Ʒ���ˣ������̽���Ѿ��������ޣ�")
		
		end
	DelItem("o_mission376",LuaItemCount("o_mission376"))
	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ���������觲����������̽���Ѿ��������ޣ�")
	
	end

elseif(answer=="PS_FCS")then                 ---------------���ʯ���� 
	AddMenuItem("@7�����б�","")
	AddMenuItem("@3��1��","PS_FCS_buy_1")
	AddMenuItem("@3��10��","PS_FCS_buy_10")
	AddMenuItem("@3��1��","PS_FCS_sell_1")
	AddMenuItem("@3��10��","PS_FCS_sell_10")
	AddMenuItem("@3ȫ����","PS_FCS_sell_all")
elseif(answer=="PS_FCS_buy_1")then          -------------��1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_FCS_price1") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_FCS_price1")) then
	LuaGive("coin",-LuaPublicQuery("PS_FCS_price1"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_FCS_price1"))
	LuaGive("o_mission377",1)
	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_FCS_buy_10")then          -------------��10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_FCS_price1") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_FCS_price1")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_FCS_price1"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_FCS_price1"))
	LuaGive("o_mission377",10)
	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_FCS_sell_1")then          -------------��1 
	if(LuaItemCount("o_mission377") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission377",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_FCS_price1")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_FCS_price1"))
		LuaGive("coin",LuaPublicQuery("PS_FCS_price1"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��Ʒ���ˣ������̽���Ѿ��������ޣ�")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ����������ʯ�����������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_FCS_sell_10")then          -------------��10 
	if(LuaItemCount("o_mission377") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission377",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_FCS_price1")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_FCS_price1"))
		LuaGive("coin",10*LuaPublicQuery("PS_FCS_price1"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��Ʒ���ˣ������̽���Ѿ��������ޣ�")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ����������ʯ�����������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_FCS_sell_all")then          -------------ȫ���� 
	if(LuaItemCount("o_mission377") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission377"))*(LuaPublicQuery("PS_FCS_price1"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission377"))*(LuaPublicQuery("PS_FCS_price1")))
		LuaGive("coin",(LuaItemCount("o_mission377"))*(LuaPublicQuery("PS_FCS_price1")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��Ʒ���ˣ������̽���Ѿ��������ޣ�")
		
		end
	DelItem("o_mission377",LuaItemCount("o_mission377"))
	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ����������ʯ�����������̽���Ѿ��������ޣ�")
	
	end

elseif(answer=="PS_SJ")then                 ---------------ˮ������ 
	AddMenuItem("@7�����б�","")
	AddMenuItem("@3��1��","PS_SJ_buy_1")
	AddMenuItem("@3��10��","PS_SJ_buy_10")
	AddMenuItem("@3��1��","PS_SJ_sell_1")
	AddMenuItem("@3��10��","PS_SJ_sell_10")
	AddMenuItem("@3ȫ����","PS_SJ_sell_all")
elseif(answer=="PS_SJ_buy_1")then          -------------��1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_SJ_price1") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_SJ_price1")) then
	LuaGive("coin",-LuaPublicQuery("PS_SJ_price1"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_SJ_price1"))
	LuaGive("o_mission378",1)
	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_SJ_buy_10")then          -------------��10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_SJ_price1") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_SJ_price1")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_SJ_price1"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_SJ_price1"))
	LuaGive("o_mission378",10)
	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_SJ_sell_1")then          -------------��1 
	if(LuaItemCount("o_mission378") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission378",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_SJ_price1")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_SJ_price1"))
		LuaGive("coin",LuaPublicQuery("PS_SJ_price1"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��Ʒ���ˣ������̽���Ѿ��������ޣ�")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ�������ˮ�������������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_SJ_sell_10")then          -------------��10 
	if(LuaItemCount("o_mission378") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission378",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_SJ_price1")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_SJ_price1"))
		LuaGive("coin",10*LuaPublicQuery("PS_SJ_price1"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��Ʒ���ˣ������̽���Ѿ��������ޣ�")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ�������ˮ�������������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_SJ_sell_all")then          -------------ȫ���� 
	if(LuaItemCount("o_mission378") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission378"))*(LuaPublicQuery("PS_SJ_price1"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission378"))*(LuaPublicQuery("PS_SJ_price1")))
		LuaGive("coin",(LuaItemCount("o_mission378"))*(LuaPublicQuery("PS_SJ_price1")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��Ʒ���ˣ������̽���Ѿ��������ޣ�")
		
		end
	DelItem("o_mission378",LuaItemCount("o_mission378"))
	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ�������ˮ�������������̽���Ѿ��������ޣ�")
	
	end
	
elseif(answer=="PS_ZZ")then                 ---------------�������� 
	AddMenuItem("@7�����б�","")
	AddMenuItem("@3��1��","PS_ZZ_buy_1")
	AddMenuItem("@3��10��","PS_ZZ_buy_10")
	AddMenuItem("@3��1��","PS_ZZ_sell_1")
	AddMenuItem("@3��10��","PS_ZZ_sell_10")
	AddMenuItem("@3ȫ����","PS_ZZ_sell_all")
elseif(answer=="PS_ZZ_buy_1")then          -------------��1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_ZZ_price1") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_ZZ_price1")) then
	LuaGive("coin",-LuaPublicQuery("PS_ZZ_price1"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_ZZ_price1"))
	LuaGive("o_mission379",1)
	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_ZZ_buy_10")then          -------------��10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_ZZ_price1") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_ZZ_price1")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_ZZ_price1"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_ZZ_price1"))
	LuaGive("o_mission379",10)
	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_ZZ_sell_1")then          -------------��1 
	if(LuaItemCount("o_mission379") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission379",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_ZZ_price1")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_ZZ_price1"))
		LuaGive("coin",LuaPublicQuery("PS_ZZ_price1"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��Ʒ���ˣ������̽���Ѿ��������ޣ�")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ����������鲻���������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_ZZ_sell_10")then          -------------��10 
	if(LuaItemCount("o_mission379") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission379",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_ZZ_price1")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_ZZ_price1"))
		LuaGive("coin",10*LuaPublicQuery("PS_ZZ_price1"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��Ʒ���ˣ������̽���Ѿ��������ޣ�")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ����������鲻���������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_ZZ_sell_all")then          -------------ȫ���� 
	if(LuaItemCount("o_mission379") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission379"))*(LuaPublicQuery("PS_ZZ_price1"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission379"))*(LuaPublicQuery("PS_ZZ_price1")))
		LuaGive("coin",(LuaItemCount("o_mission379"))*(LuaPublicQuery("PS_ZZ_price1")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��Ʒ���ˣ������̽���Ѿ��������ޣ�")
		
		end
	DelItem("o_mission379",LuaItemCount("o_mission379"))
	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ����������鲻���������̽���Ѿ��������ޣ�")
	
	end

elseif(answer=="PS_YMZ")then                 ---------------ҹ�������� 
	AddMenuItem("@7�����б�","")
	AddMenuItem("@3��1��","PS_YMZ_buy_1")
	AddMenuItem("@3��10��","PS_YMZ_buy_10")
	AddMenuItem("@3��1��","PS_YMZ_sell_1")
	AddMenuItem("@3��10��","PS_YMZ_sell_10")
	AddMenuItem("@3ȫ����","PS_YMZ_sell_all")
elseif(answer=="PS_YMZ_buy_1")then          -------------��1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_YMZ_price1") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_YMZ_price1")) then
	LuaGive("coin",-LuaPublicQuery("PS_YMZ_price1"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_YMZ_price1"))
	LuaGive("o_mission380",1)
	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_YMZ_buy_10")then          -------------��10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_YMZ_price1") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_YMZ_price1")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_YMZ_price1"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_YMZ_price1"))
	LuaGive("o_mission380",10)
 	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_YMZ_sell_1")then          -------------��1 
	if(LuaItemCount("o_mission380") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission380",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_YMZ_price1")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_YMZ_price1"))
		LuaGive("coin",LuaPublicQuery("PS_YMZ_price1"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��Ʒ���ˣ������̽���Ѿ��������ޣ�")
		
		end
 	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ�������ҹ���鲻���������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_YMZ_sell_10")then          -------------��10 
	if(LuaItemCount("o_mission380") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission380",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_YMZ_price1")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_YMZ_price1"))
		LuaGive("coin",10*LuaPublicQuery("PS_YMZ_price1"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��Ʒ���ˣ������̽���Ѿ��������ޣ�")
		
		end
 	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ�������ҹ���鲻���������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_YMZ_sell_all")then          -------------ȫ���� 
	if(LuaItemCount("o_mission380") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission380"))*(LuaPublicQuery("PS_YMZ_price1"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission380"))*(LuaPublicQuery("PS_YMZ_price1")))
		LuaGive("coin",(LuaItemCount("o_mission380"))*(LuaPublicQuery("PS_YMZ_price1")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��Ʒ���ˣ������̽���Ѿ��������ޣ�")
		
		end
	DelItem("o_mission380",LuaItemCount("o_mission380"))
 	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ�������ҹ���鲻���������̽���Ѿ��������ޣ�")
	
	end



--��ڽ�ɽ
elseif(answer=="T385")then
	if(TeamCount()>=2)then
		if(LuaQueryTask("T385")==1)then
			if(TeamQueryTask("T385")>=1)then
				if(LuaQueryTask("TfindNPC_4")==1)then
					LuaSay("��Ʒ���ˣ��ܺã�лл����Ҵ���@2��ɽ����[�Ͼ�]@0�����Ҽ�ʱ���˽⵽��ǰ���������")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_4",98)
					DelItem("o_mission417",1)
					UpdateMenu()
				elseif(LuaQueryTask("TfindNPC_4")==2)then
					LuaSay("��Ʒ���ˣ��ܺã�лл����Ҵ���@2��ɽ����[�¾�]@0�����Ҽ�ʱ���˽⵽��ǰ���������")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_4",98)
					DelItem("o_mission418",1)
					UpdateMenu()
				end
			else
				LuaSay("��Ʒ���ˣ���Ķ��ѻ�û�������ۣ��Ͽ�֪ͨ��������Ŷ")
			end

		elseif(LuaQueryTask("T385")==98)then
			LuaSay("��Ʒ���ˣ����Ѿ���һ��Ľ�ɽ�����͵����ҵ����ϣ���ȥ���������ȡ�����ɡ�")

		end
	else
		LuaSay("��ʾ����������Ҫ��Ӳ��ܽ�����һ��")	
	end

elseif(answer=="Tfind") then	--ÿ�գ����� 
	if(GetCurrentDay()~=LuaQueryStrTask("Tfindday")) then
		LuaDelTask("Tfind")
		LuaDelTask("T959")
		UpdateMenu()
	end
	local Tfind=LuaQueryTask("Tfind")
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(Tfind==0)then
		local r=LuaRandom((LuaQuery("level")-5))
		if(r<=10)then
			r=10 + LuaRandom(LuaQuery("level")-15)
		end
		LuaSetTask("Tfindday",GetCurrentDay())
		LuaSetTask("Tfindlevel",r)
		LuaSetTask("Tfind",1)
		LuaSetTask("T959",1)
		AddLog("Ե���ڴˡ�ÿ�ա�","951")
		LuaSay("��Ʒ���ˣ��������£�Ҳ������Ե֮�ˣ��������°�æ��@!")
		LuaSay("��һ����ȥ��һ��@3"..r.."��@0����ң������ǰ������")
		UpdateMenu()
	  elseif(Tfind==1) then
		if(TeamCount()== 2) then
			local teamlevel=TeamQuery("level")
			local teamname=TeamQueryStr("name")
			if(LuaQueryTask("Tfindlevel")==TeamQuery("level")) then
				LuaSet("Tfindteamname",teamname)
				LuaSetTask("Tfindteamlevel",teamlevel)
				LuaSay("��Ʒ���ˣ��ȼ�Ϊ@3"..LuaQueryTask("Tfindteamlevel").."@0����@3"..LuaQueryStr("Tfindteamname").."@0��������¶��ѣ�����Ķ�������֮���������ȡ���������������������Ӳ�������ȡ�ý���Ŷ@!��")
				LuaSetTask("Tfind",2)
				LuaSetTask("T959",2)
				AddLog("Ե���ڴˡ�ÿ�ա�","find")
				UpdateMenu()
			else
				LuaSay("��Ʒ���ˣ�����Ҫ��һ��@3"..LuaQueryTask("Tfindlevel").."��@0�����")
			end   
		else
			LuaSay("��Ʒ���ˣ�����Ҫ��һ��@3"..LuaQueryTask("Tfindlevel").."��@0����Ҳ���ӡ�")
			
		end
	  elseif(Tfind==2)then
		if(TeamCount()== 2) then
			local teamname=LuaQueryStr("Tfindteamname")
			if(TeamQueryStr("name")==LuaQueryStr("Tfindteamname")) then
				local Tfindteamlevel=LuaQueryTask("Tfindteamlevel")
				local levelup=TeamQuery("level")- LuaQueryTask("Tfindteamlevel")
				if(levelup>0) then
					LuaSay("��ʾ������İ����£���Ķ���@3"..teamname.."@0�ȼ�������@3"..levelup.."@0����")
					LuaSetTask("Tfind",99)
					LuaSetTask("T959",99)
					DelLog("find")
					if(Tfindteamlevel<20) then						---------���������趨��
						LuaAddJx("combat_exp",(13200+level^2*20*levelup),"Tfind")
					elseif(Tfindteamlevel<30)then
						LuaAddJx("combat_exp",(15200+level^2*20*levelup)*1.5,"Tfind")				 
					elseif(Tfindteamlevel<40)then
						LuaAddJx("combat_exp",(16200+level^2*20*levelup)*2,"Tfind")
					elseif(Tfindteamlevel<50)then
						LuaAddJx("combat_exp",(23200+level^2*20*levelup)*2.5,"Tfind")
					elseif(Tfindteamlevel<60)then
						LuaAddJx("combat_exp",(33200+level^2*20*levelup)*3,"Tfind")
					else
						LuaAddJx("combat_exp",(53200+level^2*20)*3.5,"Tfind")
					end
					UpdateMenu()
				else
					LuaSay("��ʾ����Ķ���@3"..teamname.."@0��û�����أ��㲻����ȡ�κν�����")
				end
			else
				LuaSay("��ʾ����Ӹ�����ʱ�Ķ�����@3"..LuaQueryStr("Tfindteamname").."@0���ȼ�Ϊ@3"..LuaQueryTask("Tfindteamlevel").."@0���������������Ӳ�������ȡ�ý�����")

			end
		else
			LuaSay("��ʾ����Ӹ�����ʱ�Ķ�����@3"..LuaQueryStr("Tfindteamname").."@0���ȼ�Ϊ@3"..LuaQueryTask("Tfindteamlevel").."@0���������������Ӳ�������ȡ�ý�����")

		
		end
	  elseif(Tfind==99)then
		LuaSay("��Ʒ���ˣ�������Ѿ�������������Ŷ������������@!")
	  end


elseif(answer=="Tsnpc_22")then
	if(LuaQueryTask("Tsnpc_22")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("��Ʒ���ˣ����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_22",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_22")==2)then
		LuaSay("��Ʒ���ˣ����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_22")then
	if(LuaQueryTask("Tenpc_22")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ���������Ĺ��ף�ϣ�����ٽ�����")
		LuaSay("��Ʒ���ˣ��ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_22",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_22")==2)then
		LuaSay("��Ʒ���ˣ����Ѿ������ˣ����ȥ��ȡ������")
	end



end
LuaSendMenu()
return 1
end

