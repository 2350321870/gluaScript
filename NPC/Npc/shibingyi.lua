NPCINFO = {
serial= "12" ,
base_name="shibingyi",
icon= 2501, 
NpcMove=2501, 
name= "�س�ʿ��" , 
iconaddr=1, 
butt="10|10|60",
name_color = "CEFFCE" , 
lastsay="��ȥ����Ľ����ǰ�",
LuaType=1,
}
function do_talk(answer) 
if (answer=="ask") then 
        havetask =0
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7�����б�","")
	local havetask0=0	--Ĭ��û��
	local havetask1=0	--��̾��
	local havetask2=0	--��ɫ�ʺ�
	--local havetask3=0	--��ɫ�˵�
	local havetask4=0	--��ɫ�ʺ�
	if(LuaQueryTask("T74")==1)  then
		AddTopSayMenuItem("@2������ޡ����顿","T74")
		havetask2 =1
	end
	if(LuaQueryTask("Tdwj_zzcq")==1 and LuaQueryTask("Tdwj_zzcq_shibingyi")==0)  then	--����ڻ
		AddTopSayMenuItem("@2���Ӵ���","Tduanwu")
		havetask2 =1
	end
	if((LuaQueryTask("Tsnpc_8")==1 or LuaQueryTask("Tsnpc_8")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_8")
		if(LuaQueryTask("Tsnpc_8")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_8")==1 or LuaQueryTask("Tenpc_8")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_8")
		if(LuaQueryTask("Tenpc_8")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T21")==1)then
		AddTopSayMenuItem("@2����֮�������顿","T21")
	end
--����Ϊ��ɫ�ʺŲ���

	if(LuaQueryTask("T74")==0 and LuaQueryTask("T75")==99)  then
		AddTopSayMenuItem("������ޡ����顿","T74")
		havetask1 =1
	end
	if(LuaQueryTask("T21")==0 and LuaQueryTask("T74")==99)then
		AddTopSayMenuItem("����֮�������顿","T21")
		havetask1 =1
	end
--����Ϊ��ɫ��̾�Ų���

	AddTopSayMenuItem("@3��������@0","Tdairen")
	if(LuaQueryTask("T74")==99 and level<20)  then
		AddTopSayMenuItem("@9ʹ������̡̳�","T74")
	end	


	--AddTopSayMenuItem("�����������","bangpai")
--����Ϊ�޷��Ų���
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
	LuaSay("�س�ʿ����ס�ڽ����ǿ���һ�����ܰ�������...��̨�����ʡ�����������ȣ�������Ȥ�����¶�Ҫȥ����.@!")
	if(LuaQuery("level")<=25)then
		LuaAddJx("combat_exp",300000,"Tsbjyzs")
	end	
elseif(answer=="Txl_jkcn")then
	AutoGoToNpc("@7�Ƿ�@0Ѱ·��@4�����Ͻ�����","lu_jknj")


elseif(answer=="bangpai")then
	AddMenuItem("��������","bangpai_1")
	AddMenuItem("Ѱ�Ұ���","bangpai_2")
	AddMenuItem("����ע��","bangpai_3")
	AddMenuItem("ɢ��ת��","bangpai_4")
	elseif(answer=="bangpai_1")then
		LuaSendRegister("sanre")
	elseif(answer=="bangpai_2")then
		LuaSendRegister("bangpai")
	elseif(answer=="bangpai_3")then
		LuaAddRegister("sanre")
		LuaSay("����sanren�б�ɹ�")
	elseif(answer=="bangpai_4")then
		LuaAddRegister("sanre")
		LuaSay("����sanren�б�ɹ�")


--------------------------����ڻ------------------------------
elseif(answer=="Tduanwu") then
    if(LuaQueryTask("Tdwj_zzcq")==1 and LuaQueryTask("Tdwj_zzcq_shibingyi")==0)  then
        if(LuaItemStatusNormalCount("o_mission205")>=1) then
        LuaSay("�س�ʿ�����ѵ�������ܵ���ÿ����綼����������")
		DelItem("o_mission205",1)
		LuaSetTask("Tdwj_zzcq_shibingyi",99)
		UpdateMenu()
		else
  		LuaSay(""..LuaQueryStr("name").."���������ǲ�������Ȼ���ֶ��������ȥ׼��@3��Ʒ����")
        end
	end

--------------------------------

elseif(answer=="T74") then              ------------------------������� 
		if(LuaQueryTask("T74")==0 or LuaQueryTask("T74")==1) then  
			LuaSay("�س�ʿ����@3���鳤@0���˾������ҵ������ˣ������ǹ��ҵ�����Ҳ���˽���������ˣ�ֻ�ܽ�������@3����@0��@!")
			if(LuaQueryStr("MobieType") ~= "S20")then
				LuaSay("�س�ʿ������@3�˵�@0�ٰ�@3������@0����@2����@0��@3ѡ������@0��@3ʹ��@0������@3װ��������@0���˳�������")
				LuaSay("�س�ʿ��������@3����@0Ȼ������ݼ�����@2����һ��@0��������������ݼ��ɹ�����ʱ���ɿ����������������ͼ�꣬���һ�¾Ϳ����ˡ�")
			else
				LuaSay("�س�ʿ������@3ȷ�ϼ�@0�ٰ�@33��@0����@2����@0��@3ѡ������@0��@3ʹ��@0������@3װ��������@0���˳�������")
				LuaSay("�س�ʿ��������@39��@0��@2�л���ݼ���@0����ʱ���ɿ���@3ʹ�������8��@0����8����������������ˡ�")
			end
			LuaSay("�س�ʿ�������ⲻͬ��������в�ͬ���ٶȼӳɣ���ͬ�ȼ���������в�ͬ�����Լӳ�Ӵ~@!��")
			LuaSay("�س�ʿ���������������Ե�@4������@0��@3ѱ��ʦ@0�ǻ�ȡ@3���ﵰ@0@2����@0�����������������ȥ����������������@!")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T74jl")
		elseif(LuaQueryTask("T74")==99) then
                        if(LuaQueryStr("MobieType") ~= "S20")then
				LuaSay("�س�ʿ�������@3�˵�@0�ٵ��@3������@0����@2����@0��@3ѡ������@0��@3ʹ��@0������@3װ��������@0���˳�������")
				LuaSay("�س�ʿ�������@3����@0Ȼ������ݼ�����@2����һ��@0��������������ݼ��ɹ�����ʱ���ɿ����������������ͼ�꣬���һ�¾Ϳ����ˡ�")
			else
				LuaSay("�س�ʿ������@3ȷ�ϼ�@0�ٰ�@33��@0����@2����@0��@3ѡ������@0��@3ʹ��@0������@3װ��������@0���˳�������")
				LuaSay("�س�ʿ��������@38@0��@2�л���ݼ���@0����ʱ���ɿ���@3ʹ�������8��@0����8����������������ˡ�")
			end	
			LuaSay("�س�ʿ�������ⲻͬ��������в�ͬ���ٶȼӳɣ���ͬ�ȼ���������в�ͬ�����Լӳ�Ӵ~@!��")
		end
elseif(answer=="T74jl")then	            
		       if(LuaQueryTask("T74")==0 or LuaQueryTask("T74")==1)then
				LuaSetTask("T74",99) 
				LuaAddJx("combat_exp",12000,"T74") 
				LuaAddAchievementSchedule("Task_num",1)
				local r=LuaRandom(8)+1
				LuaGiveWeildItem("e_horse0"..r.."3t",1)
				SendCommand("call=�س�ʿ���������Ϻú�����ɣ��������һ��Ҫ��@4������@0��@3ѱ��ʦ@0�ǻ�ȡ@3���ﵰ@0������ǧ�������ˡ�|2|0|0|7|8")
				LuaSay("�س�ʿ����������������İ�����������������Ŷ@!")
				DelLog("74") 
				UpdateMenu() 
			end



elseif(answer=="T21") then              ------------------------����֮��
		if(LuaQueryTask("T21")==0) then
			LuaSay("�س�ʿ����ս��׷ɣ��������ң�����������Ű�������ϲ�ʳ���Ϸ�֮����Ҫ����������@3л��@0�ڣ�������������ˡ�")
			LuaSay("�س�ʿ����ȥ@4��������@0�ݷ�һ��@3л��@0�ɣ������������ָ����һֱ@2������@0�Ϳ���ȥ@4��������@0�ˡ�")
			LuaSetTask("T21",1)
			UpdateTopSay("ȥ�ҽ������ϵ�л��")
			AddLog("����֮�������顿",21)
			UpdateMenu()
			AddMenuItem("@7�Ƿ�@0Ѱ·��@4��������@0@3л��@0","")
			AddMenuItem("�Զ�Ѱ·����������л��","xl_xa")
		elseif(LuaQueryTask("T21")==1) then
			LuaSay("�س�ʿ����ȥ�ʺ�һ��@4��������@0��@3л��@0�ɣ���������а����ġ�")
			AddMenuItem("@7�Ƿ�@0Ѱ·��@4��������@0@3л��@0","")
			AddMenuItem("�Զ�Ѱ·����������л��","xl_xa")
		end 

		elseif(answer=="xl_xa")then
			AutoPathByTaskStep("T21",1)
			
		
--��������

elseif(answer == "Tdairen") then                --�޸���ɴ�����Ҫ��2������ 
   if(GetCurrentDay()~=LuaQueryStrTask("drTaskday")) then
      LuaDelTask("Tdr")
   end
	
	if(LuaQueryTask("first_XR")==0)then --��һ�ε�����˲˵����Զ����������б�
		LuaNotice("�ȼ�Ϊ"..LuaQuery("level").."��@3"..LuaQueryStr("name").."@0�ڽ��������س������������·������֧Ԯ�������˸Ͽ�ǰȥ�ɣ�")
		LuaSetTask("first_XR",1)
		LuaAddRegister("zhaorendai")
		LuaSendRegister("dairen")
	else
		AddMenuItem("@7�����б�","")
		AddMenuItem("@3������ƽ̨","DXRPT")
		AddMenuItem("@7����1~10�����","Tdairen2")
		AddMenuItem("@7����11~15�����","Tdairen3")
		AddMenuItem("@7����16~20�����","Tdairen4")
		AddMenuItem("@7����21~25�����","Tdairen5")
	end

elseif(answer == "Tdairen2") then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
      if(LuaQueryTask("Tdairen2")== 0) then
        if(TeamCount()== 2) then
           if(TeamQuery("level")>=1 and TeamQuery("level")<11 and level>15) then           --�Ի����Ǵ����� 
		if(LuaQuery("Tdr")<8) then
			if(TeamQueryTask("Tdairen2")==2 ) then
			  if(TeamQueryStr("Tdairen2id")==LuaQueryStr("id")) then
			  LuaSetTask("drTaskday",GetCurrentDay())
			  LuaSay("��ʾ�������������ҳɹ�������@315��@0��,�㽫���@3���������5000ͭ�ҡ����;��ĵĴ����ɡ�@!")
			  LuaSetTask("Tdairen2",1)
			  SetAutoPrivateChatUser(TeamQueryStr("id"),"Tdairen2")
			  LuaSet("Tdairen2id",TeamQueryStr("id"))
			  else
			  LuaSay("��ʾ�������Ӷ���,�Ѿ��������˰���,�㻹��ȥ����������Ҫ�������˰ɡ�")
			  end 
			else
			LuaSay("��ʾ��������İ��������ȽӴ�����,�㷽�ɽ�����@!")
			end  
		else
		LuaSay("��ʾ���������Ѿ�����8�������ˣ�������Ϣһ�£����������ɡ�@!")
		end
	   elseif(TeamQuery("level")>15 and level>=1 and level<11) then       --�Ի���������
			  if(TeamQueryTask("Tdairen2")==0) then
			  	if(TeamQueryTask("Tdr")<8 or GetCurrentDay()~=TeamQueryStrTask("drTaskday")) then
			  	LuaSay("��ʾ������ȼ��ﵽ15���Ϳ�����������ȡ@32000��ͭ��@0�ͺ������齱����@!")
			  	LuaSetTask("Tdairen2",2)
			  	LuaSet("Tdairen2id",TeamQueryStr("id"))     --������ID
			   	else
			   	LuaSay("��ʾ�������Ӷ�������Ѿ�����8������,�������������������Ϣһ�°ɡ�@!")
			   	end
			  else
			  LuaSay("��ʾ�������Ӷ���,�Ѿ��ڰ�����������,�㻹����һ�����еĸ��ִ���ɡ�")
			  end
	   else
           LuaSay("��ʾ��15�����ϵ���Һ�1-10�������,������Ӳ�����ȡ������")
           end
        else
		LuaSay("��ʾ��15�����ϵ���Һ�1-10�������,������Ӳ�����ȡ������")
			AddMenuItem("@7�Ƿ񷢹������˴�","")
			AddMenuItem("��������,���˴�","Tdairenyes")
			AddMenuItem("���Ǹ���,����Ҫ","Tdairenno")
	end               
       elseif(LuaQueryTask("Tdairen2")== 1) then
		 if(TeamCount()== 2) then
			if(TeamQueryStr("Tdairen2id")==LuaQueryStr("id") and LuaQueryStr("Tdairen2id")==TeamQueryStr("id"))then
				if(TeamQuery("level")>=15) then
				   	LuaSay("��ʾ�����Ѿ��ɹ������Է��ﵽ��Ӧ�ȼ��������������,�����������ȡ�����ˡ�@!")
					if(LuaQueryTask("Txhuanxing")==9)then
						if(LuaQueryTask("h_last")==1)then
							LuaSetTask("h_last",2)
							LuaSay("��ʾ���ھŻ����")
						end
					end
					if(LuaQueryTask("Thx2")==8) then
					if(LuaQueryTask("Thx2I")==0) then
					LuaSay("��ʾ�����Ѿ���ɻ�������ڰ˻�,��ȥ�ظ��ذϹ�ɡ�@!")
					LuaSetTask("Thx2I",99)
					end
					end
				   	LuaSetTask("Tdairen2",0)
					LuaAddTask("Tdr",1)
					if(LuaQueryTask("Tdairen2")==0) then
					LuaGive("coin",5000,"Tdairen2")
					LuaAddJx("combat_exp",30000+level^2*100+level*1200,"Tdairen2")
					DeleteAutoPrivateChatUser(TeamQueryStr("id"),"Tdairen")
					if(QueryAchievement("Tcj2_004")==0) then
						LuaSay("��ϲ���һ�����@2��������@0���񣬻�óɾ�@5����Ϊ��@0��")
						LuaSetAchievementSchedule("Task_bzxr",1)  ----���ü�����
						LuaGiveAchievement("Tcj2_004",LuaQueryAchievementSchedule("Task_bzxr"))
					end
					end   
					LuaDelTask("Tdairen2id") 
					LuaAddTask("Tdairennum",1)     --���Ӵ����ߵĴ��˻���
					LuaSay("��ʾ�������ڰ�����������ﵽ@3"..LuaQueryTask("Tdairennum").."��@0��,�Ժ󽫻��к����Ľ���Ŷ@!")
					if(LuaRandom(3)==0) then
					LuaSay("��ʾ������Ʒ����̫����,�õ�һ��@3���˱���@0,���ʹ�ð�,��ϲ�����㡣")
					LuaGive("o_box002",1,"Tdiaoyutg")
					end
				else
				LuaSay("��ʾ�����������һ�û�е�15����,����15����,����ܵõ�������")
				AddMenuItem("@7�Ƿ��������","")
				AddMenuItem("��������","jixu")
				AddMenuItem("��������","fangqi2")
				end
			else
			LuaSay("��ʾ������Ҳ������������ʱ���������,�����@3������ʱ�����@0��Ӳ�����ȡ������")
			AddMenuItem("@7�Ƿ��������","")
			AddMenuItem("��������","jixu")
			AddMenuItem("��������","fangqi2")
			end
		 else
		 LuaSay("��ʾ������ͽ�����ʱ��ӵ����һ����,������ȡ������")
		 AddMenuItem("@7�Ƿ��������","")
		 AddMenuItem("��������","jixu")
		 AddMenuItem("��������","fangqi2")
		 end
		
	elseif(LuaQueryTask("Tdairen2")==2) then
	if(level>=15) then 
	LuaSay("��ʾ�����ڶԷ��İ����´ﵽ����Ӧ�ȼ������������,���ڿ�����ȡ�����ˡ�@!")
	LuaGive("coin",2000,"Tdairen2")
	LuaAddJx("combat_exp",35000+level^2*50+level*1200,"Tdairen2")
	DelItem("o_mission148",2)
	LuaSetTask("Tdairen2A",99)
	LuaSetTask("Tdairen2",0)
	else
	LuaSay("��ʾ���ȼ���15����,������ȡ������Ľ���")
	AddMenuItem("@7�Ƿ��������","")
	AddMenuItem("��������","jixu")
	AddMenuItem("��������","fangqi2")
	end				
       end       
elseif(answer == "Tdairen3") then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
      if(LuaQueryTask("Tdairen3")== 0) then
        if(TeamCount()== 2) then
           if(TeamQuery("level")>=11 and TeamQuery("level")<=15 and level>20) then           --�Ի����Ǵ����� 
		if(LuaQuery("Tdr")<8) then
			if(TeamQueryTask("Tdairen3")==2 ) then
			  if(TeamQueryStr("Tdairen3id")==LuaQueryStr("id")) then
			  LuaSetTask("drTaskday",GetCurrentDay())
			  LuaSay("��ʾ�������������ҳɹ�������@320��@0��,���Ұ��������@4ɽկ����@0@3����֮����BOSS����@0���㽫���@3���������1Wͭ�ҡ�")
			  LuaSetTask("Tdairen3",1)
			  LuaSet("Tdairen3id",TeamQueryStr("id"))
			  SetAutoPrivateChatUser(TeamQueryStr("id"),"Tdairen3")
			  else
			  LuaSay("��ʾ�������Ӷ���,�Ѿ��������˰���,�㻹��ȥ����������Ҫ�������˰ɡ�")
			  end 
			else
			LuaSay("��ʾ��������İ��������ȽӴ�����,�㷽�ɽ�����@!")
			end  
		else
		LuaSay("��ʾ���������Ѿ�����8�������ˣ�������Ϣһ�£����������ɡ�@!")
		end
	   elseif(TeamQuery("level")>20 and level>=11 and level<=15) then       --�Ի���������
			  if(TeamQueryTask("Tdairen3")==0) then
			  	if(TeamQueryTask("Tdr")<8 or GetCurrentDay()~=TeamQueryStrTask("drTaskday")) then
			  	LuaSay("��ʾ������ȼ��ﵽ20�������@4ɽկ����@0@3����֮����BOSS����@0,�Ϳ�����������ȡ@33000��ͭ��@0��@3�������齱����@!")
			  	LuaSetTask("Tdairen3",2)
			  	LuaSet("Tdairen3id",TeamQueryStr("id"))     --������ID
			   	else
			   	LuaSay("��ʾ�������Ӷ�������Ѿ�����8������,�������������������Ϣһ�°ɡ�@!")
			   	end
			  else
			  LuaSay("��ʾ�������Ӷ���,�Ѿ��ڰ�����������,�㻹����һ�����еĸ��ִ���ɡ�")
			  end
	   		else
           LuaSay("��ʾ��20�����ϵ���Һ�11-15��֮������,������Ӳ�����ȡ������")
           end
        else
		LuaSay("��ʾ��20�����ϵ���Һ�11-15��֮������,������Ӳ�����ȡ������")
        end               
       elseif(LuaQueryTask("Tdairen3")== 1) then
		 if(TeamCount()== 2) then
			if(TeamQueryStr("Tdairen3id")==LuaQueryStr("id") and LuaQueryStr("Tdairen3id")==TeamQueryStr("id"))then
				if(TeamQuery("level")>=20) then
				  if(TeamQueryTask("T393")==99) then
				   	LuaSay("��ʾ�����Ѿ��ɹ������Է��ﵽ��Ӧ�ȼ��������������,�����������ȡ�����ˡ�@!")
					if(LuaQueryTask("Txhuanxing")==9)then
						if(LuaQueryTask("h_last")==1)then
							LuaSetTask("h_last",2)
							LuaSay("��ʾ���ھŻ����")
						end
					end
					if(LuaQueryTask("Thx2")==8) then
					if(LuaQueryTask("Thx2I")==0) then
					LuaSay("��ʾ�����Ѿ���ɻ�������ڰ˻�,��ȥ�ظ��ذϹ�ɡ�@!")
					LuaSetTask("Thx2I",99)
					end
					end
				   	LuaSetTask("Tdairen3",0)
					LuaAddTask("Tdr",1)
					if(LuaQueryTask("Tdairen3")==0) then
					LuaGive("coin",10000,"Tdairen3")
					LuaAddJx("combat_exp",30000+level^2*100+level*1200,"Tdairen3")
					DeleteAutoPrivateChatUser(TeamQueryStr("id"),"Tdairen")
					if(QueryAchievement("Tcj2_004")==0) then
						LuaSay("��ϲ���һ�����@2��������@0���񣬻�óɾ�@3����Ϊ��@0��")
						LuaSetAchievementSchedule("Task_bzxr",1)  ----���ü�����
						LuaGiveAchievement("Tcj2_004",LuaQueryAchievementSchedule("Task_bzxr"))
					end
					end   
					LuaDelTask("Tdairen3id") 
					LuaAddTask("Tdairennum",1)     --���Ӵ����ߵĴ��˻���
					LuaSay("��ʾ�������ڰ�����������ﵽ@3"..LuaQueryTask("Tdairennum").."��@0��,�Ժ󽫻��к����Ľ���Ŷ@!")
					if(LuaRandom(3)==0) then
					LuaSay("��ʾ������Ʒ����̫����,�õ�һ��@3���˱���@0,���ʹ�ð�,��ϲ�����㡣")
					LuaGive("o_box002",1,"Tdiaoyutg")
					end
				  else
				  LuaSay("��ʾ����İ���������Ҫ���@4ɽկ����@0@3����֮@0����@7�Ƴ�а��[BOSS]@0����")
				  end  
				else
				LuaSay("��ʾ�����������һ�û�е�20����,���Ұ���������Ҫ���@4ɽկ����@0@3����֮@0����@7�Ƴ�а��[BOSS]@0����,����ܵõ�������")
				AddMenuItem("@7�Ƿ��������","")
				AddMenuItem("��������","jixu")
				AddMenuItem("��������","fangqi3")
				end
			else
			LuaSay("��ʾ������Ҳ������������ʱ���������,�����@3������ʱ�����@0��Ӳ�����ȡ������")
			AddMenuItem("@7�Ƿ��������","")
			AddMenuItem("��������","jixu")
			AddMenuItem("��������","fangqi3")
			end
		 else
		 LuaSay("��ʾ������ͽ�����ʱ��ӵ����һ����,������ȡ������")
		 AddMenuItem("@7�Ƿ��������","")
		 AddMenuItem("��������","jixu")
		 AddMenuItem("��������","fangqi3")
		 end
		
	elseif(LuaQueryTask("Tdairen3")==2) then
	if(level>=20 and LuaQueryTask("T393")==99) then 
	LuaSay("��ʾ�����ڶԷ��İ����´ﵽ����Ӧ�ȼ������������,���ڿ�����ȡ�����ˡ�@!")
	LuaGive("coin",3000,"Tdairen3")
	LuaAddJx("combat_exp",35000+level^2*50+level*1200,"Tdairen3")
	LuaSetTask("Tdairen3",0)
	else
	LuaSay("��ʾ���ȼ���20����,�������@4ɽկ����@0@3����֮@0����@7�Ƴ�а��[BOSS]@0����,������ȡ������Ľ�����")
	AddMenuItem("@7�Ƿ��������","")
	AddMenuItem("��������","jixu")
	AddMenuItem("��������","fangqi3")
	end				
       end

elseif(answer == "Tdairen4") then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
      if(LuaQueryTask("Tdairen4")== 0) then
        if(TeamCount()== 2) then
           if(TeamQuery("level")>=16 and TeamQuery("level")<=20 and level>30) then           --�Ի����Ǵ����� 
		if(LuaQuery("Tdr")<8) then
			if(TeamQueryTask("Tdairen4")==2 ) then
			  if(TeamQueryStr("Tdairen4id")==LuaQueryStr("id")) then
			  LuaSetTask("drTaskday",GetCurrentDay())
			  LuaSay("��ʾ�������������ҳɹ�������@325��@0��,�����ռ�2�ݾ�Ʒ���⡣�㽫���@3���������15000ͭ�ҡ�")
			  LuaSetTask("Tdairen4",1)
			  LuaSet("Tdairen4id",TeamQueryStr("id"))
			  SetAutoPrivateChatUser(TeamQueryStr("id"),"Tdairen4")
			  else
			  LuaSay("��ʾ�������Ӷ���,�Ѿ��������˰���,�㻹��ȥ����������Ҫ�������˰ɡ�")
			  end 
			else
			LuaSay("��ʾ��������İ��������ȽӴ�����,�㷽�ɽ�����@!")
			end  
		else
		LuaSay("��ʾ���������Ѿ�����8�������ˣ�������Ϣһ�£����������ɡ�@!")
		end
	   elseif(TeamQuery("level")>30 and level>=16 and level<=20) then       --�Ի���������
			  if(TeamQueryTask("Tdairen4")==0) then
			  	if(TeamQueryTask("Tdr")<8 or GetCurrentDay()~=TeamQueryStr("drTaskday")) then
			  	LuaSay("��ʾ������ȼ��ﵽ25�����ռ�2�ݾ�Ʒ����,�Ϳ�����������ȡ@33000��ͭ��@0��@3�������齱����@!")
			  	LuaSetTask("Tdairen4",2)
			  	LuaSet("Tdairen4id",TeamQueryStr("id"))     --������ID
			   	else
			   	LuaSay("��ʾ�������Ӷ�������Ѿ�����8������,�������������������Ϣһ�°ɡ�@!")
			   	end
			  else
			  LuaSay("��ʾ�������Ӷ���,�Ѿ��ڰ�����������,�㻹����һ�����еĸ��ִ���ɡ�")
			  end
	   	   else
           LuaSay("��ʾ��30�����ϵ���Һ�16-20��֮������,������Ӳ�����ȡ������")
           end
        else
		LuaSay("��ʾ��30�����ϵ���Һ�16-20��֮������,������Ӳ�����ȡ������")
        end               
       elseif(LuaQueryTask("Tdairen4")== 1) then
		 if(TeamCount()== 2) then
			if(TeamQueryStr("Tdairen4id")==LuaQueryStr("id") and LuaQueryStr("Tdairen4id")==TeamQueryStr("id"))then
				if(TeamQuery("level")>=25) then
				  if(TeamQueryTask("Tdairen4A")==99) then 
				   	LuaSay("��ʾ�����Ѿ��ɹ������Է��ﵽ��Ӧ�ȼ��������������,�����������ȡ�����ˡ�@!")
					if(LuaQueryTask("Txhuanxing")==9)then
						if(LuaQueryTask("h_last")==1)then
							LuaSetTask("h_last",2)
							LuaSay("��ʾ���ھŻ����")
						end
					end
						if(LuaQueryTask("Thx2")==8) then
						if(LuaQueryTask("Thx2I")==0) then
						LuaSay("��ʾ�����Ѿ���ɻ�������ڰ˻�,��ȥ�ظ��ذϹ�ɡ�@!")
						LuaSetTask("Thx2I",99)
						end
						end
				   	LuaDelTask("Tdairen4")
					LuaAddTask("Tdr",1)
					LuaGive("coin",15000,"Tdairen4")
					LuaAddJx("combat_exp",30000+level^2*100+level*1200,"Tdairen4")
					DeleteAutoPrivateChatUser(TeamQueryStr("id"),"Tdairen")
					if(QueryAchievement("Tcj2_004")==0) then
						LuaSay("��ϲ���һ�����@2��������@0���񣬻�óɾ�@3����Ϊ��@0��")
						LuaSetAchievementSchedule("Task_bzxr",1)  ----���ü�����
						LuaGiveAchievement("Tcj2_004",LuaQueryAchievementSchedule("Task_bzxr"))
					end
					LuaDelTask("Tdairen4id") 
					LuaAddTask("Tdairennum",1)     --���Ӵ����ߵĴ��˻���
					LuaSay("��ʾ�������ڰ�����������ﵽ@3"..LuaQueryTask("Tdairennum").."��@0��,�Ժ󽫻��к����Ľ���Ŷ@!")
					if(LuaRandom(3)==0) then
					LuaSay("��ʾ������Ʒ����̫����,�õ�һ��@3���˱���@0,���ʹ�ð�,��ϲ�����㡣")
					LuaGive("o_box002",1,"Tdiaoyutg")
					end 
				  else
				  LuaSay("��ʾ����İ���������Ҫ����ռ�2�ݾ�Ʒ��������������")
				  LuaSay("��ʾ���ü���δ���@2��Ҫ���������Ͻ��ռ�����2�ݾ�Ʒ���Ⲣ��ȡ����@0,�����߷�����ȡ������")
				  end  
				else
				LuaSay("��ʾ�����������һ�û�е�25����,����25����,����ܵõ�������")
				AddMenuItem("@7�Ƿ��������","")
				AddMenuItem("��������","jixu")
				AddMenuItem("��������","fangqi4")
				end
			else
			LuaSay("��ʾ������Ҳ������������ʱ���������,�����@3������ʱ�����@0��Ӳ�����ȡ������")
			AddMenuItem("@7�Ƿ��������","")
			AddMenuItem("��������","jixu")
			AddMenuItem("��������","fangqi4")
			end
		 else
		 LuaSay("��ʾ������ͽ�����ʱ��ӵ����һ����,������ȡ������")
		 AddMenuItem("@7�Ƿ��������","")
		 AddMenuItem("��������","jixu")
		 AddMenuItem("��������","fangqi4")
		 end
		
	elseif(LuaQueryTask("Tdairen4")==2) then
	if(level>=25 and LuaItemCount("o_mission040")>=2) then 
	LuaSay("��ʾ�����ڶԷ��İ����´ﵽ����Ӧ�ȼ������������,���ڿ�����ȡ�����ˡ�@!")
	LuaGive("coin",3000,"Tdairen4")
	LuaAddJx("combat_exp",35000+level^2*50+level*1200,"Tdairen4")
	DelItem("o_mission040",2)
	LuaSetTask("Tdairen4A",99)
	LuaDelTask("Tdairen4")
	else
	LuaSay("��ʾ���ȼ���25����,�����ռ�2�ݾ�Ʒ����,������ȡ������Ľ�����")
	AddMenuItem("@7�Ƿ��������","")
	AddMenuItem("��������","jixu")
	AddMenuItem("��������","fangqi4")
	end				
   end
      
elseif(answer == "Tdairen5") then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
      if(LuaQueryTask("Tdairen5")== 0) then
        if(TeamCount()== 2) then
           if(TeamQuery("level")>=21 and TeamQuery("level")<=25 and level>40) then           --�Ի����Ǵ����� 
		if(LuaQuery("Tdr")<8) then
			if(TeamQueryTask("Tdairen5")==2 ) then
			  if(TeamQueryStr("Tdairen5id")==LuaQueryStr("id")) then
			  LuaSetTask("drTaskday",GetCurrentDay())
			  LuaSay("��ʾ�������������ҳɹ�������@330��@0��,���Ұ������������@3��ս����[BOSS]@0�����㽫���@3���������2Wͭ�ҡ�")
			  LuaSetTask("Tdairen5",1)
			  LuaSet("Tdairen5id",TeamQueryStr("id"))
			  SetAutoPrivateChatUser(TeamQueryStr("id"),"Tdairen5")
			  else
			  LuaSay("��ʾ�������Ӷ���,�Ѿ��������˰���,�㻹��ȥ����������Ҫ�������˰ɡ�")
			  end 
			else
			LuaSay("��ʾ��������İ��������ȽӴ�����,�㷽�ɽ�����@!")
			end  
		else
		LuaSay("��ʾ���������Ѿ�����8�������ˣ�������Ϣһ�£����������ɡ�@!")
		end
	   elseif(TeamQuery("level")>40 and level>=21 and level<=25) then       --�Ի���������
			  if(TeamQueryTask("Tdairen5")==0) then
			  	if(TeamQueryTask("Tdr")<8 or GetCurrentDay()~=TeamQueryStrTask("drTaskday")) then
			  	LuaSay("��ʾ������ȼ��ﵽ30�������@4��ˮ�԰�@0��@3����@0��BOSS����,�Ϳ�����������ȡ@33000��ͭ��@0�ͺ������齱����@!")
			  	LuaSetTask("Tdairen5",2)
			  	LuaSet("Tdairen5id",TeamQueryStr("id"))     --������ID
			   	else
			   	LuaSay("��ʾ�������Ӷ�������Ѿ�����8������,�������������������Ϣһ�°ɡ�@!")
			   	end
			  else
			  LuaSay("��ʾ�������Ӷ���,�Ѿ��ڰ�����������,�㻹����һ�����еĸ��ִ���ɡ�")
			  end
	   		else
           LuaSay("��ʾ��40�����ϵ���Һ�21-25��֮������,������Ӳ�����ȡ������")
           end
        else
		LuaSay("��ʾ��40�����ϵ���Һ�21-25��֮������,������Ӳ�����ȡ������")
        end               
       elseif(LuaQueryTask("Tdairen5")== 1) then
		 if(TeamCount()== 2) then
			if(TeamQueryStr("Tdairen5id")==LuaQueryStr("id") and LuaQueryStr("Tdairen5id")==TeamQueryStr("id"))then
				if(TeamQuery("level")>=30) then
				  if(TeamQueryTask("T473")==99) then 
				   	LuaSay("��ʾ�����Ѿ��ɹ������Է��ﵽ��Ӧ�ȼ��������������,�����������ȡ�����ˡ�@!")
					if(LuaQueryTask("Txhuanxing")==9)then
						if(LuaQueryTask("h_last")==1)then
							LuaSetTask("h_last",2)
							LuaSay("��ʾ���ھŻ����")
						end
					end
					if(LuaQueryTask("Thx2")==8) then
						if(LuaQueryTask("Thx2I")==0) then
							LuaSay("��ʾ�����Ѿ���ɻ�������ڰ˻�,��ȥ�ظ��ذϹ�ɡ�@!")
							LuaSetTask("Thx2I",99)
						end
					end
				   	LuaSetTask("Tdairen5",0)
					LuaAddTask("Tdr",1)
					if(LuaQueryTask("Tdairen5")==0) then
					LuaGive("coin",20000,"Tdairen5")
					LuaAddJx("combat_exp",30000+level^2*100+level*1200,"Tdairen5")
					DeleteAutoPrivateChatUser(TeamQueryStr("id"),"Tdairen")
					if(QueryAchievement("Tcj2_004")==0) then
						LuaSay("��ϲ���һ�����@2��������@0���񣬻�óɾ�@3����Ϊ��@0��")
						LuaSetAchievementSchedule("Task_bzxr",1)  ----���ü�����
						LuaGiveAchievement("Tcj2_004",LuaQueryAchievementSchedule("Task_bzxr"))
					end
					end   
					LuaDelTask("Tdairen5id") 
					LuaAddTask("Tdairennum",1)     --���Ӵ����ߵĴ��˻���
					LuaSay("��ʾ�������ڰ�����������ﵽ@3"..LuaQueryTask("Tdairennum").."��@0��,�Ժ󽫻��к����Ľ���Ŷ@!")
					if(LuaRandom(3)==0) then
					LuaSay("��ʾ������Ʒ����̫����,�õ�һ��@3���˱���@0,���ʹ�ð�,��ϲ�����㡣")
					LuaGive("o_box002",1,"Tdiaoyutg")
					end
				  else
				  LuaSay("��ʾ����İ���������Ҫ���@4��ˮ�԰�@0��@3����@0��@3��ս����BOSS����")
				  end  
				else
				LuaSay("��ʾ�����������һ�û�е�30����,����30����,����ܵõ�������")
				AddMenuItem("@7�Ƿ��������","")
				AddMenuItem("��������","jixu")
				AddMenuItem("��������","fangqi5")
				end
			else
			LuaSay("��ʾ������Ҳ������������ʱ���������,�����@3������ʱ�����@0��Ӳ�����ȡ������")
			AddMenuItem("@7�Ƿ��������","")
			AddMenuItem("��������","jixu")
			AddMenuItem("��������","fangqi5")
			end
		 else
		 LuaSay("��ʾ������ͽ�����ʱ��ӵ����һ����,������ȡ������")
		 AddMenuItem("@7�Ƿ��������","")
		 AddMenuItem("��������","jixu")
		 AddMenuItem("��������","fangqi5")
		 end
		
	elseif(LuaQueryTask("Tdairen5")==2) then
	if(level>=30 and LuaQueryTask("T473")==99) then 
	LuaSay("��ʾ�����ڶԷ��İ����´ﵽ����Ӧ�ȼ������������,���ڿ�����ȡ�����ˡ�@!")
	LuaGive("coin",3000,"Tdairen5")
	LuaAddJx("combat_exp",35000+level^2*50+level*1200,"Tdairen5")
	LuaSetTask("Tdairen5",0)
	else
	LuaSay("��ʾ����İ���������Ҫ���@4��ˮ�԰�@0��@3����@0��@3��ս����BOSS����")
	AddMenuItem("@7�Ƿ��������","")
	AddMenuItem("��������","jixu")
	AddMenuItem("��������","fangqi5")
	end				
       end

	elseif(answer == "jixu") then
            LuaSay("��ʾ�����˻��߱������ܻ�úܷ��Ľ���Ŷ��@!")

	elseif(answer == "fangqi1") then
		LuaSay("��ʾ���������1~5-10������,����Լ������������˻����������˴����ˡ�")
		LuaDelTask("Tdairen1")
		LuaDelTask("Tdairen1id")
		DeleteAutoPrivateChatUser(TeamQueryStr("id"),"Tdairen")
	elseif(answer == "fangqi2") then
		LuaSay("��ʾ���������6~10-15������,����Լ������������˻����������˴����ˡ�")
	    	LuaDelTask("Tdairen2")
	    	LuaDelTask("Tdairen2id")
		DeleteAutoPrivateChatUser(TeamQueryStr("id"),"Tdairen")
	elseif(answer == "fangqi3") then
		LuaSay("��ʾ���������11~15-20������,����Լ������������˻����������˴����ˡ�")
		LuaDelTask("Tdairen3")
		LuaDelTask("Tdairen3id")
		DeleteAutoPrivateChatUser(TeamQueryStr("id"),"Tdairen")
	elseif(answer == "fangqi4") then
		LuaSay("��ʾ���������16~20-25������,����Լ������������˻����������˴����ˡ�")
		LuaDelTask("Tdairen4")
		LuaDelTask("Tdairen4id")
		DeleteAutoPrivateChatUser(TeamQueryStr("id"),"Tdairen")
	elseif(answer == "fangqi5") then
		LuaSay("��ʾ���������21~25-30������,����Լ������������˻����������˴����ˡ�")
		LuaDelTask("Tdairen5")
		LuaDelTask("Tdairen5id")
		DeleteAutoPrivateChatUser(TeamQueryStr("id"),"Tdairen")
	elseif(answer == "Tdairenyes") then
		if(GetCurrentDay()~=LuaQueryStrTask("Tdairenday")) then
			LuaSetTask("Tggcishu",0)
			LuaSetTask("Tdairenday",GetCurrentDay())
		end
		if(LuaQueryTask("Tggcishu")<2 ) then
			LuaNotice("����@3"..LuaQueryStr("name").."@0�ڽ������ϵ��س���������Ҫ���İ���,��λӢ��ȥ������/���ɣ�")
			LuaAddTask("Tggcishu",1)
		else
			LuaSay("��ʾ�����������˴�,ÿ��ֻ����2�Ρ��������Ѿ�������,���ź���")
		end
      elseif(answer == "Tdairenno") then
		LuaSay("�س��������������Ǹ�ϲ��һ����ĬĬ�ܶ�����,�Ǿͼ��Ͱɡ�")

--�������˽���



elseif(answer=="Tsnpc_8")then
	if(LuaQueryTask("Tsnpc_8")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸���������ż�����ֻ�Ǹ���򣬲�Ҫɱ��")
		LuaSay("�س����������ǵ�����Ҳ���˰�����ô��ɱ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_8",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_8")==2)then
		LuaSay("�س����������ҿ����ˣ����ȥ������")
	end
elseif(answer=="Tenpc_8")then
	if(LuaQueryTask("Tenpc_8")==1)then
		LuaSay(""..LuaQueryStr("name").."��������������Ҵ������㣬�����ϵĵ��Ӻ��أ�һ��Ҫ��������������")
		LuaSay("�س�������������֪����")
		LuaSetTask("Tenpc_8",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_8")==2)then
		LuaSay("�س���������ȥ�������Ǵ��ˣ���˵��֪����")
	end





--[[
LuaOtherQuery(id,�ֶ�)
LuaOtherQueryStr(id,�ֶ�)
LuaOtherSet(id,�ֶ�,ֵ)
LuaOtherAdd(id,�ֶ�,ֵ)
LuaOtherDel(id,�ֶ�)
LuaOtherQueryTask(id,�ֶ�)
LuaOtherQueryStrTask(id,�ֶ�)
LuaOtherSetTask(id,�ֶ�,ֵ)
LuaOtherAddTask(id,�ֶ�,ֵ)
LuaOtherDelTask(id,�ֶ�)
LuaTeam(id)
]]
elseif(answer=="DXRPT") then
	AddMenuItem("@7�����б�","","")
	if(LuaQuery("level")<30)then
		AddMenuItem("@7���뵽���˴��б�","SQ_ZRD","")
		AddMenuItem("@7��Ҫ���˴�","zhao_ZRD","")
	else
		AddMenuItem("@7���뵽���˱�","SQ_DR","")
		AddMenuItem("@7��Ҫ����","zhao_DR","")
	end
elseif(answer=="SQ_ZRD") then
    if(LuaIsInRegister("zhaorendai")==0) then
		if(LuaQuery("level")<=25) then
  		  	LuaAddRegister("zhaorendai")
    			LuaSay("��ʾ������ɹ���")
   		else
       			LuaSay("��ʾ��ֻ��@325@0�����µ���Ҳ����������˴���")
    		end
    else
		LuaSay("��ʾ�����Ѿ��Ǽ��ڸ��б����ˣ�")
    end
elseif(answer=="SQ_DR") then
    if(LuaIsInRegister("dairen")==0) then
    	if(LuaQuery("level")>=30) then
    		LuaAddRegister("dairen")-- 1�ɹ�0ʧ��
		LuaDelRegister("zhaorendai")
    		LuaSay("��ʾ������ɹ���")
    	else
       		LuaSay("��ʾ��ֻ��@330@0�����ϵ���Ҳ���������ˣ�")
    	end
    else
        LuaSay("��ʾ�����Ѿ��Ǽ��ڸ��б����ˣ�")
    end

elseif(answer=="zhao_ZRD") then
    if(GetCurrentTime() - LuaQueryTask("ZRD_begin_time") >= 60)then
    	if(LuaQuery("level")<=25) then
    		LuaSendRegister("dairen")
    		LuaSetTask("ZRD_begin_time",GetCurrentTime())
    	else
        	LuaSay("��ʾ��ֻ��@325@0�����µ���Ҳ����������˴���")
    	end
    else
        LuaSay("��ʾ��@3"..(60-GetCurrentTime()+LuaQueryTask("ZRD_begin_time")).."@0�����ܼ����������˴���")
    end
elseif(answer=="zhao_DR") then
    if(GetCurrentTime() - LuaQueryTask("DR_begin_time") >= 60)     then
    		if(LuaQuery("level")>=30) then
			LuaDelRegister("zhaorendai")
			LuaSendRegister("zhaorendai")
			LuaSetTask("DR_begin_time",GetCurrentTime())
		else
        		LuaSay("��ʾ��ֻ��@330@0�����ϵ���Ҳ��ܴ��ˣ�")
   	 	end
    else
        LuaSay("��ʾ��@3"..(60-GetCurrentTime()+LuaQueryTask("DR_begin_time")).."@0�����ܼ���������ˣ�")
    end
    


end 
LuaSendMenu()
return 1
end