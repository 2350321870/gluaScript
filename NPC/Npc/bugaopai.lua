NPCINFO = {
serial= "91" ,
base_name="bugaopai",
icon= 2590,
NpcMove=2590,
name= "������" , 
iconaddr=1, 
butt="50|50|72", 
name_color ="CEFFCE" , 
lastsay="�Ƽ����������",
LuaType=1,
have_jifen_item =1,
shopxh = 10,
}
 function do_talk(answer)                          --ȡ�������� 180   181
 if (answer=="ask") then
	havetask =0
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7�����б�","")
	--AddTopSayMenuItem("@3�����̵�","buy1")
	--AddTopSayMenuItem("@3�Ƽ�ϵͳ","Ttuijian")
	if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
		AddTopSayMenuItem("@3ÿ�����а���","Tpaihang")
	end
	if(LuaQueryTask("T280")==1) then
		AddTopSayMenuItem("@2����ͨ�桾���顿","T280")
		havetask =2
	end
		AddTopSayMenuItem("@9���հ���ս��","jrbpzs")
		AddTopSayMenuItem("@3��������ս��ͼ(22:00-23:00)","ginfm")
		AddTopSayMenuItem("@3ϵͳ����","sysinfo BACK")
		

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

elseif(answer=="Thequbc") then
	if((LuaItemCount("e_sword051y")>0 or LuaItemCount("e_staff051y")>0 or  LuaItemCount("e_falchion051y")>0) and LuaQueryTask("Thequbc")==0) then
		LuaSay("�ɻ�����²�����@36����Ƥë��1�����Լ�����װ����500Ԫ��")
		if(LuaFreeBag()>=3)then
			LuaAddYB(1,500)
			LuaGive("o_material_16",1,"Thequbc")
			LuaGive("o_material_25",1,"Thequbc")
			LuaGive("o_material_52",1,"Thequbc")
			LuaSetTask("Thequbc",99)
			UpdateMenu()
		else
			LuaSay("��ʾ���뱣�ֱ���3����λ")
		end
	else
		LuaSay("��ʾ�����Ѿ���ȡ��װ������")
	end
    
elseif(answer=="liaotian") then
	LuaSay("ͨ�棺�Ƽ����ˡ��������˶�����ø߶�Ļر���")

elseif(answer=="jrbpzs") then   --���հ���ս��
	ReadyToFightParty()
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



elseif(answer=="Ttuijian") then		--�Ƽ�ϵͳ
	AddMenuItem("@7�Ƽ�ϵͳ","")
	AddMenuItem("@3�Ƽ��ĺô�","tjjs")
	AddMenuItem("@3�Ƽ�����ȡ","Ttjmlq")
	--AddMenuItem("@3�Ƽ�����","Ttjgl")
	--AddMenuItem("@3���ֲ�ѯ","Tjfcx")
	if(LuaQueryTask("T126")==1)  then
		AddMenuItem("@2�Ƽ����ˡ��̡̳�","T126")
	end
	elseif(answer=="Ttjmlq") then	--�Ƽ�����ȡ
		if(LuaQueryTask("Ttjmnum")~=0) then
			LuaSay("��ʾ�����Ѿ���ȡ���Ƽ��룬����Ƽ���Ϊ@3"..LuaQueryTask("Ttjmnum").."")
		else
			local tjm=LuaGetTjCode()
			if(tjm=="") then
				LuaSay("��ʾ���Ƽ����Ѿ�����")
			elseif(tjm==0) then
				LuaSay("��ʾ���Ƽ�����ȡ�쳣����������ȡ")
			else
				 LuaSetTask("Ttjmnum",tjm)
				 LuaSay("��ʾ���Ƽ�����ȡ�ɹ�������Ƽ���Ϊ"..tjm.."")
			end
		end
elseif(answer=="tjjs") then
	LuaSay("@5һ��@0�����ͨ���Ƽ���û��֣�1�����ֵ���1����ҵļ�ֵ������Բ���һ��Ǯ���Ϳ��Թ���@7�����̳�@0�ĵ���")
	LuaSay("@5����@0���Ƽ��Ľ�ɫÿ������30��40��50��60��ʱ���Ƽ��߷ֱ���100��200��300��400�Ļ��ֽ���")
	LuaSay("@5����@0���Ƽ��Ľ�ɫÿ����5��Ԫ�����Ƽ��߻��1�Ļ��֡�")

elseif(answer=="Ttjgl") then
	AddMenuItem("@7�Ƽ�ϵͳ","")
	AddMenuItem("@3����Ƽ�","rhtj")
	AddMenuItem("@3�Ƽ�����","tjjq")
