NPCINFO = { 
serial="59" ,
base_name="nanmin",
icon=2511,
NpcMove=2511,
name="����" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="������С�Է��´�",
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
	local T485=LuaQueryTask("T485")
	local T486=LuaQueryTask("T486")
	local T482=LuaQueryTask("T482")
	local level = LuaQuery("level") 
	AddTopSayMenuItem("@7�����б�","")
	if((LuaQueryTask("Tsnpc_43")==1 or LuaQueryTask("Tsnpc_43")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_43")
		if(LuaQueryTask("Tsnpc_43")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_43")==1 or LuaQueryTask("Tenpc_43")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_43")
		if(LuaQueryTask("Tenpc_43")==1)then
			havetask2=1
		end
	end
	if(T485==1 or T485==2) then
		AddTopSayMenuItem("@2�������񡾾��顿","T485")
		if(LuaItemCount("o_mission321")>=1) then
		havetask2=1
		end
	end	

	if(T486==1) then
		AddTopSayMenuItem("@2֪��ͼ�������顿","T486")
		havetask2=1
	end
	if(T482==1 ) then
		AddTopSayMenuItem("@2ҽ�����񡾾��顿","T482")
		havetask2=1
	end
	if(T482==3) then
		AddTopSayMenuItem("@2ҽ�����񡾾��顿","T482")
		if(LuaItemCount("o_mission335")==1) then
			havetask2=1
		end
	end
--�����ǻ�ɫ�ʺŲ���
	if(LuaQueryTask("T480")==1)then
		AddTopSayMenuItem("@2����ı�����ѭ����","T480")
		havetask4=1
	end
--�����ǻ�ɫ�ʺŲ���
	if(T485==0 and T482==99) then
		AddTopSayMenuItem("�������񡾾��顿","T485")
		havetask1=1
	end
	if(T485==99 and T486==0 and level>=30) then
		AddTopSayMenuItem("֪��ͼ�������顿","T486")
		havetask1=1
	end
	if(level>=30 and level<35 and LuaQueryTask("T480")==0)then
		AddTopSayMenuItem("����ı�����ѭ����","T480")
		havetask1=1
	end
	if(T482==0 and level>=30) then
		AddTopSayMenuItem("ҽ�����񡾾��顿","T482")
		havetask1=1
	end
--�����ǻ�ɫ�ʺŲ���
	
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

----------------------------
elseif(answer=="liaotian") then
	LuaSay("�������´��ң��������������Щ�ϰ���!") 
---------------------------------------------  ��������
elseif(answer=="T485") then
	if(LuaQueryTask("T485") == 0 ) then
		LuaSay("��������,����Ϊս�ң�����ʧ�����Ѿ����˺ü����ˣ��ܸ��ҵ�Ե�����ȥ��������ҩƷ���ˣ��������Ѱ��ʳ��ġ�")
		AddMenuItem("ѡ���б�","","")
	        AddMenuItem("����","T485YES","")
	        AddMenuItem("����","T485NO","")
        elseif(LuaQueryTask("T485") == 1) then
		LuaSay("����:����,ȥ�������������￴���ɣ�������ҩƷ���ˣ��������ʳ��ġ�")
		AddMenuItem("@7�Ƿ�@0Ѱ·��@4ҩƷ����","")
		AddMenuItem("�Զ�Ѱ·��ҩƷ����","xl_ydhj1")
	elseif(LuaQueryTask("T485") == 2) then
	   	if(LuaItemCount("o_mission321")>=1) then
			LuaSay("����:�������̫�ó���,һ�����⣬���������Ц��!")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T485jl")
		end
	end
	elseif(answer=="T485jl") then
	   	if(LuaQueryTask("T485")==2) then
			LuaSetTask("T485",99)
			DelLog("551")
			DelLog("485")
			LuaAddJx("combat_exp",299000,"T485")
			DelItem("o_mission321",LuaItemCount("o_mission321"))
			LuaAddAchievementSchedule("Task_num",1)
			LuaGive("coin",2000,"T485")
			UpdateMenu()
	        end
	elseif(answer=="xl_ydhj1")then
		AutoPathByTaskStep("T485",1)

	elseif(answer=="T485YES") then
		LuaSay("���������Ǹ����ˣ����˻��кñ���.")
		LuaSay("������˵���������ĳ�����������ж������������ȥ����Ŷ@!")
		LuaSetTask("T485",1) 
		AddLog("�������񡾾��� ��",485)
		UpdateMenu()
		UpdateTopSay("ȥ������ĳ���������￴����")
		AddMenuItem("@7�Ƿ�@0Ѱ·��@4ҩƷ����","")
		AddMenuItem("�Զ�Ѱ·��ҩƷ����","xl_ydhj1")
	elseif(answer=="T485NO") then
		LuaSay("����������������,�˲�����")
		LuaSet("hp",0)
		FlushMyInfo("0")
		LuaDelTask("T485")
		UpdateMenu()
---------------------------------------- ֪��ͼ��
elseif(answer=="T486") then               
	if(LuaQueryTask("T486")==0) then
		LuaSay("���������������������������ˣ��Ҿ͸����������Ϣ��.�����ǵķ��ᣬ��Ѱ��һ���������ף���˵�ҵ����׵��ˣ���õ��ܴ�ĺô�.")
		LuaSay(""..LuaQueryStr("name")..":��Ȼ��ô�����ң��������ҵ��˰�!")
		LuaSay("����������ô�����ҵõ�������ʹ�����ڼ������Ҿ͸�����ָ����·�ɣ���ȥ��@4������@0��@3��������@0�����Ż����ջ��")
		LuaSetTask("T486",1)	
                AddLog("֪��ͼ�������顿",486)
                UpdateMenu()
                UpdateTopSay("ȥ�����ǵķ����������￴��")
	elseif(LuaQueryTask("T486")==1) then
		LuaSay("���񣺲�Ҫ�����ˡ�ȥ�������ǵķ������˰�")
	end

------------------------------------------------

elseif(answer=="T480") then
	if(LuaQueryTask("T480")==0) then
		LuaSay("�����޼Ὣ����λ֮ʱ�����Ǳ��������������㰲��������޼Ὣ��ս�ܣ��ڽ��ѱ䣬��˭���ܿ��ĳ���������Ҫս���ˣ������ѹ��������Ǵ�����Ǩ��ͼ���Եİ�����")
		LuaSay("������������Ǵ�����Ǩ����Ҫ�ڻ���������������Ǩ������ʹ�ã���Ȼ��û�ҵ����԰��������ĵط������Ǿ�ȫ���ˡ�")
		LuaSay("���񣺶����Ǹ����ռ�@3��ë��@0���ϵ�@2��Ƥ@0��@2��ë@0���������·�����ů�����������д�඼�����޸���֮���ģ�������Ӣ��Ϊ���ռ�@25����Ƥ@0��@25����ë@0��")
		LuaSay("������ӻ��ö��������")
		LuaSetTask("T480",1)      -------��־�����
		AddLog("����ı�����ѭ����",480)
		UpdateMenu()
	elseif(LuaQueryTask("T480")==1) then
		if(LuaItemCount("o_mission344")>=5 and LuaItemCount("o_mission345")>=5) then
			LuaSay("���񣺶�лӢ��������")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T480jl")
		else
			LuaSay("��������Ҫ��@3��ë��@0���ϵ�@2��Ƥ@0��@2��ë@0�㻹û�����ҹ��أ����Ƕ���@3��ë��@0����Ŷ@!")
		end
	end

	elseif(answer=="T480jl")then  -----------------������
	local level = LuaQuery("level") 
	if(level>80)then
		level=80
	end
	if(LuaQueryTask("T480")==1) then
		LuaDelTask("T480")
		DelItem("o_mission344",5)---------ɾ������
		DelItem("o_mission345",5)

		LuaGive("coin",1000,"T480")
  		local jingyan
		if(TeamCount()>=2)then
			LuaSay("@1��ʾ�������Ӿ���ӳ�")
			jingyan=(78835+level^2*20)
		else
			jingyan=(41000+level^2*20)
		end
		LuaAddJx("combat_exp",jingyan,"T480")
		if(LuaQueryTask("T480_a")==0) then
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T480_a",99)
		end

		DelLog("480") 
		LuaDelTask("T480")      
		UpdateMenu()

	end
    
elseif(answer=="T482") then
	if(LuaQueryTask("T482") ==0 ) then
		LuaSay("����������Ϊ�˶��ս�ң����������ˣ�����ù���Ǳ����и���������ΪûǮ��ҩ�������Ѿ��ǲ��������")
		LuaSay("���񣺲�֪����Ը��Ը��Ϊ����������")
		AddMenuItem("ѡ���б�","","")
		AddMenuItem("����","yuanyitg","")
	        AddMenuItem("����","byuanyitg","")
        elseif(LuaQueryTask("T482") == 1) then
		LuaSay("����:����,����ȥ��@2��ҩ@0��")
	elseif(LuaQueryTask("T482") == 3) then
	   if(LuaItemCount("o_mission335")==1) then
                LuaSay(""..LuaQueryStr("name").."������ðɣ�������������@2��ɢ@0��")
		LuaSay("���������Ĵ�����Ժ󶨵����𡣺����������ӣ������ض�ǰ;����@!��")
	   	LuaSay("����:,һ�����⣬���������Ц��!")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T482jl")
		end
	end
	   	elseif(answer=="T482jl") then
	   	if(LuaQueryTask("T482")==3) then
	   		LuaSetTask("T482",99)
	   		DelLog("482")
	   		DelItem("o_mission335",1)
	   		LuaAddJx("combat_exp",299000,"T482")
			LuaGive("coin",2400,"T482")
			LuaAddAchievementSchedule("Task_num",1)
	          	UpdateMenu()
	          	end

	elseif(answer=="yuanyitg") then
		LuaSay("�����������������ĳ�������ϴ�������ڸо��ö���")
		LuaSay(""..LuaQueryStr("name")..":����֮�ͣ�����ҳݡ�")
		LuaSay("�������ڶ������ˣ������˿ڻ�û�����ϡ�")
		LuaSay("���񣺲�֪�������ܲ��ܵ�������ҩƷ�������������ƿ@2��ɢ@0���Ҷ������������Ĵ��")
		LuaSay(""..LuaQueryStr("name").."��������Ҳ���������£��Ͱ������æ�ɡ�")
		LuaSetTask("T482",1)
		UpdateTopSay("ȥҩƷ�������￴����")
		AddLog("ҽ�����񡾾��� ��",482)
		UpdateMenu()
	elseif(answer=="byuanyitg") then
		LuaSay("����������Ȼ��Ը���æ��Ҳ����Ϊ�ѡ�")
		UpdateMenu()	
		
elseif(answer=="Tsnpc_43")then
	if(LuaQueryTask("Tsnpc_43")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("�������ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_43",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_43")==2)then
		LuaSay("�������ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_43")then
	if(LuaQueryTask("Tenpc_43")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("�����ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_43",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_43")==2)then
		LuaSay("���񣺻��Ѿ������ˣ����ȥ��ȡ������")
	end		       
end
LuaSendMenu()
return 1
end