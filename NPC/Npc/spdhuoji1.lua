NPCINFO = {
serial= "65" ,
base_name="spdhuoji1",
icon= 2507, 
NpcMove=2507, 
name= "��Ʒ���ˡ��̡�" ,
iconaddr=1, 
butt="15|14|63", 
name_color = "CEFFCE" , 
lastsay="��Ʒ���Ӹ�������������ȱ",
have_sell_item=1,
LuaType=1,
}

addBuyitem={
count=6,
{"e_shoes008" , 2000, 8 },
{"e_shoes010" , 2000, 8 },
{"e_necklace006" , 2000, 8 },
{"e_necklace008" , 2000, 8 },
{"e_earring006" , 2000, 8 },
{"e_earring008" , 2000, 8 },
--{"o_transmittal_08" , 2000  , 8 },
--{"o_transmittal_09" , 2000  , 8 },
} 

function do_talk(answer)
 if (answer=="ask") then
        havetask =0
	local level= LuaQuery("level")
	local T860=LuaQueryTask("T860")
	local Tbprw9=LuaQueryTask("Tbprw9")
	local Tbprw9_2=LuaQueryTask("Tbprw9_2")
	AddTopSayMenuItem("@7�����б�","")
	AddTopSayMenuItem("����","buy1")
	if((LuaQueryTask("Tsnpc_49")==1 or LuaQueryTask("Tsnpc_49")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_49")
		if(LuaQueryTask("Tsnpc_49")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_49")==1 or LuaQueryTask("Tenpc_49")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_49")
		if(LuaQueryTask("Tenpc_49")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("TPaoShang")==1)then
		AddTopSayMenuItem("@2���̡�ÿ�ա�","TPaoShang")          ----------����
		havetask =2
	end
	if(LuaQueryTask("Tbprw9_2")==1 ) then
		AddTopSayMenuItem("@2�������ʡ�ÿ�ա�","Tbprw9_2")
		havetask=2
	end
	if(LuaQueryTask("Tcoc")==17)then
		AddTopSayMenuItem("@2�̼���","Tcoc")
		havetask =2
	end
	if(havetask ==2)then
		AddTopSayMenuItem("����","liaotian","2")
	elseif(havetask ==1) then
		AddTopSayMenuItem("����","liaotian","1")
	else
		AddTopSayMenuItem("����","liaotian","0")
	end	 
	return 1
elseif(answer=="buy1") then
    DoBuy()
elseif(answer=="liaotian") then
     LuaSay("��Ʒ���ˣ���û����������")
elseif(answer=="Tcoc")then---------------------�̼���8 Tcoc===17
	if(LuaQueryTask("Tcoc")==17)then
		LuaSay("��Ʒ���ˣ���˵����û�䣬������һ����������������.")
		LuaSetTask("Tcoc",18)
		LuaSetTask("T955",18)
		AddLog("�̼��򱳡�ÿ�ա�",955)
		LuaGive("coin",800,"Tcoc")
		LuaGive("o_drug_mp4",2,"Tcoc")
		UpdateMenu()
	end
elseif(answer=="Tbprw9_2")  then
if(LuaQueryStrTask("Tbprw9day")==GetCurrentDay())then

	if(LuaQueryTask("Tbprw9_2")==1) then
		LuaSay(""..LuaQueryStr("name").."���ҷ���۵�ʥּǰ������@3����������Ʒ@0�������и����㡣")
		LuaSay("��Ʒ���ˣ�����@3����������Ʒ@0Ҫʹ��@33000ͭ��@0")
		AddMenuItem("ѡ���б�","")
        AddMenuItem("��","YES")
	    AddMenuItem("����","NO1")
	end
	if(LuaQueryTask("Tbprw9")==2) then
		LuaSay("��Ʒ���ˣ���ȥ��@3����������Ʒ@0�͸�@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0�ɣ�")
	end
else
		LuaSay("��Ʒ���ˣ��µ�һ�죬�µĿ�ʼ���������ǰ��@3�������ʡ�ÿ�ա�@0����û��ɣ�")
		LuaSay("��Ʒ���ˣ����ڵ�@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0���½�ȡ����@3�������ʡ�ÿ�ա�@0����ɣ�")
end
elseif(answer=="YES") then
	if(LuaQueryTask("Tbprw9_2")== 1) then
		if(LuaItemCount("coin")>=3000) then
			LuaGive("o_mission404",1)
			LuaGive("coin",-3000,"Tbprw9")
			LuaSay("��Ʒ���ˣ���ȥ��@3����������Ʒ@0�͸�@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0�ɣ�")
			LuaSetTask("Tbprw9",2)
			LuaSetTask("Tbprw9_2",99)
		elseif(LuaItemCount("coin")<3000) then
			LuaSay("��Ʒ���ˣ�������ֻ��@3"..LuaItemCount("coin").."ͭ��@0,����@33000ͭ��@0����")
			LuaSay("��Ʒ���ˣ�����Ȼ�ǽ���������@3����������Ʒ@0�ģ���Ҳ�����������������Ⱑ��")
		end
	end
elseif(answer=="NO1") then
	if(LuaQueryTask("Tbprw9_2")== 1) then
		LuaSay("��Ʒ���ˣ���ôС����@33000ͭ��@0����Ը����")
		LuaSay("��Ʒ���ˣ���˵���ۺܴ���Ŷ�����������£������Բ��������ġ�")
		LuaSay("��Ʒ���ˣ�������ɣ���ȥ�ý��")
		AddMenuItem("ѡ���б�","")
        AddMenuItem("��","YES")
	    AddMenuItem("����","NO2")
	end
elseif(answer=="NO2") then
	if(LuaQueryTask("Tbprw9_2")== 1) then
		LuaSay("��Ʒ���ˣ������⺢�ӣ���������˰ɣ���Ҳ��ǿ���㣬�ֲ���ֻ����һ��������")
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
		if(LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit") and(GetCurrentTime()-LuaQueryTask("PSbegin_time"))<3600 )then   -----��ʱ�����̽��������ж� 
		LuaSay("��Ʒ���ˣ������´���Ʒ�۸�ˢ�»���@5"..(300-(GetCurrentTime() - LuaPublicQuery("PSshuaxin_CD"))  ).."�룡@0��Ŀǰ�����̽��Ϊ@3"..LuaQueryTask("PSmoney").."ͭ��!@0")
       	LuaDeleteBuff("518")
		LuaGiveBuff("518",1)
		LuaSay("���5�������̱���״̬")
    	FlushMyInfo("1")
		if((GetCurrentTime()-LuaQueryTask("PSbegin_time"))>3300 )then   -----������ʱ����
		LuaSay("��Ʒ���ˣ��������������޲���@55����@0�ˣ���@3�Ѷ�������@0�ɣ���Ȼ�������ģ�")
		end
		AddMenuItem("@7��Ʒ�б�","")                  -----------��Ʒ�б��Լ������ڲ˵��ĸ��� 
			AddMenuItem("@3���,����@3"..LuaPublicQuery("PS_MN_price3").."ͭ��@0","PS_MN")
			AddMenuItem("@3���ʯ,����@3"..LuaPublicQuery("PS_FCS_price3").."ͭ��@0","PS_FCS")
			AddMenuItem("@3ˮ��,����@3"..LuaPublicQuery("PS_SJ_price3").."ͭ��@0","PS_SJ")
			AddMenuItem("@3����,����@3"..LuaPublicQuery("PS_ZZ_price3").."ͭ��@0","PS_ZZ")
			AddMenuItem("@3ҹ����,����@3"..LuaPublicQuery("PS_YMZ_price3").."ͭ��@0","PS_YMZ")
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
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_MN_price3") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_MN_price3")) then
	LuaGive("coin",-LuaPublicQuery("PS_MN_price3"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_MN_price3"))
	LuaGive("o_mission376",1)
	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_MN_buy_10")then          -------------��10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_MN_price3") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_MN_price3")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_MN_price3"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_MN_price3"))
	LuaGive("o_mission376",10)
 	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_MN_sell_1")then          -------------��1 
	if(LuaItemCount("o_mission376") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission376",1)
		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_MN_price3")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_MN_price3"))
		LuaGive("coin",LuaPublicQuery("PS_MN_price3"),"TPaoShang")
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
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_MN_price3")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_MN_price3"))
		LuaGive("coin",10*LuaPublicQuery("PS_MN_price3"),"TPaoShang")
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
    	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission376"))*(LuaPublicQuery("PS_MN_price3"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission376"))*(LuaPublicQuery("PS_MN_price3")))
		LuaGive("coin",(LuaItemCount("o_mission376"))*(LuaPublicQuery("PS_MN_price3")),"TPaoShang")
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
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_FCS_price3") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_FCS_price3")) then
	LuaGive("coin",-LuaPublicQuery("PS_FCS_price3"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_FCS_price3"))
	LuaGive("o_mission377",1)
	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_FCS_buy_10")then          -------------��10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_FCS_price3") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_FCS_price3")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_FCS_price3"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_FCS_price3"))
	LuaGive("o_mission377",10)
	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_FCS_sell_1")then          -------------��1 
	if(LuaItemCount("o_mission377") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission377",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_FCS_price3")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_FCS_price3"))
		LuaGive("coin",LuaPublicQuery("PS_FCS_price3"),"TPaoShang")
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
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_FCS_price3")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_FCS_price3"))
		LuaGive("coin",10*LuaPublicQuery("PS_FCS_price3"),"TPaoShang")
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
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission377"))*(LuaPublicQuery("PS_FCS_price3"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission377"))*(LuaPublicQuery("PS_FCS_price3")))
		LuaGive("coin",(LuaItemCount("o_mission377"))*(LuaPublicQuery("PS_FCS_price3")),"TPaoShang")
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
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_SJ_price3") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_SJ_price3")) then
	LuaGive("coin",-LuaPublicQuery("PS_SJ_price3"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_SJ_price3"))
	LuaGive("o_mission378",1)
	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_SJ_buy_10")then          -------------��10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_SJ_price3") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_SJ_price3")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_SJ_price3"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_SJ_price3"))
	LuaGive("o_mission378",10)
	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_SJ_sell_1")then          -------------��1 
	if(LuaItemCount("o_mission378") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission378",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_SJ_price3")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_SJ_price3"))
		LuaGive("coin",LuaPublicQuery("PS_SJ_price3"),"TPaoShang")
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
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_SJ_price3")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_SJ_price3"))
		LuaGive("coin",10*LuaPublicQuery("PS_SJ_price3"),"TPaoShang")
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
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission378"))*(LuaPublicQuery("PS_SJ_price3"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission378"))*(LuaPublicQuery("PS_SJ_price3")))
		LuaGive("coin",(LuaItemCount("o_mission378"))*(LuaPublicQuery("PS_SJ_price3")),"TPaoShang")
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
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_ZZ_price3") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_ZZ_price3")) then
	LuaGive("coin",-LuaPublicQuery("PS_ZZ_price3"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_ZZ_price3"))
	LuaGive("o_mission379",1)
	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_ZZ_buy_10")then          -------------��10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_ZZ_price3") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_ZZ_price3")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_ZZ_price3"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_ZZ_price3"))
	LuaGive("o_mission379",10)
	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_ZZ_sell_1")then          -------------��1 
	if(LuaItemCount("o_mission379") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission379",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_ZZ_price3")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_ZZ_price3"))
		LuaGive("coin",LuaPublicQuery("PS_ZZ_price3"),"TPaoShang")
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
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_ZZ_price3")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_ZZ_price3"))
		LuaGive("coin",10*LuaPublicQuery("PS_ZZ_price3"),"TPaoShang")
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
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission379"))*(LuaPublicQuery("PS_ZZ_price3"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission379"))*(LuaPublicQuery("PS_ZZ_price3")))
		LuaGive("coin",(LuaItemCount("o_mission379"))*(LuaPublicQuery("PS_ZZ_price3")),"TPaoShang")
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
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_YMZ_price3") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_YMZ_price3")) then
	LuaGive("coin",-LuaPublicQuery("PS_YMZ_price3"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_YMZ_price3"))
	LuaGive("o_mission380",1)
	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_YMZ_buy_10")then          -------------��10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_YMZ_price3") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_YMZ_price3")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_YMZ_price3"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_YMZ_price3"))
	LuaGive("o_mission380",10)
 	DoTalk("TPaoShang")
	else
	LuaSay("��Ʒ���ˣ������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_YMZ_sell_1")then          -------------��1 
	if(LuaItemCount("o_mission380") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission380",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_YMZ_price3")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_YMZ_price3"))
		LuaGive("coin",LuaPublicQuery("PS_YMZ_price3"),"TPaoShang")
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
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_YMZ_price3")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_YMZ_price3"))
		LuaGive("coin",10*LuaPublicQuery("PS_YMZ_price3"),"TPaoShang")
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
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission380"))*(LuaPublicQuery("PS_YMZ_price3"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission380"))*(LuaPublicQuery("PS_YMZ_price3")))
		LuaGive("coin",(LuaItemCount("o_mission380"))*(LuaPublicQuery("PS_YMZ_price3")),"TPaoShang")
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


elseif(answer=="Tsnpc_49")then
	if(LuaQueryTask("Tsnpc_49")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("��Ʒ���ˣ����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_49",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_49")==2)then
		LuaSay("��Ʒ���ˣ����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_49")then
	if(LuaQueryTask("Tenpc_49")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("��Ʒ���ˣ��ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_49",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_49")==2)then
		LuaSay("��Ʒ���ˣ����Ѿ������ˣ����ȥ��ȡ������")
	end




end
LuaSendMenu()
return 1
end