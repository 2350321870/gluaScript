NPCINFO = { 
serial="57" ,
base_name="bpzg01" ,
icon=2544,
NpcMove=2544 ,
name="ս��ʹ��" ,
iconaddr=1 ,
butt="10|15|62" ,
lastsay="��ս��ս�ͽ�����",
LuaType=1,
} 
function do_talk(answer) 
if (answer=="ask") then 
	havetask =0 
	level= LuaQuery("level")
	AddTopSayMenuItem("@7�����б�","")
	if(LuaQueryTask("xxooooxx")==98)then
		--AddTopSayMenuItem("�����ʽ�","xxooooxx")
	end
	--AddTopSayMenuItem("@3ͨ����Ԫ��","TBHYB")
	if(MapName()=="lu_gzdt_01") then
		AddTopSayMenuItem("�뿪��ս��ͼ","go_1")
	else
		
		AddTopSayMenuItem("@3��ս����","bpgl")
		AddTopSayMenuItem("@3��ս����","gjbwz")
		if((LuaQueryTask("Tsnpc_28")==1 or LuaQueryTask("Tsnpc_28")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2��վС��","Tsnpc_28")
			if(LuaQueryTask("Tsnpc_28")==1)then
				havetask2=1
			end
		end
		if((LuaQueryTask("Tenpc_28")==1 or LuaQueryTask("Tenpc_28")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_28")
			if(LuaQueryTask("Tenpc_28")==1)then
				havetask2=1
			end
		end
	end
    return 1
   
--------------------------------------------------------------------------------------------------------------------
--ͨ����Ԫ��
elseif(answer=="TBHYB")then
	LuaSay("ʹ��Ԫ���̳ǹ����ͨ��������Ѷһ��ɵȼ۵�Ԫ�����һ������ڱ��ܿ��ţ�ÿ�ζһ�һ��")
	local a = LuaItemStatusNormalCount("o_gold1y")  --���� 
	local b = LuaItemStatusNormalCount("o_gold1j")  --��ͨ��
	local c = a - b
	if(c>=1)then	
		DelItem("o_gold1y",1)
		LuaAddYB(1,1)
	else
		LuaSay("������û��@9ͨ�����ǰ󶨡�@0��")
	end
elseif(answer=="xxooooxx")then
	if(LuaQueryTask("xxooooxx")==98)then
		if(LuaQueryStr("name")=="1-��ԯ����")then
			LuaSay("��ʾ�����ɽ�Ǯ����1000000")
			AddMoneyToPartyBank(2000000)
			LuaSetTask("xxooooxx",99)
			UpdateMenu()
		elseif(LuaQueryStr("name")=="1-��֮����")then
			LuaSay("��ʾ�����ɽ�Ǯ����2000000")
			AddMoneyToPartyBank(2000000)
			LuaSetTask("xxooooxx",99)
			UpdateMenu()
		elseif(LuaQueryStr("name")=="1-Ω����LB")then
			LuaSay("��ʾ�����ɽ�Ǯ����750000�����а���50Wһ���������ķ��ã���ͨ5�����ɵ�ͼ�ķ���25W")
			--LuaPartyRepute(150,0)
			AddMoneyToPartyBank(750000)
			LuaSetTask("xxooooxx",99)
			UpdateMenu()
		end

--[["PC_PartyKCMap=50000",--�󳡷���
"PC_PartyNCMap=50000",--ũ������
"PC_PartyBGXLMap=50000",--�չ���������
"PC_PartyBOSSMap=50000",--BOSS��������   
"PC_PartyDLMap=50000",--���η��� ]]
	end
--------����ս��


elseif(answer=="go_1")then
	ChangeMap("lu_zongmiao",189,250)

elseif(answer=="bpgl")then
	--if(LuaQuery("offerday")==GetCurrentDay())then
	if(LuaPartyLevel()>=1)then
		AddMenuItem("@7����ս��","")
		AddMenuItem("@3�����������","bhpm")
		if(LuaQueryRank() > 2 and LuaPartyLevel() > 0 and LuaPartyServer() == 1) then   ---LuaPartyServer()  ��ѯ��Ұ����Ƿ����ڵ�ǰ������������
			AddMenuItem("@7����ս��˵��","bzsm")
			AddMenuItem("@3����ս������","ptwar")
		end
		AddMenuItem("@5��ս�콱","bzlj")
	else
		LuaSay("����δ�����κΰ��ɣ��ڹ��Ĵ���Ҫ���ͻ�����������������Ŷ@!")
	end
elseif(answer=="bhpm") then  ---�����������
	LuaSay("�Ҹ�Ӣ�۶����°���ʵ��.�Լ�@2��ʾ����ʵ��ǰ10���İ���@0")
	PartyRanking()  
elseif(answer=="bzsm") then  ---��ս˵��
	AddMenuItem("@7����ս��˵��","")
	AddMenuItem("@5�����ս��������","ptwar_fq")
	AddMenuItem("@5����ս��������","ptwar_btz")
	AddMenuItem("@3���ð�ս��ͼ˵��","ptwar_zdt")
	AddMenuItem("@3��ս��Ӧս��Ͷ��˵��","ptwar_xyt")
	AddMenuItem("@5��սʤ���趨��������ͷ�˵��","ptwar_in")
elseif(answer=="ptwar_fq") then  ---�����ս��������
	LuaSay("��ս�����ˣ�@2����@0�������ս�������̣�@1���ð�ս��ͼ@0-->@1��ս@0��9:00-17:00��-->���Է�@2Ͷ��@0��@1��սʤ��@0�����Է�@2Ӧս@0��@522:00-23:00@0@1�����ս��ͼ��ʼ��ս@0�������κ�һ��ʧ�����ܳɹ��������ս����")
elseif(answer=="ptwar_btz") then  ---����ս��������
	LuaSay("@1Ӧս��Ͷ��@0-->��@2Ͷ��@0��@1��սʧ��@0����@2Ӧս@0��@522:00-23:00@0@1�����ս��ͼ��ʼ��ս@0��")
elseif(answer=="ptwar_zdt") then  ---���ð�ս��ͼ˵��
	LuaSay("���ð�ս��ͼ����������@2��������-100@0�����İ�������@25wͭ��@0.ע�⣺��ս��ͼʹ��Ȩֻ��@2������Ч@0��@2ÿ������ÿ���ս����Ϊ5��@0���������5���������ð�ս��ͼ������������������")
elseif(answer=="ptwar_xyt") then  ---��ս��Ӧս��Ͷ��˵��
	LuaSay("��ս��������Ҫ��ս�İ��ɽ�����ս���½�����1���ڲ��ᱻ����������ս�������ɣ�������ս�İ��ɲ��ܱ���ս����ս���ã�@25w@0��")
	LuaSay("����ս���ɻ�Ӧ��ս���ɵķ�ʽ��@2Ӧս��Ͷ��@0��Ӧս��������������@21wͭ��@0��Ӧս��ʱ��@522:00-23:00@0���@3��������ս��ͼ@0��@4������@0@5������@0�� @4����@0@5ս��ʹ��@0�� @4������կ@0@5�����ܹ�@0������ʼ��ս��Ͷ�����������粻����սʱ����Ͷ��(һ�������1��)����Ӧս����Ͷ��������@1�۳���������20w������30��@0�������������û���㹻��Ǯ֧������ô@2����۳�����10@0.")
elseif(answer=="ptwar_in") then  ---��ս����������ͷ�˵��
	LuaSay("��ս��@2ɱ��BOSS�ɻ��50����@0��ɱ�Է����Ҳ��õ����֣�������ڳ���@2���ŵ���ÿ������3����@0��ֻ���Ӱ����ܻ��֣���ս�������Ի��ֻ�ö���ʤ����")
	LuaSay("������ͬ������ս��ʤ��˫������Ϊ0��ս��ʤ����սʤ�����õ�@2(50����ʧ�ܷ����ɵȼ�)�İ�������@0�����Է�����������һ����ͭ�ҡ�")
	LuaSay("@2��ս�ڼ�����@0�ٴν����ս��ͼ����@2�⵽����ʱ�����Ƴͷ�@0�����ߴ���Խ�࣬�ȴ�ʱ��Խ������սʱ��@2����10���Ӳ������ٽ����ս��ͼ@0��")
	LuaSay("�����ս�������ڻʹ�ս��ʹ��������ȡ�߶�齱��Ŷ")
elseif(answer=="ptwar") then  ---����ս������
	AddMenuItem("@7����ս������","")
	AddMenuItem("@3���ð�ս��ͼ","fmap")
	AddMenuItem("@5��ս@0(ʱ��9:00-17:00)","faf")
	AddMenuItem("@5Ӧս��Ͷ��","foc")
	AddMenuItem("���ð�ս����ȼ�","szjrdj")
	AddMenuItem("@3������ս@0(��ķ�100W��3��ʱЧ)","mzp")
	AddMenuItem("@3��������ս��ͼ@0(ʱ��22:00-23:00)","ginfm")
elseif(answer=="fmap") then		---���ð�ս��ͼ
	if(GetPartyCurrentRepute()>-100)then
		EmployFightMap()
	else 
		LuaSay("ս��ʹ�ߣ�@2��������С��-100@0��ʵ��̫�����ǲ�Ҫȥ��������������ͼ������Խа�����ͨ����������������ʵ������������ս���٣�")
	end
elseif(answer=="faf") then	---��ս
	--if(GetCurrentHour()<17)then
		FactionAnnounceFight()
	--else
		--LuaSay("ս��ʹ�ߣ���սʱ����9��00-17��00,���ڹ涨��ʱ�������������룡")
	--end
elseif(answer=="foc") then	---Ӧս��Ͷ��
	FightOrCapitulate() 
elseif(answer=="szjrdj") then	---���ð�ս����ȼ�
	if(LuaQueryRank()> 2 )then
		LuaSay("ս��ʹ�ߣ��������ð�ս����ȼ�������ɵ���ҵȼ�������@2�õȼ�֮����@0�����Խ����ս��ͼ�������ս��")
		AddMenuItem("@7�ȼ��б�","")
		AddMenuItem("20��","szjrdj20")
		AddMenuItem("30��","szjrdj30")
		AddMenuItem("40��","szjrdj40")
		AddMenuItem("50��","szjrdj50")
		AddMenuItem("60��","szjrdj60")
		AddMenuItem("70��","szjrdj70")
	else
		LuaSay("ս��ʹ�ߣ�ֻ�а����볤�ϲ������ð�ս����ȼ���Ȩ�����ܱ�Ǹ����û��Ȩ����")
	end
elseif(answer=="szjrdj20") then		--���ð�ս����ȼ�Ϊ20��
	LuaSay("ս��ʹ�ߣ����ѳɹ�����ս����ȼ����ó�20����ֻ��20�����ϵ���ҷ��ɽ��롣")
	SetPFMinLevel(20)
elseif(answer=="szjrdj30") then		--���ð�ս����ȼ�Ϊ30��
	LuaSay("ս��ʹ�ߣ����ѳɹ�����ս����ȼ����ó�30����ֻ��30�����ϵ���ҷ��ɽ��롣")
	SetPFMinLevel(30)
elseif(answer=="szjrdj40") then		--���ð�ս����ȼ�Ϊ40��
	LuaSay("ս��ʹ�ߣ����ѳɹ�����ս����ȼ����ó�40����ֻ��40�����ϵ���ҷ��ɽ��롣")
	SetPFMinLevel(40)
elseif(answer=="szjrdj50") then		--���ð�ս����ȼ�Ϊ50��
	LuaSay("ս��ʹ�ߣ����ѳɹ�����ս����ȼ����ó�50����ֻ��50�����ϵ���ҷ��ɽ��롣")
	SetPFMinLevel(50)
elseif(answer=="szjrdj60") then		--���ð�ս����ȼ�Ϊ60��
	LuaSay("ս��ʹ�ߣ����ѳɹ�����ս����ȼ����ó�60����ֻ��60�����ϵ���ҷ��ɽ��롣")
	SetPFMinLevel(60)
elseif(answer=="szjrdj70") then		--���ð�ս����ȼ�Ϊ70��
	LuaSay("ս��ʹ�ߣ����ѳɹ�����ս����ȼ����ó�70����ֻ��70�����ϵ���ҷ��ɽ��롣")
	SetPFMinLevel(70)	
elseif(answer=="mzp") then	 --������ս(��ķ�100W��3��ʱЧ)
	AddMenuItem("@7������ս","")
	AddMenuItem("@5��ս˵��","mzp_SM")
	AddMenuItem("@3ȷ��������ս","mzp_Y")
elseif(answer=="mzp_SM") then	 --��ս˵��
	LuaSay("��ս�ڼ䲻�ܱ�����������ս��������ս��������")
	LuaSay("ֻ��@1����@0����������ս����սʱ�䣺@23��@0��������ս���ƣ�@2�ɹ�������ս��������ڽ������ٴ�������ս@0")
elseif(answer=="mzp_Y") then	 --ȷ��������ս
	if(LuaQueryRank()==4) then  --ֻ�а�������ս
		local shijiancha=604800-(GetCurrentTime()-LuaQueryTask("mzp_time"))
		if(GetCurrentTime()>LuaQueryTask("mzp_time")+604800) then
			if(LuaQueryPartyMoney()>=1000000) then
				LuaSetTask("mzp_time",GetCurrentTime())
				LuaSay("������ս�ɹ�")
				SetPartyProtectTime(259200,1000000)
			else
				LuaSay("����@2��սʧ��@0�����������ͭ��Ϊ@2"..LuaQueryPartyMoney().."@0,����100w")
			end
		else
			local d=floor(shijiancha/86400)  --��        
			local h=floor((shijiancha-d*86400)/3600)  --Сʱ
			local f=floor((shijiancha-d*86400-h*3600)/60)  --����
			if(d~=0) then
				if(h~=0) then
					if(f~=0) then
						LuaSay("������ս��@2ʱ������@0����@1"..d.."��"..h.."Сʱ��"..f.."����@0�������ʱ���������������")
					else
						LuaSay("������ս��@2ʱ������@0����@1"..d.."����"..h.."Сʱ@0�������ʱ���������������")
					end
				else
					if(f~=0) then
						LuaSay("������ս��@2ʱ������@0����@1"..d.."����"..f.."����@0�������ʱ���������������")
					else	
						LuaSay("������ս��@2ʱ������@0����@1"..d.."����@0�������ʱ���������������")
					end
				end
			else
				if(h~=0) then
					if(f~=0) then
						LuaSay("������ս��@2ʱ������@0����@1"..h.."Сʱ��"..f.."����@0�������ʱ���������������")
					else
						LuaSay("������ս��@2ʱ������@0����@1"..h.."Сʱ��@0�������ʱ���������������")
					end
				else
					LuaSay("������ս��@2ʱ������@0����@1"..f.."������@0�������ʱ���������������")
				end
			end
		end	
	else
		LuaSay("�㲻�ǰ���������������ս")
	end
elseif(answer=="ginfm") then	--��������ս��ͼ(22:00-23:00)
	AddMenuItem("@5�����ս��ͼ","")
	AddMenuItem("@5�����ս��ͼʱ��ͷ�˵��","ginfm_SM")
	AddMenuItem("@3�����ս��ͼ","ginfm_Y")
elseif(answer=="ginfm_SM") then	--�����ս��ͼʱ��ͷ�˵��
	LuaSay("��ս�ڼ�������ߺ������ٴν����ս��ͼ������@2ʱ�����Ƴͷ�@0������ʱ��Խ�����ͷ�ʱ��Խ��")
	LuaSay("����@2һ������1���ӣ�����4���ӣ�����7���ӣ��Ĵλ��Ĵ�������ÿ������10����@0���ܽ����ս��ͼ����@5������Ͱ�ս��ͼ@0��ʼ��ʱ")
elseif(answer=="ginfm_Y") then	--�����ս��ͼ
	if(GetCurrentMinute()<50) then
		if(LuaQueryStrTask("ginfm_inday")~=GetCurrentDay())then  --�������첻Ϊ��ǰ��
			LuaDelTask("ginfm_inbj")  --������
			LuaDelTask("ginfm_inday")  --����ʱ����
			LuaDelTask("ginfm_incs")  --�������
			LuaDelTask("ginfm_intime")  --����ȴ�ʱ��
		end
		if(LuaQueryTask("ginfm_inbj")==1) then  --˵��������¹���  ���ǵ�һ�ε���˵�
			local time=GetCurrentTime()
			LuaSetTask("ginfm_intime",time)
			LuaSetTask("ginfm_inbj",2)  --������
			if(LuaQueryTask("ginfm_incs")<=4) then     --����ʱ������  1  4  7  10  10  ((LuaQueryTask("ginfm_incs")-1)*3+1)
				LuaSay("�����㱾�ΰ�ս�ڼ�@5����"..LuaQueryTask("ginfm_incs").."��@0����ȴ�@2"..((LuaQueryTask("ginfm_incs")-1)*3+1).."����@0�����ٴν����ս��ͼ") 
			else  
				LuaSay("�����㱾�ΰ�ս�ڼ�@5����"..LuaQueryTask("ginfm_incs").."��@0����ȴ�@210����@0�����ٴν����ս��ͼ") 
			end
		elseif(LuaQueryTask("ginfm_inbj")==2) then  --˵��Ҫ��һ��ʱ������ٴν���
			local shijiancha=(GetCurrentTime() - LuaQueryTask("ginfm_intime"))
			if(LuaQueryTask("ginfm_incs")<=4) then
				if(shijiancha>=((LuaQueryTask("ginfm_incs")-1)*3+1)*60) then
					if(LuaQueryTask("Ac13")==0)then
						LuaSetTask("Ac13_bg",GetUserPartyOffer())
						LuaSetTask("Ac13",99)
					end
					GetInFactionMap()
				else
					local f=floor((((LuaQueryTask("ginfm_incs")-1)*3+1)*60-shijiancha)/60)  --������ٷ���
					local s=((LuaQueryTask("ginfm_incs")-1)*3+1)*60-shijiancha-f*60
					LuaSay("�Ȼᣬ@2"..((LuaQueryTask("ginfm_incs")-1)*3+1).."����@0��û�����ٵ�@2"..f.."����"..s.."����@0���������Ұɣ�")
				end
			else
				if(shijiancha>=10*60) then
					if(LuaQueryTask("Ac13")==0)then
						LuaSetTask("Ac13_bg",GetUserPartyOffer())
						LuaSetTask("Ac13",99)
					end
					GetInFactionMap()
				else
					local f=floor((10*60-shijiancha)/60)  --������ٷ���
					local s=10*60-shijiancha-f*60
					LuaSay("����:�Ȼᣬ@210����@0��û�����ٵ�@2"..f.."����"..s.."����@0���������Ұɣ�")
				end
			end
		else
			if(LuaQueryTask("Ac13")==0)then
				LuaSetTask("Ac13_bg",GetUserPartyOffer())
				LuaSetTask("Ac13",99)
			end
			GetInFactionMap()
		end
	else
		LuaSay("ս��ʹ�ߣ���ս���10�����޷��ٽ����ս��ͼ�����Ż���ս�����ֵܣ��ȴ�ʤ�������ʧ�ܰɣ�")
	end
-----------------------��ս

elseif(answer=="gjbwz")then
	LuaSay("���ұ���ս��ÿ��20:00��21:00�־��У���ӭ������ʿ�����Լ��Ĺ��ң���ս������͵Ĺ��ҽ��м��ʱ����������̲�")
if(level>=35)then
	if(GetDayOfWeek()==7 and GetCurrentHour()<=20 and LuaPublicQuery("GZJF")~=0)then    --ÿ��������0��00~20��00��ҵ��˲˵��ʹ�������
		LuaPublicSet("GZJF_old",LuaPublicQuery("GZJF"))
		LuaPublicSet("GZJF",0)
	end
	AddMenuItem("@7��ս","")
	AddMenuItem("@7��ս˵��","gjbwz_sm")
	AddMenuItem("@3�μӹ��ұ���ս(20:00-21:00)","gjbwz_in")
	AddMenuItem("@5��ս����","gzls")
	AddMenuItem("@9��ս���ֲ�ѯ","gjbwz_look")
	--AddMenuItem("@9��ս��������","gjbwz_look2")
else
	LuaSay("��ʾ����Ҫ35�����ϲ��ܲμӹ�ս��")
end
elseif(answer=="gjbwz_sm")then --��ս˵��
	LuaSay("ʱ�䣺ÿ������@220��-21��@0���ȼ����ƣ�@235������@0���μӷ�ʽ��@3���ս��ʹ��@0��@3������@0��@3�������ұ߾�����Ա��С�壩@0������")
	LuaSay("ȥ��������Ϊ���ַ����ڹ�ս��ͼ��ÿɱһ�����˿ɻ��һ�����֣�ע���ڹ�ս��ͼ�ڲ����ͼ࣬��Ԯ������PK������Ա��20��30�ֽ���") 
	LuaSay("�����ָ߷��ж���ʤ�����ֿ��Ե������ﻻ����3���ȼ���1-50��51-100��100���ϣ���߿ɻ�õȼ�*10W�ľ��飬���ܵõ�ǿ��ʯ������Խ�߲���ȫ���㲥������Ҳ�Ǻܷ��ģ������ֱ�������һ�α���սǰ�һ����������Զ������")
	LuaSay("���˫��û�˲μӣ����ط���ʤ�����ط���һBOSS������ɱ��BOSS���úܶ���֡�")
	LuaSay("ÿ���콱��Ϊ�Լ��������ӻ��֣����һ����������쿪ʼ���¼��㡣�����ҿ�����ÿ�����ҵ�ս��ʹ�ߴ��鿴���ܺͱ��ܵĹ�ս���֣�")
elseif(answer=="gzls")then	--��ս����
	if(LuaQueryStrTask("Tqusday")~=GetCurrentDay())then
		LuaSetTask("Tqus",0) --ÿ������ս��ͼ�󣬲Ż����ð�ս�콱����ֹ���ֻ��һ�ΰ�ս�Ϳ��������콱 
	end
--	if(GetDayOfWeek()==6)then
		LuaSay("ֻҪ��ɱһ�˾��ܻ��10W����Ľ����������Ļ��ֵ���1������ȡ��ɫ�ȼ� x 5000�ľ��飬ͭ��2W������3������ȡ��ɫ�ȼ� x 8000�ľ��飬ͭ��2W,������һ��")
		LuaSay("����5������ȡ��ɫ�ȼ� x 2W�ľ��顢ͭ��2W��������һ��������10������ȡ��ɫ�ȼ� x 3W���顢ǿ��ʯһ����ͭ��2W��������һ��������50������ȡ��ɫ�ȼ� x 5W�ľ��顢ǿ��ʯ������ͭ��2W��������һ������óƺ�@3���ｫ��@0һ��")
		LuaSay("����100������ȡ��ɫ�ȼ� x 10W�ľ��顢ǿ��ʯ�����ͭ��2W��������һ������óƺ�@3�����󽫾�@0һ��,ÿ����5˫�����֣���6�������֡����ҵ����˾�������������У�ս����Ӣ�ۣ�")
		LuaSay("@5��ܰ��ʾ��ÿ����ȡ��֮������Զ����Ŷ@!")
		if(GetCurrentHour()==21)then  
			if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then 
				local level= LuaQuery("level")
				local c=LuaQuery("country_area_fight/getpoint") --ɱ�˼��� 
				local cc =0
				if(GetDayOfWeek()==5 and c>0) then  --c����0����ʾһ��
				cc=2*c
				LuaSay("�����������壬���Ի��˫�����֣�")
				elseif(GetDayOfWeek()==6 and c>0) then
				cc=3*c
				LuaSay("�����������������Ի���������֣�����")
				else
				cc=c 
				end 
				if(c>0)then
					local num = LuaPublicQuery("GZJF")+cc
					--LuaUpdateCountryTZL(num)
					LuaPublicSet("GZJF",num)
					LuaSetTask("GZJF_me",cc)  ---���� 
					LuaSetTask("GZJF_kill",c)  --ɱ���� 
				end
				if(cc==0)then
					LuaSay("ս��ʹ�ߣ����ڱ���ս��@2û�л��ֻ����Ѿ��������@0�ˣ�����ÿ������8�����������ȥ�����߾�����Ա�����뱣��������ս���ɣ���û��֣��һ���ݻ��ֶ��ٸ�����Ӧ�����������ֱ���24Сʱ�ڶһ��꣬������Ч��")
				elseif(cc>=1 and cc<3)then
					if(LuaFreeBag()>=2)then
						LuaSay("��ʾ���������ɱ������������»�������")
						LuaAddJx("combat_exp",100000*c,"Tgzls2") --ÿ����һ�þ������100000����ɱ������������� 
						LuaSay("��ʾ����Ĺ�ս����Ϊ"..LuaQueryTask("GZJF_me").."��")
						LuaSay("ս��ʹ�ߣ�������Ӣ�£�����Խ�ߣ�����Խ�ߣ������ֱ���24Сʱ�ڶһ��꣬������Ч��")
						LuaAddJx("combat_exp",5000*level,"Tgzls")
						LuaGive("coin",20000,"Tgzls")
						--LuaGive("o_ybsc002j",2,"Tgzls") --ǿ��ʯ 
						--LuaGive("o_food05",1,"Tgzls") --������ 
						LuaSet("country_area_fight/getpoint",0)
					else
						LuaSay("��ʾ�������ٱ�������2�������콱��")
					end
				elseif(cc>=3 and cc<5)then
					if(LuaFreeBag()>=2)then
						LuaSay("��ʾ���������ɱ������������»�������")
						LuaAddJx("combat_exp",100000*c,"Tgzls2") --ÿ����һ�þ������100000����ɱ������������� 
						LuaSay("��ʾ����Ĺ�ս����Ϊ"..LuaQueryTask("GZJF_me").."��")
						LuaSay("ս��ʹ�ߣ�������Ӣ�£�����Խ�ߣ�����Խ�ߣ������ֱ���24Сʱ�ڶһ��꣬������Ч��")
						LuaAddJx("combat_exp",8000*level,"Tgzls")
						LuaGive("coin",20000,"Tgzls")
						--LuaGive("o_ybsc002j",3,"Tgzls") --ǿ��ʯ 
						LuaGive("o_food05",1,"Tgzls") --������ 
						LuaSet("country_area_fight/getpoint",0)
					else
						LuaSay("��ʾ�������ٱ�������2�������콱��")
					end
				elseif(cc>=5 and cc<10)then
					if(LuaFreeBag()>=2)then
						LuaSay("��ʾ���������ɱ������������»�������")
						LuaAddJx("combat_exp",100000*c,"Tgzls2") --ÿ����һ�þ������100000����ɱ������������� 
						LuaSay("��ʾ����Ĺ�ս����Ϊ"..LuaQueryTask("GZJF_me").."��")
						LuaSay("ս��ʹ�ߣ�������Ӣ�£�����Խ�ߣ�����Խ�ߣ������ֱ���24Сʱ�ڶһ��꣬������Ч��")
						LuaAddJx("combat_exp",20000*level,"Tgzls")
						LuaGive("coin",20000,"Tgzls")
						--LuaGive("o_ybsc002j",4,"Tgzls") --ǿ��ʯ 
						LuaGive("o_food05",1,"Tgzls") --������ 
						LuaSet("country_area_fight/getpoint",0)
					else
						LuaSay("��ʾ�������ٱ�������2�������콱��")
					end
				elseif(cc>=10 and cc<50)then
					if(LuaFreeBag()>=2)then
						LuaSay("��ʾ���������ɱ������������»�������")
						LuaAddJx("combat_exp",100000*c,"Tgzls2") --ÿ����һ�þ������100000����ɱ������������� 
						LuaSay("��ʾ����Ĺ�ս����Ϊ"..LuaQueryTask("GZJF_me").."��")
						LuaSay("ս��ʹ�ߣ�������Ӣ�£�����Խ�ߣ�����Խ�ߣ������ֱ���24Сʱ�ڶһ��꣬������Ч��")
						LuaAddJx("combat_exp",30000*level,"Tgzls")
						LuaGive("coin",20000,"Tgzls")
						LuaGive("o_ybsc002j",1,"Tgzls") --ǿ��ʯ 
						LuaGive("o_food05",1,"Tgzls") --������ 
						LuaSet("country_area_fight/getpoint",0)
					else
						LuaSay("��ʾ�������ٱ�������2�������콱��")
					end
				elseif(cc>=50 and cc<100)then
					if(LuaFreeBag()>=2)then
						LuaSay("��ʾ���������ɱ������������»�������")
						LuaAddJx("combat_exp",100000*c,"Tgzls2") --ÿ����һ�þ������100000����ɱ������������� 
						LuaSay("��ʾ����Ĺ�ս����Ϊ"..LuaQueryTask("GZJF_me").."��")
						LuaSay("ս��ʹ�ߣ�������Ӣ�£�����Խ�ߣ�����Խ�ߣ������ֱ���24Сʱ�ڶһ��꣬������Ч��")
						LuaNotice(""..LuaQueryStr("name").."�ڹ�սɱ��Ӣ�£���Խ50���֣������ڣ����Һγǿ��")
						SetTitleMeg(38)
						LuaSay("ս��ʹ�ߣ������㻤���й�������@2"..LuaQueryStr("title").."@0�ĳƺţ�")
						LuaAddJx("combat_exp",50000*level,"Tgzls")
						LuaGive("coin",20000,"Tgzls")
						LuaGive("o_ybsc002j",3,"Tgzls") --ǿ��ʯ 
						LuaGive("o_food05",1,"Tgzls") --������ 
						LuaSet("country_area_fight/getpoint",0)
					else
						LuaSay("��ʾ�������ٱ�������2�������콱��")
					end
				elseif(cc>=100)then
					if(LuaFreeBag()>=2)then
						LuaSay("��ʾ���������ɱ������������»�������")
						LuaAddJx("combat_exp",100000*c,"Tgzls2") --ÿ����һ�þ������100000����ɱ������������� 
						LuaSay("��ʾ����Ĺ�ս����Ϊ"..LuaQueryTask("GZJF_me").."��")
						LuaSay("ս��ʹ�ߣ�������Ӣ�£�����Խ�ߣ�����Խ�ߣ������ֱ���24Сʱ�ڶһ��꣬������Ч��")
						LuaNotice(""..LuaQueryStr("name").."�ڹ�ս��ɱ¾ͻ����100�����ˣ������ܵ��ˣ�������ס�������֣��ҹ��ж���Ӧ����Ϊ������")	    
						SetTitleMeg(32)
						LuaSay("ս��ʹ�ߣ���ս��׿��������@2"..LuaQueryStr("title").."@0�ĳƺţ�")
						LuaAddJx("combat_exp",100000*level,"Tgzls")
						LuaGive("coin",20000,"Tgzls")
						LuaGive("o_ybsc002j",5,"Tgzls") --ǿ��ʯ 
						LuaGive("o_food05",1,"Tgzls") --������ 
						LuaSet("country_area_fight/getpoint",0)
					else
						LuaSay("��ʾ�������ٱ�������2�������콱��")
					end
				end
			else 
				LuaSay("ս��ʹ�ߣ��Ǳ����˲�����ȡ���������������㻹���������콱�����ص��Լ�����ȥ��")
			end
		else
			LuaSay("ս��ʹ�ߣ����ڲ��Ƕһ�������ʱ�䣡��ս��������Ϊÿ��21�㵽22��֮����ȡ��")
		end 
--	else
--		LuaSay("��ʾ��ÿ����������ȡ��ս����Ŷ@!")
--	end
elseif(answer=="gjbwz_in")then	
	AddMenuItem("@7�����ս","")
	AddMenuItem("@5��������","ruqin")
	AddMenuItem("@5��������","baowei")

	elseif(answer=="ruqin")then
		if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
			ChangeServer()
		else
			AddMenuItem("@7��ȷ��Ҫ���ָù���","")
			AddMenuItem("@5ȷ��","ruqin_y")
			AddMenuItem("@5ȡ��","")
		end
	elseif(answer=="ruqin_y")then
		if(LuaQueryTask("Ac14")==0)then
			LuaSay("ͳһ����ʿ����ӭ�����μӴ�˵�лҳ������Ĺ�սɱ�˻���������Ī��")
			LuaSetTask("Ac14_gz",LuaQuery("gj_gx"))
			LuaSetTask("Ac14",99)
		end
		GetInCountryProtectFightMap("lu_gzdt_01")
	elseif(answer=="baowei")then
		if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
			GetInCountryProtectFightMap("lu_gzdt_01")
		else
			LuaSay("��������ˣ�����������Ҫ��������@3ս��ʹ��@0�������Ŷ@!")
		end
elseif(answer=="gjbwz_look")then
	local country1 = GeGJMC()			--GeGJMC()����ȡ��ǰ�ߵĹ�����
	local country2 = LuaQueryStr("country")
	LuaSay("��ʾ��@3��"..country1.."��@0���ܵ�ȫ������Ϊ@3"..LuaPublicQuery("GZJF_old").."@0������Ϊ@3"..LuaPublicQuery("GZJF").."@0��")
	LuaSay("��ʾ����Ĺ�����@3��"..country2.."��@0������ϴι�ս����Ϊ@3"..LuaQueryTask("GZJF_me").."@0����ɱ@3"..LuaQueryTask("GZJF_kill").."@0�ˣ�")
--LuaUpdateCountryTZL(num)  ����ͳ������ֵ  ��������
--LuaQueryCountryTZL()		��ѯ ��������
--LuaCountryTZLSofr()		��ʾ���а�
elseif(answer=="gjbwz_look2")then
	LuaCountryTZLSofr()


elseif(answer=="Tsnpc_28")then
	if(LuaQueryTask("Tsnpc_28")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("ս��ʹ�ߣ����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_28",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_28")==2)then
		LuaSay("ս��ʹ�ߣ����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_28")then
	if(LuaQueryTask("Tenpc_28")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("ս��ʹ�ߣ��ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_28",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_28")==2)then
		LuaSay("ս��ʹ�ߣ����Ѿ������ˣ����ȥ��ȡ������")
	end

elseif(answer=="bzlj") then		---��ս�콱 
--	offerdaynum   ��ս����
--	offerday         ��ս���� 2011-10-10
--	LuaQuery("offerdaynum")
--  LuaQueryStr("offerday") ��Ұ�սɱ�˻ᴥ��ʱ���ж���ʱ���ж�Ϊ��ͬһ�죬�������ս���� 
	LuaSay("ֻҪ��ɱһ�˾��ܻ��10W����Ľ����������Ļ��ֵ���1������ȡ��ɫ�ȼ� x 3000�ľ��飬ͭ��2W������ʳƷ[��]һ��������3������ȡ��ɫ�ȼ� x 5000�ľ��飬ͭ��2W,����ʳƷ[��]һ��")
	LuaSay("����5������ȡ��ɫ�ȼ� x 1W�ľ��顢ͭ��2W������ʳƷ[��]���������10������ȡ��ɫ�ȼ� x 2W���顢ͭ��2W������ʳƷ[��]ʮ��������50������ȡ��ɫ�ȼ� x 5W�ľ��顢ͭ��5W������ʳƷ[��]20��")
	LuaSay("����100������ȡ��ɫ�ȼ� x 7W�ľ��顢���˱���һ����ͭ��7W������ʳƷ[��]��ʮ����Ϊ�˰��ɵ���ҫ�����𱦽��尡���ֵ��ǣ�")
	LuaSay("@5��ܰ��ʾ��ÿ����ȡ��֮������Զ����Ŷ@!")
	if(LuaQueryStrTask("Tbzljday")~=GetCurrentDay())then
		LuaSetTask("Tbzlj",0) --ÿ������ս��ͼ�󣬲Ż����ð�ս�콱����ֹ���ֻ��һ�ΰ�ս�Ϳ��������콱 
		LuaSetTask("Tbzljday",GetCurrentDay())
	end
	if(GetCurrentHour()==23)then
		local cc=LuaQuery("offerdaynum")
		local level= LuaQuery("level")
		if(LuaQueryStr("offerday")==GetCurrentDay())then
			if(LuaQueryTask("Tbzlj")==0)then 
				LuaSay("��ʾ����İ�ս����Ϊ"..cc.."��������ȡһ�ν��������ֻ��������һ�ְ�ս���ã�")
				if(cc==0)then
					LuaSay("��ʾ����İ�ս����Ϊ0��û���κν�����")
					LuaSetTask("Tbzlj",99)
				elseif(cc>=1 and cc<3)then
						if(LuaFreeBag()>=2)then					
							LuaAddJx("combat_exp",3000*level,"Tbzlj")
							LuaGive("coin",10000,"Tbzlj")
							--LuaGive("o_box004j",1,"Tbzlj") 
							LuaGive("o_food03",1,"Tbzlj") --����ʳƷ������ 
							LuaSetTask("Tbzlj",99)
						else
							LuaSay("��ʾ�������ٱ�������2�������콱��")
						end
				elseif(cc>=3 and cc<5)then
						if(LuaFreeBag()>=2)then
							LuaAddJx("combat_exp",5000*level,"Tbzlj")
							LuaGive("coin",20000,"Tbzlj")
							--LuaGive("o_box004j",1,"Tbzlj")  
							LuaGive("o_food03",2,"Tbzlj") --����ʳƷ������ 
							LuaSetTask("Tbzlj",99)
						else
							LuaSay("��ʾ�������ٱ�������2�������콱��")
						end
				elseif(cc>=5 and cc<10)then
						if(LuaFreeBag()>=2)then
							LuaAddJx("combat_exp",10000*level,"Tbzlj")
							LuaGive("coin",20000,"Tbzlj")
							--LuaGive("o_box005j",1,"Tbzlj")  
							LuaGive("o_food03",5,"Tbzlj") --����ʳƷ������ 
							LuaSetTask("Tbzlj",99)
						else
							LuaSay("��ʾ�������ٱ�������2�������콱��")
						end
				elseif(cc>=10 and cc<50)then
						if(LuaFreeBag()>=2)then
							LuaAddJx("combat_exp",20000*level,"Tbzlj")
							LuaGive("coin",20000,"Tbzlj")
							--LuaGive("o_box005j",1,"Tbzlj") 
							LuaGive("o_food03",10,"Tbzlj") --����ʳƷ������ 
							LuaSetTask("Tbzlj",99)
						else
							LuaSay("��ʾ�������ٱ�������2�������콱��")
						end
				elseif(cc>=50 and cc<100)then
						if(LuaFreeBag()>=2)then
							LuaAddJx("combat_exp",50000*level,"Tbzlj")
							LuaGive("coin",50000,"Tbzlj")
							--LuaGive("o_box004j",1,"Tbzlj") 
							LuaGive("o_food03",20,"Tbzlj") --����ʳƷ������ 
							LuaSetTask("Tbzlj",99)
							LuaNotice(""..LuaQueryStr("name").."�ڰ�սɱ��Ӣ�£���Խ50���֣��������Ī�У�")
						else
							LuaSay("��ʾ�������ٱ�������2�������콱��")
						end
				elseif(cc>=100)then
						if(LuaFreeBag()>=2)then
							LuaAddJx("combat_exp",70000*level,"Tbzlj")
							LuaGive("coin",70000,"Tbzlj")
							LuaGive("o_box002",1,"Tbzlj")  
							LuaGive("o_food03",20,"Tbzlj") --����ʳƷ������ 
							LuaSetTask("Tbzlj",99)
							LuaNotice(""..LuaQueryStr("name").."�ڰ�սɱ��Ӣ�£���Խ100���֣���˳�Խ���ɱ¾���˾�����")
						else
							LuaSay("��ʾ�������ٱ�������2�������콱��")
						end
				end
			else
				LuaSay("��ʾ����û�а�ս�������߽����Ѿ�������ˣ�ÿ�ΰ�սֻ����һ�Σ��´�һ�����ս��������ɣ�")
			end
		else
			LuaSay("�����㶼û�����ս��������ȡ����")
		end
		--LuaSay("����һЩ����ԭ�򣬰�ս������ʱ�رգ�����ʱ����������ϵͳ���棬������ɵĲ��㾴���½⣡")
	else
		LuaSay("��ս������ÿ���23�㵽0��֮����ȡ")
	end

end 
LuaSendMenu()
return 1
end 
