NPCINFO = { 
serial="12" ,
base_name="ranmin",
icon=2560,
NpcMove=2560,
name="Ƚ��" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="���ʱ�ɿ���/�ر��Զ�������ǰ���ɣ���ʿ",
LuaType=1,
} 
function do_talk(answer) 
 if (answer=="ask") then
	havetask =0
	local havetask0=0	--Ĭ��û��
	local havetask1=0	--��̾��
	local havetask2=0	--��ɫ�ʺ�
	--local havetask3=0	--��ɫ�˵�
	local havetask4=0	--��ɫ�ʺ�
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7�����б�","")	
	--AddTopSayMenuItem("@3��ȡװ��","T12")
        AddTopSayMenuItem("@2��ȡ����","lqbc")
		if(LuaQueryTask("T12")==0) then
			AddTopSayMenuItem("@3��ȡװ��","T12")
		end		
		if(LuaQueryTask("T11")==0) then
			AddTopSayMenuItem("@2���硾���顿","T11")
		end
		if(LuaQueryTask("Tbprw2")==1) then
			AddTopSayMenuItem("@2ǿʢ֮�������顿","Tbprw2")
			havetask2=1
		end
		if((LuaQueryTask("Tsnpc_1")==1 or LuaQueryTask("Tsnpc_1")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2��վС��","Tsnpc_1")
			if(LuaQueryTask("Tsnpc_1")==1)then
				havetask2=1
			end
		end
		if((LuaQueryTask("Tenpc_1")==1 or LuaQueryTask("Tenpc_1")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_1")
			if(LuaQueryTask("Tenpc_1")==1)then
			havetask2=1
			end
		end
		if(LuaQueryTask("T104") ==1 )   then     -----��������----
			AddTopSayMenuItem("@2�޳�֮��","T104")
			havetask2 =1
		end
		if(LuaQueryTask("T10")==1) then
			AddTopSayMenuItem("@2��һ�δ�֡��̡̳�","T10")
			havetask4 =1
		end
		if(LuaQueryTask("T10")==0) then
			AddTopSayMenuItem("��һ�δ�֡��̡̳�","T10")
			havetask1 =1
		end
		if(LuaQueryTask("T11")==0 and LuaQueryTask("T10")==99) then
			--LuaAddYB(1,1)
			AddTopSayMenuItem("���硾���顿","T11")
			havetask1 =1
		end
		

		if(LuaQueryTask("T10")==99 and level<20) then
			AddTopSayMenuItem("@9��һ�δ�֡��̡̳�","T10")
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
elseif(havetask ==4) then
	AddTopSayMenuItem("����","liaotian","4")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("����","liaotian","0")
end 
return 1
------------------------------------------------
elseif(answer=="lqbc")then
    local tkid=LuaPublicQueryStr("kid/kid")
    local kn=LuaPublicQueryStr("kid/kn")   
    local kv=LuaPublicQueryStr("kid/kv")  
    local kc=LuaPublicQuery("kid/kc")  
    if(tkid==LuaQueryStr("id") or tkid==LuaQueryStr("name"))then
        if(kv=="yb")then
            LuaAddYB(1,kc,"kid")
        elseif(kv=="tb")then
            LuaGive("coin",kc,"kid")
        else
            LuaGive(kn.."_"..kv,kc,"kid")
        end
        LuaPublicSetStr("kid/kid","0")
        LuaSay("��ȡ���")
    else
        LuaSay("�޿���ȡ")
    end
   
elseif(answer=="liaotian") then
	if(LuaQueryStr("MobieType") ~= "S20")then
		LuaSay("Ƚ�ɣ��������������޼��������@2��Ļ�Ϲ�����ݼ�(��Ϊ����������Ǹ�ͼ��)�ɿ���/�ر��Զ���������Ĭ��Ϊ������@0��")
		LuaSay("Ƚ�ɣ�����Ļû�и�ͼ�꣬�ɵ����Ļ�ϵ�@2ϵͳ@0���ٵ��@2���@0���ͻᵯ��@2��ݼ�����@0�����@2������ݼ�@0�������������ݼ���������ŵ���ݼ��б��С�")
	else
		LuaSay("Ƚ�ɣ��������������޼�������@25���ɿ���/�ر��Զ�����@0��")
	end
elseif (answer=="T10") then	
	if(LuaQueryTask("T10") == 0) then
		if(LuaQueryStr("MobieType") ~= "S20")then
			--SendCommand("call=Ƚ�ɣ��������ң���ʵ���������ɾͽ����ڻ��£����Ϸ���������δ�ְɣ����@2��Ļ�Ϲ�����ݼ�(��Ϊ����������Ǹ�ͼ��)�ɿ�/���Զ���������Ĭ��Ϊ������@0��|2|0|0|7|20")
			LuaSay("Ƚ�ɣ��������ң���ʵ���������ɾͽ����ڻ��£����Ϸ���������δ�ְɣ����@2��Ļ�Ϲ�����ݼ�(��Ϊ����������Ǹ�ͼ��)�ɿ�/���Զ���������Ĭ��Ϊ������@0��")
			LuaSay("Ƚ�ɣ�����Ļû�и�ͼ�꣬�ɵ����Ļ�ϵ�@2ϵͳ@0���ٵ��@2���@0���ͻᵯ��@2��ݼ�����@0�����@2������ݼ�@0�������������ݼ���,����ŵ���ݼ��б��С�")
			LuaSay("Ƚ�ɣ���Դ����@2���@0Ϊ��,ȥ@2����1ֻ���@0�������ң�@2�����Զ��������ߵ��������@0���ɹ���.")
		else
			SendCommand("call=Ƚ�ɣ��������ң���ʵ���������ɾͽ����ڻ��£����Ϸ���������δ�ְɣ�@2��5���ɿ�/���Զ�����@0��|2|0|0|7|20")
			LuaSay("Ƚ�ɣ���Դ����@2���@0Ϊ��,ȥ@2����1ֻ���@0�������ң�@2�����Զ��������ߵ��������@0���ɹ���.")
		end
		LuaSetTask("T10",1)
		LuaSetTask("task_kill/mon_001/T10",1)
		AddLog("��һ�δ�֡��̡̳�",10)
		UpdateMenu()
	elseif(LuaQueryTask("T10") == 1) then
		if(LuaQueryTask("task_kill/mon_001/T10")>=2) then
			LuaSay("Ƚ�ɣ��ɵ�Ư�������Ǹ����Ľ�����")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T10jl")
		else
			LuaSay("Ƚ�ɣ���Դ����@2���@0Ϊ��,ȥ@2����1ֻ���@0�������ң�@2�����Զ��������ߵ��������@0���ɹ�����")
		end
	elseif(LuaQueryTask("T10") == 99)then
		if(LuaQueryStr("MobieType") ~= "S20")then
			LuaSay("Ƚ�ɣ����@2��Ļ�Ϲ�����ݼ�(��Ϊ����������Ǹ�ͼ��)�ɿ�/���Զ���������Ĭ��Ϊ�����ģ�@2�����Զ��������ߵ��������@0���ɹ�����")
			LuaSay("Ƚ�ɣ�����Ļû�и�ͼ�꣬�ɵ����Ļ�ϵ�@2ϵͳ@0���ٵ��@2���@0���ͻᵯ��@2��ݼ�����@0�����@2������ݼ�@0�������������ݼ���,����ŵ���ݼ��б��С�")
		else
			LuaSay("Ƚ�ɣ�@2��5���ɿ�/���Զ�������@2�����Զ��������ߵ��������@0���ɹ�����")
		end
		
		LuaSay("��ʾ�������������")
	
	end
elseif(answer=="T10jl") then
	if(LuaQueryTask("T10")==1)then
		LuaGive("coin",200,"T10")
		LuaAddJx("combat_exp",1200,"T10")
		LuaAddAchievementSchedule("Task_num",1)
		LuaDelTask("task_kill/mon_001/T10")
		LuaSetTask("T10",99)
		DelLog("10")
		UpdateMenu()
		AddMenuItem("@7��ȡ������","")
		if(LuaQueryTask("T11")==0)then
			AddMenuItem("���硾���顿","T11")
		end
	end
    
elseif (answer=="T11") then
	if(LuaQueryTask("T10")==99)then
		if(LuaQueryTask("T11") == 0) then
			LuaSay("Ƚ�ɣ�"..LuaQueryStr("name").."����Ϊ�λ����⣬@4��Դ��@0�г��˴��£�����@2�ش���@0ȥ�ɣ�")
			LuaSay("Ƚ�ɣ�@2����@0�ߵ�@3��ͷ@0�������@2����@0���������@3�ϴ峤@0�������������ô����")	
			LuaSetTask("T11",1)
			AddLog("���硾���顿",11)
			UpdateMenu()
			if(LuaQueryTask("T10")==99)then
				LuaSay("Ƚ�ɣ����ٻ�@4��Դ��@0��@3�ϴ峤@0��@2������@0���Ϳ���@2����@0�ˡ�")
				AutoGoToNpc("@7�Ƿ�@0Ѱ·��@4��Դ��","lu_tyj")
				--AddMenuItem("@7�Ƿ�@0Ѱ·��@4��Դ�巽��","")
				--AddMenuItem("�Զ�Ѱ·����Դ�巽��","xl_tyc")
			end
		elseif(LuaQueryTask("T11") == 1) then
			LuaSay("Ƚ�ɣ����ٻ�@4��Դ��@0��@3�ϴ峤@0��@2������@0���Ϳ���@2����@0�ˡ�")
			if(LuaQueryTask("T10")==99)then
				--AddMenuItem("@7�Ƿ�@0Ѱ·��@4��Դ�巽��","")
				--AddMenuItem("�Զ�Ѱ·����Դ�巽��","xl_tyc")	
				AutoGoToNpc("@7�Ƿ�@0Ѱ·��@4��Դ��","lu_tyj")				
			end
		end
	else
		LuaSay("Ƚ�ɣ�@!Ϊ�˴����ԡ�ͳһOL���������ӵ���Ϥ���˽⣬������������@3��һ�δ�֡��̡̳�@0")
	end

--elseif(answer=="xl_tyc")then
	--LuaSay("Ƚ�ɣ����ٻ�@4��Դ��@0��@3�ϴ峤@0��@2������@0���Ϳ���@2����@0�ˡ�")
	--AutoGoToNpc("@7�Ƿ�@0Ѱ·��@4��Դ��","lu_tyj")
	--AutoPathByTaskStep("T11",1)

elseif(answer=="T12") then
	if(LuaQueryTask("T12")<99) then
	LuaSay("Ƚ�ɣ�����"..LuaQueryStr("name").."�����@2����@0���������ɣ���ȡ�������@2����װ������@0��")
	LuaSay("Ƚ�ɣ�������Ե��@2������������Ʒװ��@0��������Щװ����Ҫ�ȼ�@2�ﵽ10��@0����ʹ�ã�ϣ����һ���ܿ������������ǣ�@!")
	LuaSay("Ƚ�ɣ���������ʲô��ͳһ֮·���������£�������������ȥ׷Ѱ�������İ�ҵ�ɣ�")
	AddMenuItem("@7�������","")
	AddMenuItem("��ȡ����","T12jl")
	end
	elseif(answer=="T12jl") then
	if(LuaQueryTask("T12")<99) then
	if(LuaItemCount("e_falchion001")==0) then
	LuaGiveWeildItem("e_falchion001",1,1,"T12")  --���궫���������Ӧ��װ��λ��ûװ����������װ�����Ķ���[ע����luagive������]
	end
	if(LuaQueryStr("class")=="wu")then			--����
	LuaGive("e_sword003",1,2,"T12")   --����
	--LuaGive("e_clothes102",1,2,"T12")	--��������
	--LuaGive("e_pants102",1,2,"T12")
	elseif(LuaQueryStr("class")=="xian")then		--ıʿ
	LuaGive("e_pen002",1,2,"T12")	--�����
	--LuaGive("e_clothes101",1,2,"T12")		--ıʿ����
	--LuaGive("e_pants101",1,2,"T12")
	elseif(LuaQueryStr("class")=="shen")then		--սʿ
	LuaGive("e_falchion003",1,2,"T12")	--��ն
	--LuaGive("e_clothes103",1,2,"T12")		--սʿ����
	--LuaGive("e_pants103",1,2,"T12")
	elseif(LuaQueryStr("class")=="")then
	LuaSay("Ƚ�ɣ������Ǹ���ҵ���񣬲��ܹ���ȡװ����ʵ�ڿ�ϧ������ע��ɹ���ѡ��ְҵ��������������ȡ��Ʒװ���ɣ�")
	end	
	LuaAddJx("combat_exp",400,"T12")
	LuaAddAchievementSchedule("Task_num",1)
	LuaSetTask("T12",99)
	UpdateMenu()
	end


elseif(answer=="Tbprw2") then
	if(LuaQueryTask("Tbprw2")==1 and LuaQueryTask("Tbprw2A")==0) then
		LuaSay("Ƚ�ɣ����ɣ���Ҫ����@3����@0��")
		LuaSay("Ƚ�ɣ�@3����@0��ͨ��@3�������񣬰�ս@0�ȸ���������á�")
		LuaSetTask("Tbprw2A",99)      -------��־�����
		UpdateMenu()
	elseif(LuaQueryTask("Tbprw2A")==99 and LuaQueryTask("Tbprw2B")==0) then
		LuaSay("Ƚ�ɣ�Ҳ����˵�Ļ�����ȫ�棬����ȥ����@4������Ӫ@0��@3л��@0�ɡ�")
	elseif(LuaQueryTask("Tbprw2A")==99 and LuaQueryTask("Tbprw2B")==99) then
		LuaSay("Ƚ�ɣ�ȥ�ظ�@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0�ɡ�")
	end

elseif(answer=="T104")then ------------------------------------���������޳�֮��
    if(LuaItemCount("o_mission372")==0) then
    LuaSay("Ƚ�ɣ����������Ƶ�@3С��������@0����Ҫ@31000@0ͭ�ҡ�")
    AddMenuItem("@7ѡ���б�","")
	AddMenuItem("@3��","T104_buy")
	AddMenuItem("@3����","T104_notbuy")
	else
	LuaSay("Ƚ�ɣ����Ѿ�����@3С��������@0�ˣ���ظ�@4������@0���@3ѱ��ʦ@0�ɣ�")
	UpdateTopSay("��ظ����������ѱ��ʦ�ɣ�")
	end
elseif(answer=="T104_buy")  then
    if(LuaItemCount("coin")>= 1000) then
    LuaGive("coin",-1000,"T104")
    LuaGive("o_mission372",1)
    LuaSay("Ƚ�ɣ�@3С��������@0�ú��ˣ���ȥ�ظ�@4������@0��@3ѱ��ʦ@0�ɣ�����·��͵͵���ˣ�")
    UpdateTopSay("��ظ����������ѱ��ʦ�ɣ�")
    else
    LuaSay("Ƚ�ɣ�@3С��������@0��1000ͭ�ң�����ģ�")
    UpdateTopSay("����Я��1000ͭ���������Ұ�")
    end
elseif(answer=="T104_notbuy")  then
    LuaSay("Ƚ�ɣ�û��@3С��������@0�����޷���ɸ�����")

elseif(answer=="Tsnpc_1")then
	if(LuaQueryTask("Tsnpc_1")==1)then
		LuaSay(""..LuaQueryStr("name").."�����ǵ������˸���Ļ����ż���������Ҫ�����ˡ�")
		LuaSay("Ƚ�ɣ�������������£��������ҿ�������ȥ�����ʺ����Ǵ���")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_1",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_1")==2)then
		LuaSay("Ƚ�ɣ������Ѿ��յ��ˣ�����Ի�ȥ������")
	end
elseif(answer=="Tenpc_1")then
	if(LuaQueryTask("Tenpc_1")==1)then
		LuaSay(""..LuaQueryStr("name").."������Ӣ�����ż���̫��ȫ�����Ҹ��㴫������ֻ˵�������ܻᷢ��ս���ô��������������Ҳ����ʲô��˼")
		LuaSay("Ƚ�ɣ�Ŷ���ᷢ��ս�£��ð����Ȼ�ȥ����֪����")
		LuaSetTask("Tenpc_1",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_1")==2)then
		LuaSay("Ƚ�ɣ����Ѿ�֪��ʲô����ˣ�����Ի�ȥ������")
	end
end
LuaSendMenu()
return 1
end 
