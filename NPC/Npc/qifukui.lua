NPCINFO = { 
serial="72" ,
base_name="qifukui",
icon=2540,
NpcMove=2540,
name="�����" ,
iconaddr=1 ,
butt="5|5|46" ,
name_color="CEFFCE" ,
lastsay="���갡��Ϊ��������˳���Թ�ޣ�",
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
	local sum=LuaQueryTask("sum")
	local level= LuaQuery("level")
	local T610=LuaQueryTask("T610")
	AddTopSayMenuItem("@7�����б�","")
	if(T610==1)then
	    AddTopSayMenuItem("@2�������ġ����顿","T610")
	end


	if(LuaQueryTask("T612")==1)then
		AddTopSayMenuItem("@2���̱ƹ������顿","T612")
	end
	if(LuaQueryTask("T613")==1)then
		AddTopSayMenuItem("@2׷��а�񡾾��顿","T613")
	    havetask2=1
	end
	if(LuaQueryTask("T614")==1 or LuaQueryTask("T614")==2)then
		AddTopSayMenuItem("@2а���Դ��BOSS��","T614")
		if(LuaQueryTask("T614")==2) then
		havatask2=1
		end
	end
	if(LuaQueryTask("T601")==3)then
		AddTopSayMenuItem("@2�������꡾���顿","T601")
		havetask2=1
	end
--����Ϊ��ɫ�ʺŲ���
	if(LuaQueryTask("T615")==1)then
	    AddTopSayMenuItem("@2����ʬ�桾ѭ����","T615")
	    havetask4=1
	end
	if(LuaQueryTask("T611")==1)then
		AddTopSayMenuItem("@2ѹ��ħ�ԡ����顿","T611")
	    havetask4=1
	end
--����Ϊ��ɫ�ʺŲ���
	if(level>=38 and T610==0)then
	    AddTopSayMenuItem("�������ġ����顿","T610")
	    havetask1=1
	end
	if(level>=38 and LuaQueryTask("T611")==0)then
		AddTopSayMenuItem("ѹ��ħ�ԡ����顿","T611")
	    havetask1=1
	end
	if(level>=39 and LuaQueryTask("T612")==0)then
		AddTopSayMenuItem("���̱ƹ������顿","T612")
	    havetask1=1
	end
	if(level>=39 and LuaQueryTask("T614")==0)then
		AddTopSayMenuItem("а���Դ��BOSS��","T614")
		havatask1=1
	end
	if(level>=39 and LuaQueryTask("T613")==0)then
		AddTopSayMenuItem("׷��а�񡾾��顿","T613")
		havetask1=1
	end
	if(LuaQueryTask("T615")==0 and level>=37 and level<42)then
		AddTopSayMenuItem("����ʬ�桾ѭ����","T615")
		havetask1=1
	end
--�����ǻ�ɫ��̾��
		

if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(������havetask0=1)
	havetask=0
end
	
	--���ñ� ʬ�� 33
	--���û� ���ޱ� 34

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
elseif(answer=="T610") then
	local T610=LuaQueryTask("T610")
    if(T610==0)then
        LuaSay(""..LuaQueryStr("name").."��@3�����@0�������������ҵ����ˣ����һ�ȥ�ɣ�")
        LuaSay("��������Ҳ��ߣ���Ϊ����������ı������������ء���������.")

        LuaSay("�������С�ֵܣ�����Ұ�����Ŵ�������˰ɣ�����ʱû��Σ�գ���Ҫ���Ȱ׹Ƕ��е��������뿪")
        LuaSetTask("T610",1)
		AddLog("�������ġ����顿",610)
        LuaGive("o_mission308",1)
		
		UpdateMenu()
		UpdateTopSay("ȥ���ҵ��Ž��������")
	elseif(T610==1) then
		LuaSay("���������ȥ���ҵ��Ž���@3�����@0")
	end 
        
-----------------------------------------------
elseif(answer=="T611") then
	if(LuaQueryTask("T611")==0) then
		LuaSay("�������@4�׹Ƕ�@0�е�@3ʬ��@0��@3���ޱ�@0�������ߵ������������Һ��ǵ���.")
		LuaSay("�������������Ӣ��ȥ�������Ǹ�20ֻ��ѹ�����ǵ�Թ��.")
		LuaSetTask("T611",1)      
		LuaSetTask("task_kill/mon_033/T611",1)   -----------����ɱ�ּ�����
		LuaSetTask("task_kill/mon_034/T611",1)
		AddLog("ѹ��ħ�ԡ����顿",611)
		UpdateMenu()
		UpdateTopSay("ȥ�׹Ƕ�����20ֻʬ���20ֻ���ޱ�")
	elseif(LuaQueryTask("T611")==1) then
		if(LuaQueryTask("task_kill/mon_033/T611")<21 and LuaQueryTask("task_kill/mon_034/T611")>=21) then
		LuaSay("�������@3���ޱ�@0�ǹ��ˣ���@3ʬ��@0������������ȥ@4�׹Ƕ�@0ɱ@3ʬ��@0��.")
		elseif(LuaQueryTask("task_kill/mon_034/T611")<21 and LuaQueryTask("task_kill/mon_033/T611")>=21) then
		LuaSay("�������@3ʬ��@0�ǹ��ˣ���@3���ޱ�@0������������ȥ@4�׹Ƕ�@0ɱ@3���ޱ�@0��.")
		elseif(LuaQueryTask("task_kill/mon_033/T611")>=21 and LuaQueryTask("task_kill/mon_034/T611")>=21) then
		LuaSay("���������лӢ�ۣ�")	 
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T611jl")    
		else 
		LuaSay("�������ȥ@3�׹Ƕ�@0����20ֻʬ���20ֻ���ޱ�.")
		end
	end
elseif(answer=="T611jl")then  -----------------������
	if(LuaQueryTask("T611")==1) then
		if(LuaFreeBag()>=1)then
			LuaAddJx("combat_exp",357000,"T611")--ԭ357000��302585
			LuaAddAchievementSchedule("Task_num",1)	
			LuaGive("coin",2300,"T611")
			LuaGive("e_shoes007",1,2,"T611")
			LuaDelTask("task_kill/mon_033/T611")    -----------�ر�ɱ�ּ�����
			LuaDelTask("task_kill/mon_034/T611")
			DelLog("611")        -------��־��ɾ��
			LuaSetTask("T611",99)
			UpdateMenu()
		else
			LuaSay("@5��ܰ��ʾ���뱣�ֱ�����һ���λ��������ȡ���Ľ�����Ϊ����������ʧ��Ŷ@!")
		end
	end


elseif(answer=="T612") then
	if(LuaQueryTask("T612")==0) then
		LuaSay("��������ҷ���Թ��û��˿��������������Ӣ��ȥ��@3������ʦ@0�������а취��")
		LuaSetTask("T612",1)
		AddLog("���̱ƹ������顿",612)-------��־�����
		UpdateMenu()
	elseif(LuaQueryTask("T612")==1) then
		LuaSay("�����������ȥ@4ʳ�˹�@0��@4������ʦ.") 
		UpdateTopSay("ȥʳ�˹���������ʦ") 
	end
	
elseif(answer=="T613")then
	if(LuaQueryTask("T613")==0)then
		LuaQueryTask("����������ʮ�����Ժ��������Ұɣ����Һúõ����롣")
		LuaQueryTask(""..LuaQueryStr("name").."���ţ���ʮ����֮����������.")
		LuaSetTask("T613",1)
		AddLog("׷��а�񡾾��顿",163)
		LuaSetTask("T613time",GetCurrentTime()) 
		UpdateMenu()

	elseif(LuaQueryTask("T613")==1)then
		local shijiancha= GetCurrentTime() - LuaQueryTask("T613time")
		if(shijiancha>=600)then
			LuaSay("��������ðɣ����뵽�˸���ԭ�򣬾����ǰ׹Ƕ��������ħ�����Ǹ�Դ.")
            LuaSay(""..LuaQueryStr("name").."��ԭ���������İ���") 
            AddMenuItem("@7�������","")
		    AddMenuItem("��ȡ����","T613jl") 
		else
			LuaSay("��������һ�û����أ� ��Ȼ������ɣ�")
		end
	end
	
	elseif(answer=="T613jl") then
		LuaAddJx("combat_exp",371000,"T600")--ԭ371000��334555
		LuaAddAchievementSchedule("Task_num",1)	
        LuaSetTask("T613",99)
		
		DelLog("613")
		LuaDelTask("T613time")
		UpdateMenu()
		UpdateTopSay("��������������������Ģ����")
		 
------------------------------------------------  а���Դ
elseif(answer=="T614") then
	if(LuaQueryTask("T614")==0)  then
	   LuaSay("@3�����@0����Դ���ǰ׹Ƕ����@3����ħ��@0����������û���������������ˣ�����ȥ���æ�ɣ�")
	   LuaSay("@3"..LuaQueryStr("name").."@0�������岻�ݴǣ�")
	   LuaSay("@1��ܰ��ʾ@0������������ӣ����������ɱboss���л�����@540�༶��ɫ����һ��@0����������Խ�࣬����Խ��")
	   LuaSay("@1��ܰ��ʾ@0��boss�����Ǹ����һ��ɱ��boss���ˣ�ף����ˣ�")
	   LuaSetTask("T614",1)
	   AddLog("а���Դ��BOSS��",614) 
	   UpdateMenu()
	   UpdateTopSay("ȥ����׹Ƕ��������ħ��")	
	elseif(LuaQueryTask("T614")==1)then
		LuaSay("�������Ѿ������˰׹Ƕ����@3����ħ��@0����")
		LuaSay("@1��ܰ��ʾ@0��boss�����Ǹ����һ��ɱ��boss���ˣ�ף����ˣ�")
	elseif(LuaQueryTask("T614")==2) then
	    LuaSay("@3�����@0��С�����������")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T614jl")
	end 
	
	elseif(answer=="T614jl")then
		LuaAddJx("combat_exp",450000,"T614")--ԭ800000��334555
		LuaSay("��ܰ��ʾ:��Ҫ��Ʒװ��������ȥɱҰ��BOSS�͸����������м��ʳ���Ӧ�ȼ�����װŶ@!")
		LuaGive("e_earring007",1,1,"T614")
		LuaGive("coin",15050,"T614")
		LuaAddAchievementSchedule("Task_num",1)	
		LuaSetTask("T614",99)	
		DelLog("614")
		UpdateMenu()
		UpdateTopSay("��������ȥ��ϲѶ��֪�����")

elseif(answer=="T601") then
	if(LuaQueryTask("T601")==3)  then
		LuaSay(""..LuaQueryStr("name").."�����Ѿ��ڰ׹Ƕ�ʹ���˳����䣬������˺�ת������Ȼû�г��׽����")
	 
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T601jl")
	end
elseif(answer=="T601jl")then  -----------------������
	if(LuaQueryTask("T601")==3) then
		LuaAddJx("combat_exp",339000,"T601") --ԭ349000��272029
		LuaAddAchievementSchedule("Task_num",1)	

        DelLog("601")        -------��־��ɾ��
		LuaSetTask("T601",99)
        UpdateMenu()
        UpdateTopSay("��������Ҫ������æ") 
        
    end 
		
----------------------------------------------- 
elseif(answer=="liaotian") then
	LuaSay("������������������ԣ��ұ�����֮!") 

elseif(answer=="T615") then
	if(LuaQueryStrTask("615day")~=GetCurrentDay())then
		LuaDelTask("T615num")
	end		
	if(LuaQueryTask("T615")==0) then
			LuaSay("�������@4�׹Ƕ�@0�е�@3ʬ��@0Ϊ����Ӣ����������������30��ʬ��ɣ��һ���㲻��ı���Ŷ��")
			LuaSetTask("T615",1)  
			LuaAddTask("T615num",1)
			LuaSetTask("615day",GetCurrentDay())
			LuaSetTask("task_kill/mon_033/T615",1)   -----------����ɱ�ּ�����
			AddLog("����ʬ�桾ѭ����",615)
			UpdateMenu()
			UpdateTopSay("�׹Ƕ�����30��ʬ�����������")
	elseif(LuaQueryTask("T615")==1) then
		if(LuaQueryTask("task_kill/mon_033/T615")>=31) then
		LuaSay("�������Ӣ������������������ͣ������ᱲ֮��ģ�������Ǹ���Ľ�����")	 
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T615jl")    
		else 
		LuaSay("�������ȥ@4�׹Ƕ�@0����@230��ʬ��@0�������ظ��Ұɣ��㻹û�������㹻��ʬ��Ŷ��")
		end
	end
elseif(answer=="T615jl")then  -----------------������
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaQueryTask("T615")==1) then
		local jingyan
		local money
		if(LuaQuery("level")<20)then
			money=200
		elseif(LuaQuery("level")<30)then
			money=300
		elseif(LuaQuery("level")<40)then
			money=400
		elseif(LuaQuery("level")<50)then
			money=500
		elseif(LuaQuery("level")<100)then
			money=600
		end
		if(LuaQueryTask("T615num")<=30)then
			if(TeamCount()>=2)then
				LuaSay("@1��ʾ�������Ӿ���ӳ�")
				jingyan=(84835+level^2*20)
			else
				jingyan=(48765+level^2*30)
			end
			LuaGive("coin",money,"T615")
		else
			LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ���")
			jingyan=(48765+level^2*30)/2
		end
		LuaAddJx("combat_exp",jingyan,"T615")
		
		if(LuaQueryTask("T615_a")==0) then
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T615_a",99)
		end
		LuaDelTask("task_kill/mon_033/T615")    -----------�ر�ɱ�ּ�����
		DelLog("615")        -------��־��ɾ��
		LuaDelTask("T615")
		UpdateMenu()
		end



end
LuaSendMenu()
return 1
end 

