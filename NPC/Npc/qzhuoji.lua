NPCINFO = {
serial= "26" ,
base_name="qzhuoji",
icon= 2510, 
NpcMove=2510, 
name= "Ǯׯ�ϰ塾�ֿ⡿" , 
iconaddr=1, 
butt="20|20|63",
name_color = "CEFFCE" , 
lastsay="��Ǯ�����̳������ծ",
have_storge=1,
have_bank =1,
LuaType=1,
}
function do_talk(answer)
if(answer=="ask") then    
	havetask =0
	local T240=LuaQueryTask("T240")
	AddTopSayMenuItem("@7�����б�","")
	if(LuaQueryTask("Tfkdcg")>=1 and  LuaQueryTask("Tfkdcg")<4 and GetCurrentDay()==LuaQueryStrTask("fkdcgday"))then
		AddTopSayMenuItem("@2����ɹ������","Tfkdcg")			--����ɹ��	
		havetask =2
	end
	if(LuaQuery("level")>=30)then
		if(LuaQueryTask("Tcoc")<99 or LuaQueryStrTask("Tcocday")~=GetCurrentDay())then
			AddTopSayMenuItem("@7�̼��򱳡�ÿ�ա�","Tcoc")
		end
	elseif(LuaQuery("level")>=25)then
		if(LuaQueryTask("Tcoc")<99 or LuaQueryStrTask("Tcocday")~=GetCurrentDay())then
			AddTopSayMenuItem("@2[��]@0@7�̼��򱳡�ÿ�ա�","Tcoc")
		end
	end
	-------------------------����--------------- 
	if(LuaQueryTask("Tjianguodaye")>=1 and  LuaQueryTask("Tjianguodaye")<4)then
		AddTopSayMenuItem("@2������ҵ�����","Tjianguodaye")			--����	

	end
	--------------------------------------------------- 
 	if(LuaQueryTask("T851")==2 or LuaQueryTask("T851")==3) then     -----ԩ��
		AddTopSayMenuItem("@2ԩ�������顿","T851")
		if(LuaQueryTask("T851") == 2)then
		havetask =2
		end
	end	
	if(LuaQueryTask("T454") == 1 or LuaQueryTask("T454") == 2)then
		AddTopSayMenuItem("@2�������ʡ����顿","T454")
		if(LuaQueryTask("T454") == 1)then
		havetask =2
		end
	end
	if(LuaQueryTask("T150") ==1 or LuaQueryTask("T150")==2) then
		AddTopSayMenuItem("@2�������ˡ����顿","T150") 
		if(LuaQueryTask("T150")==1) then
		havetask =2
		end
	end	
	if((LuaQueryTask("Tsnpc_12")==1 or LuaQueryTask("Tsnpc_12")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_12")
		if(LuaQueryTask("Tsnpc_12")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_12")==1 or LuaQueryTask("Tenpc_12")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_12")
		if(LuaQueryTask("Tenpc_12")==1)then
			havetask2=1
		end
	end
	AddTopSayMenuItem("@5�ֿ�","list_store")
	AddTopSayMenuItem("@5����ֿ�","mimack")
	AddTopSayMenuItem("@5��������","mimayh")
	AddTopSayMenuItem("@5���","deposit")	
	AddTopSayMenuItem("@5ȡ��","withdraw")
	AddTopSayMenuItem("@5��Ϣ����","credit")
	AddTopSayMenuItem("@5����ѯ","balance")
	AddTopSayMenuItem("@5���Ҷһ�","change")
	if(havetask ==2)then
		AddTopSayMenuItem("����","liaotian","2")
	elseif(havetask ==1) then
		AddTopSayMenuItem("����","liaotian","1")
	else
		AddTopSayMenuItem("����","liaotian","0")
	end 
	return 1
elseif(answer=="mimack") then
	LuaSay("Ǯׯ�ϰ壺��ͨ����ֿ⣬��֤��@3����ľ��԰�ȫ@0�����ٵ����˺ű���")	
	AddMenuItem("@7����ֿ�","")
	local cknum=LuaHaveSaveStore()
	if(cknum<3) then
		AddMenuItem("@5������","nock")
		if(cknum==0) then
			LuaSay("��ʾ����ͨ@3��1������ֿ�@0ֻ��Ҫ����@3100Ԫ��@0����ȷ��Ҫ��ͨô��")	
			AddMenuItem("@5��ͨ�ֿ�1","openck")
		elseif(cknum==1) then
			LuaSay("��ʾ����ͨ@3��2������ֿ�@0ֻ��Ҫ����@3200Ԫ��@0����ȷ��Ҫ��ͨô��")
			AddMenuItem("@5��ͨ�ֿ�2","openck")
		elseif(cknum==2) then
			LuaSay("��ʾ����ͨ@3��3������ֿ�@0ֻ��Ҫ����@3500Ԫ��@0����ȷ��Ҫ��ͨô��")
			AddMenuItem("@5��ͨ�ֿ�3","openck")
		end
	end
         if(cknum>0) then
		AddMenuItem("@5����ֿ�1","savestore1")
	 end
	 if(cknum>1) then
		AddMenuItem("@5����ֿ�2","savestore2")
	 end
	 if(cknum>2) then
		AddMenuItem("@5����ֿ�3","savestore3")
         end

  elseif(answer=="nock") then
	LuaSay("��ʾ����ͨ������ֿ⣬�����ٵ��Ĺ�����Ʒ����Ŷ��")

  elseif(answer=="openck") then
       LuaOpenSaveStore()
  




elseif(answer=="mimayh") then
	LuaSay("Ǯׯ�ϰ壺��ͨ�������У���֤��@3ͭ�ҵľ��԰�ȫ@0�����ٵ����˺ű�����")	
        AddMenuItem("@7��������","")
	if(LuaHaveSaveBank()==0) then
	LuaSay("��ʾ����ͨ@3��������@0ֻ��Ҫ����@3100Ԫ��@0����ȷ��Ҫ��ͨô��")	
	AddMenuItem("@5��ʱ����ͨ","noyh")
	AddMenuItem("@5��ͨ","openyh")
	else
        AddMenuItem("@5���","savebank")
	AddMenuItem("@5ȡ��","openbank")
        AddMenuItem("@5����ѯ","querybank")
	end
 
 elseif(answer=="noyh") then
	LuaSay("��ʾ����ͨ���������У������ٵ���ͭ�ұ���Ŷ��")

 elseif(answer=="openyh") then
       LuaOpenBank()


elseif(answer=="liaotian") then
	LuaSay("Ǯׯ�ϰ壺������ǮΪ����,ֻ����ƴ����ȡ����Ǯׯ�����������˰�������������������ȥ���ծ��")
elseif(answer=="change")then
	local jb2coin=800--����
	local yb2coin=1000
	local cj1=LuaItemStatusNormalCount("o_gold1j")
	local cy1=LuaItemStatusNormalCount("o_gold1y")
	local cj2=LuaItemStatusNormalCount("o_gold2j")
	local cy2=LuaItemStatusNormalCount("o_gold2y")
	local cq1=LuaItemStatusNormalCount("o_zhaiquan1y")
	local cq2=LuaItemStatusNormalCount("o_zhaiquan2y")
	local cq3=LuaItemStatusNormalCount("o_zhaiquan3y")
	LuaSay("����㼱����Ǯ�Ļ��ɵ�������һ�ͭ�һ����,��������˾�����ǩ��ծ������Ƚ϶ࡣ")
	AddMenuItem("@7�һ�","")
	AddMenuItem("@9ͨ��@0[1]�һ�ͭ��[1000]","cc1")
	--AddMenuItem("@9ͨ��@0[1]�һ�ͭ��[800]","cc11")--��ҵ�
	AddMenuItem("@8��Ʊ@0�һ�ͭ��[10000]","cc2")
	--AddMenuItem("@8��Ʊ@0[1]�һ�@9ͨ��@0[10]","cc3")
	--AddMenuItem("@7��ɴȯ@0[1]�һ�@8��Ʊ@0[10]","cc4")
	--AddMenuItem("@5����ȯ@0[1]�һ�@7��ɴȯ@0[10]","cc5")
	--AddMenuItem("@3��ȯ@0[1]�һ�@5����ȯ@0[10]","cc6")
	--AddMenuItem("������Ϣ","ccinfo")
elseif(answer=="cc1")then
	if(LuaItemStatusNormalCount("o_gold1y")>=1)then
	DelItem("o_gold1y",1)	LuaGive("coin",1000,"Tyb2coin")
	else LuaShowNotify("��Ʒ����")
	end
elseif(answer=="cc11")then
	if(LuaItemStatusNormalCount("o_gold1j")>=1)then
	DelItem("o_gold1j",1)	LuaGive("coin",800,"Tyb2coin")
	else LuaShowNotify("��Ʒ����")
	end
elseif(answer=="cc2")then
	if(LuaItemStatusNormalCount("o_gold2y")>=1)then
	DelItem("o_gold2y",1)	LuaGive("coin",10000,"Tyb2coin")
	else LuaShowNotify("��Ʒ����")
	end
elseif(answer=="cc3")then
	if(LuaItemStatusNormalCount("o_gold2y")>=1)then
	DelItem("o_gold2y",1)	LuaGive("o_gold1y",10,"Tduihuan")
	else LuaShowNotify("��Ʒ����")
	end
elseif(answer=="cc4")then
	if(LuaItemStatusNormalCount("o_zhaiquan1y")>=1)then
	DelItem("o_zhaiquan1y",1)	LuaGive("o_gold2y",10,"Tduihuan")
	else LuaShowNotify("��Ʒ����")
	end
elseif(answer=="cc5")then
	if(LuaItemStatusNormalCount("o_zhaiquan2y")>=1)then
	DelItem("o_zhaiquan2y",1)	LuaGive("o_zhaiquan1y",10,"Tduihuan")
	else LuaShowNotify("��Ʒ����")
	end
elseif(answer=="cc6")then
	if(LuaItemStatusNormalCount("o_zhaiquan3y")>=1)then
	DelItem("o_zhaiquan3y",1)	LuaGive("o_zhaiquan3y",10,"Tduihuan")
	else LuaShowNotify("��Ʒ����")
	end
elseif(answer=="ccinfo")then

elseif(answer=="credit") then	
	LuaSay("Ǯׯ�ϰ壺�ý�û����ٴ����ѣ�")
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local credit= LuaQueryTask("credit")					--����
	local lendmoney= LuaQueryTask("lendmoney")				--������
	local lend_day= LuaQueryTask("lend_day")					--����
	local lastrepay_day=LuaQueryTask("lastrepay_day")				--�ϴλ�����
	local loan_max
	if(level<=30)then
		loan_max=floor((credit*5000+100*level^2)*2/3)				--�������
	else
		loan_max=credit*5000+100*level^2
	end
	local loan_day_max=floor(credit/10)*7+7				--�����
	if(lendmoney~=0)then
		LuaSetTemp("delay_day",floor(GetCurrentTime()/86400)-lend_day-loan_day_max)	--�ٻ���
	else
		LuaSetTemp("delay_day",0)
	end
	local rate=5								--�ٻ�����%%	
	if(level>=15)then
		AddMenuItem("@7�����б�","")
		AddMenuItem("@5���","lend")
		AddMenuItem("@5����","repay")
		AddMenuItem("@5������Ϣ","credit_info")
	else
		LuaSay("@1��ʾ����ĵȼ�����15������ʹ�ô���ܣ�")
	end
	
 elseif(answer=="lend")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local credit= LuaQueryTask("credit")					--����
	local lendmoney= LuaQueryTask("lendmoney")				--������
	local lend_day= LuaQueryTask("lend_day")				--����
	local lastrepay_day=LuaQueryTask("lastrepay_day")			--�ϴλ�����			
	local loan_max
	if(level<=30)then
		loan_max=floor((credit*5000+100*level^2)*2/3)				--�������
	else
		loan_max=credit*5000+100*level^2
	end
	local loan_day_max=floor(credit/10)*7+7				--�����
	local delay_day=LuaQueryTemp("delay_day")
	local rate=5

	if(LuaQueryTask("lendmoney")==0)then
		if(LuaQueryTask("credit")==0)then	--���˻����ջ�
				LuaSay("Ǯׯ�ϰ壺Ϊ��ֹ���Ų������Ǯׯ����ҵ����Ҫ�ȿ�����")
				LuaSay("Ǯׯ�ϰ壺ֻҪ��Ԫ���̳Ƕһ�һ��@8��Ʊ@2��Ϊ������,���ܿ������")
				LuaSay("Ǯׯ�ϰ壺ʲô����û��Ԫ����͵͵�ĸ����㣬@3��������Ԫ������Ŷ����ͭ�Ҿ�����@0��@!")
		AddMenuItem("@7�����б�","")
				AddMenuItem("����","open")
				AddMenuItem("����","no")
		else
				LuaSay("Ǯׯ�ϰ壺�����ڵ��������ɴ���@3"..loan_max.."@0.��������@2"..loan_day_max.."��@0.��Ҫ������")
                AddMenuItem("@7�����б�","")
				AddMenuItem("��"..loan_max.."","lend_1")
				AddMenuItem("����","esc")
		end
	else
		LuaSay("Ǯׯ�ϰ壺�㻹��@2"..lendmoney.."@0�ľ���û���أ��Ȼ��˾��˲��ܴ��µġ����ڲ����ᶳ���˻��������¿������ܴ��")
		UpdateTopSay("���˾��˲����ٽ�Ǯ��")
	end
	elseif(answer=="open")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local credit= LuaQueryTask("credit")					--����
	local lendmoney= LuaQueryTask("lendmoney")				--������
	local lend_day= LuaQueryTask("lend_day")					--����
	local lastrepay_day=LuaQueryTask("lastrepay_day")				--�ϴλ�����
	local loan_max
	if(level<=30)then
		loan_max=floor((credit*5000+100*level^2)*2/3)				--�������
	else
		loan_max=credit*5000+100*level^2
	end
	local loan_day_max=floor(credit/10)*7+7				--�����
	local delay_day=LuaQueryTemp("delay_day")
	local rate=5
	local c1=LuaItemStatusNormalCount("o_gold2j")
	local c2=LuaItemStatusNormalCount("o_gold2y")

	if(c1>0 or c2>0)then
		LuaSetTask("credit",1)
		if(c1>0)then
		DelItem("o_gold2j",1)
		else
		DelItem("o_gold2y",1)
		end
		local loan_max
		if(level<=30)then
			loan_max=(5000+100*level^2)*2/3				--�������
		else
			loan_max=5000+100*level^2
		end
		loan_day_max=7
		LuaSay("�����ڵ��������ɴ���@3"..loan_max.."@0.��������@2"..loan_day_max.."@0.��Ҫ������")
		AddMenuItem("@7�����б�","")
		AddMenuItem("��"..loan_max.."","lend_1")
		AddMenuItem("����","no")
	else
	LuaSay("Ǯׯ�ϰ壺@2Ϊ��ֹ���Ų������Ǯׯ����ҵ����Ҫ�ȿ�����ֻҪ���̳Ƕһ�һ��@8��Ʊ@2��Ϊ������,���ܿ������")
	end
  elseif(answer=="lend_1")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local credit= LuaQueryTask("credit")					--����
	local lendmoney= LuaQueryTask("lendmoney")				--������
	local lend_day= LuaQueryTask("lend_day")					--����
	local lastrepay_day=LuaQueryTask("lastrepay_day")				--�ϴλ�����
	local loan_max
	if(level<=30)then
		loan_max=floor((credit*5000+100*level^2)*2/3)				--�������
	else
		loan_max=credit*5000+100*level^2
	end
	local loan_day_max=floor(credit/10)*7+7				--�����
	local delay_day=LuaQueryTemp("delay_day")
	local rate=5

	if(LuaQueryTask("lendmoney")==0)then
	local loan_max
	if(level<=30)then
		loan_max=floor((LuaQueryTask("credit")*5000+100*level^2)*2/3)				--�������
	else
		loan_max=LuaQueryTask("credit")*5000+100*level^2
	end
	local loan_day_max=floor(LuaQueryTask("credit")/10)*7+7
	LuaSay("Ǯׯ�ϰ壺�׷�Ǯׯ����ҷ�"..LuaQueryStr("name").."@3"..loan_max.."@0ͭ�ң�����@2"..loan_day_max.."�졣")
	LuaSay("Ǯׯ�ϰ壺�����ڻ�����Ϣ�����ڻ������Ϣ5��(ǧ��֮��)��")	
	LuaSetTask("lendmoney",loan_max)
	LuaSetTask("lend_day",floor(GetCurrentTime()/86400))
	LuaGive("coin",loan_max,"Tloan")
		if(LuaQueryTask("Thx2")==9) then
		if(LuaQueryTask("Thx2J")==0) then
			LuaSay("��ʾ�����Ѿ���ɻ�������ھŻ�����ȥ�ظ��ذϹ�ɡ�@!")
			LuaSetTask("Thx2J",99)
		end
		end
	end

	
  elseif(answer=="esc")then
	LuaSay("Ǯׯ�ϰ壺����ʳ�������ã���������ʽ���ţ�ֻҪ���������������޷������Ҵ����ڻ�������Ϣ�ġ�")
	LuaSay("Ǯׯ�ϰ壺͵͵�ĸ����㣬��������Ԫ������Ŷ����ͭ�Ҿ����򵽡�@!")
	
elseif(answer=="repay")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local credit= LuaQueryTask("credit")					--����
	local lendmoney= LuaQueryTask("lendmoney")				--������
	local lend_day= LuaQueryTask("lend_day")					--����
	local lastrepay_day=LuaQueryTask("lastrepay_day")				--�ϴλ�����
	local loan_max
	if(level<=30)then
		loan_max=floor((credit*5000+100*level^2)*2/3)				--�������
	else
		loan_max=credit*5000+100*level^2
	end
	local loan_day_max=floor(credit/10)*7+7				--�����
	local delay_day=LuaQueryTemp("delay_day")
	local rate=5

	if(LuaQueryTask("lendmoney")==0)then
		LuaSay("Ǯׯ�ϰ壺û��������ô������Ǯû�ط����𣿷�����ɲ���֤��ȫ��")
	else
		if(lend_day~=floor(GetCurrentTime()/86400))then
			if(delay_day>0)then
				if(LuaItemCount("coin")>=floor(lendmoney*(1+rate/1000)))then
					LuaSay("Ǯׯ�ϰ壺������Ϊ������Ĵ����Ѿ������ˣ����ڲ�����Ӱ���������������Ӱ��������Ϸ�й��ܵ�ʹ�á�")
					LuaDelTask("lend_day")
					if(credit>delay_day)then
						LuaSetTask("credit",credit-delay_day)
						LuaSay("Ǯׯ�ϰ壺��ٻ�����"..delay_day.."�죬���������@2�����ˡ�")
					else
						LuaSetTask("credit",1)
						LuaSay("Ǯׯ�ϰ壺��ٻ�����"..delay_day.."�죬��������������½���")
					end
					if(LuaQueryTask("Thx2")==9) then
						if(LuaQueryTask("Thx2J")==0) then
							LuaSay("��ʾ�����Ѿ���ɻ�������ھŻ�����ȥ�ظ��ذϹ�ɡ�@!")
							LuaSetTask("Thx2J",99)
						end
					end
					LuaSetTask("lastrepay_day",floor(GetCurrentTime()/86400))
					LuaSetTask("lendmoney",0)
					LuaGive("coin",-floor(lendmoney*(1+rate/1000)),"Tloan")
				else
					LuaSay("Ǯׯ�ϰ壺�����Ǯ���������ģ���Ϣ����@2"..floor((lendmoney*(1+rate/1000))).."��")
				end
			else
				if(LuaItemCount("coin")>=lendmoney)then
					LuaSay("Ǯׯ�ϰ壺����������Ϊ��...")
					LuaDelTask("lend_day")
					if((credit<level/2 or level>=40) and credit<100)then	--40��������������=����/2,�������100
						LuaSetTask("credit",credit+1)
						LuaSay("����ֵ����")

					else
						if(level==100)then
						LuaSay("Ǯׯ�ϰ壺�������ֵ�Ѵﵽ���ޡ�")
						else
						LuaSay("Ǯׯ�ϰ壺�������ֵ�Ѵﵽ���ޣ�������������������ޡ�")
						end
					end
					if(LuaQueryTask("Thx2")==9) then
						if(LuaQueryTask("Thx2J")==0) then
							LuaSay("��ʾ�����Ѿ���ɻ�������ھŻ�����ȥ�ظ��ذϹ�ɡ�@!")
							LuaSetTask("Thx2J",99)
						end
					end
					LuaSetTask("lendmoney",0)
					LuaGive("coin",-lendmoney,"Tloan")
					LuaSay("����ֵ����")
				else
					LuaSay("Ǯׯ�ϰ壺�����Ǯ���������ģ������@2"..lendmoney.."��")
				end
			end
		else
			LuaSay("Ǯׯ�ϰ壺����ս��˾ͻ������ⲻ���������ҵĹ�������������")
			if(LuaItemCount("coin")>=lendmoney)then
				LuaSay("Ǯׯ�ϰ壺����������...���ջ�����������ֵ��")
				LuaDelTask("lend_day")
				LuaSetTask("lendmoney",0)
				LuaGive("coin",-lendmoney,"Tloan")
				if(LuaQueryTask("Thx2")==9) then
					if(LuaQueryTask("Thx2J")==0) then
						LuaSay("��ʾ�����Ѿ���ɻ�������ھŻ�����ȥ�ظ��ذϹ�ɡ�@!")
						LuaSetTask("Thx2J",99)
					end
				end
			else
				LuaSay("Ǯׯ�ϰ壺�����Ǯ�������������ģ������������ɡ�")
			end
		end
	end
	UpdateMenu()
	
elseif(answer=="credit_info")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local credit= LuaQueryTask("credit")					--����
	local lendmoney= LuaQueryTask("lendmoney")				--������
	local lend_day= LuaQueryTask("lend_day")					--����
	local lastrepay_day=LuaQueryTask("lastrepay_day")				--�ϴλ�����
	local loan_max
	if(level<=30)then
		loan_max=floor((credit*5000+100*level^2)*2/3)				--�������
	else
		loan_max=credit*5000+100*level^2
	end
	local loan_day_max=floor(credit/10)*7+7				--�����
	local delay_day=LuaQueryTemp("delay_day")
	local rate=5

	if(LuaQueryTask("credit")==0)then
	LuaSay("�㻹û�п���,��һ��@8��Ʊ@0���ܿ���")
	else
	LuaSay("�˻���Ϣ����߿ɴ���@3"..loan_max.."@0���Ѿ����@2"..lendmoney.."@0������ڣ�@2"..loan_day_max.."��")--xx
	end
	if(lendmoney>0)then
		if(delay_day>0)then
			LuaSay("@2�ѳ����������ޣ�@1"..delay_day.."�졣")
		else
			LuaSay("�໹�����ޣ�@7"..-delay_day.."�졣")
		end
	end
	LuaSay("����ֵ�����ӿ����Ӵ������޺�����ڡ����������Ҳ�����Ӵ������ޣ������������޵ģ�40�������������޺ܵ͡�")
	UpdateMenu()

elseif(answer=="T150") then              ------------------------�������� 
	if(LuaQueryTask("T150")==1) then
		LuaSay("Ǯׯ�ϰ壺������������һЩ������֪ʶ�ɡ�������������Խ���@3�ֿ⡢��Ǯ��ȡǮ������@0�Ȳ�����")
		LuaSay("Ǯׯ�ϰ壺�����@2��ȡ��Ʒ��Ǯ��@0���ر���ûǮ��ʱ���һ�����@3����@0����Ӵ��������һ�°ɡ�@!")
		LuaSay("Ǯׯ�ϰ壺��������@4������@0��@3���̻��@0������Խ�����Ʒ��@3����@0Ŷ��ѧ������Щ֮��ͻ�ȥ�ظ�@3��Ʒ����@0�ɡ�@!") 
		LuaSetTask("T150",2)
		UpdateTopSay("�ظ��������ϵ���Ʒ����")
		AddLog("�������ˡ����顿",150)
		UpdateMenu()                
	elseif(LuaQueryTask("T150")==2) then  
		LuaSay("Ǯׯ�ϰ壺���������������@3��ȡ������@0��������ȥ@3���̻��@0�ǽ���@3����@0Ŷ��@!")  
		LuaSay("Ǯׯ�ϰ壺��ѧ���˾�ȥ�ظ�@4��������@0��@3��Ʒ����@0�ɡ�@!")
	end
		
elseif(answer=="Tcoc")then---------------------�̼���dmz
--��Ǯ����,������Ǯׯ�ϰ���������½����ǵĸ�λ�����Ƿ����齨�̻������.��Ϊû���̻�,����û����������,�ȴ�Ҷ�ͬ����,�̻���ֺ��ٰ����������������
	local Tcoc=LuaQueryTask("Tcoc")
	if(LuaQueryStrTask("Tcocday")~=GetCurrentDay())then
		LuaSetTask("Tcocnumber",0)
		LuaDelTask("Tcoc")
		LuaDelTask("T955")
		LuaSetTask("Tcocday",GetCurrentDay())
		LuaSay("Ǯׯ�ϰ�:������²�̫ƽ,�����������ϴ���������,���ǳ����̻�,��������໥��æ,�����ܸ���")
		LuaSay("Ǯׯ�ϰ�:"..LuaQueryStr("name")..",��ȥ�����������Ӹ���,������ҵ��������.")	
		AddMenuItem("��������?","")
		AddMenuItem("��,û����","Tcoc1")
		AddMenuItem("��ûʱ��","no")
	else
		do_talk("Tcoc1")
	end
	--
	elseif(answer=="Tcoc1") then
	local Tcoc=LuaQueryTask("Tcoc")
	if(Tcoc==0)then	
		LuaSetTask("Tcoc",1)
		LuaSetTask("T955",1)
		AddLog("�̼���",955)
		LuaSay("Ǯׯ�ϰ�:����ȥ����@4��������@0��@3��Ʒ����@0�Ƿ�Ը���齨�����̻ᡣ")
		UpdateNPCMenu("spdhuoji")
		elseif(Tcoc==1)then
		LuaSay("Ǯׯ�ϰ�:����ȥ����@4��������@0��@3��Ʒ����@0�Ƿ�Ը���齨�����̻ᡣ")
	elseif(Tcoc==2)then	
		LuaSetTask("Tcoc",3)
		LuaSetTask("T955",3)
		AddLog("�̼���",955)
		LuaSay("Ǯׯ�ϰ�:���е�@3ѱ��ʦ@0����������,Ҳ��������,�����������齨�����̻ᶨ��ʹ�����Ǹ����١�")
		LuaSay("Ǯׯ�ϰ�:��ȥ�����Ǳ߽����ǵ�@3ѱ��ʦ@0�Ƿ�Ը���齨�����̻ᡣ")
		UpdateNPCMenu("xunshoushi")
		elseif(Tcoc==3)then
		LuaSay("Ǯׯ�ϰ�:��ȥ���³��е�@3ѱ��ʦ@0�Ƿ�Ը���齨�����̻ᡣ")
	elseif(Tcoc==4)then	
		LuaSetTask("Tcoc",5)
		LuaSetTask("T955",5)
		AddLog("�̼���",955)
		LuaSay("Ǯׯ�ϰ�:��ȥ����@4��������@0�ұߵ�@3��������@0�Ƿ�Ը���齨�����̻ᡣ")		
		UpdateNPCMenu("fjdhuoji")
		elseif(Tcoc==5)then
		LuaSay("Ǯׯ�ϰ�:��ȥ����@4��������@0�ұߵ�@3��������@0�Ƿ�Ը���齨�����̻ᡣ")
	elseif(Tcoc==6)then	
		LuaSetTask("Tcoc",7)
		LuaSetTask("T955",7)
		AddLog("�̼���",955)
		LuaSay("Ǯׯ�ϰ�:"..LuaQueryStr("name")..",��ȥ��һ�½��������±ߵ�@3ҩ������@0�Ƿ�Ը���齨�����̻ᡣ")
		UpdateNPCMenu("ydhuoji")
		elseif(Tcoc==7)then
		LuaSay("Ǯׯ�ϰ�:��ȥ����@4��������@0�±ߵ�@3ҩ������@0�Ƿ�Ը���齨�����̻ᡣ")
	elseif(Tcoc==8)then
		if(LuaQuery("level")<25)then
			LuaSay("Ǯׯ�ϰ�:���������ָ̼���˽��,�����齨�����̻����»��ôӳ����鰡��")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","Tcocjl")
		else
			LuaSetTask("Tcoc",9)
			LuaSetTask("T955",9)
			AddLog("�̼���",955)
			LuaSay("Ǯׯ�ϰ�:��ȥ����@4��������@0��@3��������@0�Ƿ�Ը���齨�����̻ᡣ")		
			UpdateNPCMenu("wqdhuoji")
		end
		elseif(Tcoc==9)then
		LuaSay("Ǯׯ�ϰ�:��ȥ����@4��������@0��@3��������@0�Ƿ�Ը���齨�����̻ᡣ")
	elseif(Tcoc==10)then	
		LuaSetTask("Tcoc",11)
		LuaSetTask("T955",11)
		AddLog("�̼���",955)
		LuaSay("Ǯׯ�ϰ�:���е�@3�н�����@0��־������ͷ����,��Ȼ�����ǵĳǹ�ûΪ����,���������������ȥ��Ҳ�����ס�")
		LuaSay("Ǯׯ�ϰ�:���޶���,����������С��Ʒ�����൱����,���������̻�,Ҳ�ǲ����,��Ҳȥ�����Ƿ�Ը���齨�����̻ᡣ")
		UpdateNPCMenu("xingjiaoshangren")
		elseif(Tcoc==11)then
		LuaSay("Ǯׯ�ϰ�:��ȥ���³��е�@3�н�����@0�Ƿ�Ը���齨�����̻ᡣ")
	--elseif(Tcoc==12)then	
		--LuaSetTask("Tcoc",13)
		--LuaSay("Ǯׯ�ϰ�:"..LuaQueryStr("name")..",��ȥ�����Ǳߵ�@3���̻��@0�Ƿ�Ը���齨�����̻ᡣ")
		--UpdateNPCMenu("dphuoji")
		--elseif(Tcoc==13)then
		--LuaSay("Ǯׯ�ϰ�:��ȥ�����Ǳߵ�@3���̻��@0�Ƿ�Ը���齨�����̻ᡣ")
	elseif(Tcoc==14)then	
		LuaSetTask("Tcoc",15)
		LuaSetTask("T955",15)
		AddLog("�̼���",955)
		LuaSay("Ǯׯ�ϰ�:�������ر�Ȧȥ�췿��,��������ɸ�,�����̵����ⶼ�������ˡ�")
		LuaSay("��ȥ����@4��������@0�Ǳߵ�@3������@0�Ƿ�Ը���齨�����̻�,�����Ը��ͺ��ˡ�")
		UpdateNPCMenu("zhongzis")
		elseif(Tcoc==15)then
		LuaSay("Ǯׯ�ϰ�:��ȥ����@4��������@0�Ǳߵ�@3������@0�Ƿ�Ը���齨�����̻ᡣ")
	elseif(Tcoc==16)then
		if(LuaQuery("level")>=25 and LuaQuery("level")<40)then
			LuaSay("Ǯׯ�ϰ�:���������ָ̼���˽��,�����齨�����̻����»��ôӳ����鰡��")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","Tcocjl")
		else
			LuaSetTask("Tcoc",17)
			LuaSetTask("T955",17)
			AddLog("�̼���",955)
			LuaSay("Ǯׯ�ϰ�:@4������@0��@3��Ʒ��@0Ҳ�ǲ���ȱ�ٵ�һ���ְ�������ܽ��������̻ᣬ������������")
			LuaSay("Ǯׯ�ϰ�:��ȥ����@4������@0��@3��Ʒ������@0������Ը��Ը������̻ᡣ")
		end
		elseif(Tcoc==17)then
		LuaSay("Ǯׯ�ϰ�:��ȥ����@4������@0��@3��Ʒ������@0������Ը��Ը������̻ᡣ")
	elseif(Tcoc==18)then
		LuaSetTask("Tcoc",19)
		LuaSetTask("T955",19)
		AddLog("�̼���",955)
		LuaSay("Ǯׯ�ϰ�:@4������@0��һ�������@3����������@0ÿ��׬�˲�֪������Ǯ������ǿ���⡣")
		LuaSay("Ǯׯ�ϰ�:��ȥ����@4������@0��@3����������@0������Ը��Ը������̻ᣬ�������£�����ͺ��ˡ�")
		elseif(Tcoc==19)then
			LuaSay("Ǯׯ�ϰ�:��ȥ����@4������@0��@3����������@0������Ը��Ը������̻ᡣ")
	elseif(Tcoc==20)then
		LuaSetTask("Tcoc",21)
		LuaSetTask("T955",21)
		AddLog("�̼���",955)
		LuaSay("Ǯׯ�ϰ�:@4������@0ʢ��ҩ�����ľ���@3ҩƷ����@0����������Ҳ���ƣ�Ӧ���ǻ��������ġ�")
		LuaSay("Ǯׯ�ϰ�:��ȥ����@4������@0��@3ҩƷ����@0������Ը��Ը������̻ᡣ")
		elseif(Tcoc==21)then
			LuaSay("Ǯׯ�ϰ�:��ȥ����@4������@0��@3ҩƷ����@0������Ը��Ը������̻ᡣ")
	elseif(Tcoc==22)then
		LuaSetTask("Tcoc",23)
		LuaSetTask("T955",23)
		AddLog("�̼���",955)
		LuaSay("Ǯׯ�ϰ�:@4������@0�˶���ʢ������ҵҲ�൱���@3���ߵ��ϰ�@0���˺ܶ࣬������ܽ��̻ᣬ��ҵ��չһƬ��������")
		LuaSay("Ǯׯ�ϰ�:��ȥ����@4������@0��@3��������@0������Ը��Ը������̻�.")
		elseif(Tcoc==23)then
			LuaSay("Ǯׯ�ϰ�:��ȥ����@4������@0��@3��������@0������Ը��Ը������̻ᡣ")
	elseif(Tcoc==24)then
		LuaSay("Ǯׯ�ϰ�:���������ָ̼���˽��,�����齨�����̻����»��ôӳ����鰡��")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","Tcocjl")
		
	else
		LuaSay("Ǯׯ�ϰ�:���������ָ̼���˽��,���Ĳ�����,�����齨�̻����»��ôӳ����鰡��")
	end
	UpdateMenu()
	--
	elseif(answer=="Tcocjl")then--�̼������ս���
		if(LuaQueryTask("Tcoc")==8)then
			LuaSetTask("Tcoc",99)
			LuaSetTask("T955",99)
			DelLog("955")
			LuaGive("coin",1000,"Tcoc")
			LuaGive("o_drug_hp4",5,"Tcoc")
			LuaGive("o_drug_mp4",5,"Tcoc")
		elseif(LuaQueryTask("Tcoc")==16)then	
			LuaSetTask("Tcoc",99)
			LuaSetTask("T955",99)
			DelLog("955")
			LuaGive("coin",2000,"Tcoc")
			LuaGive("o_drug_hp4",10,"Tcoc")
			LuaGive("o_drug_mp4",10,"Tcoc")
		elseif(LuaQueryTask("Tcoc")==24)then
			LuaSetTask("Tcoc",99)
			LuaSetTask("T955",99)
			DelLog("955")
			LuaGive("coin",3000,"Tcoc")
			LuaGive("o_drug_hp4",15,"Tcoc")
			LuaGive("o_drug_mp4",15,"Tcoc")
		end
	UpdateMenu()

elseif(answer=="T851")then         ------ԩ��
	if(LuaQueryTask("T851") == 2)then
		LuaSay("Ǯׯ�ϰ壺л����Ϊ��Ϊ��һ���ҳ��������Ϊ��������ʵ����֮���ã�")
		LuaSay("Ǯׯ�ϰ壺���ƽ��ø�@2����@0��@3˾�����@0����֤��л������װ���")
		LuaSetTask("T851",3)
		LuaGive("o_mission362",1)
		UpdateTopSay("���ƽ����빬���˾�����")
		AddLog("ԩ�������顿",851)
		UpdateMenu()
	elseif(LuaQueryTask("T851") == 3)then
		LuaSay("Ǯׯ�ϰ壺���ƽ��ø�@2����@0��@3˾�����@0����֤��л������װ���")	
	end
elseif(answer=="T454")then         ------��������
	 if(LuaQueryTask("T454") == 1)then
   		LuaSay("Ǯׯ�ϰ壺������֮������ʿ���ɣ����ʶ�������úá�")
        LuaSetTask("T454",2)
        LuaGive("o_mission367",1)
 		UpdateTopSay("������ȥ����ˮ֮��������֮�ɡ�")
 		AddLog("�������ʡ����顿",454)
		UpdateMenu()
	 elseif (LuaQueryTask("T454") == 2)then
	 LuaSay("Ǯׯ�ϰ壺@3����֮@0��������ˮ֮������ȥ�ɣ�")
	 end

elseif(answer=="Tsnpc_12")then
	if(LuaQueryTask("Tsnpc_12")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ���һ�����д�ļӼ��ż����ϰ��㿴һ��")
		LuaSay("Ǯׯ�ϰ壺�ţ��á�")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_12",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_12")==2)then
		LuaSay("Ǯׯ�ϰ壺���ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_12")then
	if(LuaQueryTask("Tenpc_12")==1)then
		LuaSay(""..LuaQueryStr("name").."������Ӣ�����ż����׶�ʧ�����Ҵ������㣬�Ĳ�Ҫ̫���ˣ����յ���ҵ���Ϣ����Ȼ�����������")
		LuaSay("Ǯׯ�ϰ壺�����������׬��ϡ��Ǯ��")
		LuaSetTask("Tenpc_12",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_12")==2)then
		LuaSay("Ǯׯ�ϰ壺���˵Ļ�С��ʱ�̲�����������ȥ���������ȡ������@!")
	end
-------------------------	--����----------------------------- 
elseif(answer=="Tjianguodaye")then		
	if(LuaQueryTask("Tjianguodaye")==1)then
		r=LuaRandom(3)
		if(r==0)then
		LuaSay(""..LuaQueryStr("name")..":��˵�������в���֮��@3������@0,�ɷ������һ���أ�")
		LuaSay("Ǯׯ�ϰ壺������ҵ������ӣ��ɲ�������ˣ������Ϸ򰮶�Ǯ����Ҫ�Ƕ�Ӯ���ң��Ҿͽ���㡣�Ҳ��Һ��Ҷ�һ�ְ���")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("@3�����","guoqingdqyes")
		AddMenuItem("@3û�������Ҷ�","guoqingdqno")
		LuaSetTask("Tjianguodaye",2)
		LuaSetTask("Tjianguodayedb",99)
		elseif(r==1)then
		LuaSay(""..LuaQueryStr("name")..":��˵�������в���֮��@3������@0,�ɷ������һ���أ�")
		LuaSay("Ǯׯ�ϰ壺�������Ҿ�Ҫ���������ˣ�������Ҫ����������һ��Ը���������ҿ��Կ��ǡ��Ϸ�þ�û�гԹ����ˣ��㵽������@3����@0�����һ��@3��������@0���ҳ�����")
		LuaSetTask("Tjianguodaye",2)
		LuaSetTask("Tjianguodayedy",99)
		elseif(r==2)then
		LuaSay(""..LuaQueryStr("name")..":��˵�������в���֮��@3������@0,�ɷ������һ���أ�")
		LuaSay("Ǯׯ�ϰ壺����ɲ��������㣬����~~��Ҫ��Ϊ���ռ�һЩƤë����������Ӧ��")
			if(LuaQuery("level")>10 and LuaQuery("level")<=15)then
			LuaSay("Ǯׯ�ϰ壺ȥ�ռ�@35����Ƥ@0���ң��ҾͰ���������㡣��ʾ����ɱ@4��������@0��@3����@0���Եõ���Ƥ��")
			LuaSetTask("Tjianguodaye",2)
			LuaSetTask("Tjianguodayesg",99)
			elseif(LuaQuery("level")>15 and LuaQuery("level")<30)then
			LuaSay("Ǯׯ�ϰ壺ȥ�ռ�@35������Ƥ@0���ң��ҾͰ���������㡣��ʾ����ɱ@4�嶷ɽ@0��@3����@0���Եõ�����Ƥ��")
			LuaSetTask("Tjianguodaye",2)
			LuaSetTask("Tjianguodayesg",99)
			elseif(LuaQuery("level")>=30)then
			LuaSay("Ǯׯ�ϰ壺ȥ�ռ�@35������Ƥ@0���ң��ҾͰ���������㡣��ʾ����ɱ@4��ˮ֮��@0��@3��ˮ��@0���Եõ�����Ƥ��")
			LuaSetTask("Tjianguodaye",2)
			LuaSetTask("Tjianguodayesg",99)
			end
		end
	elseif(LuaQueryTask("Tjianguodaye")==2 and LuaQueryTask("Tjianguodayedb")==99)then
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("@3�����","guoqingdqyes")
		AddMenuItem("@3û�������Ҷ�","guoqingdqno")
	elseif(LuaQueryTask("Tjianguodaye")==2 and LuaQueryTask("Tjianguodayedy")==99)then
		if(LuaItemStatusNormalCount("o_mission039")>0)then
		LuaSay("Ǯׯ�ϰ壺�ۣ���������ã����Ȼ�������Ϸ��Ը��������Ҳ����ʧ�ԣ�@3������@0����ȥ�ɣ�")
		LuaGive("o_mission249",1)	--������ߣ�������
		LuaSetTask("Tjianguodaye",3)
		LuaSetTask("Tjianguodayedy",0)
		DelItem("o_mission039",1)
		else
		LuaSay("Ǯׯ�ϰ壺�㻹û�е�����Ҫ��@3��������@0�أ���@4������@0��@3����@0���������������������Ұɣ�")
		end
	elseif(LuaQueryTask("Tjianguodaye")==2 and LuaQueryTask("Tjianguodayesg")==99)then
		if(LuaQuery("level")>10 and LuaQuery("level")<=15)then
			if(LuaItemCount("o_mission521")>=5)then	--��Ƥ	
			LuaSay("Ǯׯ�ϰ壺��ô��͵õ�@35����Ƥ@0��������Ҳ����ʧ�ԣ�@3������@0�����߰ɣ�")
			LuaGive("o_mission249",1)	--������ߣ�������
			LuaSetTask("Tjianguodaye",3)
			LuaSetTask("Tjianguodayesg",0)
			DelItem("o_mission521",5)
			else
			LuaSay("Ǯׯ�ϰ壺�㻹û�еõ�����Ҫ��@35����Ƥ@0�أ���ɱ@4��������@0��@3����@0���Եõ���Ƥ")
			end
		elseif(LuaQuery("level")>15 and LuaQuery("level")<30 )then
			if(LuaItemCount("o_mission522")>=5)then		--����Ƥ
			LuaSay("Ǯׯ�ϰ壺��ô��͵õ�@35������Ƥ@0��������Ҳ����ʧ�ԣ�@3������@0����ȥ�ɣ�")
			LuaGive("o_mission249",1)	--������ߣ�������
			LuaSetTask("Tjianguodaye",3)
			LuaSetTask("Tjianguodayesg",0)
			DelItem("o_mission522",5)
			else
			LuaSay("Ǯׯ�ϰ壺�㻹û�еõ�����Ҫ��@35������Ƥ@0�أ���ɱ@4�嶷ɽ@0��@3����@0���Եõ�����Ƥ��")
			end
		elseif(LuaQuery("level")>=30)then
			if(LuaItemCount("o_mission523")>=5)then		--����Ƥ
			LuaSay("Ǯׯ�ϰ壺��ô��͵õ�@35������Ƥ@0��������Ҳ����ʧ�ԣ�@3������@0����ȥ�ɣ�")
			LuaGive("o_mission249",1)	--������ߣ�������
			LuaSetTask("Tjianguodaye",3)
			LuaSetTask("Tjianguodayesg",0)
			DelItem("o_mission523",5)
			else
			LuaSay("Ǯׯ�ϰ壺�㻹û�еõ�����Ҫ��@35������Ƥ@0�أ���ɱ@4��ˮ֮��@0��@3��ˮ��@0���Եõ�����Ƥ.")
			end
		end
	elseif(LuaQueryTask("Tjianguodaye")==3)then
		LuaSay("Ǯׯ�ϰ壺@3������@0���Ѿ��õ��ˣ�����������ʲô��")
	end
elseif(answer=="guoqingdqyes")then
	LuaSay("Ǯׯ�ϰ壺���������е��������Ϸ����������ҪӮ�ҿɲ�����Ŷ��")
	LuaSay("Ǯׯ�ϰ壺��~��~����ע�ɣ�ѹ������ѹС����СŶ")
	AddMenuItem("@7��ѡ��","")
	AddMenuItem("@3ѹС","guoqingdqyesx")
	AddMenuItem("@3ѹ��","guoqingdqyesd")
elseif(answer=="guoqingdqyesx")then
	LuaSay("Ǯׯ�ϰ壺��ѡ����ѹС����Ҫ�ó�@3���ͭ��@0��Ϊ��Ѻ��ϵͳ���Զ�Ϊ�����һ�����֣�Ҫ���������С���ҵ����������Ӯ�ˡ�")
	if(LuaItemCount("coin")>=500)then
	r=LuaRandom(4)
	if(r==0)then
	LuaSay("Ǯׯ�ϰ壺�ۣ���������þ�Ȼ����������0���������ˣ�@3������@0����ȥ�ɣ�")
	LuaGive("o_mission249",1)	--������ߣ�������
	LuaSetTask("Tjianguodaye",3)
	LuaSetTask("Tjianguodayedb",0)
	else
	LuaSay("Ǯׯ�ϰ壺��������������һ�㣡�����ͭ�Ҿ͹�������")
	LuaGive("coin",-500,"Tjianguodayedb")
	end
	else
	LuaSay("Ǯׯ�ϰ壺�㻹û��@3���ͭ��@0��ѡ��@3ѹС@0��Ҫ@3���ͭ��@0��Ϊ��Ѻ������׬����Ǯ�������Ұɣ�")
	end
elseif(answer=="guoqingdqyesd")then
	LuaSay("Ǯׯ�ϰ壺��ѡ����ѹ����Ҫ�ó���ǧͭ����Ϊ��Ѻ��ϵͳ���Զ�Ϊ�����һ�����֣�Ҫ��������ִ����ҵ����������Ӯ�ˡ�")
	if(LuaItemCount("coin")>=2000)then
	ra=LuaRandom(2)
	if(ra==0)then
	LuaSay("Ǯׯ�ϰ壺�ۣ���������ã������ˣ�@3������@0�����߰ɣ�")
	LuaGive("o_mission249",1)	--������ߣ�������
	LuaSetTask("Tjianguodaye",3)
	LuaSetTask("Tjianguodayedb",0)
	else
	LuaSay("Ǯׯ�ϰ壺��������������һ�㣡���ǧͭ�Ҿ͹�������")
	LuaGive("coin",-2000,"Tjianguodayedb")
	end
	else
	LuaSay("Ǯׯ�ϰ壺�㻹û��@3��ǧͭ��@0��ѡ��@3ѹ��@0��Ҫ@3��ǧͭ��@0��Ϊ��Ѻ������׬����Ǯ�������Ұɣ�")
	end
elseif(answer=="guoqingdqno")then
	LuaSay("Ǯׯ�ϰ壺������㵨����û�У�")
-------------------------------------------------------------
elseif(answer=="Tfkdcg")then						--����ɹ�
	if(GetCurrentHour()>=16 and GetCurrentHour()<18)then
	if(LuaQueryTask("Tfkdcg")==1)then
		local r=LuaRandom(2)
		if(r==0)then
			LuaSay(""..LuaQueryStr("name").."��������飬�������Ǯ�ƣ�������һ�����ɷ�Ը�����һЩǮ�ƣ�Ϊ�������أ�")
			LuaSay("Ǯׯ�ϰ壺���Ҵ�����ô������Ҳ������ҵĴ����ˡ���Ҳ�����һЩǮ������ϧ�����ѱ�������Ǯ�ƿ��Ծ�����")
			LuaSay(""..LuaQueryStr("name").."���������뵱������һ����Ǯ�ϰ����Ҳһƶ��ϴ�ˣ��������ʲô׬Ǯ֮����")
			LuaSay("Ǯׯ�ϰ壺��ѵ�����⴫����������Ҷ�һ�֣���Ӯ���Ҿ͸����㡣")
			AddMenuItem("@7��ѡ��","")
			AddMenuItem("@3�����","Tfkdcg_yes")
			AddMenuItem("@3û�������Ҷ�","Tfkdcg_no")
			LuaSetTask("Tfkdcg",2)
			LuaSetTask("Tfkdcgdb",99)
		elseif(r==1)then
			LuaSay(""..LuaQueryStr("name").."��������飬�������Ǯ�ƣ�������һ�����ɷ�Ը�����һЩǮ�ƣ�Ϊ�������أ�")
			LuaSay("Ǯׯ�ϰ壺���Ҵ�����ô������Ҳ������ҵĴ����ˡ���Ҳ�����һЩǮ������ϧ�����ѱ�������Ǯ�ƿ��Ծ�����")
			LuaSay(""..LuaQueryStr("name").."���������뵱������һ����Ǯ�ϰ����Ҳһƶ��ϴ�ˣ��������ʲô׬Ǯ֮����")
			LuaSay("Ǯׯ�ϰ壺�þö�û�г�����ζ���ˣ��㵽�����ǵ�@3����@0�����һ��@3��������@0���ҳ������Ҿ͸����㡣")
			LuaSetTask("Tfkdcg",2)
			LuaSetTask("Tfkdcgdy",99)
		end
	elseif(LuaQueryTask("Tfkdcg")==2 and LuaQueryTask("Tfkdcgdb")==99)then
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("@3�����","Tfkdcg_yes")
		AddMenuItem("@3û�������Ҷ�","Tfkdcg_no")
	elseif(LuaQueryTask("Tfkdcg")==2 and LuaQueryTask("Tfkdcgdy")==99)then
		if(LuaItemStatusNormalCount("o_mission039")>0)then
			LuaSay("Ǯׯ�ϰ壺�ۣ���������⣬�����Ҷ�����ˮ�ˡ�")
			LuaSay(""..LuaQueryStr("name").."����׬Ǯ֮���ǣ�")
			LuaSay("Ǯׯ�ϰ壺׬Ǯ֮�����ǣ��ڼ��Լ�����ˣ���ȥ�һʹ�߰ɣ�")
			LuaSetTask("Tfkdcg",3)
			LuaSetTask("Tfkdcgdy",0)
			DelItem("o_mission039",1)
		else
			LuaSay("Ǯׯ�ϰ壺�㻹û�е�����Ҫ��@3��������@0�أ���@4������@0��@3����@0���������������������Ұɣ�")
		end
	elseif(LuaQueryTask("Tfkdcg")==3)then
		LuaSay("Ǯׯ�ϰ壺���������ʲô����ȥ�һʹ�߰ɣ�")
	end
	else
		LuaSay("Ǯׯ�ϰ壺�û�Ѿ������ˣ�������������ɣ�")
		LuaDelTask("Tfkdcg")
		UpdateMenu()
	end
elseif(answer=="Tfkdcg_yes")then
	LuaSay("Ǯׯ�ϰ壺������е��������Ϸ����������ҪӮ�ҿɲ�����Ŷ��")
	LuaSay("Ǯׯ�ϰ壺��~��~����ע�ɣ�ѹ������ѹС����СŶ")
	AddMenuItem("@7��ѡ��","")
	AddMenuItem("@3ѹС","Tfkdcg_yesx")
	AddMenuItem("@3ѹ��","Tfkdcg_yesd")
elseif(answer=="Tfkdcg_yesx")then
	LuaSay("Ǯׯ�ϰ壺��ѡ����ѹС����Ҫ�ó�@3���ͭ��@0��Ϊ��Ѻ��ϵͳ���Զ�Ϊ���Ƿ���һ�����֣�����������С���ҵ����������Ӯ�ˡ�")
	if(LuaItemCount("coin")>=500)then
		local r=LuaRandom(4)
		if(r==0)then
			LuaSay("Ǯׯ�ϰ壺����....�����ˣ��ѵ�����������")
			LuaSay(""..LuaQueryStr("name").."����׬Ǯ֮���ǣ�")
			LuaSay("Ǯׯ�ϰ壺׬Ǯ֮�����ǣ�@1�ڼ��Լ@0�����ˣ���ȥ�һʹ�߰ɣ�")
			LuaSetTask("Tfkdcg",3)
			LuaSetTask("Tfkdcgdb",0)
		else
			LuaSay("Ǯׯ�ϰ壺��������������һ�㣡�����ͭ�Ҿ͹�������")
			LuaGive("coin",-500,"Tfkdcgdb")
		end
	else
		LuaSay("Ǯׯ�ϰ壺�㻹û��@3���ͭ��@0��ѡ��@3ѹС@0��Ҫ@3���ͭ��@0��Ϊ��Ѻ������׬����Ǯ�������Ұɣ�")
	end
elseif(answer=="Tfkdcg_yesd")then
	LuaSay("Ǯׯ�ϰ壺��ѡ����ѹ����Ҫ�ó���ǧͭ����Ϊ��Ѻ��ϵͳ���Զ�Ϊ���Ƿ���һ�����֣�Ҫ��������ִ����ҵ����������Ӯ�ˡ�")
	if(LuaItemCount("coin")>=2000)then
	local ra=LuaRandom(2)
		if(ra==0)then
			LuaSay("Ǯׯ�ϰ壺����....�����ˣ��ѵ�����������")
			LuaSay(""..LuaQueryStr("name").."����׬Ǯ֮���ǣ�")
			LuaSay("Ǯׯ�ϰ壺׬Ǯ֮�����ǣ�@1�ڼ��Լ@0�����ˣ���ȥ�һʹ�߰ɣ�")
			LuaSetTask("Tfkdcg",3)
			LuaSetTask("Tfkdcgdb",0)
		else
			LuaSay("Ǯׯ�ϰ壺��������������һ�㣡���ǧͭ�Ҿ͹�������")
			LuaGive("coin",-2000,"Tfkdcgdb")
		end
	else
		LuaSay("Ǯׯ�ϰ壺�㻹û��@3��ǧͭ��@0��ѡ��@3ѹ��@0��Ҫ@3��ǧͭ��@0��Ϊ��Ѻ������׬����Ǯ�������Ұɣ�")
	end
elseif(answer=="Tfkdcg_no")then
	LuaSay("Ǯׯ�ϰ壺������㵨����û�У�")
------------------------
end
LuaSendMenu()
return 1
end
