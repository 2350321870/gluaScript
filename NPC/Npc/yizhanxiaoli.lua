NPCINFO = {
serial="41" ,
base_name="yizhanxiaoli" ,
icon=2522,
NpcMove=2522,
name="��վС��" ,
iconaddr=1 ,
butt="20|20|61" ,
name_color="CEFFCE" ,
lastsay="20����ÿ�տ�����������" ,
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then
	havetask =0
	local havetask0=0	--Ĭ��û��
	local havetask1=0	--��̾��
	local havetask2=0	--��ɫ�ʺ�
	--local havetask3=0	--��ɫ�˵�
	local havetask4=0
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7�����б�","")
	if(LuaQuery("level")>=20)then
		AddTopSayMenuItem("@7ף������","Tbless")
	end
--���������ⲿ��
	if(LuaQueryTask("T423") == 1 )  then
		AddTopSayMenuItem("@2�ٶȵĿ��顾���顿@0","T423")
		havetask2=1
	end
	if((LuaQueryTask("Tsnpc_38")==1 or LuaQueryTask("Tsnpc_38")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_38")
		if(LuaQueryTask("Tsnpc_38")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_38")==1 or LuaQueryTask("Tenpc_38")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_38")
		if(LuaQueryTask("Tenpc_38")==1)then
			havetask2=1
		end
	end

	if(LuaQueryTask("T402") == 2 or LuaQueryTask("T402") == 3)then
		AddTopSayMenuItem("@2���������顿","T402")
		if(LuaQueryTask("T402") == 2) then
		havetask2 =1
		end
	end     

	
	if(LuaQueryTask("TPaoShang")==1)then
		AddTopSayMenuItem("@2���̡�ÿ�ա�","TPaoShang")          ----------����
		havetask2 =1
	end
--�����ǻ�ɫ�ʺŲ���

	--------------------------------------------
	if(LuaQueryTask("T424") == 1 )then
		AddTopSayMenuItem("@2���֡����顿","T424")
		havetask4 =1
	end
	if(LuaQueryTask("T425") == 1 )then
		AddTopSayMenuItem("@2����2�����顿","T425")
		havetask4 =1
	end
	if(LuaQueryTask("T426") == 1 )then
		AddTopSayMenuItem("@2����3�����顿","T426")
		havetask4 =1
	end
--�����ǻ�ɫ�ʺŲ���
        	if(LuaQueryTask("T423")==0 and level>=20)  then
		AddTopSayMenuItem("�ٶȵĿ��顾���顿","T423")
		havetask1 =1
	end
	if(LuaQueryTask("T424") == 0 and level>=22)then
		AddTopSayMenuItem("���֡����顿","T424")
		havetask1 =1
	end
	if(LuaQueryTask("T425") == 0 and LuaQueryTask("T424") == 99)then
		AddTopSayMenuItem("����2�����顿","T425")
		havetask1 =1
	end
	if(LuaQueryTask("T426") == 0 and LuaQueryTask("T425") == 99 and level>=23)then
		AddTopSayMenuItem("����3�����顿","T426")
		havetask1 =1
	end
	if(LuaQueryTask("T423")==99 and LuaQueryTask("T302")<99)  then
		if(level>=25)then
			AddTopSayMenuItem("@7ÿ����ʹ��ÿ�ա�","T302")
			havetask1 =1
		elseif(level>=20)then
			AddTopSayMenuItem("@2[��]@0@7ÿ����ʹ��ÿ�ա�","T302")
			havetask1 =1
		end
	end
--�����ǻ�ɫ��̾�Ų���
        if(LuaQueryTask("T302")==99 )then
		AddTopSayMenuItem("@7ÿ����ʹ��ÿ�ա�","T302")
	end
--���������ⲿ��
	AddTopSayMenuItem("@9����ָ��","Guidelines")
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
	AddTopSayMenuItem("����","liaotian","0")
end
return 1

elseif(answer=="liaotian") then
  LuaSay("��վС���������ȵ��ܲ��������ȵģ������ȵĿ��ܲ�����Ŷ���ҿ������㵽����Ҫȥ�ĵط���")
elseif(answer=="T424")then       -----------------------------  ����1
	if(LuaQueryTask("T424") == 0) then
		LuaSay("��վС������!��Щ@2��������@0��˼���У�����������գ��಻���ԣ������ɷ�Ը���ѵ���ǣ�ȥ@4������Ӫ@0����@225����������@0��")
		if(TeamCount()<2)then
			if(LuaQueryStr("gender")=="����")then
				LuaSay("��վС����ӴӴ���㻹�ǹ���һ�˰����Ҹ�����㰡����Ӳ����ж���ľ���ӳɣ��������Ҳ�ж���Ľ�����͵͵�ĸ����㣬30�����ܽ�������㶮��@!")
			end
			if(LuaQueryStr("gender")=="Ů��")then
				LuaSay("��վС����ӴӴ���㻹�ǹ���һ�˰����Ҹ�˧�����㰡����Ӳ����ж���ľ���ӳɣ��������Ҳ�ж���Ľ�����͵͵�ĸ����㣬30�����ܽ�������㶮��@!")
			end
		else
			LuaSay("��վС������������һ���ҵ����������Ŷ����ӵ���ͷ�������Ѿ������˰�@!��")
		end
		LuaSetTask("T424",1)
		LuaSetTask("task_kill/mon_016/T424",1)
		UpdateTopSay("����25����������")
		AddLog("���֡����顿",424)
		UpdateMenu()
	elseif(LuaQueryTask("T424")==1) then
		if(LuaQueryTask("task_kill/mon_016/T424")>=26) then
		LuaSay("��վС�����������Ǻñ��죡")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T424jl")
		else
		LuaSay("��վС�����㻹ûɱ��25��@2��������@0��")
                UpdateTopSay("ɱ��25������������������")
		end
	end
		elseif(answer=="T424jl")then
		        if(LuaQueryTask("T424")==1) then
				if(LuaQueryTask("task_kill/mon_016/T424")>=26) then
				if(TeamCount()>=2)then
					LuaAddJx("combat_exp",206000,"T424")
				else
					LuaAddJx("combat_exp",176000,"T424")
				end
				LuaAddAchievementSchedule("Task_num",1)
				LuaDelTask("task_kill/mon_016/T424")
				DelLog("424")
				LuaSetTask("T424",99)
				UpdateMenu()
				end
			end

elseif(answer=="T425")then  -----------------------------  ����2
	if(LuaQueryTask("T425") == 0) then
		LuaSay("��վС���������أ��뵱�����³�������ʱ������Ψһ�Ķ������ӱ�@2��������@0���ˣ�")
		LuaSay("��վС�������������˵ã��ͷ�ȥ������Ӫ����@225����������@0����й����ͷ֮�ޣ�")
		LuaSay("��վС��������������°빦�������ܽύ�����������Ŷ��")
		LuaSetTask("T425",1)
		LuaSetTask("task_kill/mon_017/T425",1)
		UpdateTopSay("����25����������")
		AddLog("����2�����顿",425)
		UpdateMenu()
	elseif(LuaQueryTask("T425")==1) then
		if(LuaQueryTask("task_kill/mon_017/T425")>=26) then
		LuaSay("��վС������л������")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T425jl")
		else
		LuaSay("��վС�����㻹ûɱ��25��@2��������@0��")
                UpdateTopSay("ɱ��25������������������")
		end
	end
		elseif(answer=="T425jl")then
		        if(LuaQueryTask("T425")==1) then
				if(LuaQueryTask("task_kill/mon_017/T425")>=26) then
				if(TeamCount()>=2)then
					LuaAddJx("combat_exp",206000,"T425")
				else
					LuaAddJx("combat_exp",176000,"T425")
				end
				LuaAddAchievementSchedule("Task_num",1)
				LuaDelTask("task_kill/mon_017/T425")
				DelLog("425")
				LuaSetTask("T425",99)
				UpdateMenu()
				end
			end

elseif(answer=="T426")then   -----------------------------  ����3
	if(LuaQueryTask("T426") == 0) then
		LuaSay("��վС�����۰������������°���С�䣬������δ������ȴ��@2��������@0���ˣ���������Ѽ����˸���")
		LuaSay("��վС�������������ǿ��������ȥ@4��Ӫǰ��@0����@225����������@0����й����ͷ֮�ޣ�")
		LuaSay("��վС������������������ӵ�����Ŷ@!")
		LuaSetTask("T426",1)
		LuaSetTask("task_kill/mon_019/T426",1)
		UpdateTopSay("����25����������")
		AddLog("����3�����顿",426)
		UpdateMenu()
	elseif(LuaQueryTask("T426")==1) then
		if(LuaQueryTask("task_kill/mon_019/T426")>=26) then
		LuaSay("��վС������л������")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T426jl")
		else
		LuaSay("��վС�����㻹ûɱ��25��@2��������@0��")
                UpdateTopSay("ɱ��25������������������")
		end
	end
		elseif(answer=="T426jl")then
		        if(LuaQueryTask("T426")==1) then
				if(LuaQueryTask("task_kill/mon_019/T426")>=26) then
				if(TeamCount()>=2)then
					LuaAddJx("combat_exp",206000,"T426")
				else
					LuaAddJx("combat_exp",176000,"T426")
				end
				LuaAddAchievementSchedule("Task_num",1)
				LuaDelTask("task_kill/mon_019/T426")
				DelLog("426")
				LuaSetTask("T426",99)
				UpdateMenu()
				end
			end
                
elseif(answer=="T402")then       -----------------------------  ����
	if(LuaQueryTask("T402") == 2) then
		LuaSay("��վС���������Ժ����пգ��ɰ����������ż���������ȥ�ظ�л���ɡ�@!")
		LuaSetTask("T402",3)
		AddLog("���������顿",402)
		UpdateTopSay("�ظ�л��")
		UpdateMenu()
		UpdateNPCMenu("pk")
		UpdateNPCMenu("xiexuan")
	elseif(LuaQueryTask("T402")==3) then
		LuaSay("��վС������ȥ�ظ�л����")
	end
	
elseif(answer=="T423") then                   ------------------�ٶȵĿ���
		if(LuaQueryTask("T423") == 0 ) then
			LuaSay("��վС���������������һ���Ƚ������ļһ���Ұ��£��ҿ����µ������������⡣")
			LuaSay("��վС��������������ܵ�@4��������@0�ʺ�@3л��@0���ˣ��������ܻ������ң�Ҫ��@33������@0���Ŷ��")
			LuaSay(""..LuaQueryStr("name").."��@!�ҵ���ſ���@3����С����@0�����������ʶ��ʶ��")
			LuaSetTask("T423",1)
			UpdateTopSay("3������ȥ�����������ʺ�л��")
			AddLog("�ٶȵĿ��顾���顿",423)
			time=GetCurrentTime()
			LuaSetTask("423time",time)
			UpdateMenu()

		elseif(LuaQueryTask("T423") == 1 ) then
		   if(LuaQueryTask("T423A") == 99 ) then
			shijiancha=(GetCurrentTime() - LuaQueryTask("423time"))
			if(shijiancha<=180) then
				LuaSay("��վС����@3С����@0�ĳƺŹ�Ȼ���Ǹǵ�@!����ô��ͻ����ˡ�")
				LuaSay("��վС����ǰ��ս���Խ�����Ϣ���ݲ���㣬����Ҫ������������ˣ�")
				LuaSay("��վС�������Ȿ��ÿ����Ҫ�Ƚ�������������������Ŷ������û�о��������ʱ��ÿ���������������ȼ�����һ�ַ�ʽŶ@)")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T423jl")
			else
				LuaSay("��վС������������ٶ�����̫���ˣ�������ʧ��������һ����������")
				LuaSetTask("T423",0)
				LuaSetTask("T423A",0)
				LuaDelTask("423time")
				DelLog("423")
				UpdateMenu()
		      end
		   else
		     LuaSay("��վС����û�뵽�㻹͵��������û��ȥ@4��������@0�ʺ�@3л��@0�����ء�")
		   end
		end
			elseif(answer=="T423jl")then
		       if(LuaQueryTask("T423")==1)then
			LuaSay("����ãã�޴벻֪��Ȼ��ʱ���𣬵��㲻֪����ʲôʱ�򣬼ǵ���������鿴����ָ��Ŷ���ܰ����㲻��������")
			LuaAddJx("combat_exp",129000,"T423")
			LuaAddAchievementSchedule("Task_num",1)
			if( LuaQueryStr("class")=="wu")then   --���ͣ�20�� ��
				if(LuaRandom(10)==1)then
					LuaGive("e_falchion005",1,2,"T423")
				else
					LuaGive("e_falchion005",1,1,"T423")
				end
			elseif(LuaQueryStr("class")=="xian")then --ıʿ��20�� ����
				if(LuaRandom(10)==1)then
					LuaGive("e_fan003",1,2,"T423")
				else
					LuaGive("e_fan003",1,1,"T423")
				end
			elseif(LuaQueryStr("class")=="shen")then--սʿ��20�� ��
				if(LuaRandom(10)==1)then
					LuaGive("e_falchion005",1,2,"T423")
				else
					LuaGive("e_falchion005",1,1,"T423")
				end	
			end
			LuaGive("coin",3000,"T423")
			LuaSetTask("T423",99)
			LuaDelTask("423time")
			LuaDelTask("T423A")
			DelLog("423")
			UpdateMenu()
		       end

		
------------------------------------------------------------------------------ ÿ����ʹ��ʼ 
elseif(answer=="T302") then
	local level= LuaQuery("level")
	if(GetCurrentDay()~=LuaQueryStrTask("302Taskday")) then
		LuaSetTask("T302",0)   
		LuaSetTask("T302cs",0)  
		LuaDelTask("T302time")
		if(LuaItemCount("o_mission076") >0) then
			DelItem("o_mission076",1)
		end
	end
	if(LuaQueryTask("T302") == 0) then
		local shijiancha=(GetCurrentTime() - LuaQueryTask("T302time"))  --��Сʱһ��
		if(shijiancha>=1800) then
			local r
			if(level>=20 and level<30) then
				r=LuaRandom(12)
			elseif(level>=30 and level<50)then
				r=LuaRandom(15)
			elseif(level>=50 and level<60)then
				r=LuaRandom(19)
			elseif(level>=60)then
				r=LuaRandom(22)
			end
			if(r==0) then
				LuaSay("��վС������֪�ιʣ�����ż��������࣬�ϴμ����ж�ͦ�����ģ�������԰����ҵ�æ�ء�")     --------������
				LuaSay("��վС������������һ��Ӽ����ż���������͸�@4��Դ��@0��@3������@0�ɡ�")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",1)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("ÿ����ʹ",302)
				UpdateTopSay("���ż��͸���Դ���������")
			elseif(r==1) then                              -------------------���幫��
				LuaSay("��վС������֪�ιʣ�����ż��������࣬�ϴμ����ж�ͦ�����ģ�������԰����ҵ�æ�ء�")
				LuaSay("��վС������������һ��Ӽ����ż���������͸�@4������@0��@3���幫��@0�ɡ�")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",2)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("ÿ����ʹ",302)
				UpdateTopSay("���ż��͸������ǵĽ��幫��")
			elseif(r==2) then                                  -------------------����
				LuaSay("��վС������֪�ιʣ�����ż��������࣬�ϴμ����ж�ͦ�����ģ�������԰����ҵ�æ�ء�")
				LuaSay("��վС������������һ��Ӽ����ż���������͸�@4��������@0��@3����@0�ɡ�")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",3)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("ÿ����ʹ",302)
				UpdateTopSay("���ż��͸����������Ļ���")
			elseif(r==3) then                                   -------------------������ 
				LuaSay("��վС������֪�ιʣ�����ż��������࣬�ϴμ����ж�ͦ�����ģ�������԰����ҵ�æ�ء�")
				LuaSay("��վС������������һ��Ӽ����ż���������͸�@4������@0��@3��������@0�ɡ�")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",4)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("ÿ����ʹ",302)
				UpdateTopSay("���ż��͸������ǵ���������")
				UpdateNPCMenu("zhongzis")
			elseif(r==4) then                                   -------------------����ʹ��
				LuaSay("��վС������֪�ιʣ�����ż��������࣬�ϴμ����ж�ͦ�����ģ�������԰����ҵ�æ�ء�")
				LuaSay("��վС������������һ��Ӽ����ż���������͸�@4������Ӫ@0��@3����ʹ��@0�ɡ�")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",5)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("ÿ����ʹ",302)
				UpdateTopSay("���ż��͸�������Ӫ�ı���ʹ��")
				UpdateNPCMenu("pk")
			elseif(r==5) then                                   -------------------л���
				LuaSay("��վС������֪�ιʣ�����ż��������࣬�ϴμ����ж�ͦ�����ģ�������԰����ҵ�æ�ء�")
				LuaSay("��վС������������һ��Ӽ����ż���������͸�@4ɽկ@0��@3л���@0�ɡ�")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",6)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("ÿ����ʹ",302)
				UpdateTopSay("���ż��͸�ɽկ��л���")
			elseif(r==6) then                                   -------------------ҩƷ����
				LuaSay("��վС������֪�ιʣ�����ż��������࣬�ϴμ����ж���ͦ�����ģ�������԰����ҵ�æ�ء�")
				LuaSay("��վС������������һ��Ӽ����ż���������͸�@4��������@0��@3ҩƷ����@0�ɡ�")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",7)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("ÿ����ʹ",302)
				UpdateTopSay("���ż��͸��������ϵ�ҩƷ����")
			elseif(r==7) then                                   -------------------л��
				LuaSay("��վС������֪�ιʣ�����ż��������࣬�ϴμ����ж�ͦ�����ģ�������԰����ҵ�æ�ء�")
				LuaSay("��վС������������һ��Ӽ����ż���������͸�@4��������@0��@3л��@0�ɡ�")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",8)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("ÿ����ʹ",302)
				UpdateTopSay("���ż��͸��������ϵ�л��")
				UpdateNPCMenu("kongzi")
			elseif(r==8) then                                   -------------------���鳤
				LuaSay("��վС������֪�ιʣ�����ż��������࣬�ϴμ����ж�ͦ�����ģ�������԰����ҵ�æ�ء�")
				LuaSay("��վС������������һ��Ӽ����ż���������͸�@4����֮��@0��@3���鳤@0�ɡ�")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",9)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("ÿ����ʹ",302)
				UpdateTopSay("���ż��͸�����֮�ֵ����鳤")
			elseif(r==9) then                                   -------------------˾��Ԫ��
				LuaSay("��վС������֪�ιʣ�����ż��������࣬�ϴμ����ж�ͦ�����ģ�������԰����ҵ�æ�ء�")
				LuaSay("��վС������������һ��Ӽ����ż���������͸�@4������@0��@3˾��Ԫ��@0�ɡ�")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",10)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("ÿ����ʹ",302)
				UpdateTopSay("���ż��͸������ǵ�˾��Ԫ��")
			elseif(r==10 or r==11) then                                ------------------------�ϴ峤
				LuaSay("��վС������֪�ιʣ�����ż��������࣬�ϴμ����е�ͦ�����ģ�������԰����ҵ�æ�ء�")
				LuaSay("��վС������������һ��Ӽ����ż���������͸�@4��Դ���@0��@3�ϴ峤@0�ɡ�")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",11)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("ÿ����ʹ",302)
				UpdateTopSay("���ż��͸���Դ����ϴ峤")
			elseif(r==12) then                                        ----------------����
				LuaSay("��վС������֪�ιʣ�����ż��������࣬�ϴμ����ж�ͦ�����ģ�������԰����ҵ�æ�ء�")
				LuaSay("��վС������������һ��Ӽ����ż���������͸�@4��ˮ�԰�@0��@3����@0�ɡ�")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",12)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("ÿ����ʹ",302)
				UpdateTopSay("���ż��͸���ˮ�԰�������")
			elseif(r==13) then                              -------------------����
				LuaSay("��վС������֪�ιʣ�����ż��������࣬�ϴμ����ж�ͦ�����ģ�������԰����ҵ�æ�ء�")
				LuaSay("��վС������������һ��Ӽ����ż���������͸�@4��������@0��@3����@0�ɡ�")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",13)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("ÿ����ʹ",302)
				UpdateTopSay("���ż��͸���������ķ���")
			elseif(r==14) then                                  -------------------�����
				LuaSay("��վС������֪�ιʣ�����ż��������࣬�ϴμ����ж�ͦ�����ģ�������԰����ҵ�æ�ء�")
				LuaSay("��վС������������һ��Ӽ����ż���������͸�@4������@0��@3�����@0�ɡ�")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",14)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("ÿ����ʹ",302)
				UpdateTopSay("���ż��͸������ǵ������")
			elseif(r==15) then                                   -------------------��Ԩ��
				LuaSay("��վС������֪�ιʣ�����ż��������࣬�ϴμ����ж�ͦ�����ģ�������԰����ҵ�æ�ء�")
				LuaSay("��վС������������һ��Ӽ����ż���������͸�@4��Ƿ���@0��@3��Ԩ��@0�ɡ�")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",15)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("ÿ����ʹ",302)
				UpdateTopSay("���ż��͸���Ƿ������Ԩ��")
			elseif(r==16) then                                   -------------------Ҧ��
				LuaSay("��վС������֪�ιʣ�����ż��������࣬�ϴμ����ж�ͦ�����ģ�������԰����ҵ�æ�ء�")
				LuaSay("��վС������������һ��Ӽ����ż���������͸�@4μˮ֮��@0��@3Ҧ��@0�ɡ�")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",16)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("ÿ����ʹ",302)
				UpdateTopSay("���ż��͸�μˮ֮����Ҧ��")
			elseif(r==17) then                                        ----------------������� 
				LuaSay("��վС������֪�ιʣ�����ż��������࣬�ϴμ����ж�ͦ�����ģ�������԰����ҵ�æ�ء�")
				LuaSay("��վС������������һ��Ӽ����ż���������͸�@4��������@0��@3�������@0�ɡ�")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",17)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("ÿ����ʹ",302)
				UpdateTopSay("���ż��͸�а��֮�ֵ��������")
			elseif(r==18) then                              -------------------�ذ��� 
				LuaSay("��վС������֪�ιʣ�����ż��������࣬�ϴμ����ж�ͦ�����ģ�������԰����ҵ�æ�ء�")
				LuaSay("��վС������������һ��Ӽ����ż���������͸�@4����ؿ�@0��@3�ذ���@0�ɡ�")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",18)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("ÿ����ʹ",302)
				UpdateTopSay("���ż��͸�����ؿڵ��ذ���")
			elseif(r==19) then                                  -------------------�ذϹ� 
				LuaSay("��վС������֪�ιʣ�����ż��������࣬�ϴμ����ж�ͦ�����ģ�������԰����ҵ�æ�ء�")
				LuaSay("��վС������������һ��Ӽ����ż���������͸�@4���г�@0��@3�ذϹ�@0�ɡ�")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",19)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("ÿ����ʹ",302)
				UpdateTopSay("���ż��͸����гǵ��ذϹ�")
			elseif(r==20) then                              -------------------Ľ�ݴ� 
				LuaSay("��վС������֪�ιʣ�����ż��������࣬�ϴμ����ж�ͦ�����ģ�������԰����ҵ�æ�ء�")
				LuaSay("��վС������������һ��Ӽ����ż���������͸�@4̫�йž�@0��@3Ľ�ݴ�@0�ɡ�")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",20)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("ÿ����ʹ",302)
				UpdateTopSay("���ż��͸�̫�йž���Ľ�ݴ�")
			elseif(r==21) then                                  -------------------��̫�� 
				LuaSay("��վС������֪�ιʣ�����ż��������࣬�ϴμ����ж�ͦ�����ģ�������԰����ҵ�æ�ء�")
				LuaSay("��վС������������һ��Ӽ����ż���������͸�@4�κ���@0��@3��̫��@0�ɡ�")
				LuaGive("o_mission076",1)
				LuaSetTask("T302",21)
				LuaSetTask("302Taskday",GetCurrentDay())
				AddLog("ÿ����ʹ",302)
				UpdateTopSay("���ż��͸��κ��µĻ�̫��")
			end 
			LuaSendMenu()
			return 1 
		else
			local f=floor((1800-shijiancha)/60)  --������ٷ���
			local s=1800-shijiancha-f*60
			LuaSay("����:�Ȼᣬ@230����@0��û�����ٵ�@2"..f.."����"..s.."����@0���������Ұɣ�")
		end
	elseif(LuaQueryTask("T302") == 1 ) then         --------------------�˴�����Ǹ��ĸ�NPC���� ������
		if(LuaQueryTask("T302A") == 99 ) then 
			LuaSay("��վС�����������ǰ����ҵĴ�æ�������������ڿ�������һ����@!")
			if(LuaRandom(6)==0) then
				LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ�����㡣")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302A",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")
			UpdateMenu()
		else
			LuaSay("��վС�����㻹û�а��ż��͸�@4��Դ��@0��@3������@0�ء�")
			UpdateTopSay("���ż��͸���Դ���������")
		end
      

	elseif(LuaQueryTask("T302") ==2) then
		if(LuaQueryTask("T302B") == 99 ) then
			LuaSay("��վС�����������ǰ����ҵĴ�æ�������������ڿ�������һ����@!")
			if(LuaRandom(6)==0) then
				LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ�����㡣")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302B",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")
			UpdateMenu()
		else
			LuaSay("��վС�����㻹û�а��ż��͸�@4������@0��@3���幫��@0�ء�")
			UpdateTopSay("���ż��͸������ǵĽ��幫��")
		end
		  
	elseif(LuaQueryTask("T302") ==3) then
		if(LuaQueryTask("T302C") == 99 ) then
			LuaSay("��վС�����������ǰ����ҵĴ�æ�������������ڿ�������һ����@!")
			if(LuaRandom(6)==0) then
				LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ�����㡣")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302C",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu()  
		else
			LuaSay("��վС�����㻹û�а��ż��͸�@4��������@0��@3����@0�ء�")
			UpdateTopSay("���ż��͸����������Ļ���")
		end
		  
	elseif(LuaQueryTask("T302")==4) then
		if(LuaQueryTask("T302D") == 99 ) then
			LuaSay("��վС�����������ǰ����ҵĴ�æ�������������ڿ�������һ����@!")
			if(LuaRandom(6)==0) then
				LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ�����㡣")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302D",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu()  
		else
			LuaSay("��վС�����㻹û�а��ż��͸�@4��������@0��@3��������@0��")
			UpdateTopSay("���ż��͸��������ѵ���������")
		end
			
	elseif(LuaQueryTask("T302") ==5) then
		if(LuaQueryTask("T302E") == 99 ) then
			LuaSay("��վС�����������ǰ����ҵĴ�æ�������������ڿ�������һ����@!")
			if(LuaRandom(6)==0) then
				LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ�����㡣")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302E",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu() 
		else
			LuaSay("��վС�����㻹û�а��ż��͸�@4������Ӫ@0��@3����ʹ��@0�ء�")
			UpdateTopSay("���ż��͸�������Ӫ�ı���ʹ��")
		end
		   
	elseif(LuaQueryTask("T302") ==6) then
		if(LuaQueryTask("T302F") == 99 ) then
			LuaSay("��վС�����������ǰ����ҵĴ�æ�������������ڿ�������һ����@!")
			if(LuaRandom(6)==0) then
				LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ�����㡣")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302F",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu() 
		else
			LuaSay("��վС�����㻹û�а��ż��͸�@4ɽկ@0��@3л���@0�ء�")
			UpdateTopSay("���ż��͸�ɽկ��л���")
		end
		  
	elseif(LuaQueryTask("T302") ==7) then
		if(LuaQueryTask("T302G") == 99 ) then
			LuaSay("��վС�����������ǰ����ҵĴ�æ�������������ڿ�������һ����@!")
			if(LuaRandom(6)==0) then
				LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ�����㡣")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302G",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu()  
		else
			LuaSay("��վС�����㻹û�а��ż��͸�@4��������@0��@3ҩƷ����@0�ء�")
			UpdateTopSay("���ż��͸��������ϵ�ҩƷ����")
		end
		  
	elseif(LuaQueryTask("T302") ==8) then
		if(LuaQueryTask("T302H") == 99 ) then
			LuaSay("��վС�����������ǰ����ҵĴ�æ�������������ڿ�������һ����@!")
			if(LuaRandom(6)==0) then
				LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ�����㡣")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302H",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu() 
		else
			LuaSay("��վС�����㻹û�а��ż��͸�@4��������@0��@3л��@0�ء�")
			UpdateTopSay("���ż��͸��������ϵ�л��")
		end
		   
	elseif(LuaQueryTask("T302") ==9) then
		if(LuaQueryTask("T302I") == 99 ) then
			LuaSay("��վС�����������ǰ����ҵĴ�æ�������������ڿ�������һ����@!")
			if(LuaRandom(6)==0) then
				LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ�����㡣")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302I",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu() 
		else
			LuaSay("��վС�����㻹û�а��ż��͸�@4����֮��@0��@3���鳤@0�ء�")
			UpdateTopSay("���ż��͸�����֮�ֵ����鳤")
		end
		   
	elseif(LuaQueryTask("T302") ==10) then
		if(LuaQueryTask("T302J") == 99 ) then
			LuaSay("��վС�����������ǰ����ҵĴ�æ�������������ڿ�������һ����@!")
			if(LuaRandom(6)==0) then
				LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ�����㡣")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302J",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")
			UpdateMenu()
		else
			LuaSay("��վС�����㻹û�а��ż��͸�@4������@0��@3˾��Ԫ��@0�ء�")
			UpdateTopSay("���ż��͸������ǵ�˾��Ԫ��")
		end

	elseif(LuaQueryTask("T302") == 11 ) then         
		if(LuaQueryTask("T302K") == 99 ) then 
			LuaSay("��վС�����������ǰ����ҵĴ�æ�������������ڿ�������һ����@!")
			if(LuaRandom(6)==0) then
				LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ�����㡣")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302K",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")
			UpdateMenu()
		else
			LuaSay("��վС�����㻹û�а��ż��͸�@4��Դ��@0��@3�ϴ峤@0�ء�")
			UpdateTopSay("���ż��͸���Դ����ϴ峤")
		end
		  
	elseif(LuaQueryTask("T302") ==12) then
		if(LuaQueryTask("T302L") == 99 ) then
			LuaSay("��վС�����������ǰ����ҵĴ�æ�������������ڿ�������һ����@!")
			if(LuaRandom(6)==0) then
				LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ�����㡣")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302L",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")
			UpdateMenu()
		else
			LuaSay("��վС�����㻹û�а��ż��͸�@4��ˮ�԰�@0��@3����@0�ء�")
			UpdateTopSay("���ż��͸���ˮ�԰�������")
		end
		  
	elseif(LuaQueryTask("T302") ==13) then
		if(LuaQueryTask("T302M") == 99 ) then
			LuaSay("��վС�����������ǰ����ҵĴ�æ�������������ڿ�������һ����@!")
			if(LuaRandom(6)==0) then
				LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ�����㡣")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302M",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu()  
		else
			LuaSay("��վС�����㻹û�а��ż��͸�@4��������@0��@3����@0�ء�")
			UpdateTopSay("���ż��͸���������ķ���")
		end
		  
	elseif(LuaQueryTask("T302")==14) then
		if(LuaQueryTask("T302N") == 99 ) then
			LuaSay("��վС�����������ǰ����ҵĴ�æ�������������ڿ�������һ����@!")
			if(LuaRandom(6)==0) then
				LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ�����㡣")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302N",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu()  
		else
			LuaSay("��վС�����㻹û�а��ż��͸�@4������@0��@3�����@0�ء�")
			UpdateTopSay("���ż��͸������ǵ������")
		end
			
	elseif(LuaQueryTask("T302") ==15) then
		if(LuaQueryTask("T302O") == 99 ) then
			LuaSay("��վС�����������ǰ����ҵĴ�æ�������������ڿ�������һ����@!")
			if(LuaRandom(6)==0) then
				LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ�����㡣")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302O",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu() 
		else
			LuaSay("��վС�����㻹û�а��ż��͸�@4��Ƿ���@0��@3��Ԩ��@0��")
			UpdateTopSay("���ż��͸���Ƿ������Ԩ��")
		end

	elseif(LuaQueryTask("T302") ==16) then
		if(LuaQueryTask("T302P") == 99 ) then
			LuaSay("��վС�����������ǰ����ҵĴ�æ�������������ڿ�������һ����@!")
			if(LuaRandom(6)==0) then
				LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ�����㡣")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302P",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu() 
		else
			LuaSay("��վС�����㻹û�а��ż��͸�@4μˮ֮��@0��@3Ҧ��@0�ء�") 
			UpdateTopSay("���ż��͸�μˮ֮����Ҧ��")
		end

	elseif(LuaQueryTask("T302") ==17) then
		if(LuaQueryTask("T302Q") == 99 ) then
			LuaSay("��վС�����������ǰ����ҵĴ�æ�������������ڿ�������һ����@!")
			if(LuaRandom(6)==0) then
				LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ�����㡣")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302Q",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu() 
		else
			LuaSay("��վС�����㻹û�а��ż��͸�@4��������@0��@3�������@0�ء�") 
			UpdateTopSay("���ż��͸��������ֵ��������")
		end

	elseif(LuaQueryTask("T302") ==18) then
		if(LuaQueryTask("T302R") == 99 ) then
			LuaSay("��վС�����������ǰ����ҵĴ�æ�������������ڿ�������һ����@!")
			if(LuaRandom(6)==0) then
				LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ�����㡣")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302R",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu() 
		else
			LuaSay("��վС�����㻹û�а��ż��͸�@4����ؿ�@0��@3�ذ���@0�ء�") 
			UpdateTopSay("���ż��͸�����ؿڵ��ذ���")
		end

	elseif(LuaQueryTask("T302") ==19) then
		if(LuaQueryTask("T302S") == 99 ) then
			LuaSay("��վС�����������ǰ����ҵĴ�æ�������������ڿ�������һ����@!")
			if(LuaRandom(6)==0) then
				LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ�����㡣")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302S",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu() 
		else
			LuaSay("��վС�����㻹û�а��ż��͸�@4���г�@0��@3�ذϹ�@0�ء�")  
			UpdateTopSay("���ż��͸����гǵ��ذϹ�")
		end

	elseif(LuaQueryTask("T302") ==20) then
		if(LuaQueryTask("T302T") == 99 ) then
			LuaSay("��վС�����������ǰ����ҵĴ�æ�������������ڿ�������һ����@!")
			if(LuaRandom(6)==0) then
				LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ�����㡣")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302T",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu() 
		else
			LuaSay("��վС�����㻹û�а��ż��͸�@4̫�йž�@0��@3Ľ�ݴ�@0�ء�")
			UpdateTopSay("���ż��͸�̫�йž���Ľ�ݴ�")
		end

	elseif(LuaQueryTask("T302") ==21) then
		if(LuaQueryTask("T302U") == 99 ) then
			LuaSay("��վС�����������ǰ����ҵĴ�æ�������������ڿ�������һ����@!")
			if(LuaRandom(6)==0) then
				LuaSay("��ʾ������Ʒ����̫���ˣ��õ�һ��@3���˱���@0�����ʹ�ðɣ���ϲ�����㡣")
				LuaGive("o_box002",1,"Tdiaoyutg")
			end
			LuaSetTask("T302",0)
			LuaSetTask("T302U",0)
			LuaAddTask("T302cs",1)
			local coin=3000-1000*(LuaQueryTask("T302cs")-1)
			if(coin>=500) then
				LuaGive("coin",coin,"T302")
			else
				LuaGive("coin",500,"T302")
			end
			LuaSetTask("T302time",GetCurrentTime())
			DelLog("302")  
			UpdateMenu() 
		else
			LuaSay("��վС�����㻹û�а��ż��͸�@4�κ���@0��@3��̫��@0�ء�") 
			UpdateTopSay("���ż��͸��κ��µĻ�̫��")
		end

	elseif(LuaQueryTask("T302") == 99 ) then
		LuaSay("��վС���������Ѿ�û�п��͵�����@!�����������ɡ�")

	end      
-----------------------------------------------------------------------------ÿ����ʹ�������

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
		LuaSay("��վС���������´���Ʒ�۸�ˢ�»���@5"..(300-(GetCurrentTime() - LuaPublicQuery("PSshuaxin_CD"))  ).."�룡@0��Ŀǰ�����̽��Ϊ@3"..LuaQueryTask("PSmoney").."ͭ��!@0")
       	LuaDeleteBuff("518")
		LuaGiveBuff("518",1)
		LuaSay("���5�������̱���״̬")
    	FlushMyInfo("1")
		if((GetCurrentTime()-LuaQueryTask("PSbegin_time"))>3300 )then   -----������ʱ����
		LuaSay("��վС�����������������޲���@55����@0�ˣ���@3�Ѷ�������@0�ɣ���Ȼ�������ģ�")
		end
		AddMenuItem("@7��Ʒ�б�","")                  -----------��Ʒ�б��Լ������ڲ˵��ĸ��� 
			AddMenuItem("@3���,����@3"..LuaPublicQuery("PS_MN_price5").."ͭ��@0","PS_MN")
			AddMenuItem("@3���ʯ,����@3"..LuaPublicQuery("PS_FCS_price5").."ͭ��@0","PS_FCS")
			AddMenuItem("@3ˮ��,����@3"..LuaPublicQuery("PS_SJ_price5").."ͭ��@0","PS_SJ")
			AddMenuItem("@3����,����@3"..LuaPublicQuery("PS_ZZ_price5").."ͭ��@0","PS_ZZ")
			AddMenuItem("@3ҹ����,����@3"..LuaPublicQuery("PS_YMZ_price5").."ͭ��@0","PS_YMZ")
		else
		LuaSay("��վС���������������Ѿ��������޻������̽����������ظ�@4������@0��@3�н�����@0�ɣ�")
		UpdateTopSay("��ظ������ǵ��н����˰�")
		end
    else
    LuaSay("��վС���������ϵ�@3���̱���״̬@0�Ѿ���ʧ����·���������ܹ������޷��������̣�")
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
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_MN_price5") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_MN_price5")) then
	LuaGive("coin",-LuaPublicQuery("PS_MN_price5"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_MN_price5"))
	LuaGive("o_mission376",1)
	DoTalk("TPaoShang")
	else
	LuaSay("��վС���������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_MN_buy_10")then          -------------��10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_MN_price5") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_MN_price5")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_MN_price5"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_MN_price5"))
	LuaGive("o_mission376",10)
 	DoTalk("TPaoShang")
	else
	LuaSay("��վС���������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_MN_sell_1")then          -------------��1 
	if(LuaItemCount("o_mission376") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission376",1)
		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_MN_price5")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_MN_price5"))
		LuaGive("coin",LuaPublicQuery("PS_MN_price5"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��վС���������̽���Ѿ��������ޣ�")
		
		end
 	DoTalk("TPaoShang")
	else
	LuaSay("��վС������������觲����������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_MN_sell_10")then          -------------��10 
	if(LuaItemCount("o_mission376") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission376",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_MN_price5")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_MN_price5"))
		LuaGive("coin",10*LuaPublicQuery("PS_MN_price5"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��վС���������̽���Ѿ��������ޣ�")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("��վС������������觲����������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_MN_sell_all")then          -------------ȫ���� 
	if(LuaItemCount("o_mission376") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
    	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission376"))*(LuaPublicQuery("PS_MN_price5"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission376"))*(LuaPublicQuery("PS_MN_price5")))
		LuaGive("coin",(LuaItemCount("o_mission376"))*(LuaPublicQuery("PS_MN_price5")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��վС���������̽���Ѿ��������ޣ�")
		
		end
	DelItem("o_mission376",LuaItemCount("o_mission376"))
	DoTalk("TPaoShang")
	else
	LuaSay("��վС������������觲����������̽���Ѿ��������ޣ�")
	
	end

elseif(answer=="PS_FCS")then                 ---------------���ʯ���� 
	AddMenuItem("@7�����б�","")
	AddMenuItem("@3��1��","PS_FCS_buy_1")
	AddMenuItem("@3��10��","PS_FCS_buy_10")
	AddMenuItem("@3��1��","PS_FCS_sell_1")
	AddMenuItem("@3��10��","PS_FCS_sell_10")
	AddMenuItem("@3ȫ����","PS_FCS_sell_all")
elseif(answer=="PS_FCS_buy_1")then          -------------��1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_FCS_price5") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_FCS_price5")) then
	LuaGive("coin",-LuaPublicQuery("PS_FCS_price5"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_FCS_price5"))
	LuaGive("o_mission377",1)
	DoTalk("TPaoShang")
	else
	LuaSay("��վС���������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_FCS_buy_10")then          -------------��10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_FCS_price5") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_FCS_price5")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_FCS_price5"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_FCS_price5"))
	LuaGive("o_mission377",10)
	DoTalk("TPaoShang")
	else
	LuaSay("��վС���������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_FCS_sell_1")then          -------------��1 
	if(LuaItemCount("o_mission377") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission377",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_FCS_price5")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_FCS_price5"))
		LuaGive("coin",LuaPublicQuery("PS_FCS_price5"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��վС���������̽���Ѿ��������ޣ�")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("��վС�������������ʯ�����������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_FCS_sell_10")then          -------------��10 
	if(LuaItemCount("o_mission377") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission377",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_FCS_price5")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_FCS_price5"))
		LuaGive("coin",10*LuaPublicQuery("PS_FCS_price5"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��վС���������̽���Ѿ��������ޣ�")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("��վС�������������ʯ�����������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_FCS_sell_all")then          -------------ȫ���� 
	if(LuaItemCount("o_mission377") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission377"))*(LuaPublicQuery("PS_FCS_price5"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission377"))*(LuaPublicQuery("PS_FCS_price5")))
		LuaGive("coin",(LuaItemCount("o_mission377"))*(LuaPublicQuery("PS_FCS_price5")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��վС���������̽���Ѿ��������ޣ�")
		
		end
	DelItem("o_mission377",LuaItemCount("o_mission377"))
	DoTalk("TPaoShang")
	else
	LuaSay("��վС�������������ʯ�����������̽���Ѿ��������ޣ�")
	
	end

elseif(answer=="PS_SJ")then                 ---------------ˮ������ 
	AddMenuItem("@7�����б�","")
	AddMenuItem("@3��1��","PS_SJ_buy_1")
	AddMenuItem("@3��10��","PS_SJ_buy_10")
	AddMenuItem("@3��1��","PS_SJ_sell_1")
	AddMenuItem("@3��10��","PS_SJ_sell_10")
	AddMenuItem("@3ȫ����","PS_SJ_sell_all")
elseif(answer=="PS_SJ_buy_1")then          -------------��1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_SJ_price5") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_SJ_price5")) then
	LuaGive("coin",-LuaPublicQuery("PS_SJ_price5"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_SJ_price5"))
	LuaGive("o_mission378",1)
	DoTalk("TPaoShang")
	else
	LuaSay("��վС���������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_SJ_buy_10")then          -------------��10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_SJ_price5") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_SJ_price5")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_SJ_price5"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_SJ_price5"))
	LuaGive("o_mission378",10)
	DoTalk("TPaoShang")
	else
	LuaSay("��վС���������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_SJ_sell_1")then          -------------��1 
	if(LuaItemCount("o_mission378") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission378",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_SJ_price5")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_SJ_price5"))
		LuaGive("coin",LuaPublicQuery("PS_SJ_price5"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��վС���������̽���Ѿ��������ޣ�")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("��վС����������ˮ�������������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_SJ_sell_10")then          -------------��10 
	if(LuaItemCount("o_mission378") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission378",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_SJ_price5")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_SJ_price5"))
		LuaGive("coin",10*LuaPublicQuery("PS_SJ_price5"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��վС���������̽���Ѿ��������ޣ�")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("��վС����������ˮ�������������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_SJ_sell_all")then          -------------ȫ���� 
	if(LuaItemCount("o_mission378") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission378"))*(LuaPublicQuery("PS_SJ_price5"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission378"))*(LuaPublicQuery("PS_SJ_price5")))
		LuaGive("coin",(LuaItemCount("o_mission378"))*(LuaPublicQuery("PS_SJ_price5")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��վС���������̽���Ѿ��������ޣ�")
		
		end
	DelItem("o_mission378",LuaItemCount("o_mission378"))
	DoTalk("TPaoShang")
	else
	LuaSay("��վС����������ˮ�������������̽���Ѿ��������ޣ�")
	
	end
	
elseif(answer=="PS_ZZ")then                 ---------------�������� 
	AddMenuItem("@7�����б�","")
	AddMenuItem("@3��1��","PS_ZZ_buy_1")
	AddMenuItem("@3��10��","PS_ZZ_buy_10")
	AddMenuItem("@3��1��","PS_ZZ_sell_1")
	AddMenuItem("@3��10��","PS_ZZ_sell_10")
	AddMenuItem("@3ȫ����","PS_ZZ_sell_all")
elseif(answer=="PS_ZZ_buy_1")then          -------------��1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_ZZ_price5") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_ZZ_price5")) then
	LuaGive("coin",-LuaPublicQuery("PS_ZZ_price5"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_ZZ_price5"))
	LuaGive("o_mission379",1)
	DoTalk("TPaoShang")
	else
	LuaSay("��վС���������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_ZZ_buy_10")then          -------------��10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_ZZ_price5") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_ZZ_price5")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_ZZ_price5"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_ZZ_price5"))
	LuaGive("o_mission379",10)
	DoTalk("TPaoShang")
	else
	LuaSay("��վС���������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_ZZ_sell_1")then          -------------��1 
	if(LuaItemCount("o_mission379") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission379",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_ZZ_price5")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_ZZ_price5"))
		LuaGive("coin",LuaPublicQuery("PS_ZZ_price5"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��վС���������̽���Ѿ��������ޣ�")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("��վС�������������鲻���������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_ZZ_sell_10")then          -------------��10 
	if(LuaItemCount("o_mission379") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission379",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_ZZ_price5")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_ZZ_price5"))
		LuaGive("coin",10*LuaPublicQuery("PS_ZZ_price5"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��վС���������̽���Ѿ��������ޣ�")
		
		end
	DoTalk("TPaoShang")
	else
	LuaSay("��վС�������������鲻���������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_ZZ_sell_all")then          -------------ȫ���� 
	if(LuaItemCount("o_mission379") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission379"))*(LuaPublicQuery("PS_ZZ_price5"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission379"))*(LuaPublicQuery("PS_ZZ_price5")))
		LuaGive("coin",(LuaItemCount("o_mission379"))*(LuaPublicQuery("PS_ZZ_price5")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��վС���������̽���Ѿ��������ޣ�")
		
		end
	DelItem("o_mission379",LuaItemCount("o_mission379"))
	DoTalk("TPaoShang")
	else
	LuaSay("��վС�������������鲻���������̽���Ѿ��������ޣ�")
	
	end

elseif(answer=="PS_YMZ")then                 ---------------ҹ�������� 
	AddMenuItem("@7�����б�","")
	AddMenuItem("@3��1��","PS_YMZ_buy_1")
	AddMenuItem("@3��10��","PS_YMZ_buy_10")
	AddMenuItem("@3��1��","PS_YMZ_sell_1")
	AddMenuItem("@3��10��","PS_YMZ_sell_10")
	AddMenuItem("@3ȫ����","PS_YMZ_sell_all")
elseif(answer=="PS_YMZ_buy_1")then          -------------��1 
	if(LuaItemCount("coin")>=LuaPublicQuery("PS_YMZ_price5") and LuaQueryTask("PSmoney")>=LuaPublicQuery("PS_YMZ_price5")) then
	LuaGive("coin",-LuaPublicQuery("PS_YMZ_price5"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-LuaPublicQuery("PS_YMZ_price5"))
	LuaGive("o_mission380",1)
	DoTalk("TPaoShang")
	else
	LuaSay("��վС���������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_YMZ_buy_10")then          -------------��10 
	if(LuaItemCount("coin")>=10*LuaPublicQuery("PS_YMZ_price5") and LuaQueryTask("PSmoney")>=10*LuaPublicQuery("PS_YMZ_price5")) then
	LuaGive("coin",-10*LuaPublicQuery("PS_YMZ_price5"),"TPaoShang")
	LuaSetTask("PSmoney",LuaQueryTask("PSmoney")-10*LuaPublicQuery("PS_YMZ_price5"))
	LuaGive("o_mission380",10)
 	DoTalk("TPaoShang")
	else
	LuaSay("��վС���������ϵ�ͭ�Ҳ����������̽��㣡")
	
	end
elseif(answer=="PS_YMZ_sell_1")then          -------------��1 
	if(LuaItemCount("o_mission380") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission380",1)
 		if(LuaQueryTask("PSmoney")+LuaPublicQuery("PS_YMZ_price5")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+LuaPublicQuery("PS_YMZ_price5"))
		LuaGive("coin",LuaPublicQuery("PS_YMZ_price5"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��վС���������̽���Ѿ��������ޣ�")
		
		end
 	DoTalk("TPaoShang")
	else
	LuaSay("��վС����������ҹ���鲻���������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_YMZ_sell_10")then          -------------��10 
	if(LuaItemCount("o_mission380") >= 10 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
	DelItem("o_mission380",10)
 		if(LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_YMZ_price5")< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+10*LuaPublicQuery("PS_YMZ_price5"))
		LuaGive("coin",10*LuaPublicQuery("PS_YMZ_price5"),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��վС���������̽���Ѿ��������ޣ�")
		
		end
 	DoTalk("TPaoShang")
	else
	LuaSay("��վС����������ҹ���鲻���������̽���Ѿ��������ޣ�")
	
	end
elseif(answer=="PS_YMZ_sell_all")then          -------------ȫ���� 
	if(LuaItemCount("o_mission380") >= 1 and LuaQueryTask("PSmoney")<LuaQueryTask("PSmoney_limit")) then
      	if(LuaQueryTask("PSmoney")+(LuaItemCount("o_mission380"))*(LuaPublicQuery("PS_YMZ_price5"))< LuaQueryTask("PSmoney_limit"))  then
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney")+(LuaItemCount("o_mission380"))*(LuaPublicQuery("PS_YMZ_price5")))
		LuaGive("coin",(LuaItemCount("o_mission380"))*(LuaPublicQuery("PS_YMZ_price5")),"TPaoShang")
		else
		LuaGive("coin",LuaQueryTask("PSmoney_limit")-LuaQueryTask("PSmoney"),"TPaoShang")
		LuaSetTask("PSmoney",LuaQueryTask("PSmoney_limit"))
		LuaSay("��վС���������̽���Ѿ��������ޣ�")
		
		end
	DelItem("o_mission380",LuaItemCount("o_mission380"))
 	DoTalk("TPaoShang")
	else
	LuaSay("��վС����������ҹ���鲻���������̽���Ѿ��������ޣ�")
	
	end
	


-->>>>>>>>>>>>>>>>>ף������

elseif(answer=="Tbless")then
	AddMenuItem("@7ף������","")
	AddMenuItem("@7ף��������ȡ","bless_A")	
	AddMenuItem("@7��ȡף��˵��","bless_B")

elseif(answer=="bless_A")then
	LuaSay("��վС���������Ը�⣬����˵��Ը�������£���ֻ��Ҫ��@2��ͨ��@0������ȡ��˫����@4ף������@0Ŷ������и�����������յ����ף����@!")
	AddMenuItem("@7��ȡѡ��","")
	AddMenuItem("@7������ȡ","bless_A1")	
	AddMenuItem("@5˫����ȡ","bless_A2")
elseif(answer=="bless_A1")then
	local level= LuaQuery("level")
	if(LuaQuery("level")>=20)then
		if(LuaQueryTask("last_lv")~=LuaQuery("level"))then			
			if(LuaQuery("level")>=60)then 
				if(LuaFreeBag()>=3)then
					LuaSay("��վС�������@3ף������@0�͸�������Ѱɣ����ף�������͸������������л������@!")
					if((LuaQuery("level")-LuaQueryTask("last_lv"))>1)then
						LuaSay("��վС������һ��������û������ȡ@3ף������@0���´β�Ҫ����Ŷ@!")
					end
						LuaGive("e_mission416",1,"Tbless")
						LuaGive("e_mission416",1,"Tbless")
						LuaGive("e_mission416",1,"Tbless")
					
					LuaSetTask("last_lv",LuaQuery("level"))
					UpdateMenu()
				else
					LuaSay("��ʾ����ı����ռ䲻��3������������������ȡŶ@!")
				end
			elseif(LuaQuery("level")>=40)then
				if(LuaFreeBag()>=2)then
					LuaSay("��վС�������@3ף������@0�͸�������Ѱɣ����ף�������͸������������л������@!")
					if((LuaQuery("level")-LuaQueryTask("last_lv"))>1)then
						LuaSay("��վС������һ��������û������ȡ@3ף������@0���´β�Ҫ����Ŷ@!")
					end
						LuaGive("e_mission416",1,"Tbless")
						LuaGive("e_mission416",1,"Tbless")
					LuaSetTask("last_lv",LuaQuery("level"))
					UpdateMenu()
				else
					LuaSay("��ʾ����ı����ռ䲻��2������������������ȡŶ@!")
				end
			else
				if(LuaFreeBag()>=1)then
					LuaSay("��վС�������@3ף������@0�͸�������Ѱɣ����ף�������͸������������л������@!")
					if((LuaQuery("level")-LuaQueryTask("last_lv"))>1)then
						LuaSay("��վС������һ��������û������ȡ@3ף������@0���´β�Ҫ����Ŷ@!")
					end
						LuaGive("e_mission416",1,"Tbless")
					LuaSetTask("last_lv",LuaQuery("level"))
					UpdateMenu()
				else
					LuaSay("��ʾ����ı����ռ䲻��1������������������ȡŶ@!")
				end
			end

		else
			LuaSay("��ʾ����ǰ�ȼ��Ѿ���ȡ����@3ף������@0�ˣ������ظ���ȡ��Ŷ@!")
		end
	else
		LuaSay("��ʾ��@3����ף��@0Ҫ��20���Ժ������ȡŶ")
	end
elseif(answer=="bless_A2")then
	local level= LuaQuery("level")
	if(LuaQuery("level")>=20)then
		if(LuaQueryTask("last_lv")~=LuaQuery("level"))then
			if(LuaItemCount("o_gold1y")>=2)then
				if(LuaQuery("level")>=60)then 
					if(LuaFreeBag()>=6)then
						LuaSay("��վС������ϲ����˫����@4ף������@0�����@3ף������@0�͸�������Ѱɣ����ף�������͸������������л������@!")
						if((LuaQuery("level")-LuaQueryTask("last_lv"))>1)then
							LuaSay("��վС������һ��������û������ȡ@3ף������@0���´β�Ҫ����Ŷ@!")
						end
							LuaGive("e_mission416",1,"Tbless")
							LuaGive("e_mission416",1,"Tbless")
							LuaGive("e_mission416",1,"Tbless")
							LuaGive("e_mission416",1,"Tbless")
							LuaGive("e_mission416",1,"Tbless")
							LuaGive("e_mission416",1,"Tbless")
							DelItem("o_gold1y",2)
						LuaSetTask("last_lv",LuaQuery("level"))
						UpdateMenu()
					else
						LuaSay("��ʾ����ı����ռ䲻��6������������������ȡŶ@!")
					end
				elseif(LuaQuery("level")>=40)then
					if(LuaFreeBag()>=4)then
						LuaSay("��վС������ϲ����˫����@4ף������@0�����@3ף������@0�͸�������Ѱɣ����ף�������͸������������л������@!")
						if((LuaQuery("level")-LuaQueryTask("last_lv"))>1)then
							LuaSay("��վС������һ��������û������ȡ@3ף������@0���´β�Ҫ����Ŷ@!")
						end
							LuaGive("e_mission416",1,"Tbless")
							LuaGive("e_mission416",1,"Tbless")
							LuaGive("e_mission416",1,"Tbless")
							LuaGive("e_mission416",1,"Tbless")
							DelItem("o_gold1y",2)
						LuaSetTask("last_lv",LuaQuery("level"))
						UpdateMenu()
					else
						LuaSay("��ʾ����ı����ռ䲻��4������������������ȡŶ@!")
					end
				else
					if(LuaFreeBag()>=1)then
						LuaSay("��վС������ϲ����˫����@4ף������@0�����@3ף������@0�͸�������Ѱɣ����ף�������͸������������л������@!")
						if((LuaQuery("level")-LuaQueryTask("last_lv"))>1)then
							LuaSay("��վС������һ��������û������ȡ@3ף������@0���´β�Ҫ����Ŷ@!")
						end
						LuaGive("e_mission416",1,"Tbless")
						LuaGive("e_mission416",1,"Tbless")
						LuaSetTask("last_lv",LuaQuery("level"))
						DelItem("o_gold1y",2)
						UpdateMenu()
					else
						LuaSay("��ʾ����ı����ռ䲻��2������������������ȡŶ@!")
					end
				end
			else
				LuaSay("��ʾ�����ͨ������Ŷ��ͨ��������Ԫ���̳����й���Ŷ��@!")
			end

		else
			LuaSay("��ʾ����ǰ�ȼ��Ѿ���ȡ����@3ף������@0�ˣ������ظ���ȡ��Ŷ@!")
		end
	else
		LuaSay("��ʾ��@3����ף��@0Ҫ��20���Ժ������ȡŶ")
	end

elseif(answer=="bless_B")then
		LuaSay("��վС��������20���Ժ�ÿ��һ���㶼��������������ȡһ��@3ף������@0�����õ�ף������֮�󣬽������͸��������л�����Ѱɡ�")
		LuaSay("��վС����@3ף������@0��ʱ@21Сʱ@0��ʹ��ʱ�䣬������Ч�����Ͱ󶨣������Լ�ʹ�ã�ֻ�����͸��������ʹ�á�")
		LuaSay("��վС������Ҫ����ÿ������֮�󶼿�����ȡŶ����Ҫ����������ȡ���ҿ��ǲ������Ŷ@!")
		LuaSay("��վС���������Ը�⣬����˵Ը�������£��㻨��@2ͨ��@0�Ϳ�����ȡ��˫����@4ף������@0Ŷ@!")
		LuaSay("��վС�����ر���ʾ��Ŷ��@4ף������@0����Ч��Ϊ@3һСʱ@0��������ȡ֮��ץ��ʱ���͸��������Ŷ@!")

elseif(answer=="Tsnpc_38")then
	if(LuaQueryTask("Tsnpc_38")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("��վС�������ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_38",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_38")==2)then
		LuaSay("��վС�������ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_38")then
	if(LuaQueryTask("Tenpc_38")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("��վС�����ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_38",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_38")==2)then
		LuaSay("��վС�������Ѿ������ˣ����ȥ��ȡ������")
	end



elseif(answer=="Guidelines")then
		local level= LuaQuery("level")
		LuaSay("��վС���������ڵĵȼ���"..level.."��")
		if(level<10)then
			LuaSay("��վС����������@2��Դ��@0��@2����֮��@0��@2�����ǽ�@0�����񡢴��������")
		elseif(level<15)then
			LuaSay("��վС�������ʺ���@2��������@0��@2�嶷ɽ@0��������@2������@0��@3���幫��@0���ܲμ�@2������@0��@1����������@0Ŷ��")
			LuaSay("�޼᣺@2��������@0��@3��������@0�����@1ǧ������@0����һ���ܺõ�׬Ǯ���ᣬ@2��������@0��@3��������@0�����ܽ���@2��ֲ��@0��@3��������@0�����ܹ��򵽸�ʽ���������ӣ����ĵĸ����㣬ժ������͵@!")
			--LuaSay("��վС����������һ�䣬@2��������@0��@3������@0���������鵽���޵�@1�ʴ���ս@0��˭�������أ���Ŀ�Դ�Ŷ��")
		elseif(level<20)then
			LuaSay("��վС�����ʺ���@2�嶷ɽ@0��@2ɽկ@0��@2ɽկ@0����������")
			LuaSay("��վС����ÿ����@2��������@0��@3ҩƷ����@0���ﶼ��@1ÿ��ҩƷ����@0����ѵ���Ͳ��ò���@!")
		elseif(level<25)then
			LuaSay("��վС�����ʺ���@2������Ӫ@0��@2��Ӫǰ��@0��������������ͬʱ��Ҫ�����˻��и������Ȥ��ÿ�����������Ŷ@!")
			LuaSay("��վС������ʱ��@2������@0@3�ʹ��@0��@1�´��Թ��@0��@2������@0@3�н�����@0����@1����Ѱ��@0ȫ��չ���������ǰ����Ŷ��")
			LuaSay("��վС����@2������Ӫ@0��@3����ʹ��@0���ڿ������չ���ֵĺõط�����սȺ�ۡ���չ������ˣ�ͳһָ�տɴ�")
			LuaSay("��վС��������֪����ʲô�𣬻��Ǹ�����ɣ���@2������@0��@3��������@0���������ܽ���@1��װ��@0��@2ϴװ������@0��@2����װ���ȼ�����@0����Щ�㶼����Ŷ@!")
		elseif(level<30)then
			LuaSay("��վС�����ʺ���@2��ˮ�԰�@0��@2��������@0��������������ͬʱ��Ҫ�����˻��и������Ȥ��ÿ�����������Ŷ@!")
			LuaSay("��վС����������ͬʱҲ��Ҫ����ȥ@2�����Ͻ�@0@3�س�����@0�������������Ŷ�����˱ض����кñ�����ʱ��������߶δ�ز���һ������Ŷ@!")
		elseif(level<35)then
			LuaSay("��վС�����ʺ���@2μˮ֮��@0��@2��������@0��������������ͬʱ��Ҫ�����˻��и������Ȥ���淨������Ŷ@!")
			LuaSay("��վС����������Ѿ��ҵ��������һ�룬��ô���ʱ������Դ�����������һ��ȥ@2������@0@3���幫��@0��������Ŷ����ף��������Զ�Ҹ�@!")
		elseif(level<40)then
			LuaSay("��վС�����ʺ���@2ʳ�˹�@0��@2�׹Ƕ�@0��������������ͬʱ��Ҫ�����˻��и������Ȥ��ÿ�����������Ŷ@!")
		else
			LuaSay("��վС���������ڵ������Ѿ��㹻����������")
		end



end
LuaSendMenu()
return 1
end

