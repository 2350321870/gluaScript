NPCINFO = { 
serial="62" ,
base_name="wangzhene",
icon=2586,
NpcMove=2586,
name="�����" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="��ȵ������֦����",
LuaType=1,
} 
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local havetask0=0	--Ĭ��û��
	local havetask1=0	--��̾��
	local havetask2=0	--��ɫ�ʺ�
	local havetask4=0	--��ɫ�ʺ�
	local level= LuaQuery("level")
	local T513=LuaQueryTask("T513")
	local T512=LuaQueryTask("T512")
	AddTopSayMenuItem("@7�����б�","")
	if((LuaQueryTask("Tsnpc_46")==1 or LuaQueryTask("Tsnpc_46")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_46")
		if(LuaQueryTask("Tsnpc_46")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_46")==1 or LuaQueryTask("Tenpc_46")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_46")
		if(LuaQueryTask("Tenpc_46")==1)then
			havetask2=1
		end
	end
	if(T513==1 or T513==2) then
		AddTopSayMenuItem("@2ʮ��𼱡����顿","T513")
		if(LuaQueryTask("T513")==2) then
		havetask2=1
		end
	end
	if(T512==1 or T512==2) then
		AddTopSayMenuItem("@2�������������顿","T512")
		if(LuaQueryTask("T512")==2)then
		havetask2 =1
		end
	end
	
	if(LuaQueryTask("T302")==14 and LuaQueryTask("T302N")==0) then
		AddTopSayMenuItem("@2ÿ����ʹ@0","T302N")
		havetask2 =1
	end
	if(LuaQueryTask("T514")==1) then
		AddTopSayMenuItem("@2͵ש���顾���顿","T514")
		if(LuaItemStatusNormalCount("o_mission212")>=1)then
			havetask2 =1
		else
			havetask4 =1
		end
	end
	if(LuaQueryTask("T385")~=0 and LuaQueryTask("T385")~=99)  then
		AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����","T385")
		if(LuaQueryTask("T385")==1)then
		havetask4=1
		elseif(LuaQueryTask("T385")==98)then
		havetask2=1
		end
	end
--����Ϊ��ɫ�ʺŲ���
	--if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
	--	AddTopSayMenuItem("@8�¹�@0@4��@0@3��@0@2��@0@1��@0","Newcountry")
	--end
	--[[if(LuaQueryTask("Tczfks")==0 and LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
		AddTopSayMenuItem("@7��ֵ�����@0","Tczfks")
	elseif(LuaQueryTask("Tczfks")==1 and LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
		AddTopSayMenuItem("@2��ֵ�����@0","Tczfks")
	elseif(LuaQueryTask("Tczfks")==99 and level<=50)then
		AddTopSayMenuItem("@9��ֵ�����@0","Tczfks")
	end]]
	if(level>=35)then
		AddTopSayMenuItem("@3����@0@5����@0","Tfjtx")
	elseif(level>=30)then
		AddTopSayMenuItem("@2[��]@0@3����@0@5����@0","Tfjtx")
	
	end
	if(level>=35)then
		AddTopSayMenuItem("@7����Ѱ����ÿ�ա�@0","T515")
	elseif(level>=30)then
		AddTopSayMenuItem("@2[��]@0@7����Ѱ����ÿ�ա�@0","T515")
	end
--����Ϊ���ⲿ��
	if((LuaQueryTask("T385")==0 or LuaQueryTask("T385")==99) and level>=30)  then
		AddTopSayMenuItem("��ڽ�ɽ��ѭ����","T385")
		havetask1=1
	end
	if(level>=30 and LuaQueryTask("T514")==0) then
		AddTopSayMenuItem("͵ש���顾���顿","T514")
		havetask1=1
	end
	if(T513==0 and level>=31) then
		AddTopSayMenuItem("ʮ��𼱡����顿","T513")
		havetask1=1
	end
	if(T512==0 and level>=32) then
		AddTopSayMenuItem("�������������顿","T512")
		havetask1 =1
	end
--����Ϊ��ɫ��̾�Ų���	
	AddTopSayMenuItem("@9�������½���","Tfjtx_sm")

		
if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(������havetask0=1)
	havetask=0
end
--------------------------------------------
if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("����","liaotian","0")
end	 
return 1
---------------------------------------ʮ��� 


------------------------------------------------
elseif(answer=="liaotian") then
	local a= floor(LuaQuery("onlinetime")/60)
	LuaSay("�����������ľ���ܣ��ͳ���������!")
	--LuaSay("@5����ר�ã���������ʱ��Ϊ"..LuaQuery("onlinetime").."�룬�ϼ�"..a.."���ӣ�")
		--[[DelItem("o_mission427",LuaItemCount("o_mission427"))
		DelItem("o_mission426",LuaItemCount("o_mission426"))
		DelItem("e_mission425",LuaItemCount("e_mission425"))
		DelItem("e_mission426",LuaItemCount("e_mission426"))
		DelItem("e_mission427",LuaItemCount("e_mission427"))
		DelItem("e_mission428",LuaItemCount("e_mission428"))
		DelItem("e_mission429",LuaItemCount("e_mission429"))
		LuaDelTask("Tfjtx")
		LuaDelTask("task1")
		LuaDelTask("task2")
		LuaDelTask("task3")
		LuaDelTask("task4")
		LuaDelTask("task5")
		LuaDelTask("allnum")
		LuaDelTask("Refresh")--ÿ��ˢ��һ��
		for i=1,70,1 do --��ֵ���
			LuaDelTask("Tfjtx_mon"..i.."")
		end
		for i=1,69,1 do --���źͶԻ�
			LuaDelTask("Tsnpc_"..i.."")
			LuaDelTask("Tenpc_"..i.."")
		end
		for i=1,5,1 do
			LuaDelTask("Tfjtxnumber"..i.."")	
		end]]
elseif(answer=="T514") then    -------------͵ש����
	if(LuaQueryTask("T514")==0) then
		LuaSay("������Ǹ�...�ٺ٣���������͵שô�������˲���͵�Լ����ҵ�שͷ��ֻ��͵��Ĺ��ҵġ�")
		LuaSay("������㻹��֪����ôȥ��Ĺ���ô�����������ߣ������µ�½���������ѡ�����ҽ��룬Ȼ����ͻ��ڸù��ұ߾������ˣ�")
		LuaSay("�����ȥ�ù���@4������@0���ҵ�@3���ҿⷿ�ܹ�@0��������ǽ���ˣ�")
		LuaSay("����񣻴����ֻ���ڵ���ש�������ÿ����ڵ���ש����Ʒ���������ڵ���ש�ˣ�����שͷ�ع��������Լ����ҵ�@3���ҿⷿ�ܹ�@0�콱")
		LuaSay("����񣻻ع��ķ�����������ƣ����������ߣ������µ�½���������ѡ�Լ����ҽ��룬Ȼ����ͻ����Լ����ұ߾������ˣ�")
		LuaSay("�����������������ȥ��Ĺ�����һ��@3��ש@0���ң��ٺ٣�")
		AddLog("͵ש���顾���顿",514)
		LuaSetTask("T514",1)
		UpdateMenu()
	elseif(LuaQueryTask("T514")==1) then
		if(LuaItemStatusNormalCount("o_mission212")>=1)then
			if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then 
			LuaSay("�����������Ȼ������һ�㼴ͨ����ô���ڵ�һ���ˣ��ٺ٣�")
			LuaAddJx("combat_exp",330000,"T514")
			DelItem("o_mission212",1)
			LuaSetTask("T514",99)
			DelLog("514")
			UpdateMenu()
			else
			LuaSay("�����������Ȼ��������ô���ڵ�һ���ˣ������ûع������񣡳������ױ������ɱ����")
			LuaSay("����񣻻ع��ķ�����������ƣ����������ߣ������µ�½���������ѡ�Լ����ҽ��룬Ȼ����ͻ����Լ����ұ߾������ˣ�")
			end 
		else
		LuaSay("������Ǹ�...�ٺ٣��������ٸ�������˵�°ɣ������˲���͵�Լ����ҵ�שͷ��ֻ��͵��Ĺ��ҵġ�")
		LuaSay("������㻹��֪����ôȥ��Ĺ���ô�����������ߣ������µ�½���������ѡ�����ҽ��룬Ȼ����ͻ��ڸù��ұ߾������ˣ�")
		LuaSay("�����ȥ�ù���@4������@0���ҵ�@3���ҿⷿ�ܹ�@0��������ǽ���ˣ�")
		LuaSay("����񣻴����ֻ���ڵ���ש�������ÿ����ڵ���ש����Ʒ���������ڵ���ש�ˣ�����שͷ�ع��������Լ����ҵ�@3���ҿⷿ�ܹ�@0�콱")
		LuaSay("����񣻻ع��ķ�����������ƣ����������ߣ������µ�½���������ѡ�Լ����ҽ��룬Ȼ����ͻ����Լ����ұ߾������ˣ�")
		LuaSay("�����������������ȥ��Ĺ�����һ��@3��ש@0���ң��ٺ٣�")
		end 
	elseif(LuaQueryTask("T514")==99) then
	LuaSay("����������Ѿ���ɸ����������ˣ��ٺ٣�")
	end 
		
elseif(answer=="T302N") then
	   if(LuaQueryTask("T302N")==0) then
	   LuaSay(""..LuaQueryStr("name").."��������վС�����Ҵ�������ż���")
	   LuaSay("��������ҵ��ţ�������������")
	   DelItem("o_mission076",1)
	   LuaSetTask("T302N",99)
	   UpdateMenu()
	   end

elseif(answer=="T513") then
	if(LuaQueryTask("T513")==0) then
		LuaSay("�����������������ʱ����������һ�����£���Ҫ���ٱ����@3�޼�@0�������Ƿ���������ɣ�")
		LuaSay(""..LuaQueryStr("name").."������һ��׷����٣��������ø���ʧ����")
		LuaSay("���������������ȥ�ɣ�����¸���@3�޼�@0��Ȼ��1����֮�ڰ�@3�޼�@0����Ϣ���������ң�������ܰ�ʱ���������ң�@2�����Ҷ�û�ô�@0��")
		LuaSetTask("T513",1)
		AddLog("ʮ��𼱡����顿",513)
		local time=GetCurrentTime()
		LuaSetTask("513time",time)
		UpdateTopSay("1�����ڰ��޼�Ļظ����ң���ȥ��") 
		UpdateMenu()
		UpdateNPCMenu("fujian")
	elseif(LuaQueryTask("T513")==1) then
		LuaSay("�����û�뵽�㻹͵��������û��ȥ��@3�޼�@0����")
	elseif(LuaQueryTask("T513")==2) then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("513time"))
		if(shijiancha<=60) then
                LuaSay("�����������Ȼ���٣���ô��ͻ����ˡ�")
                LuaSay("�����@3�޼�@0���˵ļ�ʶ���ǲ�������֪����ô���ˡ����������Ҵ�æ�ˣ���㶫�����������£�")
                AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T513jl")
                UpdateMenu()
		else
		LuaSay("����񣺰�������ٶ�����̫���ˣ��ҵ���ʧ̫���ˡ�����Ҫ������СС�ĳͷ�����������Ȥ����һ������������")
		LuaSetTask("T513",0)
		LuaGive("coin",-100,"T513")
		LuaDelTask("513time")
		UpdateMenu()
		end
	end
		elseif(answer=="T513jl") then
		if(LuaQueryTask("T513")==2) then
			LuaGive("e_sword018",1)
			LuaAddJx("combat_exp",303000,"T513")
			LuaAddAchievementSchedule("Task_num",1)
			LuaGive("coin",2000,"T513")
			LuaSetTask("T513",99)
			DelLog("513")
			UpdateMenu()
			end	
		
 elseif(answer=="T512") then
	if(LuaQueryTask("T512")==0) then
		LuaSay("����������Ҫ�������������ǲ�֪��˭�ǵ���������")
		LuaSay(""..LuaQueryStr("name").."����������֪��������@3�޼�@0���µ�һ������֮����������޼����ͳһ�˱��������Ȼ������֮��Ϊ�β�Ͷ��@3�޼�@0��?")	
		LuaSay(""..LuaQueryStr("name").."��@3�޼�@0�˵������������ؿ�㣬һ���᲻��ǰ�ӣ��������µģ�Ҫ���㲻���ĵĻ����ҿ��԰����˵��@3�޼�@0�����㡣")	
		LuaSay("������������Ǻ��ˣ��Ҿ������ﾴ�������")
		LuaSetTask("T512",1)	
		AddLog("�������������顿",512)
		UpdateMenu()
		UpdateNPCMenu("fujian")
		UpdateTopSay("����ȥ˵���޼�")
	elseif(LuaQueryTask("T512")==2)then
		LuaSay(""..LuaQueryStr("name").."�����¿��Է���ȥͶ��@3�޼�@0�ˣ��������������Ͷ��������ͼ��ҵ��")
		LuaSay(" ����񣺰������������������������ǲ������պ󶨵�Ч��������")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T512jl")
	else
		LuaSay("����񣺿�ȥ˵��@3�޼�@0")
	end
	elseif(answer=="T512jl")then
	if(LuaQueryTask("T512")==2) then
	LuaSetTask("T512",99)
	DelLog("512")
	LuaAddJx("combat_exp",314000,"T512")--����
	LuaAddAchievementSchedule("Task_num",1)
	UpdateMenu()
	UpdateNPCMenu("fujian")
	end		       
		
elseif(answer=="T515")then--����Ѱ��,�ر�ͼ
local level= LuaQuery("level")
if(level>=20)then
   if(GetCurrentDay()~=LuaQueryStrTask("515Taskday")) then
      LuaSetTask("T515",0)
      LuaSetTask("515etime",0)
      LuaSetTask("515Taskday",GetCurrentDay())
   end
	if(LuaQueryTask("T515")<2) then
		if(LuaItemCount("o_cangbaotu")==0)then
		LuaSay("��������ϴ�����Щ�����˲��ٺö��������������ھ����ϣ��յ���һЩ@2�ر�ͼ@0ȴ�޷��һ���ʵʵ���ڵĶ�����")
		LuaSay("������������ս�ң���Ϊ������ģ�Ϊ����������ʱ���ˣ�������Щ@2�ر�ͼ@0���ҵ����ŵı��أ������Ǿ�����ˮ��ɣ�")
		LuaSay("�������Ҳ�Ǹ����Ƽң����ܲ�׬���ǣ�1000ͭ��һ�ţ�ÿ����ֻ��2�ţ�ÿ��1�ţ�����������ٸ�����һ�š�")
		LuaSay("����񣺵�Ȼ������Ǹ��ǳ����͵��ˣ��������ߣ�ÿ����ʱ�䳬��3Сʱ�һ������1�ţ�ÿ������ͳ�����3�š�")
		AddMenuItem("ѡ���б�","")
		AddMenuItem("����һ��","T515ok")
		AddMenuItem("��û������","T515no")
		else
		LuaSay("������㻹ûȥѰ���أ�Ѱ��һ������Ѱ��һ����")
		end
	else
		if(LuaQuery("onlinetime")-LuaQueryTask("515etime")>10800 and LuaQueryTask("T515")<5)then
		LuaSay("��������Ǹ����͵��ˣ����ű�ͼ��������ġ�")
		LuaSetTask("515etime",LuaQueryTask("515etime")+10800)
		LuaAddTask("T515",1)
		LuaGive("o_cangbaotu",1,"T515")
		else
		LuaSay("����񣺽������Ѿ�����2�Ųر�ͼ�ˣ�ÿ����ʱ�䳬��3Сʱ�һ������1��,ÿ������ͳ�����3�š�")
		end
	end
else
LuaSay("�����Ѱ��Ҫ���㹻�ߵ����������У������ڻ�����20������ͼָʾ�ĵط��㶼��һ��ȥ���ˣ�����20���������ɡ�")
 UpdateTopSay("20����ÿ�����ȥѰ��")
end
elseif(answer=="T515ok" and LuaQueryTask("T515")  < 3 ) then
	LuaSay("������ڵ��ö������������ң�Ҳ���Ҹ��˸��ˡ�")
	if(LuaItemCount("coin")>=1000)then
		if(LuaGive("o_cangbaotu",1))then
		LuaGive("coin",-1000,"Tcangbaotu")
		LuaAddTask("T515",1)
		LuaDelTask("Tbaotu")
		else
		LuaSay("�����ռ䲻�㣡")
		end
	else
		LuaSay("��������������Ȿ����Ҳ���ջص㱾ѽ���ⱦͼ�ɲ��ܰ׸���1000ͭ��1�ţ�")
	end	

elseif(answer=="Newcountry")then
		AddMenuItem("@7�¹��弶�","")
		--if(LuaQueryTempStr("online")==LuaQueryStr("country_id") and (LuaQueryStr("country_id")=="ew20" or LuaQueryStr("country_id")=="ew26" or LuaQueryStr("country_id")=="ew28" or LuaQueryStr("country_id")=="ew29" or LuaQueryStr("country_id")=="ew22"))then
			--AddMenuItem("@7��ȡ����","Newcountry_jl1") 
			--AddMenuItem("@5�˵��","Newcountry_sm1")
		--else
		if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then --����1��ֻ�е�һ������װ����������2����ǰ10��
			AddMenuItem("@5��ȡ����","Newcountry_jl2")
			AddMenuItem("@5�˵��","Newcountry_sm2")
		end
elseif(answer=="Newcountry_jl1")then
	local level=LuaQuery("level")
	if(LuaQuery("quisle_count")==0)then
		if(LuaQueryTask("Newcountry")==0)then
			if(level>=40)then
				if(LuaPublicQuery("New_Number")==0)then
					if(LuaFreeBag()>=8)then
						LuaSay("����񣺹�ϲ���ñ����ĵ�һ��40������ң��ش�ϵͳ������40����װһ��")
						LuaNotice("��ϲ���@2"..LuaQueryStr("name").."@0Ϊ������һλ����@340��@0����ң��ش�ϵͳ����40����װһ�ף�")
						LuaNotice("���浽��40�������Ҳ���Ե��������������ȡ�������ȵ��ȵ�Ŷ@!")
						LuaPublicSet("New_Number",1)
						if(LuaQueryStr("class")=="shen") then      --սʿ
							LuaGive("e_falchion151",1,2,"Newcountry")
							LuaGive("e_shield151",1,2,"Newcountry")
						elseif(LuaQueryStr("class")=="wu") then       --����
							LuaGive("e_sword151",1,2,"Newcountry")
							LuaGive("e_knife151",1,2,"Newcountry")
						elseif(LuaQueryStr("class")=="xian") then       --ıʿ
							LuaGive("e_book151",1,2,"Newcountry")
							LuaGive("e_pen151",1,2,"Newcountry")
						end
						LuaGive("e_head151",1,2,"Newcountry")		--ǿ�߹�
						LuaGive("e_clothes151",1,2,"Newcountry")	--ǿ����
						LuaGive("e_pants151",1,2,"Newcountry")		--ǿ�߻���
						LuaGive("e_shoes151",1,2,"Newcountry")		--ǿ��ѥ	
						LuaGive("e_earring151",1,2,"Newcountry")	--ǿ�߶�׹
						LuaGive("e_necklace151",1,2,"Newcountry")	--ǿ������
						LuaGive("coin",18888,"Newcountry")
						LuaAddJx("combat_exp",500000,"Newcountry")
						LuaSetTask("Newcountry",98)
					else
						LuaSay("��ʾ�����뱣��8��ı����ռ������ȡ�����ĵ�һ�Ľ���Ŷ@!")
					end
				else
					if(LuaFreeBag()>=3)then
						LuaSay("����񣺹�ϲ�㵽����ʮ��Ŷ�����Ǳ��ٸ����һ��СС�Ľ�����")
						LuaGive("coin",18888,"Newcountry")
						LuaAddJx("combat_exp",500000,"Newcountry")
						local r=LuaRandom(3)
						if(r==0)then
							LuaGive("o_state012j",1,"Newcountry")------��
							LuaGive("o_state008j",1,"Newcountry")------��
						elseif(r==1)then
							LuaGive("o_state012j",1,"Newcountry")------��
							LuaGive("o_state065j",1,"Newcountry")----СѪ��
						elseif(r==2)then
							LuaGive("o_state001j",1,"Newcountry")------��
							LuaGive("o_state068j",1,"Newcountry")----Сħ��
						end
						LuaGive("o_box004j",2,"Newcountry") --��������
						LuaSetTask("Newcountry",99)
					else
						LuaSay("��ʾ�����뱣��3��ı����ռ������ȡ����Ŷ")
					end
				end
			else
				if(LuaPublicQuery("New_Number")==0)then
					LuaSay("����񣺸Ͽ����Ŷ����һ�����ﱾ����һ����ʮ������ұ��ٽ��ά��40����װһ�ף�")
				else
					
					LuaSay("����񣺸Ͽ����Ŷ��������ʮ���ҽ�������")
					LuaSay("@5��ܰ��ʾ���ѹ�����ҽ�����õ��κεĽ���Ŷ")
				end
			end
		else
			LuaSay("��������Ѿ��μ����˴˻����ȡ�˽�����Ŷ��ף����Ϸ��죡")
		end
	else
		LuaSay("����������ѹ��ߣ�����ɲ���ӭ���͸�û�н���������ȡ��Ŷ")
	end
elseif(answer=="Newcountry_jl2")then
	local level=LuaQuery("level")
	if(LuaQuery("quisle_count")==0)then
		if(LuaQueryTask("Newcountry")==0)then
			if(level>=40)then
				if(LuaPublicQuery("New_Number")<10)then
					if(LuaFreeBag()>=8)then
						local a=LuaPublicQuery("New_Number")+1
						LuaSay("����񣺹�ϲ���ñ����ĵ�"..a.."��40������ң��ش�ϵͳ������40����װһ��")
						LuaNotice("��ϲ���@2"..LuaQueryStr("name").."@0Ϊ������"..a.."λ����@340��@0����ң��ش�ϵͳ����40����װһ�ף�")
						LuaNotice("���浽��40�������Ҳ���Ե��������������ȡ�������ȵ��ȵ�Ŷ@!")
						LuaPublicAdd("New_Number",1)
						if(LuaQueryStr("class")=="shen") then      --սʿ
							LuaGive("e_falchion151",1,2,"Newcountry")
							LuaGive("e_shield151",1,2,"Newcountry")
						elseif(LuaQueryStr("class")=="wu") then       --����
							LuaGive("e_sword151",1,2,"Newcountry")
							LuaGive("e_knife151",1,2,"Newcountry")
						elseif(LuaQueryStr("class")=="xian") then       --ıʿ
							LuaGive("e_book151",1,2,"Newcountry")
							LuaGive("e_pen151",1,2,"Newcountry")
						end
						LuaGive("e_head151",1,2,"Newcountry")		--ǿ�߹�
						LuaGive("e_clothes151",1,2,"Newcountry")	--ǿ����
						LuaGive("e_pants151",1,2,"Newcountry")		--ǿ�߻���
						LuaGive("e_shoes151",1,2,"Newcountry")		--ǿ��ѥ	
						LuaGive("e_earring151",1,2,"Newcountry")	--ǿ�߶�׹
						LuaGive("e_necklace151",1,2,"Newcountry")	--ǿ������
						LuaGive("coin",18888,"Newcountry")
						LuaAddJx("combat_exp",500000,"Newcountry")
						LuaSetTask("Newcountry",98)
					else
						LuaSay("��ʾ�����뱣��8��ı����ռ������ȡ������ǰʮ�ĳ弶����Ŷ@!")
					end
				else
					if(LuaFreeBag()>=3)then
						LuaSay("����񣺹�ϲ�㵽����ʮ��Ŷ�����Ǳ��ٸ����һ��СС�Ľ�����")
						LuaGive("coin",18888,"Newcountry")
						LuaAddJx("combat_exp",500000,"Newcountry")
						local r=LuaRandom(3)
						if(r==0)then
							LuaGive("o_state012j",1,"Newcountry")------��
							LuaGive("o_state008j",1,"Newcountry")------��
						elseif(r==1)then
							LuaGive("o_state012j",1,"Newcountry")------��
							LuaGive("o_state065j",1,"Newcountry")----СѪ��
						elseif(r==2)then
							LuaGive("o_state001j",1,"Newcountry")------��
							LuaGive("o_state068j",1,"Newcountry")----Сħ��
						end
						LuaGive("o_box004j",2,"Newcountry") --��������
						LuaSetTask("Newcountry",99)
					else
						LuaSay("��ʾ�����뱣��3��ı����ռ������ȡ����Ŷ")
					end
				end
			else
				if(LuaPublicQuery("New_Number")==0)then
					LuaSay("����񣺸Ͽ����Ŷ��ǰʮ�����ﱾ����ʮ������ұ��ٽ��ά��40����װһ�ף�")
				else
					
					LuaSay("����񣺸Ͽ����Ŷ��������ʮ���ҽ�������")
					LuaSay("@5��ܰ��ʾ���ѹ�����ҽ�����õ��κεĽ���Ŷ")
				end
			end
		else
			LuaSay("��������Ѿ��μ����˴˻����ȡ�˽�����Ŷ��ף����Ϸ��죡")
		end
	else
		LuaSay("����������ѹ��ߣ�����ɲ���ӭ���͸�û�н���������ȡ��Ŷ")
	end
elseif(answer=="Newcountry_sm1")then
	LuaSay("����񣺱������ڴ˾����¹��弶���������һ��������ʮ������ң�����������������ȡ��@340����Ʒ��װ@0һ��")
	LuaSay("�����û����ȡ����װ����Ҳ�Ҫ���ġ�ÿһ���μӳ弶�����ҵ�����ʮ��Ҳ�������������ﺣ����@3�̳�����@0��")
	LuaSay("������ر���ʾһ�£�@1�ѹ�@0����ҽ�����õ��κεĽ���Ŷ��")
elseif(answer=="Newcountry_sm2")then
	LuaSay("����񣺱������ڴ˾����¹��弶�������ǰʮ��������ʮ������ң�����������������ȡ��@340����Ʒ��װ@0һ��")
	LuaSay("�����û����ȡ����װ����Ҳ�Ҫ���ġ�ÿһ���μӳ弶�����ҵ�����ʮ��Ҳ�������������ﺣ����@3�̳�����@0��")
	LuaSay("������ر���ʾһ�£�@1�ѹ�@0����ҽ�����õ��κεĽ���Ŷ��")




elseif(answer=="Tczfks")then
	local level= LuaQuery("level")
	if(level<30)then
		LuaSay("����񣺵��㵽��30��֮����ܽ�ȡ������Ŷ���Ͽ�������@!")
		LuaSay("�����ֻҪ���ۼƳ�ֵ�ﵽ500Ԫ�����ܹ����@1����88��@0��@188888ͭ@0��@1+60����װ@0���һ��")
		LuaSay("����񣺻��ڵ�ʲô�أ��Ķ������ж� �����������")
	else

		if(LuaQueryTask("Tczfks")==0)then
			LuaSay("�������ֻ��Ҫ��ֵ500Ԫ�����������������ȡ���Ľ���Ŷ@!")
			LuaSay("��������а����������е�@160+��װ���󶨣�@0һ����@1����88��@0��@188888ͭ@0�����ܻ��@3��ˬ����@0�ĳƺš�")
			LuaSay("������Ķ������ж����Ͽ�ȥ��ֵ��Ȼ����������ȡ������@!")
			LuaSetTask("Tczfks",1)
			UpdateMenu()
		elseif(LuaQueryTask("Tczfks")==1)then
			if(LuaRechargeQuery(3,"Tcz201201001")=="1")then
				if(LuaFreeBag()>=1)then
					LuaSay("��ϲ����ɳ�ֵ��������񣬻�ð��������е�@160+��װ@0һ����@1����88��@0��@188888ͭ@0�����һ��@3��ˬ����@0��һ��ʹ�����ޣ��ĳƺ�@!")
					LuaGive("coin",88888,"Tczfks")		--ͭ��
					LuaAddJx("combat_exp",880000,"Tczfks")	--����
					re=LuaRandom(7)				--װ��
					SetTitleMeg(103)			--�ƺ�
					if(re==0)then
						LuaGive("e_head154",1,2,"Tczfks")
					elseif(re==1)then
						LuaGive("e_clothes154",1,2,"Tczfks")
					elseif(re==2)then
						LuaGive("e_pants154",1,2,"Tczfks")
					elseif(re==3)then
						LuaGive("e_shoes154",1,2,"Tczfks")
					elseif(re==4)then
						LuaGive("e_earring154",1,2,"Tczfks")
					elseif(re==5)then
						LuaGive("e_necklace154",1,2,"Tczfks")
					elseif(re==6)then
						if(LuaQueryStr("class")=="shen") then
							LuaGive("e_falchion154",1,2,"Tczfks")	
						elseif(LuaQueryStr("class")=="wu") then
							LuaGive("e_sword154",1,2,"Tczfks")
						elseif(LuaQueryStr("class")=="xian") then
							LuaGive("e_pen154",1,2,"Tczfks")
						end
					elseif(re==7)then
						if(LuaQueryStr("class")=="shen") then
							LuaGive("e_shield154",1,2,"Tczfks")	
						elseif(LuaQueryStr("class")=="wu") then
							LuaGive("e_knife154",1,2,"Tczfks")
						elseif(LuaQueryStr("class")=="xian")then
							LuaGive("e_book154",1,2,"Tczfks")
						end
					end
					LuaNotice("���@3"..LuaQueryStr("name").."@0���@3��ֵ�����@0�����񣬻����һ��ѵĽ�������ҿ�ȥ����")
					LuaRechargeSet(3,"Tcz201201001")
					LuaSetTask("Tczfks",99)
					UpdateMenu()
				else
					LuaSay("��ʾ���뱣������һ��ı�����λŶ����Ȼ������Ʒ������Ϊ�㱳���ռ䲻�����ʧŶ@!")
				end
			else
				LuaSay("�������ֻ��Ҫ��ֵ500Ԫ�����������������ȡ���Ľ���Ŷ@!")
				LuaSay("��������а����������е�@160+��װ@0һ����@1����88��@0��@188888ͭ@0�����ܻ��@3��ˬ����@0�ĳƺš�")
				LuaSay("������Ķ������ж����Ͽ�ȥ��ֵ��Ȼ����������ȡ������@!")
			end
		else
			LuaSay("���Ѿ�������˳�ֵ����͵�������Ŷ��һ���˺�ֻ����һ�δ�����Ŷ@!")
			LuaSay("��Ҳ�����Ƽ������������ɴ�����ֻҪ�ۼƳ�ֵ�ﵽ500Ԫ�����ܹ����@1����88��@0��@188888ͭ@0��@1+60����װ@0���һ��")
		end
	end



elseif(answer=="Tsnpc_46")then
	if(LuaQueryTask("Tsnpc_46")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("��������ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_46",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_46")==2)then
		LuaSay("��������ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_46")then
	if(LuaQueryTask("Tenpc_46")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("������ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_46",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_46")==2)then
		LuaSay("����񣺻��Ѿ������ˣ����ȥ��ȡ������")
	end

-->>>�������¿�ʼ


elseif(answer=="Tfjtx")then

if(LuaQuery("level")>=30)then
	if(LuaQueryStrTask("Tfjtxday")~=GetCurrentDay()) then --ɾ��ǰһ�����������
		DelItem("o_mission427",LuaItemCount("o_mission427"))
		DelItem("o_mission426",LuaItemCount("o_mission426"))
		DelItem("e_mission425",LuaItemCount("e_mission425"))
		DelItem("e_mission426",LuaItemCount("e_mission426"))
		DelItem("e_mission427",LuaItemCount("e_mission427"))
		DelItem("e_mission428",LuaItemCount("e_mission428"))
		DelItem("e_mission429",LuaItemCount("e_mission429"))
		LuaDelTask("Tfjtx")
		LuaDelTask("task1")
		LuaDelTask("task2")
		LuaDelTask("task3")
		LuaDelTask("task4")
		LuaDelTask("task5")
		LuaDelTask("allnum")
		LuaDelTask("Refresh")--ÿ��ˢ��һ��
		for i=1,70,1 do --��ֵ���
			LuaDelTask("Tfjtx_mon"..i.."")
		end
		for i=1,69,1 do --���źͶԻ�
			LuaDelTask("Tsnpc_"..i.."")
			LuaDelTask("Tenpc_"..i.."")
		end
		for i=1,5,1 do
			LuaDelTask("Tfjtxnumber"..i.."")	
		end
		LuaSay("����񣺸�������������������ѡ��ÿ���㶼��һ����ѵĻ���ѡ��Ŷ��������ѡ����ͭ��ģʽ����ô����Ľ���������ͭ�ң���ѡ��Ĭ��Ϊ����ģʽ��")
		LuaSay("������������ͬһ�컹���ٴ�ת��ģʽ����ֻ��Ҫ����һͨ��������Ի��һ��ת������ģʽ�Ļ���Ŷ��ѡ��ģʽ����@9�������½���@0")
	end
	if(LuaQueryTask("task1")==99 and LuaQueryTask("task2")==99 and LuaQueryTask("task3")==99 and LuaQueryTask("task4")==99 and LuaQueryTask("task5")==99)then
		LuaDelTask("Tfjtx")
		LuaDelTask("task1")
		LuaDelTask("task2")
		LuaDelTask("task3")
		LuaDelTask("task4")
		LuaDelTask("task5")
		for i=1,5,1 do
			LuaDelTask("Tfjtxnumber"..i.."")	
		end
		UpdateMenu()	
	end
	local allnum=LuaQueryTask("allnum") + 1		--allnum	�ܴ���
	local roundnum=floor(allnum/5) + 1		--roundnum	�ܻ���
	if(LuaQueryTask("Tfjtx")==0)then
		LuaSay("���������£���Ǯ������С��@!*����������@A��@3"..roundnum.."@0��@A")
		LuaSetTask("Tfjtxday",GetCurrentDay())
		local r=LuaRandom(15)
		local j=1
		AddMenuItem("@7��������","")
		for i=1,5,1 do
			local r=LuaRandom(15)
			LuaSetTask("color"..j.."",r)
			if(r==0)then --��@2����@3����@5����@7����
				local type=LuaRandom(7)+1
				if(type==1)then
					AddMenuItem("@2ɱ������","task"..j.."")
				elseif(type==2)then
					AddMenuItem("@2�������","task"..j.."")
				elseif(type==3)then
					AddMenuItem("@2��վС��","task"..j.."")
				elseif(type==4)then
					AddMenuItem("@2ǧ�ﴫ��","task"..j.."")
				elseif(type==5)then
					AddMenuItem("@2̽����ʵ","task"..j.."")
				elseif(type==6)then
					AddMenuItem("@2�б�����","task"..j.."")
				elseif(type==7)then
					AddMenuItem("@2�ռ�����","task"..j.."")
				end
				LuaSetTask("type"..j.."",type)
			elseif(r==1 or r==2)then
				local type=LuaRandom(7)+1
				if(type==1)then
					AddMenuItem("@3ɱ������","task"..j.."")
				elseif(type==2)then
					AddMenuItem("@3�������","task"..j.."")
				elseif(type==3)then
					AddMenuItem("@3��վС��","task"..j.."")
				elseif(type==4)then
					AddMenuItem("@3ǧ�ﴫ��","task"..j.."")
				elseif(type==5)then
					AddMenuItem("@3̽����ʵ","task"..j.."")
				elseif(type==6)then
					AddMenuItem("@3�б�����","task"..j.."")
				elseif(type==7)then
					AddMenuItem("@3�ռ�����","task"..j.."")
				end
				LuaSetTask("type"..j.."",type)
			elseif(r==3 or r==4 or r==5)then
				local type=LuaRandom(7)+1
				if(type==1)then
					AddMenuItem("@5ɱ������","task"..j.."")
				elseif(type==2)then
					AddMenuItem("@5�������","task"..j.."")
				elseif(type==3)then
					AddMenuItem("@5��վС��","task"..j.."")
				elseif(type==4)then
					AddMenuItem("@5ǧ�ﴫ��","task"..j.."")
				elseif(type==5)then
					AddMenuItem("@5̽����ʵ","task"..j.."")
				elseif(type==6)then
					AddMenuItem("@5�б�����","task"..j.."")
				elseif(type==7)then
					AddMenuItem("@5�ռ�����","task"..j.."")
				end
				LuaSetTask("type"..j.."",type)
			elseif(r==6 or r==7 or r==8 or r==9)then
				local type=LuaRandom(7)+1
				if(type==1)then
					AddMenuItem("@7ɱ������","task"..j.."")
				elseif(type==2)then
					AddMenuItem("@7�������","task"..j.."")
				elseif(type==3)then
					AddMenuItem("@7��վС��","task"..j.."")
				elseif(type==4)then
					AddMenuItem("@7ǧ�ﴫ��","task"..j.."")
				elseif(type==5)then
					AddMenuItem("@7̽����ʵ","task"..j.."")
				elseif(type==6)then
					AddMenuItem("@7�б�����","task"..j.."")
				elseif(type==7)then
					AddMenuItem("@7�ռ�����","task"..j.."")
				end
				LuaSetTask("type"..j.."",type)
			else
				local type=LuaRandom(7)+1
				if(type==1)then
					AddMenuItem("ɱ������","task"..j.."")
				elseif(type==2)then
					AddMenuItem("�������","task"..j.."")
				elseif(type==3)then
					AddMenuItem("��վС��","task"..j.."")
				elseif(type==4)then
					AddMenuItem("ǧ�ﴫ��","task"..j.."")
				elseif(type==5)then
					AddMenuItem("̽����ʵ","task"..j.."")
				elseif(type==6)then
					AddMenuItem("�б�����","task"..j.."")
				elseif(type==7)then
					AddMenuItem("�ռ�����","task"..j.."")
				end
				LuaSetTask("type"..j.."",type)
			end
			j=j+1
		end
		LuaSetTask("Tfjtx",1)
		UpdateMenu()
	elseif(LuaQueryTask("Tfjtx")==1)then
		local type1=LuaQueryTask("type1")
		local type2=LuaQueryTask("type2")
		local type3=LuaQueryTask("type3")
		local type4=LuaQueryTask("type4")
		local type5=LuaQueryTask("type5")
		--local color1=LuaQueryTask("color1")
		--local twocolor=LuaQueryTask("twocolor")
		--local threecolor=LuaQueryTask("threecolor")
		--local fourcolor=LuaQueryTask("fourcolor")
		--local fivecolor=LuaQueryTask("fivecolor")
		local j=1
		AddMenuItem("@7��������е�@0@A@3"..roundnum.."@0@A@7��","")
		for i=1,5,1 do
			local r=LuaQueryTask("color"..j.."")
			if(r==0)then --��@2����@3����@5����@7����
				if(LuaQueryTask("type"..j.."")==1)then
					AddMenuItem("@2ɱ������","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==2)then
					AddMenuItem("@2�������","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==3)then
					AddMenuItem("@2��վС��","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==4)then
					AddMenuItem("@2ǧ�ﴫ��","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==5)then
					AddMenuItem("@2̽����ʵ","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==6)then
					AddMenuItem("@2�б�����","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==7)then
					AddMenuItem("@2�ռ�����","task"..j.."")
				end
			elseif(r==1 or r==2)then
				if(LuaQueryTask("type"..j.."")==1)then
					AddMenuItem("@3ɱ������","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==2)then
					AddMenuItem("@3�������","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==3)then
					AddMenuItem("@3��վС��","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==4)then
					AddMenuItem("@3ǧ�ﴫ��","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==5)then
					AddMenuItem("@3̽����ʵ","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==6)then
					AddMenuItem("@3�б�����","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==7)then
					AddMenuItem("@3�ռ�����","task"..j.."")
				end
			elseif(r==3 or r==4 or r==5)then
				if(LuaQueryTask("type"..j.."")==1)then
					AddMenuItem("@5ɱ������","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==2)then
					AddMenuItem("@5�������","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==3)then
					AddMenuItem("@5��վС��","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==4)then
					AddMenuItem("@5ǧ�ﴫ��","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==5)then
					AddMenuItem("@5̽����ʵ","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==6)then
					AddMenuItem("@5�б�����","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==7)then
					AddMenuItem("@5�ռ�����","task"..j.."")
				end
			elseif(r==6 or r==7 or r==8 or r==9)then
				if(LuaQueryTask("type"..j.."")==1)then
					AddMenuItem("@7ɱ������","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==2)then
					AddMenuItem("@7�������","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==3)then
					AddMenuItem("@7��վС��","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==4)then
					AddMenuItem("@7ǧ�ﴫ��","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==5)then
					AddMenuItem("@7̽����ʵ","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==6)then
					AddMenuItem("@7�б�����","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==7)then
					AddMenuItem("@7�ռ�����","task"..j.."")
				end
			elseif(r==99)then
				if(LuaQueryTask("type"..j.."")==1)then
					AddMenuItem("@9ɱ������","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==2)then
					AddMenuItem("@9�������","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==3)then
					AddMenuItem("@9��վС��","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==4)then
					AddMenuItem("@9ǧ�ﴫ��","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==5)then
					AddMenuItem("@9̽����ʵ","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==6)then
					AddMenuItem("@9�б�����","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==7)then
					AddMenuItem("@9�ռ�����","task"..j.."")
				end
			else
				if(LuaQueryTask("type"..j.."")==1)then
					AddMenuItem("ɱ������","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==2)then
					AddMenuItem("�������","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==3)then
					AddMenuItem("��վС��","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==4)then
					AddMenuItem("ǧ�ﴫ��","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==5)then
					AddMenuItem("̽����ʵ","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==6)then
					AddMenuItem("�б�����","task"..j.."")
				elseif(LuaQueryTask("type"..j.."")==7)then
					AddMenuItem("�ռ�����","task"..j.."")
				end
			end
			j=j+1
		end	
	end	
else
	LuaSay("��ʾ�����㵽��30��֮����ܽ�ȡ�������ˣ����������ɣ�")
end
-- �����ǲ˵�����


elseif(answer=="task1")then--��@2����@3����@5����@7����
--LuaSay("��һ������"..LuaQueryTask("task1").."")
	local level=LuaQuery("level")
	if(LuaQueryTask("task1")==0)then
		if(LuaQueryTask("type1")==1)then
			local coldata={AutoFind(1,level,1)}
			LuaSetTask("task1type1col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("����񣺵���ս�����ģ����й����ûΣ�����������ȥ@4"..coldata[2].."@0ȥ��ɱ@3"..coldata[4].."@0ֻ@2"..coldata[3].."@0�ɣ��Ա������صİ�ȫ��")
			LuaSetTask(coldata[5],1)
			--LuaSay(""..LuaQueryTask("color1")..".....................")
			if(LuaQueryTask("color1")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type1")==2)then
			local coldata={AutoFind(2,level,1)}
			LuaSetTask("task1type2col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("����񣺹�����ǲ�Ᵽ����@4"..coldata[2].."@0��@2"..coldata[3].."@0͵�����ҵ�@2"..coldata[5].."@0������������ȥ�����һ�������������!")
			LuaSetTask(coldata[4],1) --��������
			--LuaSay(""..LuaQueryTask("color1")..".....................")
			if(LuaQueryTask("color1")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type1")==3)then
			local coldata={AutoFind(3,level,1)}
			LuaSetTask("task1type3col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("����������ڲ��ż����㽫������@4"..coldata[2].."@0��@3"..coldata[3].."@0���ɲ�ҪŪ����Ŷ@!")
			LuaGive("o_mission426",1)--��������
			LuaSetTask(coldata[4],1)
			--LuaSay(""..LuaQueryTask("color1")..".....................")
			if(LuaQueryTask("color1")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type1")==4)then
			local coldata={AutoFind(4,level,1)}
			LuaSetTask("task1type4col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("��������ս�³Խ����ż�Ҳ������ô��ȫ�����ǻ��˱Ƚϰ�ȫ����ȥ��@4"..coldata[2].."@0��@3"..coldata[3].."@0�ӻ�������%��#����&(&��")
			LuaSetTask(coldata[4],1)
			--LuaSay(""..LuaQueryTask("color1")..".....................")
			if(LuaQueryTask("color1")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type1")==5)then
			local coldata={AutoFind(5,level,1)}
			LuaSetTask("task1type5col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("���������������ź��̻𣬵�@4"..coldata[2].."@0ȥȼ�ţ�֪ͨ���о��Ӽ��ᣬ��������һ���İ���")
			LuaGive("e_mission425",1)--�ź��̻�
			LuaSetTask(coldata[4],1)
			--LuaSay(""..LuaQueryTask("color1")..".....................")
			if(LuaQueryTask("color1")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type1")==6)then
			local level=LuaQuery("level")
			local coldata={AutoFind(6,level,1)}
			local r=LuaRandom(level)+1
			LuaSetTask("task1type6col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("��������������Ѱ��һ����@3"..r.."��@0����5������Ҳ�һͬ���ǰ������")
			LuaSay("����񣺱����Һ�41������5������ң���ô���ҵ�36-47�ȼ���������ұ���������")
			LuaSetTask("task1level",r)
			--LuaSay(""..LuaQueryTask("color1")..".....................")
			if(LuaQueryTask("color1")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type1")==7)then
			local coldata={AutoFind(7,level,1)}
			LuaSetTask("task1type7col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("�����"..coldata[5].."����ȥ�����ռ�@2"..coldata[4].."��"..coldata[3].."@0�������һظ���")
			--LuaSay(""..LuaQueryTask("color1")..".....................")
			if(LuaQueryTask("color1")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		end
		LuaSetTask("task1",1)
		UpdateMenu()
	elseif(LuaQueryTask("task1")==1)then
			if(LuaQueryTask("type1")==1)then
				local coldata={AutoFind(0,1,LuaQueryTask("task1type1col"))}
				if(LuaQueryTask(coldata[5])>coldata[4])then
					local color
					if(LuaQueryTask("color1")==0)then 
						color=5
					elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
						color=4
					elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
						color=3
					elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					----local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					--GiveAward(LuaQuery("level"),coldata[7],color,a)
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					LuaDelTask(coldata[5]) --���������
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task1",99)
					LuaSetTask("color1",99)
					LuaDelTask("task1type1col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ�����������ȥȥ"..coldata[2].."ȥ��ɱ"..coldata[4].."ֻ"..coldata[3].."������δ���")
					if(LuaQueryTask("color1")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			elseif(LuaQueryTask("type1")==2)then
				local coldata={AutoFind(0,0,LuaQueryTask("task1type2col"))}
				if(LuaItemCount("o_mission427")>=1)then --���齣��
					local color
					if(LuaQueryTask("color1")==0)then 
						color=5
					elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
						color=4
					elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
						color=3
					elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					----local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					--GiveAward(LuaQuery("level"),coldata[7],color,a)
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					DelItem("o_mission427",1)
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task1",99)
					LuaSetTask("color1",99)
					LuaDelTask("task1type2col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ����������Ǵ�@4"..coldata[2].."@0��@2"..coldata[3].."@0�����һ��ҵ�@2"..coldata[5].."@0������δ���")
					if(LuaQueryTask("color1")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
						
				end
			elseif(LuaQueryTask("type1")==3)then
				local coldata={AutoFind(0,1,LuaQueryTask("task1type3col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color1")==0)then 
						color=5
					elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
						color=4
					elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
						color=3
					elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					----local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					--GiveAward(LuaQuery("level"),coldata[7],color,a)
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					LuaDelTask(coldata[4])
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task1",99)
					LuaSetTask("color1",99)
					LuaDelTask("task1type3col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ����������ǽ��Ҹ�����ż��͸�@4"..coldata[2].."@0��@3"..coldata[3].."@0���㻹δ���Ŷ")
					if(LuaQueryTask("color1")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
						
				end
			elseif(LuaQueryTask("type1")==4)then
				local coldata={AutoFind(0,0,LuaQueryTask("task1type4col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color1")==0)then 
						color=5
					elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
						color=4
					elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
						color=3
					elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					----local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					--GiveAward(LuaQuery("level"),coldata[7],color,a)
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					LuaDelTask(coldata[4])
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task1",99)
					LuaSetTask("color1",99)
					LuaDelTask("task1type4col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ����������Ǹ�@4"..coldata[2].."@0��@3"..coldata[3].."@0�ӻ�&��������&%&�����������������㻹δ���Ŷ")
					if(LuaQueryTask("color1")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
						
				end
			elseif(LuaQueryTask("type1")==5)then
				local coldata={AutoFind(0,1,LuaQueryTask("task1type5col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color1")==0)then 
						color=5
					elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
						color=4
					elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
						color=3
					elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					----local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					--GiveAward(LuaQuery("level"),coldata[7],color,a)
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					LuaDelTask(coldata[4])
					LuaDelTask("task1type5map")
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task1",99)
					LuaSetTask("color1",99)
					LuaDelTask("task1type5col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ����������ǵ�@4"..coldata[2].."@0ȥȼ��@2�ź��̻�@0,������ӣ�����δ���")
					if(LuaQueryTask("color1")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
						
				end
			
			elseif(LuaQueryTask("type1")==6)then
				local coldata={AutoFind(0,1,LuaQueryTask("task1type6col"))}
				local Teamlevel=LuaQueryTask("task1level")
				if(TeamCount()==2)then
					if((Teamlevel-TeamQuery("level"))*(Teamlevel-TeamQuery("level"))<=25)then
						local color
					if(LuaQueryTask("color1")==0)then 
						color=5
					elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
						color=4
					elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
						color=3
					elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					----local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					--GiveAward(LuaQuery("level"),coldata[7],color,a)
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
						LuaDelTask(coldata[6]) --������ɫ
						LuaSetTask("task1",99)
						LuaSetTask("color1",99)
						LuaDelTask("task1type6col")
						LuaAddTask("allnum",1)
						UpdateMenu()
					else
						LuaSay("��ʾ�����������Ѱ��һ����@3"..Teamlevel.."��@0����5������Ҳ�һͬ���ǰ�����ң�����δ���")
						if(LuaQueryTask("color1")==0)then 
							LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
						elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
							LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
						elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
							LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
						elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
							LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
						else
							LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
						end
					end
				else
					LuaSay("��ʾ�����������Ѱ��һ����@3"..Teamlevel.."��@0����5������Ҳ�һͬ���ǰ������@!")
					if(LuaQueryTask("color1")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			elseif(LuaQueryTask("type1")==7)then
				local coldata={AutoFind(0,1,LuaQueryTask("task1type7col"))}	
				if(LuaItemStatusNormalCount(coldata[2])>=coldata[4])then
					local color
					if(LuaQueryTask("color1")==0)then 
						color=5
					elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
						color=4
					elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
						color=3
					elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					----local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					--GiveAward(LuaQuery("level"),coldata[7],color,a)
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					DelItem(coldata[2],coldata[4])
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task1",99)
					LuaSetTask("color1",99)
					LuaDelTask("task1type6col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ�����������ȥ�����ռ�@2"..coldata[4].."��"..coldata[3].."@0���㻹δ���")
					if(LuaQueryTask("color1")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color1")==1 or LuaQueryTask("color1")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color1")==3 or LuaQueryTask("color1")==4 or LuaQueryTask("color1")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color1")==6 or LuaQueryTask("color1")==7 or LuaQueryTask("color1")==8 or LuaQueryTask("color1")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			end
	elseif(LuaQueryTask("task1")==99)then
		LuaSay("��ʾ�����Ѿ���ɸ����񣬵�����������֮���µ�����˵������Զ�ˢ��")
	end







elseif(answer=="task2")then
	--LuaSay("�ڶ�������"..LuaQueryTask("task2").."")
	local level=LuaQuery("level")
	if(LuaQueryTask("task2")==0)then
		if(LuaQueryTask("type2")==1)then
			local coldata={AutoFind(1,level,1)}
			LuaSetTask("task2type2col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("����񣺵���ս�����ģ����й����ûΣ�����������ȥ@4"..coldata[2].."@0ȥ��ɱ@3"..coldata[4].."@0ֻ@2"..coldata[3].."@0�ɣ��Ա������صİ�ȫ��")
			LuaSetTask(coldata[5],1)
			if(LuaQueryTask("color2")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")

			elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type2")==2)then
			local coldata={AutoFind(2,level,1)}
			LuaSetTask("task2type2col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("����񣺹�����ǲ�Ᵽ����@4"..coldata[2].."@0��@2"..coldata[3].."@0͵�����ҵ�@2"..coldata[5].."@0������������ȥ�����һ�������������!")
			LuaSetTask(coldata[4],1) --��������
			if(LuaQueryTask("color2")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type2")==3)then
			local coldata={AutoFind(3,level,1)}
			LuaSetTask("task2type3col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("����������ڲ��ż����㽫������@4"..coldata[2].."@0��@3"..coldata[3].."@0���ɲ�ҪŪ����Ŷ@!")
			LuaGive("o_mission426",1)--��������
			LuaSetTask(coldata[4],1)
			if(LuaQueryTask("color2")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type2")==4)then
			local coldata={AutoFind(4,level,1)}
			LuaSetTask("task2type4col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("��������ս�³Խ����ż�Ҳ������ô��ȫ�����ǻ��˱Ƚϰ�ȫ����ȥ��@4"..coldata[2].."@0��@3"..coldata[3].."@0�ӻ�������%��#����&(&��")
			LuaSetTask(coldata[4],1)
			if(LuaQueryTask("color2")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type2")==5)then
			local coldata={AutoFind(5,level,1)}
			LuaSetTask("task2type5col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("���������������ź��̻𣬵�@4"..coldata[2].."@0ȥȼ�ţ�֪ͨ���о��Ӽ��ᣬ��������һ���İ���")
			LuaGive("e_mission426",1)--�ź��̻�
			LuaSetTask("task2type5map",coldata[3])--�����ͼ����
			LuaSetTask(coldata[4],1)
			if(LuaQueryTask("color2")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type2")==6)then
			local level=LuaQuery("level")
			local coldata={AutoFind(6,level,1)}
			local r=LuaRandom(level)+1
			LuaSetTask("task2type6col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("��������������Ѱ��һ����@3"..r.."��@0����5������Ҳ�һͬ���ǰ������")
			LuaSay("����񣺱����Һ�41������5������ң���ô���ҵ�36-47�ȼ���������ұ���������")
			LuaSetTask("task2level",r)
			if(LuaQueryTask("color2")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type2")==7)then
			local coldata={AutoFind(7,level,1)}
			LuaSetTask("task2type7col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("�����"..coldata[5].."����ȥ�����ռ�@2"..coldata[4].."��"..coldata[3].."@0�������һظ���")
			if(LuaQueryTask("color2")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		end
		LuaSetTask("task2",1)
		UpdateMenu()
	elseif(LuaQueryTask("task2")==1)then	
			if(LuaQueryTask("type2")==1)then
				local coldata={AutoFind(0,1,LuaQueryTask("task2type2col"))}
				if(LuaQueryTask(coldata[5])>coldata[4])then
					local color
					if(LuaQueryTask("color2")==0)then 
						color=5
					elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
						color=4
					elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
						color=3
					elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					LuaDelTask(coldata[5]) --���������
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task2",99)
					LuaSetTask("color2",99)
					LuaDelTask("task2type2col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ�����������ȥȥ"..coldata[2].."ȥ��ɱ"..coldata[4].."ֻ"..coldata[3].."������δ���")
					if(LuaQueryTask("color2")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			elseif(LuaQueryTask("type2")==2)then
				local coldata={AutoFind(0,0,LuaQueryTask("task2type2col"))}
				if(LuaItemCount("o_mission427")==1)then --���齣��
					local color
					if(LuaQueryTask("color2")==0)then 
						color=5
					elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
						color=4
					elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
						color=3
					elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					DelItem("o_mission427",1)
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task2",99)
					LuaSetTask("color2",99)
					LuaDelTask("task2type2col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ����������Ǵ�@4"..coldata[2].."@0��@2"..coldata[3].."@0�����һ��ҵ�@2"..coldata[5].."@0������δ���")
					if(LuaQueryTask("color2")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			elseif(LuaQueryTask("type2")==3)then
				local coldata={AutoFind(0,1,LuaQueryTask("task2type3col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color2")==0)then 
						color=5
					elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
						color=4
					elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
						color=3
					elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaDelTask(coldata[4])
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task2",99)
					LuaSetTask("color2",99)
					LuaDelTask("task2type3col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ����������ǽ��Ҹ�����ż��͸�@4"..coldata[2].."@0��@3"..coldata[3].."@0���㻹δ���Ŷ")
					if(LuaQueryTask("color2")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			elseif(LuaQueryTask("type2")==4)then
				local coldata={AutoFind(0,0,LuaQueryTask("task2type4col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color2")==0)then 
						color=5
					elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
						color=4
					elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
						color=3
					elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaDelTask(coldata[4])
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task2",99)
					LuaSetTask("color2",99)
					LuaDelTask("task2type4col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ����������Ǹ�@4"..coldata[2].."@0��@3"..coldata[3].."@0�ӻ�..........���㻹δ���Ŷ")
					if(LuaQueryTask("color2")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			elseif(LuaQueryTask("type2")==5)then
				local coldata={AutoFind(0,1,LuaQueryTask("task2type5col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color2")==0)then 
						color=5
					elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
						color=4
					elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
						color=3
					elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaDelTask(coldata[4])
					LuaDelTask("task2type5map")
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task2",99)
					LuaSetTask("color2",99)
					LuaDelTask("task2type5col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ����������ǵ�@4"..coldata[2].."@0ȥȼ��@2�ź��̻�@0,������ӣ�����δ���")
					if(LuaQueryTask("color2")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			
			elseif(LuaQueryTask("type2")==6)then
				local coldata={AutoFind(0,1,LuaQueryTask("task2type6col"))}
				local Teamlevel=LuaQueryTask("task2level")
				if(TeamCount()==2)then
					if((Teamlevel-TeamQuery("level"))*(Teamlevel-TeamQuery("level"))<=25)then
						local color
					if(LuaQueryTask("color2")==0)then 
						color=5
					elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
						color=4
					elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
						color=3
					elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					GiveAward(LuaQuery("level"),coldata[7],color,a)
						LuaDelTask("coldata[2]")
						LuaDelTask(coldata[6]) --������ɫ
						LuaSetTask("task2",99)
						LuaSetTask("color2",99)
						LuaDelTask("task2type6col")
						LuaAddTask("allnum",1)
						UpdateMenu()
					else
						LuaSay("��ʾ�����������Ѱ��һ����@3"..Teamlevel.."��@0����5������Ҳ�һͬ���ǰ�����ң�����δ���")
						if(LuaQueryTask("color2")==0)then 
							LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
						elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
							LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
						elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
							LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
						elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
							LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
						else
							LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
						end
					end
				else
					LuaSay("��ʾ�����������Ѱ��һ����@3"..LuaQueryTask(coldata[2]).."��@0����5������Ҳ�һͬ���ǰ�����ң��������鶼û�У���ô���������@!")
					if(LuaQueryTask("color2")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			elseif(LuaQueryTask("type2")==7)then
				local coldata={AutoFind(0,1,LuaQueryTask("task2type7col"))}	
				if(LuaItemStatusNormalCount(coldata[2])>=coldata[4])then
					local color
					if(LuaQueryTask("color2")==0)then 
						color=5
					elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
						color=4
					elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
						color=3
					elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					DelItem(coldata[2],coldata[4])
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task2",99)
					LuaSetTask("color2",99)
					LuaDelTask("task2type6col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ�����������ȥ�����ռ�@2"..coldata[4].."��"..coldata[3].."@0���㻹δ���")
					if(LuaQueryTask("color2")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color2")==1 or LuaQueryTask("color2")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color2")==3 or LuaQueryTask("color2")==4 or LuaQueryTask("color2")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color2")==6 or LuaQueryTask("color2")==7 or LuaQueryTask("color2")==8 or LuaQueryTask("color2")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			end
	elseif(LuaQueryTask("task2")==99)then
		LuaSay("��ʾ�����Ѿ���ɸ����񣬵�����������֮���µ�����˵������Զ�ˢ��")
	end
elseif(answer=="task3")then
	--LuaSay("����������"..LuaQueryTask("task3").."")
	local level=LuaQuery("level")
	if(LuaQueryTask("task3")==0)then
		if(LuaQueryTask("type3")==1)then
			local coldata={AutoFind(1,level,1)}
			LuaSetTask("task3type3col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("����񣺵���ս�����ģ����й����ûΣ�����������ȥ@4"..coldata[2].."@0ȥ��ɱ@3"..coldata[4].."@0ֻ@2"..coldata[3].."@0�ɣ��Ա������صİ�ȫ��")
			LuaSetTask(coldata[5],1)
			if(LuaQueryTask("color3")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type3")==2)then
			local coldata={AutoFind(2,level,1)}
			LuaSetTask("task3type2col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("����񣺹�����ǲ�Ᵽ����@4"..coldata[2].."@0��@2"..coldata[3].."@0͵�����ҵ�@2"..coldata[5].."@0������������ȥ�����һ�������������!")
			LuaSetTask(coldata[4],1) --��������
			if(LuaQueryTask("color3")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type3")==3)then
			local coldata={AutoFind(3,level,1)}
			LuaSetTask("task3type3col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("����������ڲ��ż����㽫������@4"..coldata[2].."@0��@3"..coldata[3].."@0���ɲ�ҪŪ����Ŷ@!")
			LuaGive("o_mission426",1)--��������
			LuaSetTask(coldata[4],1)
			if(LuaQueryTask("color3")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type3")==4)then
			local coldata={AutoFind(4,level,1)}
			LuaSetTask("task3type4col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("��������ս�³Խ����ż�Ҳ������ô��ȫ�����ǻ��˱Ƚϰ�ȫ����ȥ��@4"..coldata[2].."@0��@3"..coldata[3].."@0�ӻ�������%��#��")
			LuaSetTask(coldata[4],1)
			if(LuaQueryTask("color3")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type3")==5)then
			local coldata={AutoFind(5,level,1)}
			LuaSetTask("task3type5col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("���������������ź��̻𣬵�@4"..coldata[2].."@0ȥȼ�ţ�֪ͨ���о��Ӽ��ᣬ��������һ���İ���")
			LuaGive("e_mission427",1)--�ź��̻�
			LuaSetTask("task3type5map",coldata[3])--�����ͼ����
			LuaSetTask(coldata[4],1)
			if(LuaQueryTask("color3")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type3")==6)then
			local level=LuaQuery("level")
			local coldata={AutoFind(6,level,1)}
			local r=LuaRandom(level)+1
			LuaSetTask("task3type6col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("��������������Ѱ��һ����@3"..r.."��@0����5������Ҳ�һͬ���ǰ������")
			LuaSay("����񣺱����Һ�41������5������ң���ô���ҵ�36-47�ȼ���������ұ���������")
			LuaSetTask("task3level",r)
			if(LuaQueryTask("color3")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type3")==7)then
			local coldata={AutoFind(7,level,1)}
			LuaSetTask("task3type7col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("�����"..coldata[5].."����ȥ�����ռ�@2"..coldata[4].."��"..coldata[3].."@0�������һظ���")
			if(LuaQueryTask("color3")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		end
		LuaSetTask("task3",1)
		UpdateMenu()
	elseif(LuaQueryTask("task3")==1)then
			if(LuaQueryTask("type3")==1)then
				local coldata={AutoFind(0,1,LuaQueryTask("task3type3col"))}
				if(LuaQueryTask(coldata[5])>coldata[4])then
					local color
					if(LuaQueryTask("color3")==0)then 
						color=5
					elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
						color=4
					elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
						color=3
					elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaDelTask(coldata[5]) --���������
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task3",99)
					LuaSetTask("color3",99)
					LuaDelTask("task3type3col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ�����������ȥȥ"..coldata[2].."ȥ��ɱ"..coldata[4].."ֻ"..coldata[3].."������δ���")
					if(LuaQueryTask("color3")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			elseif(LuaQueryTask("type3")==2)then
				local coldata={AutoFind(0,0,LuaQueryTask("task3type2col"))}
				if(LuaItemCount("o_mission427")==1)then --���齣��
					local color
					if(LuaQueryTask("color3")==0)then 
						color=5
					elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
						color=4
					elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
						color=3
					elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					DelItem("o_mission427",1)
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task3",99)
					LuaSetTask("color3",99)
					LuaDelTask("task3type2col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ����������Ǵ�@4"..coldata[2].."@0��@2"..coldata[3].."@0�����һ��ҵ�@2"..coldata[5].."@0������δ���")
					if(LuaQueryTask("color3")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			elseif(LuaQueryTask("type3")==3)then
				local coldata={AutoFind(0,1,LuaQueryTask("task3type3col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color3")==0)then 
						color=5
					elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
						color=4
					elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
						color=3
					elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaDelTask(coldata[4])
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task3",99)
					LuaSetTask("color3",99)
					LuaDelTask("task3type3col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ����������ǽ��Ҹ�����ż��͸�@4"..coldata[2].."@0��@3"..coldata[3].."@0���㻹δ���Ŷ")
					if(LuaQueryTask("color3")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			elseif(LuaQueryTask("type3")==4)then
				local coldata={AutoFind(0,0,LuaQueryTask("task3type4col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color3")==0)then 
						color=5
					elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
						color=4
					elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
						color=3
					elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaDelTask(coldata[4])
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task3",99)
					LuaSetTask("color3",99)
					LuaDelTask("task3type4col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ����������Ǹ�@4"..coldata[2].."@0��@3"..coldata[3].."@0�ӻ�..........���㻹δ���Ŷ")
					if(LuaQueryTask("color3")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			elseif(LuaQueryTask("type3")==5)then
				local coldata={AutoFind(0,1,LuaQueryTask("task3type5col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color3")==0)then 
						color=5
					elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
						color=4
					elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
						color=3
					elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaDelTask(coldata[4])
					LuaDelTask("task3type5map")
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task3",99)
					LuaSetTask("color3",99)
					LuaDelTask("task3type5col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ����������ǵ�@4"..coldata[2].."@0ȥȼ��@2�ź��̻�@0,������ӣ�����δ���")
					if(LuaQueryTask("color3")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			
			elseif(LuaQueryTask("type3")==6)then
				local coldata={AutoFind(0,1,LuaQueryTask("task3type6col"))}
				local Teamlevel=LuaQueryTask("task3level")
				if(TeamCount()==2)then
					if((Teamlevel-TeamQuery("level"))*(Teamlevel-TeamQuery("level"))<=25)then
						local color
					if(LuaQueryTask("color3")==0)then 
						color=5
					elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
						color=4
					elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
						color=3
					elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					GiveAward(LuaQuery("level"),coldata[7],color,a)
						LuaDelTask("coldata[2]")
						LuaDelTask(coldata[6]) --������ɫ
						LuaSetTask("task3",99)
						LuaSetTask("color3",99)
						LuaDelTask("task3type6col")
						LuaAddTask("allnum",1)
						UpdateMenu()
					else
						LuaSay("��ʾ�����������Ѱ��һ����@3"..Teamlevel.."��@0����5������Ҳ�һͬ���ǰ�����ң�����δ���")
						if(LuaQueryTask("color3")==0)then 
							LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
						elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
							LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
						elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
							LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
						elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
							LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
						else
							LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
						end
					end
				else
					LuaSay("��ʾ�����������Ѱ��һ����@3"..Teamlevel.."��@0����5������Ҳ�һͬ���ǰ�����ң��������鶼û�У���ô���������@!")
					if(LuaQueryTask("color3")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			elseif(LuaQueryTask("type3")==7)then
				local coldata={AutoFind(0,1,LuaQueryTask("task3type7col"))}	
				if(LuaItemStatusNormalCount(coldata[2])>=coldata[4])then
					local color
					if(LuaQueryTask("color3")==0)then 
						color=5
					elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
						color=4
					elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
						color=3
					elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					DelItem(coldata[2],coldata[4])
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task3",99)
					LuaSetTask("color3",99)
					LuaDelTask("task3type6col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ�����������ȥ�����ռ�@2"..coldata[4].."��"..coldata[3].."@0���㻹δ���")
					if(LuaQueryTask("color3")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color3")==1 or LuaQueryTask("color3")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color3")==3 or LuaQueryTask("color3")==4 or LuaQueryTask("color3")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color3")==6 or LuaQueryTask("color3")==7 or LuaQueryTask("color3")==8 or LuaQueryTask("color3")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			end
	elseif(LuaQueryTask("task3")==99)then
		LuaSay("��ʾ�����Ѿ���ɸ����񣬵�����������֮���µ�����˵������Զ�ˢ��")
	end
elseif(answer=="task4")then
	--LuaSay("���ĸ�����"..LuaQueryTask("task4").."")
	local level=LuaQuery("level")
	if(LuaQueryTask("task4")==0)then
		if(LuaQueryTask("type4")==1)then
			local coldata={AutoFind(1,level,1)}
			LuaSetTask("task4type4col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("����񣺵���ս�����ģ����й����ûΣ�����������ȥ@4"..coldata[2].."@0ȥ��ɱ@3"..coldata[4].."@0ֻ@2"..coldata[3].."@0�ɣ��Ա������صİ�ȫ��")
			LuaSetTask(coldata[5],1)
			if(LuaQueryTask("color4")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type4")==2)then
			local coldata={AutoFind(2,level,1)}
			LuaSetTask("task4type2col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("����񣺹�����ǲ�Ᵽ����@4"..coldata[2].."@0��@2"..coldata[3].."@0͵�����ҵ�@2"..coldata[5].."@0������������ȥ�����һ�������������!")
			LuaSetTask(coldata[4],1) --��������
			if(LuaQueryTask("color4")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type4")==3)then
			local coldata={AutoFind(3,level,1)}
			LuaSetTask("task4type3col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("����������ڲ��ż����㽫������@4"..coldata[2].."@0��@3"..coldata[3].."@0���ɲ�ҪŪ����Ŷ@!")
			LuaGive("o_mission426",1)--��������
			LuaSetTask(coldata[4],1)
			if(LuaQueryTask("color4")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type4")==4)then
			local coldata={AutoFind(4,level,1)}
			LuaSetTask("task4type4col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("��������ս�³Խ����ż�Ҳ������ô��ȫ�����ǻ��˱Ƚϰ�ȫ����ȥ��@4"..coldata[2].."@0��@3"..coldata[3].."@0�ӻ�������%��#��")
			LuaSetTask(coldata[4],1)
			if(LuaQueryTask("color4")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type4")==5)then
			local coldata={AutoFind(5,level,1)}
			LuaSetTask("task4type5col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("���������������ź��̻𣬵�@4"..coldata[2].."@0ȥȼ�ţ�֪ͨ���о��Ӽ��ᣬ��������һ���İ���")
			LuaGive("e_mission428",1)--�ź��̻�
			LuaSetTask("task4type5map",coldata[3])--�����ͼ����
			LuaSetTask(coldata[4],1)
			if(LuaQueryTask("color4")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type4")==6)then
			local level=LuaQuery("level")
			local coldata={AutoFind(6,level,1)}
			local r=LuaRandom(level)+1
			LuaSetTask("task4type6col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("��������������Ѱ��һ����@3"..r.."��@0����5������Ҳ�һͬ���ǰ������")
			LuaSay("����񣺱����Һ�41������5������ң���ô���ҵ�36-47�ȼ���������ұ���������")
			LuaSetTask("task4level",r)
			if(LuaQueryTask("color4")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type4")==7)then
			local coldata={AutoFind(7,level,1)}
			LuaSetTask("task4type7col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("�����"..coldata[5].."����ȥ�����ռ�@2"..coldata[4].."��"..coldata[3].."@0�������һظ���")
			if(LuaQueryTask("color4")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
				LuaSay("@1������ɫ��@3��")
			elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
				LuaSay("@1������ɫ��@5��")
			elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		end
		LuaSetTask("task4",1)
		UpdateMenu()
	elseif(LuaQueryTask("task4")==1)then
			if(LuaQueryTask("type4")==1)then
				local coldata={AutoFind(0,1,LuaQueryTask("task4type4col"))}
				if(LuaQueryTask(coldata[5])>coldata[4])then
					local color
					if(LuaQueryTask("color4")==0)then 
						color=5
					elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
						color=4
					elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
						color=3
					elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaDelTask(coldata[5]) --���������
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task4",99)
					LuaSetTask("color4",99)
					LuaDelTask("task4type4col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ�����������ȥȥ"..coldata[2].."ȥ��ɱ"..coldata[4].."ֻ"..coldata[3].."������δ���")
					if(LuaQueryTask("color4")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			elseif(LuaQueryTask("type4")==2)then
				local coldata={AutoFind(0,0,LuaQueryTask("task4type2col"))}
				if(LuaItemCount("o_mission427")==1)then --���齣��
					local color
					if(LuaQueryTask("color4")==0)then 
						color=5
					elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
						color=4
					elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
						color=3
					elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					DelItem("o_mission427",1)
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task4",99)
					LuaSetTask("color4",99)
					LuaDelTask("task4type2col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ����������Ǵ�@4"..coldata[2].."@0��@2"..coldata[3].."@0�����һ��ҵ�@2"..coldata[5].."@0������δ���")
					if(LuaQueryTask("color4")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			elseif(LuaQueryTask("type4")==3)then
				local coldata={AutoFind(0,1,LuaQueryTask("task4type3col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color4")==0)then 
						color=5
					elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
						color=4
					elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
						color=3
					elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					LuaDelTask(coldata[4])
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task4",99)
					LuaSetTask("color4",99)
					LuaDelTask("task4type3col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ����������ǽ��Ҹ�����ż��͸�@4"..coldata[2].."@0��@3"..coldata[3].."@0���㻹δ���Ŷ")
					if(LuaQueryTask("color4")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			elseif(LuaQueryTask("type4")==4)then
				local coldata={AutoFind(0,0,LuaQueryTask("task4type4col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color4")==0)then 
						color=5
					elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
						color=4
					elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
						color=3
					elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					LuaDelTask(coldata[4])
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task4",99)
					LuaSetTask("color4",99)
					LuaDelTask("task4type4col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ����������Ǹ�@4"..coldata[2].."@0��@3"..coldata[3].."@0�ӻ�..........���㻹δ���Ŷ")
					if(LuaQueryTask("color4")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			elseif(LuaQueryTask("type4")==5)then
				local coldata={AutoFind(0,1,LuaQueryTask("task4type5col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color4")==0)then 
						color=5
					elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
						color=4
					elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
						color=3
					elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					LuaDelTask(coldata[4])
					LuaDelTask("task4type5map")
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task4",99)
					LuaSetTask("color4",99)
					LuaDelTask("task4type5col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ����������ǵ�@4"..coldata[2].."@0ȥȼ��@2�ź��̻�@0,������ӣ�����δ���")
					if(LuaQueryTask("color4")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			
			elseif(LuaQueryTask("type4")==6)then
				local coldata={AutoFind(0,1,LuaQueryTask("task4type6col"))}
				local Teamlevel=LuaQueryTask("task4level")
				if(TeamCount()==2)then
					if((Teamlevel-TeamQuery("level"))*(Teamlevel-TeamQuery("level"))<=25)then
						local color
					if(LuaQueryTask("color4")==0)then 
						color=5
					elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
						color=4
					elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
						color=3
					elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
						LuaDelTask("coldata[2]")
						LuaDelTask(coldata[6]) --������ɫ
						LuaSetTask("task4",99)
						LuaSetTask("color4",99)
						LuaDelTask("task4type6col")
						LuaAddTask("allnum",1)
						UpdateMenu()
					else
						LuaSay("��ʾ�����������Ѱ��һ����@3"..Teamlevel.."��@0����5������Ҳ�һͬ���ǰ�����ң�����δ���")
						if(LuaQueryTask("color4")==0)then 
							LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
						elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
							LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
						elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
							LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
						elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
							LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
						else
							LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
						end
					end
				else
					LuaSay("��ʾ�����������Ѱ��һ����@3"..LuaQueryTask(coldata[2]).."��@0����5������Ҳ�һͬ���ǰ�����ң��������鶼û�У���ô���������@!")
					if(LuaQueryTask("color4")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			elseif(LuaQueryTask("type4")==7)then
				local coldata={AutoFind(0,1,LuaQueryTask("task4type7col"))}	
				if(LuaItemStatusNormalCount(coldata[2])>=coldata[4])then
					local color
					if(LuaQueryTask("color4")==0)then 
						color=5
					elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
						color=4
					elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
						color=3
					elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					DelItem(coldata[2],coldata[4])
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task4",99)
					LuaSetTask("color4",99)
					LuaDelTask("task4type6col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ�����������ȥ�����ռ�@2"..coldata[4].."��"..coldata[3].."@0���㻹δ���")
					if(LuaQueryTask("color4")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color4")==1 or LuaQueryTask("color4")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color4")==3 or LuaQueryTask("color4")==4 or LuaQueryTask("color4")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color4")==6 or LuaQueryTask("color4")==7 or LuaQueryTask("color4")==8 or LuaQueryTask("color4")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			end
	elseif(LuaQueryTask("task4")==99)then
		LuaSay("��ʾ�����Ѿ���ɸ����񣬵�����������֮���µ�����˵������Զ�ˢ��")
	end
elseif(answer=="task5")then
	--LuaSay("���������"..LuaQueryTask("task5").."")
	local level=LuaQuery("level")
	if(LuaQueryTask("task5")==0)then
		if(LuaQueryTask("type5")==1)then
			local coldata={AutoFind(1,level,1)}
			LuaSetTask("task5type5col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("����񣺵���ս�����ģ����й����ûΣ�����������ȥ@4"..coldata[2].."@0ȥ��ɱ@3"..coldata[4].."@0ֻ@2"..coldata[3].."@0�ɣ��Ա������صİ�ȫ��")
			LuaSetTask(coldata[5],1)
			if(LuaQueryTask("color5")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type5")==2)then
			local coldata={AutoFind(2,level,1)}
			LuaSetTask("task5type2col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("����񣺹�����ǲ�Ᵽ����@4"..coldata[2].."@0��@2"..coldata[3].."@0͵�����ҵ�@2"..coldata[5].."@0������������ȥ�����һ�������������!")
			LuaSetTask(coldata[4],1) --��������
			if(LuaQueryTask("color5")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type5")==3)then
			local coldata={AutoFind(3,level,1)}
			LuaSetTask("task5type3col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("����������ڲ��ż����㽫������@4"..coldata[2].."@0��@3"..coldata[3].."@0���ɲ�ҪŪ����Ŷ@!")
			LuaGive("o_mission426",1)--��������
			LuaSetTask(coldata[4],1)
			if(LuaQueryTask("color5")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type5")==4)then
			local coldata={AutoFind(4,level,1)}
			LuaSetTask("task5type4col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("��������ս�³Խ����ż�Ҳ������ô��ȫ�����ǻ��˱Ƚϰ�ȫ����ȥ��@4"..coldata[2].."@0��@3"..coldata[3].."@0�ӻ�������%��#��")
			LuaSetTask(coldata[4],1)
			if(LuaQueryTask("color5")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type5")==5)then
			local coldata={AutoFind(5,level,1)}
			LuaSetTask("task5type5col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("���������������ź��̻𣬵�@4"..coldata[2].."@0ȥȼ�ţ�֪ͨ���о��Ӽ��ᣬ��������һ���İ���")
			LuaGive("e_mission429",1)--�ź��̻�
			LuaSetTask("task5type5map",coldata[3])--�����ͼ����
			LuaSetTask(coldata[4],1)
			if(LuaQueryTask("color5")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type5")==6)then
			local level=LuaQuery("level")
			local coldata={AutoFind(6,level,1)}
			local r=LuaRandom(level)+1
			LuaSetTask("task5type6col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("��������������Ѱ��һ����@3"..r.."��@0����5������Ҳ�һͬ���ǰ������")
			LuaSay("����񣺱����Һ�41������5������ң���ô���ҵ�36-47�ȼ���������ұ���������")
			LuaSetTask("task5level",r)
			if(LuaQueryTask("color5")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		elseif(LuaQueryTask("type5")==7)then
			local coldata={AutoFind(7,level,1)}
			LuaSetTask("task5type7col",coldata[1])
			for i=1,5,1 do
				if(LuaQueryTask("Tfjtxnumber"..i.."")==0)then
					LuaSetTask("Tfjtxnumber"..i.."",coldata[1])
					break
				end
			end
			LuaSay("�����"..coldata[5].."����ȥ�����ռ�@2"..coldata[4].."��"..coldata[3].."@0�������һظ���")
			if(LuaQueryTask("color5")==0)then   --�����������ɫ����ȷ���������Ķ��� 
				LuaSetTask(coldata[6],5)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
			elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
				LuaSetTask(coldata[6],4)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
			elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
				LuaSetTask(coldata[6],3)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
			elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
				LuaSetTask(coldata[6],2)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
			else
				LuaSetTask(coldata[6],1)
				LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
			end
		end
		LuaSetTask("task5",1)
		UpdateMenu()
	elseif(LuaQueryTask("task5")==1)then
			if(LuaQueryTask("type5")==1)then
				local coldata={AutoFind(0,1,LuaQueryTask("task5type5col"))}
				if(LuaQueryTask(coldata[5])>coldata[4])then
					local color
					if(LuaQueryTask("color5")==0)then 
						color=5
					elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
						color=4
					elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
						color=3
					elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					LuaDelTask(coldata[5]) --���������
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task5",99)
					LuaSetTask("color5",99)
					LuaDelTask("task5type5col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ�����������ȥȥ"..coldata[2].."ȥ��ɱ"..coldata[4].."ֻ"..coldata[3].."������δ���")
					if(LuaQueryTask("color5")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			elseif(LuaQueryTask("type5")==2)then
				local coldata={AutoFind(0,0,LuaQueryTask("task5type2col"))}
				if(LuaItemCount("o_mission427")==1)then --���齣��
					local color
					if(LuaQueryTask("color5")==0)then 
						color=5
					elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
						color=4
					elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
						color=3
					elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					DelItem("o_mission427",1)
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task5",99)
					LuaSetTask("color5",99)
					LuaDelTask("task5type2col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ����������Ǵ�@4"..coldata[2].."@0��@2"..coldata[3].."@0�����һ��ҵ�@2"..coldata[5].."@0������δ���")
					if(LuaQueryTask("color5")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			elseif(LuaQueryTask("type5")==3)then
				local coldata={AutoFind(0,1,LuaQueryTask("task5type3col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color5")==0)then 
						color=5
					elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
						color=4
					elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
						color=3
					elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					LuaDelTask(coldata[4])
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task5",99)
					LuaSetTask("color5",99)
					LuaDelTask("task5type3col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ����������ǽ��Ҹ�����ż��͸�@4"..coldata[2].."@0��@3"..coldata[3].."@0���㻹δ���Ŷ")
					if(LuaQueryTask("color5")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			elseif(LuaQueryTask("type5")==4)then
				local coldata={AutoFind(0,0,LuaQueryTask("task5type4col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color5")==0)then 
						color=5
					elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
						color=4
					elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
						color=3
					elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					LuaDelTask(coldata[4])
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task5",99)
					LuaSetTask("color5",99)
					LuaDelTask("task5type4col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ����������Ǹ�@4"..coldata[2].."@0��@3"..coldata[3].."@0�ӻ�..........���㻹δ���Ŷ")
					if(LuaQueryTask("color5")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			elseif(LuaQueryTask("type5")==5)then
				local coldata={AutoFind(0,1,LuaQueryTask("task5type5col"))}
				if(LuaQueryTask(coldata[4])==2)then
					local color
					if(LuaQueryTask("color5")==0)then 
						color=5
					elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
						color=4
					elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
						color=3
					elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					LuaDelTask(coldata[4])
					LuaDelTask("task5type5map")
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task5",99)
					LuaSetTask("color5",99)
					LuaDelTask("task5type5col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ����������ǵ�@4"..coldata[2].."@0ȥȼ��@2�ź��̻�@0,������ӣ�����δ���")
					if(LuaQueryTask("color5")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			
			elseif(LuaQueryTask("type5")==6)then
				local coldata={AutoFind(0,1,LuaQueryTask("task5type6col"))}
				local Teamlevel=LuaQueryTask("task5level")
				if(TeamCount()==2)then
					if((Teamlevel-TeamQuery("level"))*(Teamlevel-TeamQuery("level"))<=25)then
						local color
					if(LuaQueryTask("color5")==0)then 
						color=5
					elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
						color=4
					elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
						color=3
					elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
						LuaDelTask("coldata[2]")
						LuaDelTask(coldata[6]) --������ɫ
						LuaSetTask("task5",99)
						LuaSetTask("color5",99)
						LuaDelTask("task5type6col")
						LuaAddTask("allnum",1)
						UpdateMenu()
					else
						LuaSay("��ʾ�����������Ѱ��һ����@3"..Teamlevel.."��@0����5������Ҳ�һͬ���ǰ�����ң�����δ���")
						if(LuaQueryTask("color5")==0)then 
							LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
						elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
							LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
						elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
							LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
						elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
							LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
						else
							LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
						end
					end
				else
					LuaSay("��ʾ�����������Ѱ��һ����@3"..Teamlevel.."��@0����5������Ҳ�һͬ���ǰ�����ң��������鶼û�У���ô���������@!")
					if(LuaQueryTask("color5")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			elseif(LuaQueryTask("type5")==7)then
				local coldata={AutoFind(0,1,LuaQueryTask("task5type7col"))}	
				if(LuaItemStatusNormalCount(coldata[2])>=coldata[4])then
					local color
					if(LuaQueryTask("color5")==0)then 
						color=5
					elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
						color=4
					elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
						color=3
					elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
						color=2
					else
						color=1
					end
					local a = LuaQueryTask("allnum")+1
					--local exp=50000+LuaQuery("level")*LuaQuery("level")*color*coldata[7]
					GiveAward(LuaQuery("level"),coldata[7],color,a)
					LuaSay("��ϲ������˽���ĵ�@3"..a.."@0��������")
					DelItem(coldata[2],coldata[4])
					LuaDelTask(coldata[6]) --������ɫ
					LuaSetTask("task5",99)
					LuaSetTask("color5",99)
					LuaDelTask("task5type6col")
					LuaAddTask("allnum",1)
					UpdateMenu()
				else
					LuaSay("@1��ʾ�����������ȥ�����ռ�@2"..coldata[4].."��"..coldata[3].."@0���㻹δ���")
					if(LuaQueryTask("color5")==0)then 
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@2��")
					elseif(LuaQueryTask("color5")==1 or LuaQueryTask("color5")==2)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@3��")
					elseif(LuaQueryTask("color5")==3 or LuaQueryTask("color5")==4 or LuaQueryTask("color5")==5)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@5��")
					elseif(LuaQueryTask("color5")==6 or LuaQueryTask("color5")==7 or LuaQueryTask("color5")==8 or LuaQueryTask("color5")==9)then
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0@7��")
					else
						LuaSay("@1�����Ѷȣ�@0@3"..coldata[7].."@0*@1������ɫ��@0��")
					end
				end
			end
	elseif(LuaQueryTask("task5")==99)then
		LuaSay("��ʾ�����Ѿ���ɸ����񣬵�����������֮���µ�����˵������Զ�ˢ��")
	end

elseif(answer=="Tfjtx_sm")then---��@2����@3����@5����@7����
	LuaSay("������ÿ���б�Ϊ����ʾ5���������񹲷�Ϊ5����ɫ��@2��ɫ@0��@3��ɫ@0��@5��ɫ@0��@7��ɫ@0����ɫ")
	LuaSay("@2��ɫ@0��������ߣ�@3��ɫ@0��֮����ɫ��ͣ���Ȼ���鲻�����������ɫ�йأ����������Ѷ���ҵȼ���ء�")
	LuaSay("�����б�����������֮�����ʾ@9��ɫ@0���������ȫ�����֮������˵����Զ�ˢ�£�������һ�֡�")
	--LuaSay("ȫ��ˢ�������б�����Ѿ���������ֻ��Ҫʹ��һ�Ż�������裬�Ϳ���ˢ�������б���ɫ��Ŷ��")
	LuaSay("ȫ�����������ƣ�ֻҪ�����Ķ࣬װ�����������������У����л����úϳ��顣")
	LuaSay("ȫ��������ѡ��ģʽҲ�Ѿ�������������Ķ���һ����ͳһOL��")
	if(LuaQueryTask("Refresh")==0)then
		AddMenuItem("@7����ģʽ","")
		AddMenuItem("����ģʽ","Tfjtx_jytype")
		AddMenuItem("ͭ��ģʽ","Tfjtx_tbtype")
	else
		LuaSay("��ʾ��������Ѿ�ת�����˽���ģʽ")
	end


elseif(answer=="Tfjtx_jytype")then --����ģʽ 0
	LuaDelTask("Refresh")
	LuaSay("@1��ʾ����ѡ���˾���ģʽ���ٴε���˵����ɿ�ʼ����")
elseif(answer=="Tfjtx_tbtype")then --����ģʽ 0
	LuaSetTask("Refresh",1)
	LuaSay("@1��ʾ����ѡ����ͭ��ģʽ���ٴε���˵����ɿ�ʼ����")

--�������½���

--��ڽ�ɽѭ����ʼ
elseif(answer=="T385")then
	local level= LuaQuery("level")
	if(LuaQueryStrTask("T385day")~=GetCurrentDay() or LuaQueryTask("T385hour")~=GetCurrentHour())then
		LuaDelTask("T385")
		LuaDelTask("T385num")
		LuaSay("@5��ʾ�������ڱ�Сʱ�����������Զ�����")
		UpdateMenu()
	end

	if(TeamCount()==2)then
		if(LuaQueryTask("T385num")<=10)then
			if(TeamQuery("level")>=30)then
				if(TeamQueryTask("T385num")<=10)then
					if(LuaQueryTask("T385")==0 or LuaQueryTask("T385")==99)then
						if(LuaQueryTask("T385hour")~=GetCurrentHour() or LuaQueryStrTask("T385day")~=GetCurrentDay())then
							if(TeamQueryTask("T385")==0 or TeamQueryTask("T385")==99)then
								coldata={AutoSearchTask_NPC(0)}
								LuaSetTask("T385col",coldata[1])
								LuaSay("�����������������꣬����ʤ�����գ��㽫�⸱@2"..coldata[4].."@0����"..coldata[2].."��"..coldata[3].."�ɣ�����Ҳ�˽�������ս�����ơ�")
								LuaSay("�����ͬʱ��Ҳ�Ὣ@2"..coldata[5].."@0������Ķ�����������һͬ��ȥ��"..coldata[3].."�������¾�֮����Ϳ�����������ȡ������Ŷ")
								LuaGive(coldata[6],1)
								LuaSetTask("T385S",1)
								LuaSetTask(coldata[8],1)
								LuaSetTask("T385",1)
								LuaSetTask("T385day",GetCurrentDay())
								LuaSetTask("T385hour",GetCurrentHour())
								UpdateMenu()
							elseif(TeamQueryTask("T385")==1)then
								if(TeamQueryTask("T385S")==1)then
									coldata1={AutoSearchTask_NPC(TeamQueryTask("T385col"))}
									LuaSetTask("T385col",coldata1[1])
									LuaSay("�����������������꣬����ʤ�����գ��㽫�⸱@2"..coldata1[5].."@0������"..coldata1[2].."��"..coldata1[3].."�ɡ���")
									LuaSay("��������Ѿ����Ͼ�������Ķ��ѣ������һͬ�͵�"..coldata1[3].."����ȥ��"..coldata1[3].."�������¾�֮����Ϳ�����������ȡ������Ŷ")
									LuaGive(coldata1[7],1)
									LuaSetTask("T385X",1)
									LuaSetTask(coldata1[8],2)
									LuaSetTask("T385",1)
									LuaSetTask("T385day",GetCurrentDay())
									LuaSetTask("T385hour",GetCurrentHour())
									UpdateMenu()
								elseif(TeamQueryTask("T385X")==1)then
									coldata1={AutoSearchTask_NPC(TeamQueryTask("T385col"))}
									LuaSetTask("T385col",coldata1[1])
									LuaSay("�����������������꣬����ʤ�����գ��㽫�⸱@2"..coldata1[4].."@0����"..coldata1[2].."��"..coldata1[3].."�ɣ�����Ҳ�˽�������ս�����ơ�")
									LuaSay("��������Ѿ���@2"..coldata1[5].."@0������Ķ�����������һͬ��ȥ��"..coldata1[3].."�������¾�֮����Ϳ�����������ȡ������Ŷ")
									LuaGive(coldata1[6],1)
									LuaSetTask("T385S",1)
									LuaSetTask(coldata1[8],1)
									LuaSetTask("T385",1)
									LuaSetTask("T385day",GetCurrentDay())
									LuaSetTask("T385hour",GetCurrentHour())
								end
							else
								LuaSay("��ʾ����Ķ����Ѿ��ںͱ�������������ˣ������������������ǰ��������ͬ��һ���ȡ���������񲻼��������Ŷ@!")
							end
						else
							LuaSay("����񣺸�����һСʱֻ����һ�Σ�����@2"..LuaQueryTask("T385hour").."��@0֮��������ȡŶ")
						end
					elseif(LuaQueryTask("T385")==1)then
						coldata2={AutoSearchTask_NPC(LuaQueryTask("T385col"))}
						if(LuaQueryTask(coldata2[8])==1)then
							LuaSay("����񣺽�@2��ɽ����[��]@0��"..coldata2[2].."��"..coldata2[3].."��ȥ������ǻ��ܣ��²��˳٣��Ͽ춯���")
						elseif(LuaQueryTask(coldata2[8])==2)then
							LuaSay("����񣺽�@2��ɽ����[��]@0��"..coldata2[2].."��"..coldata2[3].."��ȥ������ǻ��ܣ��²��˳٣��Ͽ춯���")
						end
						AddMenuItem("@7����ѡ��","")
						AddMenuItem("@7��������","T385_jixu")
						AddMenuItem("@1��������","T385_fangqi")

					elseif(LuaQueryTask("T385")==98)then
						if(TeamQueryTask("T385")>=98 or TeamQueryTask("T385")==99)then
							LuaSay("��������ĺã����ǽ���ɽ�����͵��ˣ��Ҿͷ�����@!")
							AddMenuItem("@7��ȡ����","")
							AddMenuItem("@7��ȡ����","T385_jl")
						elseif(TeamQueryTask("T385")<98)then
							LuaSay("����񣺸Ͽ�������Ѱ�ʣ�µ�һ������ȥ���ǲ�����ȡ����Ŷ@!")
							LuaSay("����񣺻�������Ϊ���ϴ���ӵĶ����Լ���ӣ������ѡ��������������½�ȡ�����η������񲻼�������ɴ�����")
							AddMenuItem("@7����ѡ��","")
							AddMenuItem("@7��������","T385_jixu")
							AddMenuItem("@1��������","T385_fangqi")
						end	
					elseif(LuaQueryTask("T385")==99)then
						LuaSay("�������Ķ��ѻ�δ��ȡ������Ŷ��")
					elseif(LuaQueryTask("T385")==100)then
					LuaSetTask("T385",0)
					end
				else
					LuaSay("����񣺽�����Ķ����Ѿ�����10�θ�������Ŷ�������Ҹ�������һ������@!")	
				end
			else
				LuaSay("�������Ķ���û�дﵽ��ȡ������ĵȼ�����")
			end
		
		else
			LuaSay("����񣺽������Ѿ�����10�θ�������Ŷ��ЪЪ����������@!")
		end
	else
		LuaSay("����񣺴�������Ҫ������Ӳ��ܽ�ȡ�����Ŷ")
	end
	elseif(answer=="T385_jl")then
		local level= LuaQuery("level")
			if(level>80)then
		level=80
	end
		local coldata={AutoSearchTask_NPC(LuaQueryTask("T385col"))}
			if(LuaQueryTask("T385")==98)then
				LuaDelTask(coldata[8])
				local jingyan=(78818+level^2*20)
				LuaGive("coin",2000,"T385")
				LuaAddTask("T385num",1)
				LuaAddJx("combat_exp",jingyan,"T385")
				LuaSetTask("T385",99)
				LuaDelTask("T385S")
				LuaDelTask("T385X")
				if(QueryAllTeamMemberTaskSuccess("T385",99)==1)then
					SetAllTeamMemberValueTask("T385",0)
				end
				UpdateMenu()
			end

	elseif(answer=="T385_jixu")then
		LuaSay("�������ѡ���˼����������֮���и߶�Ľ���Ŷ")
	elseif(answer=="T385_fangqi")then
		LuaSay("�������ѡ���˷�������")
		DelItem("o_mission417",LuaItemStatusNormalCount("o_mission417"))
		DelItem("o_mission418",LuaItemStatusNormalCount("o_mission418"))
		LuaDelTask("T385")
		UpdateMenu()

end
LuaSendMenu()
return 1
end 


function AutoFind(type,level,collection)
task={}
tasknum="fjtx"
task={} --task[���]={ID,"��ͼ��","����",ɱ����,������,color}
task[1]={1,"����֮��","���׳�",8,"task_kill/mon_004/T"..tasknum.."","color",1.1}
task[2]={2,"����֮��","���׳�",8,"task_kill/mon_004/T"..tasknum.."","color",1.1}
task[3]={3,"����֮��","���׳�",8,"task_kill/mon_004/T"..tasknum.."","color",1.1}
--����       0~10
task[4]={4,"��������","���",10,"task_kill/mon_007/T"..tasknum.."","color",1.2}
task[5]={5,"�嶷ɽ","����",10,"task_kill/mon_010/T"..tasknum.."","color",1.2}
task[6]={6,"�嶷ɽ","��ʦ�˱�",10,"task_kill/mon_011/T"..tasknum.."","color",1.2}
task[7]={7,"ɽկ","��ʦ��ͽ",10,"task_kill/mon_012/T"..tasknum.."","color",1.2}
task[8]={8,"ɽկ","����",10,"task_kill/mon_013/T"..tasknum.."","color",1.3}
task[9]={9,"ɽկ","����",10,"task_kill/mon_013/T"..tasknum.."","color",1.3}
task[10]={10,"ɽկ����","����",10,"task_kill/mon_014/T"..tasknum.."","color",1.3}
task[11]={11,"ɽկ����","��ʦ����",10,"task_kill/mon_015/T"..tasknum.."","color",1.3}
--����       10~20
task[12]={12,"������Ӫ","��������",12,"task_kill/mon_016/T"..tasknum.."","color",1.3}
task[13]={13,"��Ӫǰ��","��������",12,"task_kill/mon_019/T"..tasknum.."","color",1.3}
task[14]={14,"��Ӫǰ��","����",12,"task_kill/mon_020/T"..tasknum.."","color",1.3}
task[15]={15,"��ˮ֮��","��ˮ��",13,"task_kill/mon_021/T"..tasknum.."","color",1.3}
task[16]={16,"��ˮ֮��","Ѩ����",13,"task_kill/mon_022/T"..tasknum.."","color",1.3}
task[17]={17,"��ˮ�԰�","��ˮ��",13,"task_kill/mon_023/T"..tasknum.."","color",1.3}
task[18]={18,"��ˮ�԰�","��ˮ��",13,"task_kill/mon_024/T"..tasknum.."","color",1.3}
--����       20~30
task[19]={19,"��������","ص���ڱ�",15,"task_kill/mon_025/T"..tasknum.."","color",1.3}
task[20]={20,"��������","��ë��",15,"task_kill/mon_026/T"..tasknum.."","color",1.3}
task[21]={21,"μˮ֮��","ص��սʿ",15,"task_kill/mon_027/T"..tasknum.."","color",1.3}
task[22]={22,"μˮ֮��","����",15,"task_kill/mon_028/T"..tasknum.."","color",1.3}
task[23]={23,"��������","��ڹ�",15,"task_kill/mon_029/T"..tasknum.."","color",1.3}
task[24]={24,"��������","��Ҷ��",15,"task_kill/mon_030/T"..tasknum.."","color",1.3}
task[25]={25,"ʳ�˹�","����",15,"task_kill/mon_031/T"..tasknum.."","color",1.3}
task[26]={26,"ʳ�˹�","����",15,"task_kill/mon_032/T"..tasknum.."","color",1.3}
task[27]={27,"�׹Ƕ�","ʬ��",16,"task_kill/mon_033/T"..tasknum.."","color",1.3}
task[28]={28,"�׹Ƕ�","���ޱ�",16,"task_kill/mon_034/T"..tasknum.."","color",1.3}
--����       30~40
task[29]={29,"̫�йž�","����",20,"task_kill/mon_035/T"..tasknum.."","color",1.3}
task[30]={30,"̫�йž�","���ƾ���",20,"task_kill/mon_036/T"..tasknum.."","color",1.3}
task[31]={31,"̫��ɽ��","��ʯ��",20,"task_kill/mon_037/T"..tasknum.."","color",1.3}
task[32]={32,"̫��ɽ��","̫�й�Գ",20,"task_kill/mon_038/T"..tasknum.."","color",1.3}
task[33]={33,"����ؿ�","�Ի�",20,"task_kill/mon_046/T"..tasknum.."","color",1.3}
task[34]={34,"����ؿ�","ҹ��",20,"task_kill/mon_047/T"..tasknum.."","color",1.3}
--����       40~50
task[35]={35,"�κ���","����",25,"task_kill/mon_039/T"..tasknum.."","color",1.3}
task[36]={36,"�κ���","���",25,"task_kill/mon_040/T"..tasknum.."","color",1.3}
task[37]={37,"�κ���","��˧",25,"task_kill/mon_041/T"..tasknum.."","color",1.3}
task[38]={38,"������","���",25,"task_kill/mon_042/T"..tasknum.."","color",1.3}
task[39]={39,"������","����",25,"task_kill/mon_043/T"..tasknum.."","color",1.3}
task[40]={40,"������Ĺ","����ʬ",25,"task_kill/mon_044/T"..tasknum.."","color",1.3}
task[41]={41,"������Ĺ","Ѫ��ʬ",25,"task_kill/mon_045/T"..tasknum.."","color",1.3}
task[42]={42,"����","����",28,"task_kill/mon_048/T"..tasknum.."","color",1.3}
task[43]={43,"����","��ԭ��",28,"task_kill/mon_049/T"..tasknum.."","color",1.3}
--����       50~60
task[44]={44,"���н���","�ʱ�����",30,"task_kill/mon_050/T"..tasknum.."","color",1.3}
task[45]={45,"���н���","��Ы",30,"task_kill/mon_051/T"..tasknum.."","color",1.3}
task[46]={46,"��ս��","�ʱ�����",33,"task_kill/mon_052/T"..tasknum.."","color"}
task[47]={47,"��ս��","ս��",33,"task_kill/mon_053/T"..tasknum.."","color",1.3}
task[48]={48,"��ս��","ս��",33,"task_kill/mon_053/T"..tasknum.."","color",1.3}
task[49]={49,"��������","��ħ��",35,"task_kill/mon_055/T"..tasknum.."","color",1.3}
task[50]={50,"��������","ս����",35,"task_kill/mon_056/T"..tasknum.."","color",1.3}
task[51]={51,"ɳĮ����","ɳ��",35,"task_kill/mon_054/T"..tasknum.."","color",1.3}
task[52]={52,"ɳĮ����","ɰ��",35,"task_kill/mon_064/T"..tasknum.."","color",1.3}
--����       60~70
task[53]={53,"ɳĮ�Թ�","ɳ��",35,"task_kill/mon_057/T"..tasknum.."","color",1.3}
task[54]={54,"ɳĮ�Թ�","ɳ��",35,"task_kill/mon_058/T"..tasknum.."","color",1.3}
task[55]={55,"Į�����","��ԭ��",35,"task_kill/mon_059/T"..tasknum.."","color",1.3}
task[56]={56,"Į�����","����",35,"task_kill/mon_060/T"..tasknum.."","color",1.3}
task[57]={57,"��Ȼ���","��Ȼȭ��",35,"task_kill/mon_061/T"..tasknum.."","color",1.3}
task[58]={58,"��Ȼ���","��ʦа��",35,"task_kill/mon_062/T"..tasknum.."","color",1.3}
task[59]={59,"��������","���",35,"task_kill/mon_065/T"..tasknum.."","color",1.3}
task[60]={60,"��������","����",35,"task_kill/mon_066/T"..tasknum.."","color",1.3}
task[61]={61,"��ū��ͥ","��ū��ʿ",35,"task_kill/mon_067/T"..tasknum.."","color",1.3}
task[62]={62,"��ū��ͥ","��ū����",35,"task_kill/mon_068/T"..tasknum.."","color",1.3}
--����       70~80
task[63]={63,"�׻�ɽ","�׻�",35,"task_kill/mon_069/T"..tasknum.."","color",1.3}
task[64]={64,"�׻�ɽ","��ɽ����",35,"task_kill/mon_070/T"..tasknum.."","color",1.3}
task[65]={65,"������һ��","����",35,"task_kill/mon_071/T"..tasknum.."","color",1.3}
task[66]={66,"������һ��","ѪϬ",35,"task_kill/mon_072/T"..tasknum.."","color",1.3}
--����       80~90
task[67]={67,"����������","����",38,"task_kill/mon_073/T"..tasknum.."","color",1.3}
task[68]={68,"����������","�ɺ���ħ",38,"task_kill/mon_074/T"..tasknum.."","color",1.3}
task[69]={69,"ħ����","ħ�˸��",38,"task_kill/mon_075/T"..tasknum.."","color",1.3}
task[70]={70,"ħ����","˫ͷħ��",38,"task_kill/mon_076/T"..tasknum.."","color",1.3}
--����      90~ 
--��ֵ�����Ʒ����
task[71]={71,"����֮��","���׳�","Tfjtx_mon1","���齣��","color",1.4}
task[72]={72,"����֮��","���׳�","Tfjtx_mon2","���齣��","color",1.4}
task[73]={73,"����֮��","���׳�","Tfjtx_mon3","���齣��","color",1.4}
--����       0~10
task[74]={74,"��������","���","Tfjtx_mon4","���齣��","color",1.4}
task[75]={75,"�嶷ɽ","����","Tfjtx_mon5","���齣��","color",1.4}
task[76]={76,"�嶷ɽ","��ʦ�˱�","Tfjtx_mon6","���齣��","color",1.4}
task[77]={77,"ɽկ","��ʦ��ͽ","Tfjtx_mon7","���齣��","color",1.4}
task[78]={78,"ɽկ","����","Tfjtx_mon8","���齣��","color",1.4}
task[79]={79,"ɽկ","����","Tfjtx_mon9","���齣��","color",1.4}
task[80]={80,"ɽկ����","����","Tfjtx_mon10","���齣��","color",1.4}
task[81]={81,"ɽկ����","��ʦ����","Tfjtx_mon11","���齣��","color",1.4}
--����       10~20
task[82]={82,"������Ӫ","��������","Tfjtx_mon12","���齣��","color",1.4}
task[83]={83,"��Ӫǰ��","��������","Tfjtx_mon13","���齣��","color",1.4}
task[84]={84,"��Ӫǰ��","����","Tfjtx_mon14","���齣��","color",1.4}
task[85]={85,"��ˮ֮��","��ˮ��","Tfjtx_mon15","���齣��","color",1.4}
task[86]={86,"��ˮ֮��","Ѩ����","Tfjtx_mon16","���齣��","color",1.4}
task[87]={87,"��ˮ�԰�","��ˮ��","Tfjtx_mon17","���齣��","color",1.4}
task[88]={88,"��ˮ�԰�","��ˮ��","Tfjtx_mon18","���齣��","color",1.4}
--����       20~30
task[89]={89,"��������","ص���ڱ�","Tfjtx_mon19","���齣��","color",1.4}
task[90]={90,"��������","��ë��","Tfjtx_mon20","���齣��","color",1.4}
task[91]={91,"μˮ֮��","ص��սʿ","Tfjtx_mon21","���齣��","color",1.4}
task[92]={92,"μˮ֮��","����","Tfjtx_mon22","���齣��","color",1.4}
task[93]={93,"��������","��ڹ�","Tfjtx_mon23","���齣��","color",1.4}
task[94]={94,"��������","��Ҷ��","Tfjtx_mon24","���齣��","color",1.4}
task[95]={95,"ʳ�˹�","����","Tfjtx_mon25","���齣��","color",1.4}
task[96]={96,"ʳ�˹�","����","Tfjtx_mon26","���齣��","color",1.4}
task[97]={97,"�׹Ƕ�","ʬ��","Tfjtx_mon27","���齣��","color",1.4}
task[98]={98,"�׹Ƕ�","���ޱ�","Tfjtx_mon28","���齣��","color",1.4}
--����       30~40
task[99]={99,"̫�йž�","����","Tfjtx_mon29","���齣��","color",1.4}
task[100]={100,"̫�йž�","���ƾ���","Tfjtx_mon30","���齣��","color",1.4}
task[101]={101,"̫��ɽ��","��ʯ��","Tfjtx_mon31","���齣��","color",1.4}
task[102]={102,"̫��ɽ��","̫�й�Գ","Tfjtx_mon32","���齣��","color",1.4}
task[103]={103,"����ؿ�","�Ի�","Tfjtx_mon33","���齣��","color",1.4}
task[104]={104,"����ؿ�","ҹ��","Tfjtx_mon34","���齣��","color",1.4}
--����       40~50
task[105]={105,"�κ���","����","Tfjtx_mon35","���齣��","color",1.4}
task[106]={106,"�κ���","���","Tfjtx_mon36","���齣��","color",1.4}
task[107]={107,"�κ���","��˧","Tfjtx_mon37","���齣��","color",1.4}
task[108]={108,"������","���","Tfjtx_mon38","���齣��","color",1.4}
task[109]={109,"������","����","Tfjtx_mon39","���齣��","color",1.4}
task[110]={110,"������Ĺ","����ʬ","Tfjtx_mon40","���齣��","color",1.4}
task[111]={111,"������Ĺ","Ѫ��ʬ","Tfjtx_mon41","���齣��","color",1.4}
task[112]={112,"����","����","Tfjtx_mon42","���齣��","color",1.4}
task[113]={113,"����","��ԭ��","Tfjtx_mon43","���齣��","color",1.4}
--����       50~60
task[114]={114,"���н���","�ʱ�����","Tfjtx_mon44","���齣��","color"}
task[115]={115,"���н���","��Ы","Tfjtx_mon45","���齣��","color",1.4}
task[116]={116,"��ս��","�ʱ�����","Tfjtx_mon46","���齣��","color",1.4}
task[117]={117,"��ս��","ս��","Tfjtx_mon47","���齣��","color",1.4}
task[118]={118,"��ս��","ս��","Tfjtx_mon47","���齣��","color",1.4}
task[119]={119,"��������","��ħ��","Tfjtx_mon49","���齣��","color",1.4}
task[120]={120,"��������","ս����","Tfjtx_mon50","���齣��","color",1.4}
task[121]={121,"ɳĮ����","ɳ��","Tfjtx_mon51","���齣��","color",1.4}
task[122]={122,"ɳĮ����","ɰ��","Tfjtx_mon52","���齣��","color",1.4}
--����       60~70
task[123]={123,"ɳĮ�Թ�","ɳ��","Tfjtx_mon53","���齣��","color",1.4}
task[124]={124,"ɳĮ�Թ�","ɳ��","Tfjtx_mon54","���齣��","color",1.4}
task[125]={125,"Į�����","��ԭ��","Tfjtx_mon55","���齣��","color",1.4}
task[126]={126,"Į�����","����","Tfjtx_mon56","���齣��","color",1.4}
task[127]={127,"��Ȼ���","��Ȼȭ��","Tfjtx_mon57","���齣��","color",1.4}
task[128]={128,"��Ȼ���","��ʦа��","Tfjtx_mon58","���齣��","color",1.4}
task[5129]={129,"��������","���","Tfjtx_mon59","���齣��","color",1.4}
task[130]={130,"��������","����","Tfjtx_mon60","���齣��","color",1.4}
task[131]={131,"��ū��ͥ","��ū��ʿ","Tfjtx_mon61","���齣��","color",1.4}
task[132]={132,"��ū��ͥ","��ū����","Tfjtx_mon62","���齣��","color",1.4}
--����       70~80
task[133]={133,"�׻�ɽ","�׻�","Tfjtx_mon63","���齣��","color",1.4}
task[134]={134,"�׻�ɽ","��ɽ����","Tfjtx_mon64","���齣��","color",1.4}
task[135]={135,"������һ��","����","Tfjtx_mon65","���齣��","color",1.4}
task[136]={136,"������һ��","ѪϬ","Tfjtx_mon66","���齣��","color",1.4}
--����       80~90
task[137]={137,"����������","����","Tfjtx_mon67","���齣��","color",1.4}
task[138]={138,"����������","�ɺ���ħ","Tfjtx_mon68","���齣��","color",1.4}
task[139]={139,"ħ����","ħ�˸��","Tfjtx_mon69","���齣��","color",1.4}
task[140]={140,"ħ����","˫ͷħ��","Tfjtx_mon70","���齣��","color",1.4}
--����      90~ 
--task[141]={141,"��ͼ��","NPC����",������,��Ʒ����,color}

task[141]={141,"��Դ��","Ƚ��","Tsnpc_1","��������","color",1.1}
task[142]={142,"��Դ��","�ϴ峤","Tsnpc_2","��������","color",1.1}
task[143]={143,"��Դ��","�����","Tsnpc_3","��������","color",1.1}
task[144]={144,"��Դ��","������","Tsnpc_4","��������","color",1.1}
task[145]={145,"����֮��","���鳤","Tsnpc_5","��������","color",1.1}
task[146]={146,"����֮��","ʿ����","Tsnpc_6","��������","color",1.1}
task[147]={147,"����֮��","������","Tsnpc_7","��������","color",1.1}
task[148]={148,"�����Ͻ�","�س�ʿ��","Tsnpc_8","��������","color",1.1}
task[149]={149,"������","����","Tsnpc_9","��������","color",1.1}
task[150]={150,"������","����ʹ��","Tsnpc_10","��������","color",1.1}
task[151]={151,"������","���幫��","Tsnpc_11","��������","color",1.1}
task[152]={152,"������","Ǯׯ�ƹ�","Tsnpc_12","��������","color",1.1}
task[153]={153,"������","˾��Ԫ��","Tsnpc_13","��������","color",1.1}
task[154]={154,"������","˾��Ԫ��","Tsnpc_14","��������","color",1.1}
task[155]={155,"������","�ʹ��","Tsnpc_15","��������","color",1.1}
task[156]={156,"������","ѱ��ʦ","Tsnpc_16","��������","color",1.1}
task[157]={157,"������","�н�����","Tsnpc_17","��������","color",1.1}
task[158]={158,"������","��������","Tsnpc_18","��������","color",1.1}
task[159]={159,"��������","��������","Tsnpc_19","��������","color",1.1}
task[160]={160,"��������","��������","Tsnpc_20","��������","color",1.1}
task[161]={161,"��������","��������","Tsnpc_21","��������","color",1.1}
task[162]={162,"��������","��Ʒ����","Tsnpc_22","��������","color",1.1}
task[163]={163,"��������","ҩƷ����","Tsnpc_23","��������","color",1.1}
task[164]={164,"��������","л��","Tsnpc_24","��������","color",1.1}
task[165]={165,"��������","��ԣ","Tsnpc_25","��������","color",1.1}
task[166]={166,"����","����","Tsnpc_26","��������","color",1.1}
task[167]={167,"����","˾�����","Tsnpc_27","��������","color",1.1}
task[168]={168,"����","ս��ʹ��","Tsnpc_28","��������","color",1.1}
task[169]={169,"��������","����","Tsnpc_29","��������","color",1.1}
task[170]={170,"��������","����","Tsnpc_30","��������","color",1.1}
task[171]={171,"�嶷ɽ","����","Tsnpc_31","��������","color",1.1}
task[172]={172,"�嶷ɽ","��ʦ��ͽ","Tsnpc_32","��������","color",1.1}
task[173]={173,"ɽկ","���","Tsnpc_33","��������","color",1.1}
task[174]={174,"ɽկ","л���","Tsnpc_34","��������","color",1.1}
task[175]={175,"ɽկ����","����֮","Tsnpc_35","��������","color",1.1}
task[176]={176,"������Ӫ","л��","Tsnpc_36","��������","color",1.1}
task[177]={177,"������Ӫ","����ʹ��","Tsnpc_37","��������","color",1.1}
task[178]={178,"������Ӫ","��վС��","Tsnpc_38","��������","color",1.1}
task[179]={179,"��Ӫǰ��","л��","Tsnpc_39","��������","color",1.1}
task[180]={180,"��ˮ֮��","��ǫ","Tsnpc_40","��������","color",1.1}
task[181]={181,"��ˮ֮��","����֮","Tsnpc_41","��������","color",1.1}
task[182]={182,"��ˮ�԰�","����","Tsnpc_42","��������","color",1.1}
task[183]={183,"��������","����","Tsnpc_43","��������","color",1.1}
task[184]={184,"��������","����","Tsnpc_44","��������","color",1.1}
task[185]={185,"������","�޼�","Tsnpc_45","��������","color",1.1}
task[186]={186,"������","�����","Tsnpc_46","��������","color",1.1}
task[187]={187,"������","��������","Tsnpc_47","��������","color",1.1}
task[188]={188,"������","��������","Tsnpc_48","��������","color",1.1}
task[189]={189,"������","��Ʒ����","Tsnpc_49","��������","color",1.1}
task[190]={190,"������","ҩƷ����","Tsnpc_50","��������","color",1.1}
task[191]={191,"μˮ֮��","Ҧ��","Tsnpc_51","��������","color",1.1}
task[192]={192,"μˮ֮��","����","Tsnpc_52","��������","color",1.1}
task[193]={193,"��������","�������","Tsnpc_53","��������","color",1.1}
task[194]={194,"��������","�������","Tsnpc_54","��������","color",1.1}
task[195]={195,"ʳ�˹�","������ʦ","Tsnpc_55","��������","color",1.1}
task[196]={196,"��Ƿ���","��Ԩ��","Tsnpc_56","��������","color",1.1}
task[197]={197,"����ؿ�","�ذ���","Tsnpc_57","��������","color",1.1}
task[198]={198,"����ؿ�","��������","Tsnpc_58","��������","color",1.1}
task[199]={199,"̫�йž�","Ľ�ݴ�","Tsnpc_59","��������","color",1.1}
task[200]={200,"̫�йž�","Ľ����","Tsnpc_60","��������","color",1.1}
task[201]={201,"̫��ɽ��","ʯԽ","Tsnpc_61","��������","color",1.1}
task[202]={202,"�κ���","��̫��","Tsnpc_62","��������","color",1.1}
task[203]={203,"�κ���","Ľ����","Tsnpc_63","��������","color",1.1}
task[204]={204,"��ɽ��","����","Tsnpc_64","��������","color",1.1}
task[205]={205,"��ɽ��","����","Tsnpc_65","��������","color",1.1}
task[206]={206,"��ɽ��","�ӻ���","Tsnpc_66","��������","color",1.1}
task[207]={207,"������","��Ĺ����","Tsnpc_67","��������","color",1.1}
task[208]={208,"����","�޺�","Tsnpc_68","��������","color",1.1}
task[209]={209,"���г�","�ذϹ�","Tsnpc_69","��������","color",1.1}

--task[141]={141,"��ͼ��","NPC����",������,,color}

task[210]={210,"��Դ��","Ƚ��","Tenpc_1","��Ʒ����","color",1.1}
task[211]={211,"��Դ��","�ϴ峤","Tenpc_2","��Ʒ����","color",1.1}
task[212]={212,"��Դ��","�����","Tenpc_3","��Ʒ����","color",1.1}
task[213]={213,"��Դ��","������","Tenpc_4","��Ʒ����","color",1.1}
task[214]={214,"����֮��","���鳤","Tenpc_5","��Ʒ����","color",1.1}
task[215]={215,"����֮��","ʿ����","Tenpc_6","��Ʒ����","color",1.1}
task[216]={216,"����֮��","������","Tenpc_7","��Ʒ����","color",1.1}
task[217]={217,"�����Ͻ�","�س�ʿ��","Tenpc_8","��Ʒ����","color",1.1}
task[218]={218,"������","����","Tenpc_9","��Ʒ����","color",1.1}
task[219]={219,"������","����ʹ��","Tenpc_10","��Ʒ����","color",1.1}
task[220]={220,"������","���幫��","Tenpc_11","��Ʒ����","color",1.1}
task[221]={221,"������","Ǯׯ�ƹ�","Tenpc_12","��Ʒ����","color",1.1}
task[222]={222,"������","˾��Ԫ��","Tenpc_13","��Ʒ����","color",1.1}
task[223]={223,"������","˾��Ԫ��","Tenpc_14","��Ʒ����","color",1.1}
task[224]={224,"������","�ʹ��","Tenpc_15","��Ʒ����","color",1.1}
task[225]={225,"������","ѱ��ʦ","Tenpc_16","��Ʒ����","color",1.1}
task[226]={226,"������","�н�����","Tenpc_17","��Ʒ����","color",1.1}
task[227]={227,"������","��������","Tenpc_18","��Ʒ����","color",1.1}
task[228]={228,"��������","��������","Tenpc_19","��Ʒ����","color",1.1}
task[229]={229,"��������","��������","Tenpc_20","��Ʒ����","color",1.1}
task[230]={230,"��������","��������","Tenpc_21","��Ʒ����","color",1.1}
task[231]={231,"��������","��Ʒ����","Tenpc_22","��Ʒ����","color",1.1}
task[232]={232,"��������","ҩƷ����","Tenpc_23","��Ʒ����","color",1.1}
task[233]={233,"��������","л��","Tenpc_24","��Ʒ����","color",1.1}
task[234]={234,"��������","��ԣ","Tenpc_25","��Ʒ����","color",1.1}
task[235]={235,"����","����","Tenpc_26","��Ʒ����","color",1.1}
task[236]={236,"����","˾�����","Tenpc_27","��Ʒ����","color",1.1}
task[237]={237,"����","ս��ʹ��","Tenpc_28","��Ʒ����","color",1.1}
task[238]={238,"��������","����","Tenpc_29","��Ʒ����","color",1.1}
task[239]={239,"��������","����","Tenpc_30","��Ʒ����","color",1.1}
task[240]={240,"�嶷ɽ","����","Tenpc_31","��Ʒ����","color",1.1}
task[241]={241,"�嶷ɽ","��ʦ��ͽ","Tenpc_32","��Ʒ����","color",1.1}
task[242]={242,"ɽկ","���","Tenpc_33","��Ʒ����","color",1.1}
task[243]={243,"ɽկ","л���","Tenpc_34","��Ʒ����","color",1.1}
task[244]={244,"ɽկ����","����֮","Tenpc_35","��Ʒ����","color",1.1}
task[245]={245,"������Ӫ","л��","Tenpc_36","��Ʒ����","color",1.1}
task[246]={246,"������Ӫ","����ʹ��","Tenpc_37","��Ʒ����","color",1.1}
task[247]={247,"������Ӫ","��վС��","Tenpc_38","��Ʒ����","color",1.1}
task[248]={248,"��Ӫǰ��","л��","Tenpc_39","��Ʒ����","color",1.1}
task[249]={249,"��ˮ֮��","��ǫ","Tenpc_40","��Ʒ����","color",1.1}
task[250]={250,"��ˮ֮��","����֮","Tenpc_41","��Ʒ����","color",1.1}
task[251]={251,"��ˮ�԰�","����","Tenpc_42","��Ʒ����","color",1.1}
task[252]={252,"��������","����","Tenpc_43","��Ʒ����","color",1.1}
task[253]={253,"��������","����","Tenpc_44","��Ʒ����","color",1.1}
task[254]={254,"������","�޼�","Tenpc_45","��Ʒ����","color",1.1}
task[255]={255,"������","�����","Tenpc_46","��Ʒ����","color",1.1}
task[256]={256,"������","��������","Tenpc_47","��Ʒ����","color",1.1}
task[257]={257,"������","��������","Tenpc_48","��Ʒ����","color",1.1}
task[258]={258,"������","��Ʒ����","Tenpc_49","��Ʒ����","color",1.1}
task[259]={259,"������","ҩƷ����","Tenpc_50","��Ʒ����","color",1.1}
task[260]={260,"μˮ֮��","Ҧ��","Tenpc_51","��Ʒ����","color",1.1}
task[261]={261,"μˮ֮��","����","Tenpc_52","��Ʒ����","color",1.1}
task[262]={262,"��������","�������","Tenpc_53","��Ʒ����","color",1.1}
task[263]={263,"��������","�������","Tenpc_54","��Ʒ����","color",1.1}
task[264]={264,"ʳ�˹�","������ʦ","Tenpc_55","��Ʒ����","color",1.1}
task[265]={265,"��Ƿ���","��Ԩ��","Tenpc_56","��Ʒ����","color",1.1}
task[266]={266,"����ؿ�","�ذ���","Tenpc_57","��Ʒ����","color",1.1}
task[267]={267,"����ؿ�","��������","Tenpc_58","��Ʒ����","color",1.1}
task[268]={268,"̫�йž�","Ľ�ݴ�","Tenpc_59","��Ʒ����","color",1.1}
task[269]={269,"̫�йž�","Ľ����","Tenpc_60","��Ʒ����","color",1.1}
task[270]={270,"̫��ɽ��","ʯԽ","Tenpc_61","��Ʒ����","color",1.1}
task[271]={271,"�κ���","��̫��","Tenpc_62","��Ʒ����","color",1.1}
task[272]={272,"�κ���","Ľ����","Tenpc_63","��Ʒ����","color",1.1}
task[273]={273,"��ɽ��","����","Tenpc_64","��Ʒ����","color",1.1}
task[274]={274,"��ɽ��","����","Tenpc_65","��Ʒ����","color",1.1}
task[275]={275,"��ɽ��","�ӻ���","Tenpc_66","��Ʒ����","color",1.1}
task[276]={276,"������","��Ĺ����","Tenpc_67","��Ʒ����","color",1.1}
task[277]={277,"����","�޺�","Tenpc_68","��Ʒ����","color",1.1}
task[278]={278,"���г�","�ذϹ�","Tenpc_69","��Ʒ����","color",1.1}

--task[141]={141,"��ͼ��","��ͼ���",������,"",color}

task[279]={279,"��Դ��","lu_tyj","Tmap_1","","color",1.2}
task[280]={280,"��Դ��","lu_tyc","Tmap_2","","color",1.2}
task[281]={281,"����֮��","lu_mwzl","Tmap_3","","color",1.2}
task[282]={282,"��ʯ��","lu_jsd","Tmap_4","","color",1.2}
task[283]={283,"�����Ͻ�","lu_jknj","Tmap_5","","color",1.2}
task[284]={284,"��������","lu_jkdj","Tmap_6","","color",1.2}
task[285]={285,"�嶷ɽ","lu_wds","Tmap_7","","color",1.2}
task[286]={286,"ɽկ","lu_sz","Tmap_8","","color",1.2}
task[287]={287,"ɽկ����","lu_szdl","Tmap_9","","color",1.2}
task[288]={288,"������Ӫ","lu_bfjy","Tmap_10","","color",1.2}
task[289]={289,"��Ӫǰ��","lu_jyqs","Tmap_11","","color",1.2}
task[290]={290,"��ˮ֮��","lu_fszb","Tmap_12","","color",1.2}
task[291]={291,"��ˮ�԰�","lu_fsda","Tmap_13","","color",1.2}
task[292]={292,"��ˮ�ӵ�","lu_fshd","Tmap_14","","color",1.2}
task[293]={293,"��������","lu_lyjw","Tmap_15","","color",1.2}
task[294]={294,"μˮ֮��","lu_wszb","Tmap_16","","color",1.2}
task[295]={295,"��������","lu_xszl","Tmap_17","","color",1.2}
task[296]={296,"ʳ�˹�","lu_srg","Tmap_18","","color",1.2}
task[297]={297,"�׹Ƕ�","lu_bgd","Tmap_19","","color",1.2}
task[298]={298,"��Ƿ���","lu_jgd","Tmap_20","","color",1.2}
task[299]={299,"����ؿ�","lu_fqcl","Tmap_21","","color",1.2}
task[300]={300,"̫�йž�","lu_thgj","Tmap_22","","color",1.2}
task[301]={301,"̫��ɽ��","lu_thsg","Tmap_23","","color",1.2}
task[302]={302,"�κ���","lu_chp","Tmap_24","","color",1.2}
task[303]={303,"������","lu_ywl","Tmap_25","","color",1.2}
task[304]={304,"������Ĺ","lu_dxlm","Tmap_26","","color",1.2}
task[305]={305,"������Ѩ","lu_dxlx","Tmap_27","","color",1.2}
task[306]={306,"����","lu_clc","Tmap_28","","color",1.2}
task[307]={307,"���н���","lu_yzjw","Tmap_29","","color",1.2}
task[308]={308,"��ս��","lu_gzc","Tmap_30","","color",1.2}
task[309]={309,"��������","lu_qdbl","Tmap_31","","color",1.2}
task[310]={310,"Į�����","lu_mbdh","Tmap_32","","color",1.2}
task[311]={311,"ɳĮ����","lu_smlz","Tmap_33","","color",1.2}
task[312]={312,"ɳĮ�Թ�","lu_smmg","Tmap_34","","color",1.2}
task[313]={313,"��Ȼ���","lu_rrld","Tmap_35","","color",1.2}
task[314]={314,"��������","lu_jxzl","Tmap_36","","color",1.2}
task[315]={315,"��ū��ͥ","lu_xnwt","Tmap_37","","color",1.2}
task[316]={316,"�׻�ɽ","lu_whs","Tmap_38","","color",1.2}
task[317]={317,"������һ��","lu_wltyc","Tmap_39","","color",1.2}
task[318]={318,"����������","lu_wltec","Tmap_40","","color",1.2}
task[319]={319,"ħ����","lu_mwd","Tmap_41","","color",1.2}


task[320]={320,"p_lv","1","������","1","color",1.2}


--task[321]={321,"���","��Ʒ��","����","color",1}


task[321]={321,"o_material_11","1��ë",2,"�������ë�Ͻ�ȱ","color",1}
task[322]={322,"o_material_20","1��Ƥ",2,"���ս�³Խ���Ҫ���սʿ�������·�","color",1}
task[323]={323,"o_material_29","1����",2,"����Բ��ܸɻ��ӴӴ","color",1}
task[324]={324,"o_material_38","1��ľ",2,"������һ��Ⱥ����Ҫת�ƣ�����������","color",1}
task[325]={325,"o_material_47","1����",2,"������ս�������˺ܶ���������ڼ���һ������","color",1}
task[326]={326,"o_material_56","1����",2,"������飬���������������־���","color",1}
task[327]={327,"o_material_12","2��ë",2,"�������ë�Ͻ�ȱ","color",1.2}
task[328]={328,"o_material_21","2��Ƥ",2,"ս�³Խ���Ҫ���սʿ�������·�������","color",1.2}
task[329]={329,"o_material_30","2����",2,"����Բ��ܸɻ��ӴӴ","color",1.2}
task[330]={330,"o_material_39","2��ľ",2,"������һ��Ⱥ����Ҫת�ƣ�����������","color",1.2}
task[331]={331,"o_material_48","2����",2,"������ս�������˺ܶ���������ڼ���һ������","color",1.2}
task[332]={332,"o_material_57","2����",2,"���������������־���","color",1.2}
task[333]={333,"o_mission020","��������",1,"��ʿ����Ҳ�Ե�õ�","color",1}
task[334]={334,"o_mission039","��������",1,"Ҳ�ø��еȽ�ʿ������������","color",1.1}
task[335]={335,"o_mission040","��Ʒ����",1,"һ��֮˧Ҳ��Ҫ�Ե�õİ�","color",1.3}
task[336]={336,"o_mission168","����",1,"�����������׳���ļ�Ʒ","color",1.5}
task[337]={337,"o_mission153","��֦",1,"����С��������˵Ҫ���֦","color",1.5}
task[338]={338,"o_mission145","��",1,"�����ϵȱ�����Ҫ��","color",1.5}
task[339]={339,"o_mission018","�ƾɹŶ�",1,"����̫������̫ʢ���ø��ҹŶ������ֲ��У���","color",1.5}
task[340]={340,"o_drug_hp3","����ɢ(���󶨵�)",3,"�ܶ�սʿ������","color",1}
task[341]={341,"o_drug_mp3","����¶(���󶨵�)",3,"�˱��ǵ��˶�������","color",1}
task[342]={342,"o_drug_hp2","��Ҷɢ",3,"���˵��˺ܶ�","color",1}
task[343]={343,"o_drug_mp2","����¶",3,"�ܶ�ʿ����������","color",1}
-->>>>>>>>>>>>>>>>>>>>����Ϊ��ֵ����<<<<<<<<<<<<<<<<<<<<<--
task[343]={343,"o_state016y","���굤",1,"������������ڵĴ�Ҷ������㱣���ȥŪһ��δ�󶨵���","color",1.5}
task[343]={343,"o_state053y","����֮Ѫ��+500��",1,"���Ǵ󽫾�ɱ����Ҫ����֮Ѫ��ò�ƽ���ֻҪδ�󶨵�Ŷ","color",2}
task[343]={343,"o_state056y","��ʦˮ����+500��",1,"���Ǵ������Ҫ��ʦˮ����ò�Ƽ���ֻҪδ�󶨵�Ŷ","color",2}
task[343]={343,"o_state065y","Ѫ��1",1,"���ص���������Ը������ռ�����ò�ƽ���ֻҪδ�󶨵�Ŷ","color",2.5}
task[343]={343,"o_state068y","ħ��1 ",1,"���ص���������Ը������ռ�����ò�ƽ���ֻҪδ�󶨵�Ŷ","color",3.5}
task[343]={343,"o_state001y","˫����[1Сʱ]",1,"����Ҫ���������ҵĽ�ʿ�ν��ҿ���Ҫδ�󶨵�Ŷ","color",2}
task[343]={343,"o_state012y","˫����[1Сʱ]",1,"����Ҫ���������ҵĽ�ʿ�ν��ҿ���Ҫδ�󶨵�Ŷ","color",2}
task[343]={343,"o_state017y","������+50",1,"����Ҫ���������ҵĽ�ʿ�ν��ҿ���Ҫδ�󶨵�Ŷ","color",2}
task[343]={343,"o_state022y","�ǻ۷�+50",1,"����Ҫ���������ҵĽ�ʿ�ν��ҿ���Ҫδ�󶨵�Ŷ","color",2}
task[343]={343,"o_state027y","���ݷ�+50",1,"����Ҫ���������ҵĽ�ʿ�ν��ҿ���Ҫδ�󶨵�Ŷ","color",2}
task[343]={343,"o_gold1y","ͨ��",1,"��̩�񰲣��������","color",1.8}
task[343]={343,"o_state034y","�౶̰����1Сʱ��",1,"������Ҫ�Ը����㣬����������Ҫһ��С���ߣ������ҿ���Ҫδ�󶨵�Ŷ","color",2.5}
task[343]={343,"o_state005j","С������",1,"��ǿ���Ľ�ʿ����Ҫ�ν���","color",2}

if(type~=0)then
	if(type==1)then --ֱ��ɱ�� ɱ������
		if(level<=20)then
			collection=(LuaRandom(3)+1)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(3)+1)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=30)then
			collection=(LuaRandom(11)+1)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(11)+1)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=40)then
			--collection=(LuaRandom(18)+1)
			collection=(LuaRandom(15)+3)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(18)+1)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=50)then
			collection=(LuaRandom(35)+1)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(34)+1)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=60)then
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(40)+1)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=70)then
			collection=(LuaRandom(40)+1)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(45)+1)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=80)then
			collection=(LuaRandom(62)+1)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(62)+1)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=90)then
			collection=(LuaRandom(66)+1)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(66)+1)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=100)then
			collection=(LuaRandom(70)+1)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(70)+1)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		else
			collection=(LuaRandom(70)+1)
			for i=1,5,1 do	
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(70)+1)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		end
	elseif(type==2)then --ɱ�ֵ��� �������
		local level=LuaQuery("level")
		if(level<=20)then
			collection=(LuaRandom(3)+71)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(3)+71)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=30)then
			collection=(LuaRandom(11)+71)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(11)+71)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=40)then
			collection=(LuaRandom(18)+71)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(18)+71)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=50)then
			collection=(LuaRandom(30)+71)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(34)+71)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=60)then
			collection=(LuaRandom(35)+71)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(40)+71)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=70)then
			collection=(LuaRandom(45)+71)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(52)+71)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=80)then
			collection=(LuaRandom(62)+71)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(62)+71)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=90)then
			collection=(LuaRandom(66)+71)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(66)+71)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=100)then
			collection=(LuaRandom(70)+71)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(70)+71)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		else
			collection=(LuaRandom(70)+71)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(70)+71)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		end
	elseif(type==3)then --NPC����Ʒ ��վС��
		if(level<=30)then
			collection=(LuaRandom(35)+141)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(35)+141)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=40)then
			collection=(LuaRandom(50)+141)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(50)+141)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=50)then
			collection=(LuaRandom(55)+141)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(55)+141)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=60)then
			collection=(LuaRandom(61)+141)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(61)+141)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		else
			collection=(LuaRandom(69)+141)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(69)+141)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		end
	elseif(type==4)then --NPC�Ի�   ǧ�ﴫ��
		if(level<=30)then
			collection=(LuaRandom(35)+210)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(35)+210)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=40)then
			collection=(LuaRandom(50)+210)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(50)+210)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=50)then
			collection=(LuaRandom(55)+210)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(55)+210)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=60)then
			collection=(LuaRandom(61)+210)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(61)+210)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		else
			collection=(LuaRandom(69)+210)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(69)+210)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		end
	elseif(type==5)then --ʹ����Ʒ  ̽����ʵ
		if(level<=30)then
			collection=(LuaRandom(9)+279)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(9)+279)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=40)then
			collection=(LuaRandom(15)+279)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(15)+279)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=50)then
			collection=(LuaRandom(19)+279)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(19)+279)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=60)then
			collection=(LuaRandom(23)+279)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(23)+279)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=70)then
			collection=(LuaRandom(28)+279)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(28)+279)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=80)then
			collection=(LuaRandom(33)+279)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(33)+279)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=90)then
			collection=(LuaRandom(37)+279)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(37)+279)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		elseif(level<=100)then
			collection=(LuaRandom(39)+279)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(39)+279)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		else
			collection=(LuaRandom(41)+279)
			for i=1,5,1 do
				if(collection==LuaQueryTask("Tfjtxnumber"..i..""))then
					local text = 0
					for j=1,200,1 do
						collection=(LuaRandom(41)+279)
						for k=1,5,1 do
							if(collection~=LuaQueryTask("Tfjtxnumber"..k..""))then
								text = 1
							else
								text = 0
								break	
							end
						end
						if(text==1) then
							break
						end
					end
				end
			end
		end

	elseif(type==6)then --����      �б�����
		collection=320
	elseif(type==7)then --�ռ���Ʒ  �ռ�����
		if(LuaQueryTask("Tfjtx_num")>=50)then
			collection=(LuaRandom(36)+321)
		else
			collection=(LuaRandom(23)+321)
		end
			
	end
end
	str1=task[collection][2]
	str2=task[collection][3]
	str3=task[collection][4]
	str4=task[collection][5]
	str5=task[collection][6]
	str6=task[collection][7]
	return collection,str1,str2,str3,str4,str5,str6
end

function GiveAward(level,difficuity,color,allnum)
--�����ݶ�Ϊ��ô��
local level=LuaQuery("level")
local exp=(50000+level*level*color*difficuity*color)*difficuity
local k = floor(allnum/5);j = allnum/5
if(k==j)then
	LuaSay("@5��ʾ����ö��⽱��")
	LuaGive("coin",1000,"Tfjtx")
	if(floor(allnum/50)==allnum/50)then
		local r=LuaRandom(7)
		if(r==0)then
			LuaGive("o_material_"..(14+9*LuaRandom(6)).."",1,"Tfjtx")	--4����������һ
		elseif(r==1)then
			LuaGive("o_state054j",1,"Tfjtx")
		elseif(r==2)then
			LuaGive("o_state057j",1,"Tfjtx")
		elseif(r==3)then
			LuaGive("o_state057j",1,"Tfjtx")
		elseif(r==4)then
			LuaGive("o_state087j",1,"Tfjtx")
		elseif(r==5)then
			local ref=LuaRandom(3)
			if(LuaQuery("level")<43)then
				if(ref==0)then
					LuaGive("e_knife00"..(LuaRandom(floor(level/6))+1).."",1,2,"Tfjtx")
				elseif(ref==1)then
					LuaGive("e_book00"..(LuaRandom(floor(level/6))+1).."",1,2,"Tfjtx")
				else
					LuaGive("e_shield00"..(LuaRandom(floor(level/6))+1).."",1,2,"Tfjtx")
				end
			else
				if(ref==0)then
					LuaGive("e_knife00"..(LuaRandom(7)+1).."",1,2,"Tfjtx")
				elseif(ref==1)then
					LuaGive("e_book00"..(LuaRandom(7)+1).."",1,2,"Tfjtx")
				else
					LuaGive("e_shield00"..(LuaRandom(7)+1).."",1,2,"Tfjtx")
				end
			end
		elseif(r==6)then
			local res=LuaRandom(2)
			if(LuaQuery("level")<40)then
			        if(res==0)then
				LuaGive("e_necklace00"..(LuaRandom(floor(level/6))+1).."",1,2,"Tfjtx")
				else
				LuaGive("e_earring00"..(LuaRandom(floor(level/6))+1).."",1,2,"Tfjtx")
				end
			else
				if(res==0)then
				LuaGive("e_necklace00"..(LuaRandom(8)+1).."",1,2,"Tfjtx")
				else
				LuaGive("e_earring00"..(LuaRandom(8)+1).."",1,2,"Tfjtx")
				end
			end
		end
	elseif(floor(allnum/30)==allnum/30)then
		local r=LuaRandom(10)
		local r1=LuaRandom(8)+1
		if(r==0)then
			LuaGive("o_box002",1,"Tfjtx")
		elseif(r==1)then
			LuaGive("o_state016j",1,"Tfjtx")                    
		elseif(r==2)then
			LuaGive("o_state056j",1,"Tfjtx")--------��ʦˮ��+1000----9
		elseif(r==3)then
			LuaGive("o_state053j",1,"Tfjtx")--------����֮Ѫ+1000----7
		elseif(r==4)then
			--LuaGive("o_sendmap",1,"Tfjtx")
			LuaGive("o_material_"..(13+9*LuaRandom(6)).."",1,"Tfjtx")	--3����������һ
		elseif(r==5)then
			LuaGive("o_material_"..(13+9*LuaRandom(6)).."",1,"Tfjtx")	--3����������һ
		elseif(r==6)then
			LuaGive("e_horse0"..r1.."3t",1,"Tfjtx")
		elseif(r==7)then
			if(level<30)then
				LuaGive("e_shoes00"..(LuaRandom(floor(level/6))+1).."",1,2,"Tfjtx")
			else
				LuaGive("e_shoes00"..(LuaRandom(6)+3).."",1,2,"Tfjtx")
			end
		end
			
	elseif(floor(allnum/10)==allnum/10)then
		local r=LuaRandom(10)
		if(r==0)then
			LuaGive("o_box002",1,"Tfjtx")
		elseif(r==1)then
			LuaGive("o_state016j",1,"Tfjtx")                    
		elseif(r==2)then
			LuaGive("o_state056j",1,"Tfjtx")--------��ʦˮ��+1000----9
		elseif(r==3)then
			LuaGive("o_state053j",1,"Tfjtx")--------����֮Ѫ+1000----7
		elseif(r==4)then
			--LuaGive("o_sendmap",1,"Tfjtx")
			LuaGive("o_material_"..(13+9*LuaRandom(6)).."",1,"Tfjtx")	--3����������һ
		elseif(r==5)then
			LuaGive("o_material_"..(13+9*LuaRandom(6)).."",1,"Tfjtx")	--3����������һ
		end
	end
end
	if(LuaQueryTask("Refresh")==0)then--����ģʽ
		LuaAddJx("combat_exp",exp,"Tfjtx")
	else
		LuaGive("coin",exp/30,"Tfjtx")
	end
end


function AutoSearchTask_NPC(collection)
findNPC={}
findNPC[1]={1,"��������","л��","��ɽ����[��]","��ɽ����[��]","o_mission417","o_mission418","TfindNPC_1"}
findNPC[2]={2,"��������","��������","��ɽ����[��]","��ɽ����[��]","o_mission417","o_mission418","TfindNPC_2"}
findNPC[3]={3,"��������","��������","��ɽ����[��]","��ɽ����[��]","o_mission417","o_mission418","TfindNPC_3"}
findNPC[4]={4,"��������","��Ʒ����","��ɽ����[��]","��ɽ����[��]","o_mission417","o_mission418","TfindNPC_4"}
findNPC[5]={5,"��������","ҩƷ����","��ɽ����[��]","��ɽ����[��]","o_mission417","o_mission418","TfindNPC_5"}
findNPC[6]={6,"��������","��������","��ɽ����[��]","��ɽ����[��]","o_mission417","o_mission418","TfindNPC_6"}
findNPC[7]={7,"������","����","��ɽ����[��]","��ɽ����[��]","o_mission417","o_mission418","TfindNPC_7"}
findNPC[8]={8,"������","˾��Ԫ��","��ɽ����[��]","��ɽ����[��]","o_mission417","o_mission418","TfindNPC_8"}
findNPC[9]={9,"������","���幫��","��ɽ����[��]","��ɽ����[��]","o_mission417","o_mission418","TfindNPC_9"}
findNPC[10]={10,"������","�н�����","��ɽ����[��]","��ɽ����[��]","o_mission417","o_mission418","TfindNPC_10"}
findNPC[11]={11,"������","ѱ��ʦ","��ɽ����[��]","��ɽ����[��]","o_mission417","o_mission418","TfindNPC_11"}--֮ǰ���и������
findNPC[12]={12,"��������ֲ԰","���⹫","��ɽ����[��]","��ɽ����[��]","o_mission417","o_mission418","TfindNPC_12"}
findNPC[13]={13,"��������","����","��ɽ����[��]","��ɽ����[��]","o_mission417","o_mission418","TfindNPC_13"}
findNPC[14]={14,"��������","����","��ɽ����[��]","��ɽ����[��]","o_mission417","o_mission418","TfindNPC_14"}
findNPC[15]={15,"�嶷ɽ","����","��ɽ����[��]","��ɽ����[��]","o_mission417","o_mission418","TfindNPC_15"}


if(collection==0)then
	local r=LuaRandom(15)
	if(r==0)then collection=1
	elseif(r==1)then collection=2
	elseif(r==2)then collection=3
	elseif(r==3)then collection=4
	elseif(r==4)then collection=5
	elseif(r==5)then collection=6
	elseif(r==6)then collection=7
	elseif(r==7)then collection=8
	elseif(r==8)then collection=9
	elseif(r==9)then collection=10
	elseif(r==10)then collection=11
	elseif(r==11)then collection=12
	elseif(r==12)then collection=13
	elseif(r==13)then collection=14
	elseif(r==14)then collection=15
	end
end

	local str2=findNPC[collection][2]--��ͼ��
	local str3=findNPC[collection][3]--NPC����
	local str4=findNPC[collection][4]--������
	local str5=findNPC[collection][5]--������
	local str6=findNPC[collection][6]--�Ͼ���
	local str7=findNPC[collection][7]--�¾���
	local str8=findNPC[collection][8]--������

	return collection,str2,str3,str4,str5,str6,str7,str8
end