elseif(answer=="rhtj")then
	LuaSay("@5һ��@0��ȷ�ϼ����ٰ��Ǻż������Ƽ������������Ƽ���ҵ��ֻ����뼴��")
	LuaSay("@5������Ҳ������������ȡ@3�Ƽ���@0���κ�һ��@3���˺�@0������ɫʱ��ֻҪ��������Ƽ��룬����������Ƽ��ˣ�")
elseif(answer=="tjjq")then
	LuaSay("@1����Ƽ����һ��Ҫ�μ�����Ƽ���Ŷ��@0")
	LuaSay("@5����һ��@0������Щ���ѿ���Ҳϲ����ͳһ�أ������ȥ֮ǰ�������Ϸ�������������ˣ��������ͬѧ֮�䡢ͬ��֮�䣬Ҫ���и����þ͸�����˼����ÿ��ȥ��ͬ�ĵط���ͷ����ר�Ÿ�˧����ʦ���ܣ�һ��һ��׼Ŷ��")
	LuaSay("@5���ɶ���@0�����Ƽ�Ŀ��󣬰�@1http��//awty.cn@0���ڶ������棬�Է�Ҫ���ص�ַ��ֱ�ӰѶ���ת�����Է��ͺ��ˡ���������Ϸ���Ƽ��˵���������Է����ֻ���Ҳ����Ŷ��")
	LuaSay("@5��������@0�������������������ң����������������Ӻ��з��������໥��ɱ�ֹ������������죬������ÿ�����ѣ��㶼�к����Ļ�������Ŷ��")


elseif(answer=="Tjfcx") then
	LuaSay("��ʱδ����")
elseif(answer=="T126") then
	if(LuaQueryTask("T126")==1)  then
		LuaSay("��ʾ�����Ѿ��˽���@3�Ƽ�ϵͳ@0��ֻҪ���Ƽ�������һ���棬��ô�����л����ô����Ļ��ֺͻ��ֻ����ߵĻ��ᡣ")
		LuaSay("��ʾ����Щ����һ��������ͳһ������ɣ����ˣ���ȥ�ظ�@3���幫��@0�ɡ�")
		LuaSetTask("T126A",99)
		UpdateNPCMenu("jinqing")
	 end

