NPCINFO = { 
serial="123" ,
base_name="zhdhuoji",
icon=2554,
NpcMove=2554,
name="�ӻ���" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="��ʽ���������",
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
	local T660=LuaQueryTask("T660")
	AddTopSayMenuItem("@7�����б�","")
	if(LuaQueryTask("TPaoShang")==1)then
		AddTopSayMenuItem("@2���̡�ÿ�ա�","TPaoShang")          ----------����
		havetask2 =1
		end
	if(LuaQueryTask("T660")==1 or LuaQueryTask("T660")==2 or LuaQueryTask("T660")==3) then
		AddTopSayMenuItem("@2�������֪�����顿","T660")
		if(LuaQueryTask("T660")~=3)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tsnpc_66")==1 or LuaQueryTask("Tsnpc_66")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_66")
		if(LuaQueryTask("Tsnpc_66")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_66")==1 or LuaQueryTask("Tenpc_66")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_66")
		if(LuaQueryTask("Tenpc_66")==1)then
			havetask2=1
		end
	end
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
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else	
	AddTopSayMenuItem("����","liaotian","0")
end	 
return 1
------------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("�ӻ��̣�����������������͹ٲ���������!") 
elseif(answer=="T660") then
	if(LuaQueryTask("T660")==1) then
		LuaSay(""..LuaQueryStr("name").."������Ҫһ��@3�˲�@0ȥ�β�����֪��С��������")
		LuaSay("�ӻ��̣�������Ӣ�����Ҷ����ˣ��������û���һ��ǧ���˲Ρ�")
		LuaSay("�ӻ��̣�Ӣ����Ҳ֪�����˲α������ǧ���˲θ������ң���Ҳ�Ǵӱ𴦹��ã�����Ҫ1000ͭ�Ҳ��ܰ��˲θ��㡣")
		AddMenuItem("ѡ���б�","","")
		AddMenuItem("��","MAI","")
		AddMenuItem("����","BUMAI","")
	elseif(LuaQueryTask("T660")==2) then
		LuaSay("һ��Ҫ����@4�˲�@0��������������")
		AddMenuItem("ѡ���б�","","")
		AddMenuItem("��","MAI","")
		AddMenuItem("����","BUMAI","")
	elseif(LuaQueryTask("T660")==3) then
		LuaSay("�ӻ��̣�����ɽ�ǰ��˲ν�������")
	end
	elseif(answer=="MAI") then
 		if(LuaItemCount("coin") >= 1000) then
 			LuaSay("��ѡ���˹���@3�˲�@0")
 			LuaGive("coin",-1000,"T660")
 			LuaGive("o_mission355",1)
			LuaSetTask("T660",3)      -------��־�����
			AddLog("�������֪�����顿",660)
			UpdateMenu()
			UpdateNPCMenu("yanwang")
		elseif(LuaItemCount("coin") < 1000) then
			LuaSay("��Ľ�Ǯ������")
		end
	elseif(answer=="BUMAI") then
		LuaSay("��ô�򵥵��������Ȼ��������ϧ�ˣ�")
		LuaSetTask("T660",2)      -------��־�����
		AddLog("�������֪�����顿",660)
		UpdateMenu()
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
		LuaSay("�ӻ��̣������´���Ʒ�۸�ˢ�»���@5"..(300-(GetCurrentTime() - LuaPublicQuery("PSshuaxin_CD"))  ).."�룡@0��Ŀǰ�����̽��Ϊ@3"..LuaQueryTask("PSmoney").."ͭ��!@0")
       	LuaDeleteBuff("518")
		LuaGiveBuff("518",1)
		LuaSay("���5�������̱���״̬")
    	FlushMyInfo("1")
		if((GetCurrentTime()-LuaQueryTask("PSbegin_time"))>3300 )then   -----������ʱ����
		LuaSay("�ӻ��̣��������������޲���@55����@0�ˣ���@3�Ѷ�������@0�ɣ���Ȼ�������ģ�")
		end
		AddMenuItem("@7��Ʒ�б�","")                  -----------��Ʒ�б��Լ������ڲ˵��ĸ��� 
			AddMenuItem("@3���,����@3"..LuaPublicQuery("PS_MN_price4").."ͭ��@0","PS_MN")
			AddMenuItem("@3���ʯ,����@3"..LuaPublicQuery("PS_FCS_price4").."ͭ��@0","PS_FCS")
			AddMenuItem("@3ˮ��,����@3"..LuaPublicQuery("PS_SJ_price4").."ͭ��@0","PS_SJ")
			AddMenuItem("@3����,����@3"..LuaPublicQuery("PS_ZZ_price4").."ͭ��@0","PS_ZZ")
			AddMenuItem("@3ҹ����,����@3"..LuaPublicQuery("PS_YMZ_price4").."ͭ��@0","PS_YMZ")
		else
		LuaSay("�ӻ��̣������������Ѿ��������޻������̽����������ظ�@4������@0��@3�н�����@0�ɣ�")
		UpdateTopSay("��ظ������ǵ��н����˰�")
		end 
    else
    LuaSay("�ӻ��̣������ϵ�@3���̱���״̬@0�Ѿ���ʧ����·���������ܹ������޷��������̣�")
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
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_MN_price4") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_MN_price4")) then
	LuaGive("coin",-LuaPublicQuery("PS_MN_price4"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_MN_price4"))
	LuaGive("o_mission376",1)
	DoTalk("TPaoShang")
	else
	LuaSay("�ӻ��̣������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_MN_buy_10")then          -------------��10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_MN_price4") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_MN_price4")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_MN_price4"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_MN_price4"))
	LuaGive("o_mission376",10)
 	DoTalk("TPaoShang")
	else
	LuaSay("�ӻ��̣������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_MN_sell_1")then          -------------��1 
	if(LuaItemCount("o_mission376") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission376",1)
		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_MN_price4")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_MN_price4"))
		LuaGive("coin",LuaPublicQuery("PS_MN_price4"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�ӻ��̣������̽���Ѿ��������ޣ�")
		
		end
 	DoTalk("TPaoShang")
	else
	LuaSay("�ӻ��̣���������觲����������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_MN_sell_10")then          -------------��10 
	if(LuaItemCount("o_mission376") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission376",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_MN_price4")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_MN_price4"))
		LuaGive("coin",10*LuaPublicQuery("PS_MN_price4"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�ӻ��̣������̽���Ѿ��������ޣ�")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("�ӻ��̣���������觲����������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_MN_sell_all")then          -------------ȫ���� 
	if(LuaItemCount("o_mission376") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
    	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission376"))*(LuaPublicQuery("PS_MN_price4"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission376"))*(LuaPublicQuery("PS_MN_price4")))
		LuaGive("coin",(LuaItemCount("o_mission376"))*(LuaPublicQuery("PS_MN_price4")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�ӻ��̣������̽���Ѿ��������ޣ�")
		
		end
	DelItem("o_mission376",LuaItemCount("o_mission376"))
	DoTalk("TPaoShang")
	else
	LuaSay("�ӻ��̣���������觲����������̽���Ѿ��������ޣ�")
	
	end

elseif(answer=="PS_FCS")then                 ---------------���ʯ���� 
	AddMenuItem("@7�����б�","")
	AddMenuItem("@3��1��","PS_FCS_buy_1")
	AddMenuItem("@3��10��","PS_FCS_buy_10")
	AddMenuItem("@3��1��","PS_FCS_sell_1")
	AddMenuItem("@3��10��","PS_FCS_sell_10")
	AddMenuItem("@3ȫ����","PS_FCS_sell_all")
elseif(answer=="PS_FCS_buy_1")then          -------------��1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_FCS_price4") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_FCS_price4")) then
	LuaGive("coin",-LuaPublicQuery("PS_FCS_price4"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_FCS_price4"))
	LuaGive("o_mission377",1)
	DoTalk("TPaoShang")
	else
	LuaSay("�ӻ��̣������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_FCS_buy_10")then          -------------��10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_FCS_price4") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_FCS_price4")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_FCS_price4"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_FCS_price4"))
	LuaGive("o_mission377",10)
	DoTalk("TPaoShang")
	else
	LuaSay("�ӻ��̣������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_FCS_sell_1")then          -------------��1 
	if(LuaItemCount("o_mission377") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission377",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_FCS_price4")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_FCS_price4"))
		LuaGive("coin",LuaPublicQuery("PS_FCS_price4"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�ӻ��̣������̽���Ѿ��������ޣ�")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("�ӻ��̣����������ʯ�����������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_FCS_sell_10")then          -------------��10 
	if(LuaItemCount("o_mission377") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission377",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_FCS_price4")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_FCS_price4"))
		LuaGive("coin",10*LuaPublicQuery("PS_FCS_price4"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�ӻ��̣������̽���Ѿ��������ޣ�")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("�ӻ��̣����������ʯ�����������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_FCS_sell_all")then          -------------ȫ���� 
	if(LuaItemCount("o_mission377") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission377"))*(LuaPublicQuery("PS_FCS_price4"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission377"))*(LuaPublicQuery("PS_FCS_price4")))
		LuaGive("coin",(LuaItemCount("o_mission377"))*(LuaPublicQuery("PS_FCS_price4")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�ӻ��̣������̽���Ѿ��������ޣ�")
		
		end
	DelItem("o_mission377",LuaItemCount("o_mission377"))
	DoTalk("TPaoShang")
	else
	LuaSay("�ӻ��̣����������ʯ�����������̽���Ѿ��������ޣ�")
	
	end

elseif(answer=="PS_SJ")then                 ---------------ˮ������ 
	AddMenuItem("@7�����б�","")
	AddMenuItem("@3��1��","PS_SJ_buy_1")
	AddMenuItem("@3��10��","PS_SJ_buy_10")
	AddMenuItem("@3��1��","PS_SJ_sell_1")
	AddMenuItem("@3��10��","PS_SJ_sell_10")
	AddMenuItem("@3ȫ����","PS_SJ_sell_all")
elseif(answer=="PS_SJ_buy_1")then          -------------��1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_SJ_price4") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_SJ_price4")) then
	LuaGive("coin",-LuaPublicQuery("PS_SJ_price4"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_SJ_price4"))
	LuaGive("o_mission378",1)
	DoTalk("TPaoShang")
	else
	LuaSay("�ӻ��̣������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_SJ_buy_10")then          -------------��10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_SJ_price4") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_SJ_price4")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_SJ_price4"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_SJ_price4"))
	LuaGive("o_mission378",10)
	DoTalk("TPaoShang")
	else
	LuaSay("�ӻ��̣������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_SJ_sell_1")then          -------------��1 
	if(LuaItemCount("o_mission378") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission378",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_SJ_price4")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_SJ_price4"))
		LuaGive("coin",LuaPublicQuery("PS_SJ_price4"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�ӻ��̣������̽���Ѿ��������ޣ�")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("�ӻ��̣�������ˮ�������������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_SJ_sell_10")then          -------------��10 
	if(LuaItemCount("o_mission378") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission378",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_SJ_price4")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_SJ_price4"))
		LuaGive("coin",10*LuaPublicQuery("PS_SJ_price4"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�ӻ��̣������̽���Ѿ��������ޣ�")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("�ӻ��̣�������ˮ�������������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_SJ_sell_all")then          -------------ȫ���� 
	if(LuaItemCount("o_mission378") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission378"))*(LuaPublicQuery("PS_SJ_price4"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission378"))*(LuaPublicQuery("PS_SJ_price4")))
		LuaGive("coin",(LuaItemCount("o_mission378"))*(LuaPublicQuery("PS_SJ_price4")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�ӻ��̣������̽���Ѿ��������ޣ�")
		
		end
	DelItem("o_mission378",LuaItemCount("o_mission378"))
	DoTalk("TPaoShang")
	else
	LuaSay("�ӻ��̣�������ˮ�������������̽���Ѿ��������ޣ�")
	
	end
	
elseif(answer=="PS_ZZ")then                 ---------------�������� 
	AddMenuItem("@7�����б�","")
	AddMenuItem("@3��1��","PS_ZZ_buy_1")
	AddMenuItem("@3��10��","PS_ZZ_buy_10")
	AddMenuItem("@3��1��","PS_ZZ_sell_1")
	AddMenuItem("@3��10��","PS_ZZ_sell_10")
	AddMenuItem("@3ȫ����","PS_ZZ_sell_all")
elseif(answer=="PS_ZZ_buy_1")then          -------------��1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_ZZ_price4") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_ZZ_price4")) then
	LuaGive("coin",-LuaPublicQuery("PS_ZZ_price4"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_ZZ_price4"))
	LuaGive("o_mission379",1)
	DoTalk("TPaoShang")
	else
	LuaSay("�ӻ��̣������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_ZZ_buy_10")then          -------------��10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_ZZ_price4") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_ZZ_price4")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_ZZ_price4"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_ZZ_price4"))
	LuaGive("o_mission379",10)
	DoTalk("TPaoShang")
	else
	LuaSay("�ӻ��̣������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_ZZ_sell_1")then          -------------��1 
	if(LuaItemCount("o_mission379") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission379",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_ZZ_price4")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_ZZ_price4"))
		LuaGive("coin",LuaPublicQuery("PS_ZZ_price4"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�ӻ��̣������̽���Ѿ��������ޣ�")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("�ӻ��̣����������鲻���������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_ZZ_sell_10")then          -------------��10 
	if(LuaItemCount("o_mission379") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission379",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_ZZ_price4")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_ZZ_price4"))
		LuaGive("coin",10*LuaPublicQuery("PS_ZZ_price4"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�ӻ��̣������̽���Ѿ��������ޣ�")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("�ӻ��̣����������鲻���������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_ZZ_sell_all")then          -------------ȫ���� 
	if(LuaItemCount("o_mission379") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission379"))*(LuaPublicQuery("PS_ZZ_price4"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission379"))*(LuaPublicQuery("PS_ZZ_price4")))
		LuaGive("coin",(LuaItemCount("o_mission379"))*(LuaPublicQuery("PS_ZZ_price4")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�ӻ��̣������̽���Ѿ��������ޣ�")
		
		end
	DelItem("o_mission379",LuaItemCount("o_mission379"))
	DoTalk("TPaoShang")
	else
	LuaSay("�ӻ��̣����������鲻���������̽���Ѿ��������ޣ�")
	
	end

elseif(answer=="PS_YMZ")then                 ---------------ҹ�������� 
	AddMenuItem("@7�����б�","")
	AddMenuItem("@3��1��","PS_YMZ_buy_1")
	AddMenuItem("@3��10��","PS_YMZ_buy_10")
	AddMenuItem("@3��1��","PS_YMZ_sell_1")
	AddMenuItem("@3��10��","PS_YMZ_sell_10")
	AddMenuItem("@3ȫ����","PS_YMZ_sell_all")
elseif(answer=="PS_YMZ_buy_1")then          -------------��1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_YMZ_price4") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_YMZ_price4")) then
	LuaGive("coin",-LuaPublicQuery("PS_YMZ_price4"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_YMZ_price4"))
	LuaGive("o_mission380",1)
	DoTalk("TPaoShang")
	else
	LuaSay("�ӻ��̣������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_YMZ_buy_10")then          -------------��10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_YMZ_price4") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_YMZ_price4")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_YMZ_price4"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_YMZ_price4"))
	LuaGive("o_mission380",10)
 	DoTalk("TPaoShang")
	else
	LuaSay("�ӻ��̣������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_YMZ_sell_1")then          -------------��1 
	if(LuaItemCount("o_mission380") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission380",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_YMZ_price4")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_YMZ_price4"))
		LuaGive("coin",LuaPublicQuery("PS_YMZ_price4"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�ӻ��̣������̽���Ѿ��������ޣ�")
		
		end
 	DoTalk("TPaoShang")
	else
	LuaSay("�ӻ��̣�������ҹ���鲻���������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_YMZ_sell_10")then          -------------��10 
	if(LuaItemCount("o_mission380") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission380",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_YMZ_price4")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_YMZ_price4"))
		LuaGive("coin",10*LuaPublicQuery("PS_YMZ_price4"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�ӻ��̣������̽���Ѿ��������ޣ�")
		
		end
 	DoTalk("TPaoShang")
	else
	LuaSay("�ӻ��̣�������ҹ���鲻���������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_YMZ_sell_all")then          -------------ȫ���� 
	if(LuaItemCount("o_mission380") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission380"))*(LuaPublicQuery("PS_YMZ_price4"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission380"))*(LuaPublicQuery("PS_YMZ_price4")))
		LuaGive("coin",(LuaItemCount("o_mission380"))*(LuaPublicQuery("PS_YMZ_price4")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("�ӻ��̣������̽���Ѿ��������ޣ�")
		
		end
	DelItem("o_mission380",LuaItemCount("o_mission380"))
 	DoTalk("TPaoShang")
	else
	LuaSay("�ӻ��̣�������ҹ���鲻���������̽���Ѿ��������ޣ�")
	
	end


elseif(answer=="Tsnpc_66")then
	if(LuaQueryTask("Tsnpc_66")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("�ӻ��̣����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_66",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_66")==2)then
		LuaSay("�ӻ��̣����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_66")then
	if(LuaQueryTask("Tenpc_66")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("�ӻ��̣��ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_66",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_66")==2)then
		LuaSay("�ӻ��̣����Ѿ������ˣ����ȥ��ȡ������")
	end

end
LuaSendMenu()
return 1
end 

