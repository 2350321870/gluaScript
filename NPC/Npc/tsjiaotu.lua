NPCINFO = { 
serial="47" ,
base_name="tsjiaotu",
icon=2524,
NpcMove=2524 ,
name="��ʦ��ͽ" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="��ʦ���������޵�",
LuaType=1,
} 
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local level= LuaQuery("level")
	T368= LuaQueryTask("T368")
	AddTopSayMenuItem("@7�����б�","")
		if(LuaQueryTask("T369")==0 and level>=17 and LuaQueryTask("T360")==99) then
			AddTopSayMenuItem("��ͽ�����ǡ����顿","T369") 
			havetask =1
			end
--		if(T368 ==0 and level >=17) then
--			AddTopSayMenuItem("а�����䡾���顿","T368")
--			havetask =1
--			end
		if(LuaQueryTask("T360")==0 and level>=16)then
			AddTopSayMenuItem("͵�����������顿","T360")
			havetask=1
		end
		if(LuaQueryTask("T361")==0 and level>=15 and level<20)then
			AddTopSayMenuItem("�������ǡ�ѭ����","T361")
			havetask=1
		end

		if(LuaQueryTask("T362")==0 and LuaQuery("level")>=17)then
			AddTopSayMenuItem("�����顾���顿","T362")
			havetask=1
		end

		if(LuaQueryTask("T363")==0 and LuaQuery("level")>=16)then
			AddTopSayMenuItem("����ı��������顿","T363")
			havetask=1
		end
-------------------------------------------------------------------------
		if(LuaQueryTask("T361")==1)then
			AddTopSayMenuItem("@2�������ǡ�ѭ����","T361")
			havetask=4
		end
		if(LuaQueryTask("T369")==1) then
			AddTopSayMenuItem("@2��ͽ�����ǡ����顿","T369") 
			if(LuaItemCount("o_mission007")>=1) then
			havetask =4
			end
		end