----------ÿ��һ���а��� 
elseif(answer=="Tpaihang") then 
	if(GetDayOfWeek()==1) then
		if(GetCurrentDay()~="2010-1-4") then	--�����һ�ܣ�������ȡ���н���
			if(GetCurrentHour()>5) then
				LuaSay("��ʾ��ֻҪ�ڸ�������ʦ�񡢸��ְ������ɱ�ְ���ģ�����˰�ռ��ǰ10���Ϳ���ȡ�߶����")
				LuaSay("��ʾ��ֻҪ�ڸ�������ʦ�񡢸��ְ������ɱ�ְ���ģ�����˰�ռ��ǰ10���Ϳ���ȡ�߶����")
				AddMenuItem("@7ÿ�����н���","")
				AddMenuItem("��������","total_money")
				AddMenuItem("��ʦ����","graduate_prentice")
				AddMenuItem("���ְ���","experice")
				AddMenuItem("�������","NKCount")
				AddMenuItem("ɱ�ְ���","PKCount")
				AddMenuItem("��ģ����","till")
				AddMenuItem("���˰���","aa")         -- rescue_number
			else
				LuaSay("��ʾ����һ���а�δˢ�£��賿6���Ժ�������ȡ���ܽ����ɡ�")
			end
		else
			LuaSay("@3��ʾ�������ĵ�2�ܣ������е�ǰ10������ȡ����")
		end
	else
		LuaSay("��ʾ��@3ÿ��һ@0������ȡ@3ÿ�����а�ǰ10����@0��ʱ�䡣")
	end
 
	elseif(answer=="total_money") then        --������ 
		local r=RangeQuery("total_money")	                                                         
		if(r>10) then												 
			LuaSay("��ʾ�������㲻�ڸ�����@3ǰ10λ@0��������ȡ������")
		elseif(r==1)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tfhphday")) then 
				LuaSay("��ʾ���������ڸ�������@3��"..r.."λ@0���ɻ��@330W@0��ͭ�ҽ�����")
				LuaGive("coin",300000,"Tpaihang")
				LuaSetTask("Tfhphday",GetCurrentDay())
				LuaNotice("�������1λ��@2"..LuaQueryStr("name").."@0����ȡ����@330Wͭ��@0��ÿ�����н�����")
			else
				LuaSay("��ʾ�����Ѿ���ȡ�˱��ܵĸ����������������졣")
			end
		elseif(r==2 or r==3)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tfhphday")) then 
				LuaSay("��ʾ���������ڸ�������@3��"..r.."λ@0���ɻ��@318W@0��ͭ�ҽ�����")
				LuaGive("coin",180000,"Tpaihang")
				LuaSetTask("Tfhphday",GetCurrentDay())
				LuaNotice("�������"..r.."λ��@2"..LuaQueryStr("name").."@0����ȡ����@318Wͭ��@0��ÿ�����н�����")
			else
				LuaSay("��ʾ�����Ѿ���ȡ�˱��ܵĸ����������������졣")
			end 
		elseif(r>3 and r<11)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tfhphday")) then 
				LuaSetTask("Tfhphday",GetCurrentDay())
				LuaSay("��ʾ���������ڸ�������@3��"..r.."λ@0���ɻ��@310W@0��ͭ�ҽ�����")
				LuaGive("coin",100000,"Tpaihang")
				LuaNotice("�������"..r.."λ��@2"..LuaQueryStr("name").."@0����ȡ����@310Wͭ��@0��ÿ�����н�����")
			else
				LuaSay("��ʾ�����Ѿ���ȡ�˱��ܵĸ����������������졣")
			end 
		end
         
         
	elseif(answer=="graduate_prentice") then        --��ʦ�� 
		local r=RangeQuery("graduate_prentice")	
		if(LuaQuery("graduate_prentice")>0)then                                                        
			if(r>10) then												 
				LuaSay("��ʾ�������㲻����ʦ��@3ǰ10λ@0��������ȡ������")
			elseif(r==1)  then
				if(GetCurrentDay()~=LuaQueryStrTask("Tzsphday")) then 
					LuaSay("��ʾ������������ʦ����@3��"..r.."λ@0���ɻ��@318W@0��ͭ�ҽ�����")
					LuaGive("coin",180000,"Tpaihang")
					LuaSetTask("Tzsphday",GetCurrentDay())
					LuaNotice("��ʦ���1λ��@2"..LuaQueryStr("name").."@0����ȡ����@318Wͭ��@0��ÿ�����н�����")
				else
					LuaSay("��ʾ�����Ѿ���ȡ�˱��ܵ���ʦ�������������졣")
				end
			elseif(r==2 or r==3)  then
				if(GetCurrentDay()~=LuaQueryStrTask("Tzsphday")) then 
					LuaSay("��ʾ������������ʦ����@3��"..r.."λ@0���ɻ��@310W@0��ͭ�ҽ�����")
					LuaGive("coin",100000,"Tpaihang")
					LuaSetTask("Tzsphday",GetCurrentDay())
					LuaNotice("��ʦ���"..r.."λ��@2"..LuaQueryStr("name").."@0����ȡ����@310Wͭ��@0��ÿ�����н�����")
				else
					LuaSay("��ʾ�����Ѿ���ȡ�˱��ܵ���ʦ�������������졣")
				end 
			elseif(r>3 and r<11)  then
				if(GetCurrentDay()~=LuaQueryStrTask("Tzsphday")) then 
					LuaSetTask("Tzsphday",GetCurrentDay())
					LuaSay("��ʾ������������ʦ����@3��"..r.."λ@0���ɻ��@35W@0��ͭ�ҽ�����")
					LuaGive("coin",50000,"Tpaihang")
					LuaNotice("��ʦ���"..r.."λ��@2"..LuaQueryStr("name").."@0����ȡ����@35Wͭ��@0��ÿ�����н�����")
				else
					LuaSay("��ʾ�����Ѿ���ȡ�˱��ܵ���ʦ�������������졣")
				end 
			end
		else
			LuaSay("������ʦ��ͽ�ܶ�û��,Ҳ��������ʦ��")
		end
         
         
	elseif(answer=="experice") then        --���ְ� 
		local r=RangeQuery("experice")	                                                         
		if(r>10) then												 
			LuaSay("��ʾ�������㲻�ڸ��ְ�@3ǰ10λ@0��������ȡ������")
		elseif(r==1)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tgsphday")) then 
				LuaSay("��ʾ���������ڸ��ְ���@3��"..r.."λ@0���ɻ��@310W@0��ͭ�ҽ�����")
				LuaGive("coin",100000,"Tpaihang")
				LuaSetTask("Tgsphday",GetCurrentDay())
				LuaNotice("���ְ��1λ��@2"..LuaQueryStr("name").."@0����ȡ����@310Wͭ��@0��ÿ�����н�����")
			else
				LuaSay("��ʾ�����Ѿ���ȡ�˱��ܵĸ��ְ������������졣")
			end
		elseif(r==2 or r==3)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tgsphday")) then 
				LuaSay("��ʾ���������ڸ��ְ���@3��"..r.."λ@0���ɻ��@36W@0��ͭ�ҽ�����")
				LuaGive("coin",65000,"Tpaihang")
				LuaSetTask("Tgsphday",GetCurrentDay())
				LuaNotice("���ְ��"..r.."λ��@2"..LuaQueryStr("name").."@0����ȡ����@36Wͭ��@0��ÿ�����н�����")
			else
				LuaSay("��ʾ�����Ѿ���ȡ�˱��ܵĸ��ְ������������졣")
			end 
		elseif(r>3 and r<11)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tgsphday")) then 
				LuaSetTask("Tgsphday",GetCurrentDay())
				LuaSay("��ʾ���������ڸ��ְ���@3��"..r.."λ@0���ɻ��@33W@0��ͭ�ҽ�����")
				LuaGive("coin",33000,"Tpaihang")
			else
				LuaSay("��ʾ�����Ѿ���ȡ�˱��ܵĸ��ְ������������졣")
			end 
		end
         
	elseif(answer=="NKCount") then        --����� 
		local r=RangeQuery("NKCount")	                                                         
		if(r>10) then												 
			LuaSay("��ʾ�������㲻�������@3ǰ10λ@0��������ȡ������")
		elseif(r==1)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Ttfphday")) then 
				LuaSay("��ʾ�����������������@3��"..r.."λ@0���ɻ��@36W@0��ͭ�ҽ�����")
				LuaGive("coin",65000,"Tpaihang")
				LuaSetTask("Ttfphday",GetCurrentDay())
				LuaNotice("������1λ��@2"..LuaQueryStr("name").."@0����ȡ����@36Wͭ��@0��ÿ�����н�����")
			else
				LuaSay("��ʾ�����Ѿ���ȡ�˱��ܵ�����������������졣")
			end
		elseif(r==2 or r==3)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Ttfphday")) then 
				LuaSay("��ʾ�����������������@3��"..r.."λ@0���ɻ��@33W@0��ͭ�ҽ�����")
				LuaGive("coin",30000,"Tpaihang")
				LuaSetTask("Ttfphday",GetCurrentDay())
			else
				LuaSay("��ʾ�����Ѿ���ȡ�˱��ܵ�����������������졣")
			end 
		elseif(r>3 and r<11)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Ttfphday")) then 
				LuaSetTask("Ttfphday",GetCurrentDay())
				LuaSay("��ʾ�����������������@3��"..r.."λ@0���ɻ��@32W@0��ͭ�ҽ�����")
				LuaGive("coin",20000,"Tpaihang")
			else
				LuaSay("��ʾ�����Ѿ���ȡ�˱��ܵ�����������������졣")
			end 
		end
         
	elseif(answer=="PKCount") then      --ɱ�ְ� 
		local r=RangeQuery("PKCount")	                                                         
		if(r>10) then												 
			LuaSay("��ʾ�������㲻��ɱ�ְ�@3ǰ10λ@0��������ȡ������Ҫɱ�ȼ����Լ��ߵ��˲��ܱ�����Ŷ@!")
		elseif(r==1)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tssphday")) then 
				LuaSay("��ʾ����������ɱ�ְ���@3��"..r.."λ@0���ɻ��@33W@0��ͭ�ҽ�����")
				LuaGive("coin",30000,"Tpaihang")
				LuaSetTask("Tssphday",GetCurrentDay())
			else
				LuaSay("��ʾ�����Ѿ���ȡ�˱��ܵ�ɱ�ְ������������졣")
			end
		elseif(r==2 or r==3)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tssphday")) then 
				LuaSay("��ʾ����������ɱ�ְ���@3��"..r.."λ@0���ɻ��@2W@0��ͭ�ҽ�����")
				LuaGive("coin",20000,"Tpaihang")
				LuaSetTask("Tssphday",GetCurrentDay())
			else
				LuaSay("��ʾ�����Ѿ���ȡ�˱��ܵ�ɱ�ְ������������졣")
			end 
		elseif(r>3 and r<11)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tssphday")) then 
				LuaSetTask("Tssphday",GetCurrentDay())
				LuaSay("��ʾ����������ɱ�ְ���@3��"..r.."λ@0���ɻ��@37000@0��ͭ�ҽ�����")
				LuaGive("coin",7000,"Tpaihang")
			else
				LuaSay("��ʾ�����Ѿ���ȡ�˱��ܵ�ɱ�ְ������������졣")
			end 
		end
         
	elseif(answer=="till") then      --��ģ�� 
		local r=RangeQuery("till")	                                                         
		if(r>10) then												 
			LuaSay("��ʾ�������㲻����ģ��@3ǰ10λ@0��������ȡ������")
		elseif(r==1)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tlmphday")) then 
				LuaSay("��ʾ������������ģ����@3��"..r.."λ@0���ɻ��@33W@0��ͭ�ҽ�����")
				LuaGive("coin",30000,"Tpaihang")
				LuaSetTask("Tlmphday",GetCurrentDay())
			else
				LuaSay("��ʾ�����Ѿ���ȡ�˱��ܵ���ģ�������������졣")
			end                                                                                       
		elseif(r==2 or r==3)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tlmphday")) then 
				LuaSay("��ʾ������������ģ����@3��"..r.."λ@0���ɻ��@32W@0��ͭ�ҽ�����")
				LuaGive("coin",20000,"Tpaihang")
				LuaSetTask("Tlmphday",GetCurrentDay())
			else
				LuaSay("��ʾ�����Ѿ���ȡ�˱��ܵ���ģ�������������졣")
			end 
		elseif(r>3 and r<11)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tlmphday")) then 
				LuaSetTask("Tlmphday",GetCurrentDay())
				LuaSay("��ʾ������������ģ����@3��"..r.."λ@0���ɻ��@37000@0��ͭ�ҽ�����")  
				LuaGive("coin",7000,"Tpaihang")
			else
				LuaSay("��ʾ�����Ѿ���ȡ�˱��ܵ���ģ�������������졣")
			end 
	end
         

	elseif(answer=="aa") then      --���˰�
		local r=RangeQuery("rescue_number")
		if(r>10) then												 
			LuaSay("��ʾ�������㲻�����˰�@3ǰ10λ@0��������ȡ������")
		elseif(r==1)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tsrphday")) then 
				LuaSay("��ʾ�������������˰���@3��"..r.."λ@0���ɻ��@33W@0��ͭ�ҽ�����")
				LuaGive("coin",30000,"Tpaihang")
				LuaSetTask("Tsrphday",GetCurrentDay())
			else
				LuaSay("��ʾ�����Ѿ���ȡ�˱��ܵ����˰������������졣")
			end                                                                                       
		elseif(r==2 or r==3)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tsrphday")) then 
				LuaSay("��ʾ�������������˰���@3��"..r.."λ@0���ɻ��@32W@0��ͭ�ҽ�����")
				LuaGive("coin",20000,"Tpaihang")
				LuaSetTask("Tsrphday",GetCurrentDay())
			else
				LuaSay("��ʾ�����Ѿ���ȡ�˱��ܵ����˰������������졣")
			end 
		elseif(r>3 and r<11)  then
			if(GetCurrentDay()~=LuaQueryStrTask("Tsrphday")) then 
				LuaSetTask("Tsrphday",GetCurrentDay())
				LuaSay("��ʾ�������������˰���@3��"..r.."λ@0���ɻ��@37000@0��ͭ�ҽ�����")
				LuaGive("coin",7000,"Tpaihang")
			else
				LuaSay("��ʾ�����Ѿ���ȡ�˱��ܵ����˰������������졣")
			end 
		end
 

elseif(answer=="T280") then                 -------------------------����ͨ��
	if(LuaQueryTask("T280") == 1 ) then
		if (LuaItemCount("o_mission361")>=1)then
			LuaSay("��ʾ��������ϣ���ͷ��@3л��@0�����ƺ��������飡��Ҳ����ȥ@2��ߵı�����Ӫ@0������@!")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T280jl")
		else 
			LuaSay("��ʾ��������ûͨ�棡")
		end 
	end 
elseif(answer=="T280jl")then
        if (LuaItemCount("o_mission361")>=1)then
		LuaSetTask("T280",99)
		LuaAddJx("combat_exp",108000,"T280")
		LuaAddAchievementSchedule("Task_num",1)
		DelItem("o_mission361",1)
		DelLog("280")
		UpdateMenu()
	end

elseif (answer=="gonggao") then
	LuaSay("7��27���ܶ�����2���¹��棺")
	LuaSay("1�������ξ������")
	LuaSay("2��5�����ɲ��ܹ�����ս")
	LuaSay("3�����������޹���ʾ�ѹر�Ȼ�󱻴��ͳ�ȥ��BUG")
      
end
LuaSendMenu()
return 1
end