-----------------------------------------------------------------------
		if((LuaQueryTask("Tsnpc_32")==1 or LuaQueryTask("Tsnpc_32")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2��վС��","Tsnpc_32")
			havetask=2
		end
		if((LuaQueryTask("Tenpc_32")==1 or LuaQueryTask("Tenpc_32")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_32")
			havetask=2
		end
--		if(T368 ==1 or T368==2) then
--			AddTopSayMenuItem("@2а�����䡾���顿@0","T368")
--			havetask =2
--			end
--		if(LuaQueryTask("T353")==1) then
--     			AddTopSayMenuItem("@2֪��֪�ˡ����顿","T353")
--			havetask=2
--		end
		if(LuaQueryTask("T360")>0 and LuaQueryTask("T360")<99)then
			AddTopSayMenuItem("@2͵�����������顿","T360")
			if(LuaQueryTask("T360")==2) then
			havetask=2
			end
		end

		if(LuaQueryTask("T362")==1 or LuaQueryTask("T362")==2)then
			AddTopSayMenuItem("@2�����顾���顿","T362")
			if(LuaQueryTask("T362")==2)then
			havetask=2
			end
		end
		if(LuaQueryTask("T363")==1)then
			AddTopSayMenuItem("@2����ı��������顿","T363")
			if(LuaFreeBag()>=8)then
			havetask=2
			end
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
elseif(answer=="liaotian") then
	LuaSay("��ʦ��ͽ���������ǽ����Ǳ�����ʩ�������ű������������ѵ���������Ǳ�������������") 
		       
elseif(answer=="T369") then         ------------------------��ͽ������
		if(LuaQueryTask("T369") == 0 ) then
		  LuaSay("��ʦ��ͽ�����Ž������ɷ���ʵ�����ĵ�а��������...�ѵ����Ƕ���������������")
		  LuaSay("��ʦ��ͽ�����ɽ�����������ǵı����һ��������ĵ��ˣ�����ȥ�����Щ@2��ʦ�˱�@0������ʲô@2����@0�ɣ�")
		  LuaSetTask("T369",1)
		  UpdateTopSay("�����ʦ�˱�Ѱ������")
		  AddLog("��ͽ�����ǡ����顿",369)
		  UpdateMenu()

		elseif(LuaQueryTask("T369") == 1 ) then
		  if(LuaItemCount("o_mission007")>=1) then
		    LuaSay("��ʦ��ͽ��ԭ�����������ʦ������Щ���������ģ�ԭ��������ı����������ˣ�����..��")
		    AddMenuItem("@7�������","")
		    AddMenuItem("��ȡ����","T369jl")
		    else
		    LuaSay("��ʦ��ͽ���㻹û���ҵ�����Ŷ����ȥ�����Щ@2��ʦ�˱�@0������ʲô@2����@0�ɣ�")
		    end
		end
          elseif(answer=="T369jl")then
           if(LuaQueryTask("T369")==1) then
		    DelItem("o_mission007",1)
		    LuaSetTask("T369",99)
		    DelLog("369")
		    LuaAddJx("combat_exp",65000,"T369")
			LuaAddAchievementSchedule("Task_num",1)
		    UpdateMenu()
		    end
		    
elseif(answer=="T368") then           --------------а����������
		if(LuaQueryTask("T368")== 0) then
		LuaSay("��ʦ��ͽ����Ҫ����˵����С�ı�а�����䣡")
		    AddMenuItem("@7ѡ��","")
		    AddMenuItem(""..LuaQueryStr("name").."�������䣬��˵����","368no")
 		    AddMenuItem(""..LuaQueryStr("name").."��ƫҪ����˵����","368yes")
		elseif(LuaQueryTask("T368")== 1) then
		    if(LuaQueryTask("T368A")== 99) then
		    LuaSay(""..LuaQueryStr("name").."�����ţ��ѵ�������Ǵ�˵�е�ɨ���ǣ�����Ӵ��Ժ󣬾�Ȼ�Ŵα����嶷ɽ�Ĺ��������ˡ�")  
		    LuaSay("��ʦ��ͽ����Ҫ��������䣬�ҿ��޼ƿ�ʩ������@4��������@0��@3л��@0��֪������֪������ȥ��@3л��@0�ɣ�") 
		    LuaSetTask("T368",2)
		    AddLog("а������",368) 
		    UpdateTopSay("ȥ�ҽ������ϵ�л��")
		    UpdateMenu()
		    else
                    LuaSay("��ʦ��ͽ����������������£���ʱ�����֪������Ȱ������غ����@!")
		    end
		elseif(LuaQueryTask("T368")== 2) then
		    LuaSay("��ʦ��ͽ����Ҫ��������䣬�ҿ��޼ƿ�ʩ������@4��������@0��@3л��@0��֪������֪������ȥ��@3л��@0�ɣ�") 
		end
	elseif(answer=="368no") then
	LuaSay("��ʦ��ͽ���㻹����֪֮������������Զ���!")
	elseif(answer=="368yes") then
	LuaSay("��ʦ��ͽ��Ϊ���������������������Ҫ���꣬��Ҫ���ˣ�������ʲô�취�أ���������������@2��������@0��@!")
	LuaSetTask("T368",1)
	AddLog("а������",368) 
	UpdateTopSay("��������������ҵ�")
	UpdateMenu()

------------------------------------------------֪��֪��
elseif(answer=="T353")then
	if(LuaQueryTask("T353")==1)then
  		if(LuaItemCount("o_mission349")>=15)then
  			LuaSay("��ʦ��ͽ�������������ˣ�����û�������������ĵ�ô��")
  			LuaSay(""..LuaQueryStr("name").."����Ҫ��ŭ����Ҳ����ʦ�����ˣ����Ǹ��ֵܵ���Ƥ�������·���һ��С��˼��")
			AddMenuItem("@7�������","")
	  		AddMenuItem("��ȡ����","T353jl")
		else
			LuaSay("��ʦ��ͽ�����ߣ�ɱ���⣡������ʦ���������15����Ƥ���������Ǿ��ܵõ��ˡ�") 
		end
	end

	elseif(answer=="T353jl")then
		if(LuaQueryTask("T353")==1)then
  		if(LuaItemCount("o_mission349")>=15)then
		LuaSetTask("T353",99)
		DelLog("353")
		LuaAddJx("combat_exp",65000,"T353")--����
		LuaAddAchievementSchedule("Task_num",1)
		DelItem("o_mission349",LuaItemCount("o_mission349"))
		end
		end
		UpdateMenu()
		UpdateNPCMenu("huanxuan")
		--------------------------------  ͵�����������顿
elseif(answer=="T360")then
	if(LuaQueryTask("T360")==0)then
		LuaSay("��ʦ��ͽ���ֵܵ����������ˡ�������ͷ�й涨��ɽկ���������롣�������Ҹ���һ����ҩ��ȥ��@3����@0ɱ����˵��")
		LuaSetTask("T360",1)
		AddLog("͵�����������顿",360)
		LuaGive("o_mission350",1)
		UpdateTopSay("ȥ��������")
		UpdateMenu()
		UpdateNPCMenu("huanxuan")

		elseif(LuaQueryTask("T360")==1)then
		LuaSay("��ʦ��ͽ����ûȥ���Ǻε���ȥ�һ����ɡ�")
		
		elseif(LuaQueryTask("T360")==2) then
		LuaSay(LuaQueryStr("name").."�������Ѿ����Ҷ��������´󼪣������ҿ��Խ�կ�˰ɣ�")
		AddMenuItem("@7�������","")
	  	AddMenuItem("��ȡ����","T360jl")	
	end
	elseif(answer=="T360jl")then
		if(LuaQueryTask("T360")==2) then
		LuaSetTask("T360",99)
		DelLog("360")
		LuaAddJx("combat_exp",62000,"T360")--����
		LuaAddAchievementSchedule("Task_num",1)
		LuaGive("coin",500,"T360")
		UpdateMenu()
		end
		
----------------------------------------------ѭ�� ����
 
elseif(answer=="T361")then
	if(LuaQueryTask("T361")==0)then
		LuaSay("��ʦ��ͽ��ȥ����@3����@0@220ֻ@0�ɣ����õ����벻�����ջ�")
		if(TeamCount()>=2)then
			LuaSay("��ʦ��ͽ�������ڻ���һ����ɱ���أ����ڶ��������ɱ����Ŷ�����ȥ�����Ļ�����߳�װ���ļ���Ŷ@!")
		else
			LuaSay("��ʦ��ͽ��������������ܶ�����Ŷ���������������������Ķӳ����ж౶�����״̬����ô��Ҳ�����ܵ�50%Ŷ@!")
		end
		LuaSetTask("T361",1)
		AddLog("�������ǡ�ѭ����",361)
		LuaSetTask("task_kill/mon_010/T361",1)
		UpdateMenu()
	elseif(LuaQueryTask("T361")==1)then
		local a=LuaQueryTask("task_kill/mon_010/T361")-1
		if(LuaQueryTask("task_kill/mon_010/T361")>=21)then
		LuaSay("��ʦ��ͽ�����ĺܺã�������Ӧ�õĽ���")		
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T361jl")
	  	else
		LuaSay("��ʦ��ͽ���������@2"..a.."ֻ@0���ǣ�ȥ����@3����@0@220ֻ@0�����ظ��ҡ�") 
		end
	end
	
	elseif(answer=="T361jl")then
		local level= LuaQuery("level")
		if(level>80)then
		level=80
	end
		if(LuaQueryTask("T361")==1)then
			if(LuaQueryTask("task_kill/mon_010/T361")>=21)then
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
				DelLog("361")
				local jingyan
				if(TeamCount()>=2)then
					jingyan=(40428+level^2*20)
				else
					jingyan=(19428+level^2*20)
				end
				LuaGive("coin",money,"T361")
					LuaAddJx("combat_exp",jingyan,"T361")--����
					if(LuaQueryTask("T361_a")==0) then
						LuaAddAchievementSchedule("Task_num",1)
						LuaSetTask("T361_a",99)
					end
				LuaDelTask("task_kill/mon_010/T361")
				LuaDelTask("T361")
				UpdateMenu()
			end
		end

	

-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>������
elseif(answer=="T362")then
	if(LuaQueryTask("T362")==0)then
		LuaSay("��ʦ��ͽ����������ֻ�������飬��������ѱ���������ǣ���˵������ѱ��ʦѱ���ַ����أ���ȥ���Ҵ�̽һ�¡�")
		LuaSay("@7��ܰ��ʾ@0��@!��ɱ����񽫻����������һ����")
		LuaSetTask("T362",1)
		AddLog("�����顾���顿",362)
		UpdateMenu()
	elseif(LuaQueryTask("T362")==1)then
		LuaSay("��ʦ��ͽ����������ѱ��ʦ����ȥ��̽һ�������ص�ѱ�޷�����")
	elseif(LuaQueryTask("T362")==2)then
		LuaSay(""..LuaQueryStr("name").."�������ߣ�����һҲ��������ѱ��ʦ������ת�����ġ�")
		LuaSay("��ʦ��ͽ���ѵ����������ĶԴ���")
		LuaSay("��ʦ��ͽ��..")
		LuaSay("��ʦ��ͽ��...")
		LuaSay("��ʦ��ͽ��....")
		LuaSay("��ʦ��ͽ�������������֮�⣬��������ֻ����ֻ���ﾫ����͸���ɣ�������һ·�ɳ�����Ҫ���ĶԴ���")
		LuaSay("��ʦ��ͽ��ѱ��ʦ��Ŷ��ܣ����ڳ�������ʲô������ĵط�������ȥ����")
		AddMenuItem("@7ѡ�����","")
		AddMenuItem("Ԫ����","T362jl_A")
		AddMenuItem("������","T362jl_B")
		AddMenuItem("������","T362jl_C")
		AddMenuItem("�¾���","T362jl_D")
	end


	elseif(answer=="T362jl_A")then
		if(LuaQueryTask("T362")==2)then
			LuaGive("e_pet01",1,"T362")
			LuaAddJx("combat_exp",80000,"T362")
			DelLog("362")
			LuaSetTask("T362",99)
			UpdateMenu()
		end
	elseif(answer=="T362jl_B")then
		if(LuaQueryTask("T362")==2)then
			LuaGive("e_pet02",1,"T362")
			LuaAddJx("combat_exp",80000,"T362")
			DelLog("362")
			LuaSetTask("T362",99)
			UpdateMenu()
		end
	elseif(answer=="T362jl_C")then
		if(LuaQueryTask("T362")==2)then
			LuaGive("e_pet03",1,"T362")
			LuaAddJx("combat_exp",80000,"T362")
			DelLog("362")
			LuaSetTask("T362",99)
			UpdateMenu()
		end
	elseif(answer=="T362jl_D")then
		if(LuaQueryTask("T362")==2)then
			LuaGive("e_pet04",1,"T362")
			LuaAddJx("combat_exp",80000,"T362")
			DelLog("362")
			LuaSetTask("T362",99)
			UpdateMenu()
		end
--����ı���
elseif(answer=="T363")then
	if(LuaQueryTask("T363")==0)then
			LuaSay("��ʦ��ͽ�����±������ذ�����֪��װ����ʲô���ض����أ������ǲ�֪����ô����")
			LuaSay("��ʦ��ͽ�������ھ������������������������Ʒ����ͨ��@1���д��@0��Ҳ���Ը߼�@1����@0����ҡ�")
			LuaSay("��ʦ��ͽ������Ҫ��װ������ͨ��@1�ֽ�@0�õ����ϣ�@1�����̵�@0Ҳ�ǲ����ѡ��")
			LuaSay("��ʦ��ͽ��������ı������ճ�8�����8��������������@!��")
			LuaSay("@7��ܰ��ʾ@0��@!��ɱ����񽫻����л����ñ��䣡")
			LuaSetTask("T363",1)
			AddLog("����ı���",363)
			UpdateMenu()
	elseif(LuaQueryTask("T363")==1)then
		if(LuaFreeBag()>=8)then
			LuaSay("��ʦ��ͽ���������Ǵ�������ô��ͽ������������")
			LuaSay("��ʦ��ͽ���Ժ�ҲҪѧ������Ŷ@!����һ����ֵ���ǵ�@3����@0@!")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T363jl")
		else
			LuaSay("��ʦ��ͽ��������Ʒ����ͨ��@1���д��@0��Ҳ���Ը߼�@1����@0����ҡ�")
			LuaSay("��ʦ��ͽ������Ҫ��װ������@1�ֽ�@0�õ����ϣ�@1���̵�@0Ҳ�ǲ����ѡ��")
			LuaSay("��ʦ��ͽ����ȥ������ı������ճ�8�����8��������������@!��")
		end
	end


	elseif(answer=="T363jl")then
		if(LuaQueryTask("T363")==1)then
			LuaAddJx("combat_exp",80000,"T363")
			LuaGive("o_box004j",1,"T363")
			LuaSetTask("T363",99)
			DelLog("363")
			UpdateMenu()
		end
			
elseif(answer=="Tsnpc_32")then
	if(LuaQueryTask("Tsnpc_32")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("��ʦ��ͽ�����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_32",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_32")==2)then
		LuaSay("��ʦ��ͽ�����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_32")then
	if(LuaQueryTask("Tenpc_32")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("��ʦ��ͽ���ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_32",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_32")==2)then
		LuaSay("��ʦ��ͽ�����Ѿ������ˣ����ȥ��ȡ������")
	end


end
LuaSendMenu()
return 1
end 

