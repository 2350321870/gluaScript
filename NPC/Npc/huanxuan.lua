NPCINFO = { 
serial="46" ,
base_name="huanxuan" ,
icon=2582,
NpcMove=2582,
name="����" ,
iconaddr=1 ,
butt="10|10|63" ,
name_color="CEFFCE" ,
lastsay="������������" ,
LuaType=1,
} 
function do_talk(answer) 
if (answer=="ask") then 
		havetask =0 
		local level= LuaQuery("level") 
		AddTopSayMenuItem("@7�����б�","")
		--if(level>=10)then
			--AddTopSayMenuItem("@3�ռ�����","T80")
		--end
		if(LuaQueryTask("T268")==0 and LuaQueryTask("T72")==99) then
			AddTopSayMenuItem("���ɹ��ҡ����顿","T268")
			havetask =1
		end
		if(LuaQueryTask("T72") ==0 and level>=16)  then
			AddTopSayMenuItem("���鼯�᡾�̡̳�","T72")
			havetask =1
		end
--		if( LuaQueryTask("T352")==99 and LuaQueryTask("T353")==0)then
--			AddTopSayMenuItem("֪��֪�ˡ����顿","T353")
--			havetask=1
--		end 
		if(level>=14 and level<18 and LuaQueryTask("T354")==0)then
	   	 	AddTopSayMenuItem("�����ұ���ѭ����","T354")
	   	 	havetask=1
		end
		if(LuaQueryTask("T358")==0 and level>=16) then
			AddTopSayMenuItem("����֮־�����顿","T358") 
			havetask =1
			end
		if(LuaQueryTask("T357")==0 and LuaQueryTask("T358")==99) then
			AddTopSayMenuItem("����֮�ơ����顿","T357") 
			havetask =1
			end
		if(LuaQueryTask("T356")==0 and LuaQueryTask("T357")==99) then
			AddTopSayMenuItem("������ı�����顿","T356") 
			havetask =1
			end
--		if(level>=15 and LuaQueryTask("T350")==0) then      
--			AddTopSayMenuItem("С��ţ�������顿","T350")        
--			havetask=1                                           
--		end
		if(level>=17 and LuaQueryTask("T351")==0 and LuaQueryTask("T357")==99)then
			AddTopSayMenuItem("��ս��ʦ�������顿","T351")
			havetask=1
		end
		if(LuaQueryTask("T351")==99 and LuaQueryTask("T352")==0)then
			AddTopSayMenuItem("�Ƶ�֮�ߡ����顿","T352")
			havetask=1
		end
		if(level>=18 and LuaQueryTask("T355")==0)then
			AddTopSayMenuItem("л��Ů�������顿","T355")
			havetask=1
		end
--		if(LuaQueryTask("T359")==0 and level>=15)  then
--			AddTopSayMenuItem("����֮ʿ�����顿","T359")
--			havetask =1
--			end
--		if(LuaQueryTask("T350")>0 and LuaQueryTask("T350")<99) then
--			AddTopSayMenuItem("@2С��ţ�������顿","T350")
--			havetask=4
--		end
		if(LuaQueryTask("T351")==1)then
			AddTopSayMenuItem("@2��ս��ʦ�������顿","T351")
			havetask=4
		end
--		if(LuaQueryTask("T353")==1)then
--			AddTopSayMenuItem("@2֪��֪�ˡ����顿","T353")
--			havetask=4
--		end
		if(LuaQueryTask("T354")==1)then
	   	 	AddTopSayMenuItem("@2�����ұ���ѭ����","T354")
	   	 	havetask=4
		end
		if(LuaQueryTask("T268")==1 or LuaQueryTask("T268")==2) then
			AddTopSayMenuItem("@2���ɹ��ҡ����顿","T268")
		end
		if((LuaQueryTask("Tsnpc_31")==1 or LuaQueryTask("Tsnpc_31")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2��վС��","Tsnpc_31")
			havetask=2
		end
		if((LuaQueryTask("Tenpc_31")==1 or LuaQueryTask("Tenpc_31")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_31")
			havetask=2
		end
		if(LuaQueryTask("T385")==1)then
			if(LuaQueryTask("TfindNPC_15")==1 or LuaQueryTask("TfindNPC_15")==2)then
				AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
				havetask=2
			end
		elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_15")==98)then
			AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
			havetask=2
		end

--		if(LuaQueryTask("T359")==1) then
--			AddTopSayMenuItem("@2����֮ʿ�����顿@0","T359")
--			if(LuaQueryTask("T359A") == 99) then
--			havetask =2
--			end
--		end
		if(LuaQueryTask("T355")==1)  then                    
			AddTopSayMenuItem("@2л��Ů�������顿","T355")
		end
		if(LuaQueryTask("T72") ==1)  then
			AddTopSayMenuItem("@2���鼯�᡾�̡̳�","T72")
			havetask =2
		end
		if(LuaQueryTask("T326")==1)then
			AddTopSayMenuItem("@2��ʦ�������顿","T326")
			haveyask=2
		end

		if(LuaQueryTask("T360")==1)then
	   	 	AddTopSayMenuItem("@2͵�����������顿","T360")
	   	 	havetask=2
		end			

		if(LuaQueryTask("T356")==1) then
			AddTopSayMenuItem("@2������ı�����顿","T356") 
			if(LuaItemCount("e_clothes006") >= 1) then
			havetask =2
			end
		end
		if(LuaQueryTask("T357")>0 and LuaQueryTask("T357")<99) then
			AddTopSayMenuItem("@2����֮�ơ����顿","T357") 
			if(LuaItemCount("o_mission008") >= 1) then
			havetask =2
			end
		end
		if(LuaQueryTask("T358")>0 and LuaQueryTask("T358")<99) then
			AddTopSayMenuItem("@2����֮־�����顿","T358") 
			if(LuaItemCount("o_mission002")==1 or LuaQueryTask("T358") ==3) then
			havetask =2
			end
		end
		if(LuaQueryTask("T322")==3) then
			AddTopSayMenuItem("@2��ֶ֮�顾���顿","T322") 
			havetask =2
		end
		if(LuaQueryTask("T352")==1 or LuaQueryTask("T352")==2)then
			AddTopSayMenuItem("@2�Ƶ�֮�ߡ����顿","T352")
			if(LuaQueryTask("T352")==2) then
			havetask=2
			end
		end

		AddTopSayMenuItem("@3������Ѩ","Tdtjbs")

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

elseif(answer=="T268") then             -----���ɹ��� 
  if(LuaQueryTask("T268")==0)then
	LuaSay("�������������ĸ����ɵģ����ĸ����ҵģ�����֮�У�û�й������Ǻ��������Ŷ�����µĵȼ��Ѿ����Լ���������ء�@!")
	LuaSay("������ȥ�ݷ�һ��@4�ʹ�@0��@3����@0�ɣ�������������@2���ڰ��ɡ����ҵ���Ϣ@0��@2���뽨����@0Ȼ��@2��һֱ������@0�Ϳ��Ե����ˡ�@!")
	LuaSetTask("T268",1)
	AddLog("���ɹ��ҡ����顿",268)
	UpdateTopSay("�ݷûʹ��Ľ���")
	UpdateMenu()
   elseif(LuaQueryTask("T268")==1) then
	LuaSay("������ȥ�ݷ�@4�ʹ�@0��@3����@0�ɣ�������������@2���ڰ��ɡ����ҵ���Ϣ@0��@2���뽨����@0Ȼ��@2��һֱ������@0�Ϳ��Ե����ˡ�@!")
	UpdateTopSay("�ݷûʹ��Ľ���") 
   elseif(LuaQueryTask("T268")==2) then
	LuaSay("�������ܺã�������������ֻ�н����Լ����������������ĳư�ͳһ֮����@!")
	AddMenuItem("@7�������","")
	AddMenuItem("��ȡ����","T268jl")
   end
		elseif(answer=="T268jl")then
		       if(LuaQueryTask("T268")==2)then
				LuaSetTask("T268",99)
				LuaAddJx("combat_exp",54450,"T268")
				LuaAddAchievementSchedule("Task_num",1)
				DelLog("268")
				UpdateMenu()
				end

elseif(answer=="T72") then                            -----------���鼯��
		if(LuaQueryTask("T72") == 0) then
                  if(IsVisitor()=="true")then
                  SendCommand("call=@3�ο�@0��Ҫ@2ע��@0�Ժ�������,��@2ȷ�ϼ�@0���ٰ�@2#�ż�@0����ע�ᡣ|0|12|11")
                  else
				LuaSay("��������ӿ��Ի�úܶ�ĺô�,�������Լӿ�ɱ��������ٶ�,�����Ա����@270%�ľ���ӳ�@0Ŷ��@!")
				LuaSay("��������BOSS,�¸��������벻����ӵġ�һ���˵�����ʵ��������,��ȥ�齨һ��@22�˶���@0���������Ұɡ�")
				LuaSay("������@2վ��������@0ʱ,���@2ȷ�ϼ�@0�ٰ�@27�����@0�Ϳ����齨�����ˡ�@!")
				LuaSay("@7��ܰ��ʾ@0��������Ϊ�������@!��ɱ����񽫻��з��Ľ�����")
				LuaSetTask("T72",1)
				UpdateTopSay("���˶���������")
				AddLog("���鼯�᡾�̡̳�",72)
                UpdateMenu()
	          end

		elseif(LuaQueryTask("T72") == 1) then
			if(TeamCount()== 2) then
				LuaSay("���������ӿɽ�Ҳ����ô���ѧ�������,�����˴����¸�,�ֽ����ȥ�����ˡ�")
				LuaSay(""..TeamQueryStr("name")..":��BOSS��ȥ,��װ������,��������@!")
				LuaSay("���������У����@3���ִ����@0�������͸����@3Ѫ�غ�ħ��@0��������������@3ϡ����Ʒ@0Ŷ����@3ʹ��@0���԰ɡ�@!")
				if(LuaFreeBag()>=1)then	
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T72jl")
				else
	    		LuaSay("��ʾ�������ٱ���1������ռ䣬�����ȥ������Ǯׯ�ϰ�����Ѷ�����ֿ⣡") 
	    		end
			elseif(TeamCount()> 2  ) then
			    LuaSay("����:���ӿɽ�Ҳ����ô���ѧ�������,�����˴����¸�,�ֽ����ȥ�����ˡ�")
				LuaSay("�������������@2��ԱԽ��@0,ɱ�ֵõ���@2����Խ��@0,����ʹ���鱣����5�˵�״̬�ɣ�@!")
				if(LuaFreeBag()>=1)then	
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T72jl")
				else
	    		LuaSay("��ʾ�������ٱ���1������ռ䣬�����ȥ������Ǯׯ�ϰ�����Ѷ�����ֿ⣡") 
	    		end
			else
				LuaSay("�������㻹û�ж�����,վ��һ��������ʱ,���@2ȷ�ϼ�@0�ٰ�@27�����@0�Ϳ����ˡ�")
				UpdateTopSay("���ȷ�ϼ��ٰ�7���Ϳ����")
			end
         end 
   	            elseif(answer=="T72jl")then
		          if(LuaQueryTask("T72")==1) then
			  if(TeamCount()>=2)then
				LuaSetTask("T72",99)
				LuaAddJx("combat_exp",79200,"T72")
				LuaAddAchievementSchedule("Task_num",1)
				if(LuaQueryTask("TtaozhuangA") == 0) then
				LuaGive("e_pants165",1,2,"T72")
				LuaSetTask("TtaozhuangA",99)
				end
				DelLog("72")
				UpdateMenu()
                 end 
		 end


elseif(answer=="liaotian") then
     LuaSay("�������뵱�꣬�Ҹ������Ǻε�Ӣ�����ţ��ߣ�����һ����Ҫ�̳и�����־�����������һ��ϡ�")
			LuaDelTask("T359")
		         DelLog("359")


elseif(answer=="T322") then              ------------------------��ֶ֮�� 
		if(LuaQueryTask("T322")==3 ) then
		if(LuaItemCount("o_mission014")>=1)then
		    LuaSay("�������常���ҵĹ��ģ������������ģ������ҿɲ����ø��׾���ô������")
		    LuaSay("�������һ���Ҳ��ӹ�ˣ�����֮�꣬����֮��һ�ղ�������@3����@0��һ�ո�Ϊ���ӡ�")
		    AddMenuItem("@7�������","")
	            AddMenuItem("��ȡ����","T322jl")
		end 
		end
			elseif(answer=="T322jl")then	            
		       if(LuaQueryTask("T322")==3)then
				LuaSetTask("T322",99) 
				DelItem("o_mission014",1)
				LuaAddJx("combat_exp",40520,"T322") 
				if(LuaRandom(10)==1)then-- 13����Ь��
					LuaGive("e_shoes003",1,2,"T322")
				else
					LuaGive("e_shoes003",1,1,"T322")
				end   
				LuaAddAchievementSchedule("Task_num",1)	
				DelLog("322") 
				UpdateMenu() 
				end

elseif(answer=="T358")then            ----------------------------����֮־�����顿
	if(LuaQueryTask("T358")==0)then
	LuaSay("�����������常@3����@0��һ��@2ľ��@0���ҵ��˸������µ�������Ϊ�β��ø��ҿ����һ�������ô���Ρ�")
	LuaSay("����������һ��@2��ҩ@0���ͷ�����ȥ@4��������@0@3����@0���@2ʹ����@0���常���������ԹԽ������ˣ����������ң��ұ�����л��")
	UpdateTopSay("�ڽ��������������ʹ����ҩ")
	LuaSetTask("T358",1)
	LuaGive("o_mission006",1)
	AddLog("����֮־�����顿",358)
	UpdateMenu()

	elseif(LuaQueryTask("T358")==1)then
	  if(LuaItemCount("o_mission002")<1) then
	  LuaSay("�������㻹û��ʹ����ҩ�أ�ȥ@4��������@0@3����@0���@2ʹ����ҩ@0�����ظ��ҡ�")
	  else
	  LuaSay("������ԭ����ˣ�����ϣ���ҳɾ͵Ĳ��ǰ�ҵ���ߣ��常Ϊ��Ҫ���ң�������°���ȥ���常@3����@0���ʡ�")
	  LuaSetTask("T358",2)
	  AddLog("����֮־�����顿",358)
	  UpdateMenu()
	   end

	 elseif(LuaQueryTask("T358")==2)then
	  LuaSay("�����������ȥ�����常@3����@0����Ϊ��Ҫ��ƭ����!")

	elseif(LuaQueryTask("T358")==3)then
	LuaSay("�������常���ǲ����ף�ֶ���������������ǲ��á���@3����@0��ǳ𣬵�Ҳ���᲻�����������!")
	AddMenuItem("@7�������","")
	AddMenuItem("��ȡ����","T358jl")
	  end
	 
	 

	elseif(answer=="T358jl")then
	if(LuaQueryTask("T358")==3) then
	LuaSetTask("T358",99)
	DelItem("o_mission002",LuaItemCount("o_mission002"))
	DelLog("358")
	LuaAddJx("combat_exp",58380,"T358")--����
	LuaAddAchievementSchedule("Task_num",1)
	LuaGive("coin",600,"T358")
	UpdateMenu()
	end

elseif(answer=="T356") then                    -------------------- ������ı
		if(LuaQueryTask("T356") == 0 ) then
		        LuaSay("��������̽��������������һȺ@2����@0������ʦ���У��ٰ�@2��ʦ�˱�@0���񡣺ߺߣ����Ҿ���������֮����ʩ����")
			LuaSay("�������������ȥ@4��������@0��@3��������@0������һ��@2�޳���@0����Ҫ���˴�����ʦ�����߽�֮��@!")
			LuaSetTask("T356",1)
			UpdateTopSay("ȥ�������˴������޳���")
			AddLog("������ı�����顿",356)
			UpdateMenu()
		elseif(LuaQueryTask("T356") == 1 ) then
		   if(LuaItemCount("e_clothes006") >= 1) then
			LuaSay("�������ã���������������ҾͲ�����ʦ���������ҽ���")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T356jl")
			else
			LuaSay("����������ȥ@4��������@0��@3��������@0������һ��@2�޳���@0��")
			end
		end
	    	    elseif(answer=="T356jl")then
		         if(LuaQueryTask("T356")==1) then
				if(LuaItemCount("e_clothes006") >= 1) then
				 LuaSetTask("T356",99)
				 DelItem("e_clothes006",1)
				 LuaAddJx("combat_exp",58380,"T356")
				 LuaAddAchievementSchedule("Task_num",1)
				 LuaGive("coin",500,"T356")
				 DelLog("356")
				 UpdateMenu()
				 end
			end

elseif(answer=="T357") then                    -------------------- ����֮��
		if(LuaQueryTask("T357") == 0 ) then
		        LuaSay("���������׵��������ᵽ����һ��@2��������ͼ@0����@4��������@0��@3ľ��@0�У���@2Կ��@0ȴ��@4�嶷ɽ@0��@3����@0�����ˣ�")
			LuaSay("����������ȥ@2��ɱ����@0��ȡ��@2����Կ��@0��ȥ����@4��������@0��@3ľ��@0����@2��������ͼ@0�������ҡ�")
			LuaSay("��������������ǰȥŶ�����ж���ľ���ӳ���")
			LuaSetTask("T357",1)
			UpdateTopSay("�����������ҵ�Կ�׿�����������")
			AddLog("����֮�ơ����顿",357)
			UpdateMenu()
		elseif(LuaQueryTask("T357") == 1 ) then
		   if(LuaItemCount("o_mission008") >= 1) then
			LuaSay("����������������Ű��ȴ�粻����ˮ��ǵ��������а�������ֻ�����֮����ͼ֮��")
			LuaSay("������ԭ����������ϵ����֮�֣����˵��������ʦ���������İ�׮���ֲ���Ҳ��Ѫ����ɱ��")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T357jl")
			else
			LuaSay("������@2��ɱ����@0��ȡ��@2����Կ��@0��ȥ����@4��������@0��@3ľ��@0����@2��������ͼ@0�������ҡ�")
			end
		end
	    	    elseif(answer=="T357jl")then
		         if(LuaQueryTask("T357")==1) then
				if(LuaItemCount("o_mission008") >= 1) then
				 LuaSetTask("T357",99)
				 DelItem("o_mission009",1)
				 DelItem("o_mission008",1)
				 LuaAddJx("combat_exp",61380,"T357")
				 LuaAddAchievementSchedule("Task_num",1)
				 DelLog("357")
				 UpdateMenu()
				 end
			end

-------------------------------------------------��ʦ��

elseif(answer=="T326")then
	if(LuaQueryTask("T326")==1)then
		LuaSay("����������ս��׷ɣ�����������ʲô������ô��ëͷС��")
		LuaSay(""..LuaQueryStr("name").."��С����@3����@0��ǰ�����У��������լ�¶���")
		LuaSay("��������Ȼ��������������������")
		AddMenuItem("@7�������","")
	  	AddMenuItem("��ȡ����","T326jl")
	end

	elseif(answer=="T326jl")then
	if(LuaQueryTask("T326")==1)then
		LuaSetTask("T326",99)
		DelLog("326")
		LuaAddJx("combat_exp",47520,"T326")--����
		LuaAddAchievementSchedule("Task_num",1)
		UpdateMenu()
		end
-----------------------------------------------С��ţ��

elseif(answer=="T350")then
	if(LuaQueryTask("T350")==0)then
	    LuaSay("������Ӣ���������ǿ��㲻�����ɲ�֪����������ȥ�嶷ɽ����20ֻ@3����@0��֤һ����������ɣ�")
	    LuaSay(""..LuaQueryStr("name").."����С���ҵ�������������ֻ���Ƕ��ѣ�����ڴ˵Ⱥ����������ȥȥ������")
	    LuaSetTask("T350",1)
	    LuaSetTask("task_kill/mon_010/T350",1)
	    AddLog("С��ţ�������顿",350)
	    UpdateMenu()
	    UpdateTopSay("��ɱ20ֻ����")
    elseif(LuaQueryTask("T350")==1) then
		a=LuaQueryTask("task_kill/mon_010/T350")-1
	if(LuaQueryTask("task_kill/mon_010/T350")>=21)then
            LuaSay("������СӢ�۹�Ȼ���ֲ������������¹�Ŀ�࿴��")
            AddMenuItem("@7�������","")
	  		AddMenuItem("��ȡ����","T350jl")
        else
            LuaSay("���������������@2"..a.."ֻ@0���ǣ��Ͻ�ȥ�嶷ɽ����20ֻ@3����@0�������Ұɣ�")

        end
	end
	elseif(answer=="T350jl")then
	if(LuaQueryTask("T350")==1) then
        if(LuaQueryTask("task_kill/mon_010/T350")>=21)then
		LuaSetTask("T350",99)
		DelLog("350")
		LuaDelTask("task_kill/mon_010/T350")
		LuaAddJx("combat_exp",54450,"T350")--���� 
		LuaAddAchievementSchedule("Task_num",1)
		UpdateMenu()
		end
		end
 ---------------------------------------------------   ��ս��ʦ��
elseif(answer=="T351")then
	if(LuaQueryTask("T351")==0)then
		LuaSay("����ʦ�����Ի��ڣ�����ı����ʵ��̫���ţ���ȥ�����@220����ʦ�˱�@0,������ǵ����硣")              
		LuaQueryTask(""..LuaQueryStr("name").."���ã��������ȥ���������˵��С��˼��")
		LuaQueryTask("�������������������ж���ľ��齱��Ŷ��ͳһ���ֵܵ����¡�")
		LuaSetTask("T351",1)
		AddLog("��ս��ʦ�������顿",351)
		LuaSetTask("task_kill/mon_011/T351",1)
		UpdateMenu()
		UpdateTopSay("ȥ�����20����ʦ�˱�")
	elseif(LuaQueryTask("T351")==1)then
		b=LuaQueryTask("task_kill/mon_011/T351")-1
		if(LuaQueryTask("task_kill/mon_011/T351")>=21) then
      			LuaSay("����������һ�̴�ľ��ʣ�����ʦ������Щ��������۽�����")
			AddMenuItem("@7�������","")
	  		AddMenuItem("��ȡ����","T351jl")
	  	else
	  		LuaSay("���������������@2"..b.."��@0��ʦ�˱�����@4�嶷ɽ@0�����@220����ʦ�˱�@0�������ң�")
		end
	end
	elseif(answer=="T351jl")then
		if(LuaQueryTask("T351")==1)then
		if(LuaQueryTask("task_kill/mon_011/T351")>=21) then
		LuaSetTask("T351",99)
		DelLog("351")
		LuaDelTask("task_kill/mon_011/T351")
		if(TeamCount()>=2)then
			LuaAddJx("combat_exp",72100,"T351")--����
		else
			LuaAddJx("combat_exp",62100,"T351")--����
		end
		LuaAddAchievementSchedule("Task_num",1)
		UpdateMenu()
		end
		end

 -------------------------------------------   �Ƶ�֮��
elseif(answer=="T352")  then
    if(LuaQueryTask("T352")==0)then
		LuaSay("������������ȥ���ǰ취���㻹����������@3����@0Ѱ���Ƶ�֮�ߣ�������@4��������@0��")
		LuaSetTask("T352",1)
		AddLog("�Ƶ�֮�ߡ����顿",352)
		UpdateTopSay("ȥ���������������廸��")
		UpdateMenu()
	elseif(LuaQueryTask("T352")==1)then		
		LuaSay("��������������@3����@0Ѱ���Ƶ�֮�ߣ�������@4��������@0")		
	elseif(LuaQueryTask("T352")==2) then
		LuaSay("������֪��֪�ˣ���ս���ܣ��ã���������֪������ô����")
		AddMenuItem("@7�������","")
	  	AddMenuItem("��ȡ����","T352jl")
	end
	elseif(answer=="T352jl")then
		if(LuaQueryTask("T352")==2) then
		LuaSetTask("T352",99)
		DelLog("352")
		LuaAddJx("combat_exp",60310,"T352")--����
		LuaAddAchievementSchedule("Task_num",1)
		UpdateMenu()
		end
	
------------------------------------------֪��֪��
elseif(answer=="T353")then
	if(LuaQueryTask("T353")==0)then
		LuaQueryTask("������֪��֪�ˣ���ս����������Ҫ������ʦ��������@3����@0�ռ�@215����Ƥ@0����@3��ʦ��ͽ@0���ɻ��롣")
		LuaSetTask("T353",1)
		AddLog("֪��֪�ˡ����顿",353)
		UpdateMenu()
		UpdateNPCMenu("tsjiaotu")
	elseif(LuaQueryTask("T353")==1)then
		LuaSay("����������@2����@0�ռ�@215����Ƥ@0����@3��ʦ��ͽ@0���ɻ��롣")
	end
-------------------------------------͵������
elseif(answer=="T360") then
	if(LuaQueryTask("T360")==1)then
	LuaSay(LuaQueryStr("name").."����ʦ��ͽ���Ҷ�ҩ�������Լٻ��棬���ȼ�װ�������Һû�����ʦ����ɽկ��ȥ")
        LuaShowNotify("������Ż����޹����������Ĵ���")
        DelItem("o_mission350",1)
        LuaSetTask("T360",2)
	AddLog("͵�����������顿",360)
	UpdateTopSay("�ظ���ʦ��ͽ")
        UpdateMenu()
        UpdateNPCMenu("tsjiaotu")
	end
	
---------------------------------------   �����ұ���ѭ����

elseif(answer=="T354") then
	if(LuaQueryTask("T354")==0)then
		LuaSay("������Ϊ��ս����ʤ������ȥ����@2��ʦ�˱�20��@0�����Ǿ���@4�嶷ɽ@0��")
		LuaSay("���������������ɱ�ָ���Ŷ�����ܽ������������Ŷ��")
		LuaSay("���������ֵܣ���ͳһ��")
		LuaSetTask("T354",1)
		AddLog("�����ұ���ѭ����",354)
		LuaSetTask("task_kill/mon_011/T354",1)--��ʦ�˱�
		UpdateMenu() 
	elseif(LuaQueryTask("T354")==1)then
		c=LuaQueryTask("task_kill/mon_011/T354")-1
		if(LuaQueryTask("task_kill/mon_011/T354")>=21) then
			LuaSay("���������ĺã�ʤ����������ǰ�棡����Ŭ���ɡ�")
			AddMenuItem("@7�������","")
	  		AddMenuItem("��ȡ����","T354jl")
	  	else
		  	LuaSay("���������������@2"..c.."��@0��ʦ�˱���ɱ����20����ʦ�˱�֮���������Ұɣ�")
		end
	end
	elseif(answer=="T354jl")then
		local level= LuaQuery("level") 
			if(level>80)then
		level=80
	end
		if(LuaQueryTask("T354")==1)then
		if(LuaQueryTask("task_kill/mon_011/T354")>=21) then
		LuaDelTask("T354")
		DelLog("354")
		local jingyan
		if(LuaQueryTask("T354_first")~=1)then
			jingyan=((21037+level^2*20)*1.4)
		else
			jingyan=(21037+level^2*20)
		end
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
		LuaGive("coin",money,"T354")

		LuaAddJx("combat_exp",jingyan,"T354")--����	
		if(LuaQueryTask("T354_a")==0) then
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T354_a",99)
		end
		LuaSetTask("T354_first",1)

		UpdateMenu()
		end
		end

elseif(answer=="T355") then              ------------------------л��Ů�� 
		if(LuaQueryTask("T355")==0) then
		LuaSay("��������л�ҵ��˶����������������������л���һ��Ů����������һǻΪ��Ϊ˧�ĺ��顣")
		LuaSay("������@3л���@0֮����������ʦ��������@4ɽկ@0�ſڽ�Ӧ����ȥ������ɡ�@2����@0�Ϳ���ȥ@4ɽկ@0�ˡ�")
                LuaSetTask("T355",1)
		UpdateTopSay("ȥ��ɽկ�е�л���̸��")
                AddLog("л��Ů�������顿",355)
		UpdateMenu()
		elseif(LuaQueryTask("T355")==1) then
		LuaSay("��������ȥ��@4ɽկ@0��@3л���@0�ɣ�@3����@0�Ϳ���ȥ@4ɽկ@0�ˡ�")
		end

elseif(answer=="T80")then--//////////////////////////begin�ռ���������

	--T80		--0-δ��,1����
	--80col	--������
	--80count	--�Ƴɹ�����
	--80cancelnum	--ȡ������
	--80earntype	--δ�콱��
	daylimit=40--ÿ�մ��������޸Ĵ˴�����XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
	if(LuaQueryStrTask("T80day")~=GetCurrentDay())then
	LuaAddTask("80cancelnum",2)--ÿ����3��ȡ������
	LuaSetTask("T80day",GetCurrentDay())	
	LuaSetTask("T80daycount",0)--ÿ�ռ���
	LuaSay("ȡ�������������2")
	end
    shijiancha=GetCurrentTime()-LuaQueryTask("80time")
    if(shijiancha>60) then
	T80daycount=LuaQueryTask("T80daycount")
	if(LuaQueryTask("T80")==0)then		--δ��������
	hour=GetCurrentHour()
	weekday=GetDayOfWeek()
		if(T80daycount<daylimit)then--(hour>=17 and hour<23) or ((weekday==0 or weekday==6) and (hour>=12 and hour<23)))then--����ʱ��
		LuaSay("����δ����������,�ɹ�������һ���ش��޶����ٵ�����,�������һ��޵�������")
		LuaSay("@7��ܰ��ʾ@0���ռ������г��˳����ĵ��߲����⣬��֦����󾫹Ŷ�����ͨ����ľ�����ڿ�ر�ͼ��á�Ҳ����������ҹ����á�")
		LuaSay("@7��ܰ��ʾ@0���ռ�������������������ɴ��������Ӷ�����Ŷ��һ����Ʒ�����ϵͣ������@3��ֵ�ϸߵ���Ʒ������Ҳ��ǳ����@0@!")
		AddMenuItem("@7��������","")--title
		AddMenuItem("@7����","T80what")
		AddMenuItem("��û��","no")
		else
		if(LuaQueryStr("gender")=="����")then
		LuaSay("����������"..daylimit.."��������,��Ϣһ�°�,�س̵�����,�����.���ݽ��,�������ģ�")
		else
		LuaSay("����������"..daylimit.."��������,��Ϣһ�°�,�س̵�����,����˧��.���ݽ��,�������ģ�")
		end
		AddMenuItem("@7��������","")--title
		end
	elseif(LuaQueryTask("T80")==1)then		--�ѽ�δ���
		coldata={SelfDefGetColTask(0,LuaQueryTask("80col"))}
		LuaSay("��@2"..(LuaQueryTask("80count")+1).."@0������:"..coldata[4]..",������1��@2"..coldata[3])
		AddMenuItem("@7Ѱ��һ��@2"..coldata[3],"")--title
		AddMenuItem("���ҵ���","T80ok")
		AddMenuItem("Ŷ��û��,��������","notfind")
		AddMenuItem("̫������,����ȡ������","T80cancel")
	else					--�����δ�콱���رղ˵���
		ret=LuaQueryTask("T80")
		LuaSay("������ɵ�@2"..(LuaQueryTask("80count")+1).."@0������")
		AddMenuItem("@7ѡ����","")--title
		if(ret~=100)then
		AddMenuItem("@P@3ͭǮ","T80re1")
		end
		if(ret~=101)then
		AddMenuItem("@(@5����","T80re2")
		end
		if(ret~=102)then
		AddMenuItem("@*@4�²�����ɶ","T80re3")
		end
	end
		AddMenuItem("@5���񵵰�","T80about")
    else
    LuaSay("�������������Ѿ������100�Σ�@2������������һ���������淨��@0��������������Ҫ���1���Ӳ��ܼ�����ȡ�������ĵȴ���@!")
    end
	elseif(answer=="T80what")then
		coldata={SelfDefGetColTask(LuaQuery("level"),1)}--�ݴ���1��ֹϵͳ��ʼ�����0����
		LuaSetTask("80col",coldata[1])
		LuaSetTask("T80",1)
		LuaSay("��@2"..(LuaQueryTask("80count")+1).."@0������:"..coldata[4]..",��ȥ�����ռ�1��@2"..coldata[3])
	elseif(answer=="T80ok")then
		coldata={SelfDefGetColTask(0,LuaQueryTask("80col"))}
		if(LuaItemStatusNormalCount(coldata[2])>0)then
			LuaSay("������,�ɵĺ�")
			LuaAddTask("T80daycount",1)
			DelItem(coldata[2],1)
			LuaSay("������ɵ�@2"..(LuaQueryTask("80count")+1).."@0������,��Ҫʲô����")
			ret=LuaRandom(3)+100--�����ѡ������(100-Ǯ,101-����,102-����)
			LuaSetTask("T80",ret)	--���佱����δ���������
			AddMenuItem("@7ѡ����","")
			if(ret~=100)then
			AddMenuItem("@3ͭǮ","T80re1")
			end
			if(ret~=101)then
			AddMenuItem("@5����","T80re2")
			end
			if(ret~=102)then
			AddMenuItem("@4�²�����ɶ","T80re3")
			end
		else
		if(LuaItemStatusNormalCount(coldata[2])~=LuaItemCount(coldata[2]))then
		LuaSay("���ٿ���ԭ��,��̯�Ĳ���,����̯�Ķ����Լ�ͣ�ۺ������������")
		else
		LuaSay("��������������,�㻹û���ҵ�1��@7"..coldata[3].."@0")
		end
		end
	
	elseif(answer=="T80re1")then
			if(LuaQueryTask("T80")>0) then
			am=SelfDefGetColEarn(1)
				if(LuaQueryTask("80count")<LuaQuery("level")*100)then
				LuaAddTask("80count",1)
				else
				LuaSay("������������ﵽ����,ÿ����һ����չ����100")
				end
			LuaSetTask("T80",0)
			LuaGive("coin",am,"T80")
			SelfDefAddScore()
			if(LuaQueryTask("T80daycount")>100) then
			time=GetCurrentTime()
			LuaSetTask("80time",time)
			end
			end
	elseif(answer=="T80re2")then
		    if(LuaQueryTask("T80")>0) then
			bm=SelfDefGetColEarn(2)
				if(LuaQueryTask("80count")<LuaQuery("level")*100)then
				LuaAddTask("80count",1)
				else
				LuaSay("������������ﵽ����,ÿ����һ����չ����100")
				end
			LuaSetTask("T80",0)
			LuaAddJx("combat_exp",bm,"T80")
			SelfDefAddScore()
			if(LuaQueryTask("T80daycount")>100) then
			time=GetCurrentTime()
			LuaSetTask("80time",time)
			end
			end
	elseif(answer=="T80re3")then--�²�
            if(LuaQueryTask("T80")>0) then
			ro=LuaRandom(100)
				if(LuaQueryTask("80count")<LuaQuery("level")*100)then
				LuaAddTask("80count",1)
				else
				LuaSay("������������ﵽ����,ÿ����һ����չ����100")
				end
				LuaSetTask("T80",0)
				if(floor((LuaQueryTask("80count")+1)/840)==(LuaQueryTask("80count")+1)/840 and ro>40)then
				om=SelfDefGetColEarn(3)
				LuaGive(om,1,3,"T80")
				LuaNotice("@7"..LuaQueryStr("name").."���ռ����������еõ�@3�ƽ�װ��@7һ��")
				elseif(ro<2)then
				om=SelfDefGetColEarn(4)
				LuaGive(om,1,"T80")
				elseif(ro>50)then
				am=SelfDefGetColEarn(1)
				LuaGive("coin",am,"T80")
				else
				bm=SelfDefGetColEarn(2)
				LuaAddJx("combat_exp",bm,"T80")
				end
			SelfDefAddScore()
			if(LuaQueryTask("T80daycount")>100) then
			time=GetCurrentTime()
			LuaSetTask("80time",time)
			end
			end

	elseif(answer=="notfind")then
		LuaSay("�����ҵĶ����������Ź���������ҵ�,ʵ���Ҳ����Ͳ�Ҫ��ǿ��,Ҫ��ʲô��������ô����,�������˶���������.")
	elseif(answer=="T80cancel")then
		if(LuaQueryTask("80cancelnum")==0)then
		LuaSay("������û��ȡ���Ļ���,ȷ��ȡ��������������Ĵ�������@2����Ϊ0@0,��ȷ��ȡ����")
		else
		LuaSay("�����ڻ���@2"..LuaQueryTask("80cancelnum").."@0��ȡ������Ļ���,��ȷ��ȡ��������")
		end
		AddMenuItem("@7ȡ������?","")
		AddMenuItem("@1ȡ��","T80yescncl")
		AddMenuItem("@7������","no")
		elseif(answer=="T80yescncl")then
			if(LuaQueryTask("80cancelnum")==0)then
				LuaSetTask("80count",0)
				LuaSetTask("T80",0)
				LuaSay("�������ռ���������ɹ�����Ϊ@10")
			else
				LuaAddTask("80cancelnum",-1)
				LuaSetTask("T80",0)
			end
			AddMenuItem("@7Ҫ����������","")
			AddMenuItem("@7����","T80what")
			AddMenuItem("��û��","no")
	elseif(answer=="T80about")then
		flag=0
		if(LuaQueryTask("80col")==0)then
		flag=1
		else
			coldata={SelfDefGetColTask(0,LuaQueryTask("80col"))}
		end
		AddMenuItem("@7���񵵰�","")
		AddMenuItem("@3����ɴ���:@7"..LuaQueryTask("80count").."","no")
		if(LuaQueryTask("T80")~=0 or flag==0)then
		AddMenuItem("@3��ǰ����:@5Ѱ��һ��@2"..coldata[3].."","no")
		else
		AddMenuItem("@3��ǰ���� : @7��","no")
		end
		AddMenuItem("@3��ȡ������:@1"..LuaQueryTask("80cancelnum").."","no")
		AddMenuItem("@5����˵��","T80intro")
	elseif(answer=="T80intro")then
		LuaSay("��������:�����ٵ�ָʾѰ�Ҳ��ύָ����Ʒ,֮�󼴿������ѡͭǮ�����������������")
		LuaSay("��ɻ��ۼӴ���,������������ɴ������,��ɴ���Խ��,����Խ��,�ۼӴ����ﵽ���޲������ӡ�")
		LuaSay("@1û��ȡ��ȴ��Ҫȡ���Ļ�,�ۻ���ɴ���������.")
		LuaSay("ÿ�����2��ȡ������Ļ���,������ȡ���Ѷȴ��������������������")
		LuaSay("������񴥷��ռ����ʺ���ɱ������ͬ�����Ӱ���������")
		LuaSay("�ۼ���ɴ����ﵽһ������������о�ϲ��.�Ǻ���ֻ��˵������,�����˵һ���о�ϲ,�������������̫�����˰�")

elseif(answer=="T359") then                    ------------����֮ʿ
	if(LuaQueryTask("T359") == 0) then
         LuaSay("�������ݺ����£���Ҫ�ı��Ǿ���֮ʿ��Ӣ�ۺβ�ȥ@4������@0��@3�ʹ��@0����սһ��@3���а�@0������һ���Լ���ʵ���� ")
         LuaSay("������@3��ս����һ�����а�@0���ɹ���ȡ��ս���а����󣬶����Ե�����������ȡ����������")
	 LuaSay("�������ӽ�������@2����@0�ߣ��Ϳ��Ե���@4������@0�ˣ�@3�ʹ��@0����@4�����ǵ�����@0��")
	 LuaSetTask("T359",1)
         AddLog("����֮ʿ�����顿",359)
         UpdateMenu()
         UpdateTopSay("ȥ�����ǻʹ�ߴ�������սһ�����а�")
	elseif(LuaQueryTask("T359") == 1) then 
			if(LuaQueryTask("T359A") == 99) then
		        LuaSay("�������ܺã�������֪���Լ���ʵ���ˣ�ͳһ��ҵ���������ǰ������ǰ���ɡ�")
			AddMenuItem("@7�������","")
         		AddMenuItem("��ȡ����","T359jl")
			else
		        LuaSay("�������㻹û��ȥ��ս���а��أ�ȥ@4������@0��@3�ʹ��@0����ս@3����һ�����а�@0���ɹ����������Ұɡ�")
		        LuaSay("�������ӽ�������@2����@0�ߣ��Ϳ��Ե���@4������@0�ˣ�@3�ʹ��@0����@4�����ǵ�����@0��")
			end
		end
		  elseif(answer=="T359jl") then
                if(LuaQueryTask("T359") == 1 and LuaQueryTask("T359A") == 99) then
		        LuaSetTask("T359",99)
		        DelLog("359")
		        LuaAddJx("combat_exp",110000,"T359")
			LuaAddAchievementSchedule("Task_num",1)
		        LuaGive("coin",1000,"T359")
		        UpdateMenu()
		        end



--��ڽ�ɽ
elseif(answer=="T385")then
	if(TeamCount()>=2)then
		if(LuaQueryTask("T385")==1)then
			if(TeamQueryTask("T385")>=1)then
				if(LuaQueryTask("TfindNPC_15")==1)then
					LuaSay("�������ܺã�лл����Ҵ���@2��ɽ����[�Ͼ�]@0�����Ҽ�ʱ���˽⵽��ǰ���������")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_15",98)
					DelItem("o_mission417",1)
					UpdateMenu()
				elseif(LuaQueryTask("TfindNPC_15")==2)then
					LuaSay("�������ܺã�лл����Ҵ���@2��ɽ����[�¾�]@0�����Ҽ�ʱ���˽⵽��ǰ���������")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_15",98)
					DelItem("o_mission418",1)
					UpdateMenu()
				end
			else
				LuaSay("��������Ķ��ѻ�û�������ۣ��Ͽ�֪ͨ��������Ŷ")
			end
		elseif(LuaQueryTask("T385")==98)then
			LuaSay("���������Ѿ���һ��Ľ�ɽ�����͵����ҵ����ϣ���ȥ��л����ȡ�����ɡ�")

		end
	else
		LuaSay("��ʾ����������Ҫ��Ӳ��ܽ�����һ��")	
	end


elseif(answer=="Tsnpc_31")then
	if(LuaQueryTask("Tsnpc_31")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("���������ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_31",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_31")==2)then
		LuaSay("���������ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_31")then
	if(LuaQueryTask("Tenpc_31")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("�������ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_31",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_31")==2)then
		LuaSay("���������Ѿ������ˣ����ȥ��ȡ������")
	end


elseif(answer=="Tdtjbs")then
	if(LuaQuery("zcount")>=20)then
		if(LuaQuery("rightanswer") <6)then
			LuaSay("��ʾ�����ڸղŵĴ����У������@3"..LuaQuery("rightanswer").."����Ŀ��С��6���⣬�㲻�ܻ�ý���boss��ͼ���ʸ�")
			LuaSay("������û��ͨ�����δ��⣬���϶���Ϊ@2������ʿ@0���ͷ�@22Сʱ@0�����ٴν��ܴ�����")
			LuaSetTask("Tdtjbs_dc",1)  --����Ϊ1  ûͨ��
			LuaSetTask("Tdtjbs_time",GetCurrentTime())
		else
			LuaSay("��ʾ�����ڸղŵĴ����У������@3"..LuaQuery("rightanswer").."����Ŀ.")
			LuaSay("��ϲ�㣬��ý���boss�ʸ���������������")
			AddMenuItem("@7�Ƿ��͵�boss��ͼ","")
			AddMenuItem("@3����","Tdtjbs_cs")
			AddMenuItem("@3����","Tdtjbs_bcs")
		end
		LuaDel("rightanswer")
		LuaDelTask("Twd_lb")
		LuaDelTask("Tdtjbs_ddcs")
		LuaSet("zcount",0) 
	elseif(LuaQuery("zcount")>0)then
		LuaSay("������Ĵ��ⱻ��ϣ�����ѡ���Ƿ�������⡣")
		AddMenuItem("@7�Ƿ��������","")
		AddMenuItem("@3����","Tdtjbs_jx")
		AddMenuItem("@3����","Tdtjbs_fq")
	elseif(LuaQuery("zcount")==0)then
		if(LuaQueryTask("Tdtjbs_dc")==1) then  --�ϴδ���Ϊûͨ��
			local sjc=GetCurrentTime()-LuaQueryTask("Tdtjbs_time")
			if(sjc>=7200) then
				LuaSetTask("Tdtjbs_dc",0)  --����Ϊ0  
				LuaDelTask("Tdtjbs_time")
			else
				local h=floor((7200-sjc)/3600)
				local f=floor((7200-sjc-h*3600)/60)
				local s=floor((7200-sjc)%60)
				if(h>0) then
					if(f>0) then
						if(s>0) then
							LuaSay("������û��ͨ���ϴδ��⣬@22Сʱ@0�ͷ�ʱ�仹û�����ٵ�@2"..h.."Сʱ"..f.."����"..s.."��@0�Ժ�������")
						else
							LuaSay("������û��ͨ���ϴδ��⣬@22Сʱ@0�ͷ�ʱ�仹û�����ٵ�@2"..h.."Сʱ��"..f.."����@0�Ժ�������")
						end
					else  --����Ϊ0
						if(s>0) then
							LuaSay("������û��ͨ���ϴδ��⣬@22Сʱ@0�ͷ�ʱ�仹û�����ٵ�@2"..h.."Сʱ��"..s.."��@0�Ժ�������")
						else
							LuaSay("������û��ͨ���ϴδ��⣬@22Сʱ@0�ͷ�ʱ�仹û�����ٵ�@2"..h.."Сʱ��@0�Ժ�������")
						end
					end
				else --hΪ0
					if(f>0) then
						if(s>0) then
							LuaSay("������û��ͨ���ϴδ��⣬@22Сʱ@0�ͷ�ʱ�仹û�����ٵ�@2"..f.."����"..s.."��@0�Ժ�������")
						else
							LuaSay("������û��ͨ���ϴδ��⣬@22Сʱ@0�ͷ�ʱ�仹û�����ٵ�@2"..f.."����@0�Ժ�������")
						end
					else  --����Ϊ0
						if(s>0) then
							LuaSay("������û��ͨ���ϴδ��⣬@22Сʱ@0�ͷ�ʱ�仹û�����ٵ�"..s.."��@0�Ժ�������")
						end
					end
				end
			end
		end
		if(LuaQueryTask("Tdtjbs_dc")~=1) then  --�ϴ�Ϊͨ��  ����ʱ��ͷ��Ѿ����
			LuaSay("������ǰ����Ҫ����ͷ�أ�����Ҫ�г��ڵ��书����Ҫ�й��˵�������ֻҪ��@2���20���е�6��@0�����л��ᵽɱ��Ѩ�л�ɱboss@2��ʦ�ػ���@0��û���ػ��д�����Ŷ")
			LuaSay("ע�⣺����������������@23��@0������Ϊ�Զ�@2�����ش������Ŀ�����ɹ�����boss��ͼ��bossû��ˢ����˵���ձ��˴���������Եȴ�...@0")
			AddMenuItem("@7�Ƿ����","")
			AddMenuItem("@3��ʼ����","Tdtjbs_y")
			AddMenuItem("@3��������","Tdtjbs_n")
		end
	end
elseif(answer=="Tdtjbs_y")then
	local a=LuaRandom(5)
	LuaSetTask("Twd_lb",a)
	LuaSet("zcount",0) 
	if(LuaQueryTask("Twd_lb")==0) then 
		TaskProcess("A")
	elseif(LuaQueryTask("Twd_lb")==1) then
		TaskProcess("B")
	elseif(LuaQueryTask("Twd_lb")==2) then
		TaskProcess("C")
	elseif(LuaQueryTask("Twd_lb")==3) then
		TaskProcess("D")
	elseif(LuaQueryTask("Twd_lb")==4) then
		TaskProcess("G")
	end
elseif(answer=="Tdtjbs_jx") then
	if(LuaQueryTask("Twd_lb")==0) then
		LuaAddTask("Tdtjbs_ddcs",1)
		if(LuaQueryTask("Tdtjbs_ddcs")<=3) then
			TaskProcess("A")
		else
			LuaSay("�����㱾�δ�������б����@23��@0����Ϊ@2�����ش������Ŀ@0��")
			LuaSet("zcount",20)
			DoTalk("Tdtjbs")
		end
	elseif(LuaQueryTask("Twd_lb")==1) then 
		LuaAddTask("Tdtjbs_ddcs",1)
		if(LuaQueryTask("Tdtjbs_ddcs")<=3) then
			TaskProcess("B")
		else
			LuaSay("�����㱾�δ�������б����@23��@0����Ϊ@2�����ش������Ŀ@0��")
			LuaSet("zcount",20)
			DoTalk("Tdtjbs")
		end
	elseif(LuaQueryTask("Twd_lb")==2) then 
		LuaAddTask("Tdtjbs_ddcs",1)
		if(LuaQueryTask("Tdtjbs_ddcs")<=3) then
			TaskProcess("C")
		else
			LuaSay("�����㱾�δ�������б����@23��@0����Ϊ@2�����ش������Ŀ@0��")
			LuaSet("zcount",20)
			DoTalk("Tdtjbs")
		end
	elseif(LuaQueryTask("Twd_lb")==3) then
		LuaAddTask("Tdtjbs_ddcs",1)
		if(LuaQueryTask("Tdtjbs_ddcs")<=3) then
			TaskProcess("D")
		else
			LuaSay("�����㱾�δ�������б����@23��@0����Ϊ@2�����ش������Ŀ@0��")
			LuaSet("zcount",20)
			DoTalk("Tdtjbs")
		end
	elseif(LuaQueryTask("Twd_lb")==4) then
		LuaAddTask("Tdtjbs_ddcs",1)
		if(LuaQueryTask("Tdtjbs_ddcs")<=3) then
			TaskProcess("G")
		else
			LuaSay("�����㱾�δ�������б����@23��@0����Ϊ@2�����ش������Ŀ@0��")
			LuaSet("zcount",20)
			DoTalk("Tdtjbs")
		end
	end
elseif(answer=="Tdtjbs_fq") then
	LuaSet("zcount",20)
	DoTalk("Tdtjbs")
elseif(answer=="Tdtjbs_cs") then
	ChangeMap("lu_15ywfb")

end 
LuaSendMenu()
return 1
end 

------------�Զ����ռ��������----------------
function SelfDefGetColTask(level,collection)
--level==0ʱ�����������ɣ���0ʱֻ��ѯ���ݣ���������
array={}
--array[0]={ID,�ռ�ƷID,�ռ���NAME,TALK,��������}--ÿ��ϵ������20ͭ/
array[1]={1,"o_material_11","1��ë","ë�ǻ����ľ������",1}--����
array[2]={2,"o_material_20","1��Ƥ","Ƥ�ǻ����ľ������",1}
array[3]={3,"o_material_29","1����","���ǻ����ľ������",1}
array[4]={4,"o_material_38","1��ľ","ľ�ǻ����ľ������",1}
array[5]={5,"o_material_47","1����","���ǻ����ľ������",1}
array[6]={6,"o_material_56","1����","���ǻ����ľ������",1}
array[7]={7,"o_drug_hp1","��ɢ(���󶨵�)","ҩƷ�Ǵ�����ˣ��Ӽ�����֮�ر�",1}
array[8]={8,"o_drug_mp1","�ش�¶(���󶨵�)","ҩƷ�Ǵ�����ˣ��Ӽ�����֮�ر�",1}
array[9]={9,"o_drug_mhp1","С����(���󶨵�)","ҩƷ�Ǵ�����ˣ��Ӽ�����֮�ر�",1}
--����20��ǰ��ͨƷ
array[10]={10,"o_material_12","2��ë","ë�ǻ����ľ������",3}
array[11]={11,"o_material_21","2��Ƥ","Ƥ�ǻ����ľ������",3}
array[12]={12,"o_material_30","2����","���ǻ����ľ������",3}
array[13]={13,"o_material_39","2��ľ","ľ�ǻ����ľ������",3}
array[14]={14,"o_material_48","2����","���ǻ����ľ������",3}
array[15]={15,"o_material_57","2����","���ǻ����ľ������",3}
array[16]={16,"o_mix_book021","2���ϳ���","�����ͼ�������Ҫ����",1}--����Ʒ
array[17]={17,"o_mix_book022","3���ϳ���","�����ͼ�������Ҫ����",1}
array[18]={18,"o_mix_book023","4���ϳ���","�����ͼ�������Ҫ����",2}
array[19]={19,"o_mix_book024","5���ϳ���","�����ͼ�������Ҫ����",2}
--����30��ǰ��ͨƷ
array[20]={20,"o_drug_hp3","����ɢ(���󶨵�)","СҩƷ����������ǰ����Ҫ,����Ҫ�ռ����õ�ҩ",5}
array[21]={21,"o_drug_mp3","����¶(���󶨵�)","СҩƷ����������ǰ����Ҫ,����Ҫ�ռ����õ�ҩ",5}
array[22]={22,"o_drug_hp2","��Ҷɢ","СҩƷ����������ǰ����Ҫ,����Ҫ�ռ����õ�ҩ",3}
array[23]={23,"o_drug_hp3","����ɢ(���󶨵�)","СҩƷ����������ǰ����Ҫ,����Ҫ�ռ����õ�ҩ",5}
array[24]={24,"o_drug_mp2","����¶","СҩƷ����������ǰ����Ҫ,����Ҫ�ռ����õ�ҩ",3}
array[25]={25,"o_drug_mp3","����¶(���󶨵�)","СҩƷ����������ǰ����Ҫ,����Ҫ�ռ����õ�ҩ",5}
array[26]={26,"o_food01","����ʳƷ[��]","�ҵľ�Ȯ����",5}--����Ʒ
array[27]={27,"o_material_13","3��ë","ë�ǻ����ľ������",8}--����
array[28]={28,"o_material_22","3��Ƥ","Ƥ�ǻ����ľ������",8}
array[29]={29,"o_material_31","3����","���ǻ����ľ������",8}
array[30]={30,"o_material_40","3��ľ","ľ�ǻ����ľ������",8}
array[31]={31,"o_material_49","3����","���ǻ����ľ������",8}
array[32]={32,"o_material_58","3����","���ǻ����ľ������",8}
--����һ�㸱��Ʒ
array[33]={33,"o_mission153","��֦","����Ǽ�ֵ���ǵı���",15}
array[34]={34,"o_mission145","��","�����ǰ����ѵ�һ���Ŀ��о���",15}
array[35]={35,"o_mission018","�ƾɹŶ�","��Ҳ��֪���ⶫ�����ô�����������ֵǮ",15}
array[36]={36,"o_mission168","����","Ӫ���Լ��Ե�һ����������,�����潫����ʳ�Ŀɲ��ܺ���",15}
array[37]={37,"o_food02","����ʳƷ[��]","�ҵľ�Ȯ��֪���ĸ�С����������,��Ҫ����",15}--����������ܵõ�����Ʒ
--����ϡ��Ʒ
array[38]={38,"o_food03","����ʳƷ[��]","Ŷ",60}--��ֵƷ
array[39]={39,"o_state016y","��ת��(���󶨵�)","Ŷ",80}
array[40]={40,"o_state053y","����֮Ѫ(+500)(���󶨵�)","Ŷ",150}
array[41]={41,"o_state056y","��ʦˮ��(+500)(���󶨵�)","Ŷ",150}
array[42]={42,"o_state001y","˫����(���󶨵�)","Ŷ",150}
array[43]={43,"o_state012y","˫����(���󶨵�)","Ŷ",150}
array[44]={44,"o_state065y","Ѫ��1(���󶨵�)","Ŷ",220}
array[45]={45,"o_state068y","ħ��1(���󶨵�)","Ŷ",350}
array[46]={46,"o_state008y","���������(���󶨵�)","Ŷ",350}
array[47]={47,"o_state017y","������+50(���󶨵�)","Ŷ",150}
array[48]={48,"o_state022y","�ǻ۷�+50(���󶨵�)","Ŷ",150}
array[49]={49,"o_state027y","���ݷ�+50(���󶨵�)","Ŷ",150}
--array[65]={65,"o_food03","����ʳƷ","Ŷ",50}
--������ֵƷ

count=46	--��������!!!�¼�array�ǵô˴�����!!!
	if(level~=0)then--0����������
		if(level<20)then--���������������չ��ʹ��
		collection=LuaRandom(9)+1
		elseif(level<30)then
		collection=LuaRandom(19)+1
		elseif(level<40)then
		collection=LuaRandom(32)+1
		elseif(level<50)then
			if(LuaQueryTask("80count")/20==floor(LuaQueryTask("80count")/20))then
			collection=LuaRandom(count)+1
			else
			collection=LuaRandom(37)+1
			end
		else		
		collection=LuaRandom(count)+1
		end
	end
	colid=array[collection][2]
	str1=array[collection][3]
	str2=array[collection][4]
	re=array[collection][5]
	return collection,colid,str1,str2,re
end
--------------------�Զ�����㽱��------------------
function SelfDefGetColEarn(rt)
cdata={SelfDefGetColTask(0,LuaQueryTask("80col"))}--�齱������
if(rt==1)then--ͭ����
  --earn=150+LuaRandom(100)+2*cdata[5]+LuaQueryTask("80count")--ͭǮ���޿���old
  tbearn=500+LuaQueryTask("80count")*5
  if(tbearn>3000) then
  tbearn=3000
  end
  earn=tbearn+40*cdata[5]
--	earn=300+LuaRandom(200)+40*cdata[5]+floor(LuaQueryTask("80count")/5)--����ϵ��Ϊ������Ϊ�Σ�ϵ����ԭ��Ʒ��ֵ���Ѷȶ�--����20*��25* 20100125dmz
  --if(earn>6100) then
  --earn=6100
  --end
elseif(rt==2)then--������
  exp1=30000+LuaQueryTask("80count")*100	--�������޿���
  if(exp1>60000) then
  exp1=60000
  end
  earn=LuaQuery("level")*30*cdata[5]+exp1
else
item={}
item[1]={"e_book001","e_knife001","e_shield001","e_shoes001","e_necklace001","e_earring001","e_pants001","e_head001"}
item[2]={"e_book002","e_knife002","e_shield002","e_shoes002","e_necklace002","e_earring002","e_pants002","e_head002"}
item[3]={"e_book003","e_knife003","e_shield003","e_shoes003","e_necklace003","e_earring003","e_pants003","e_head003"}
item[4]={"o_state016j","o_state053j","o_state056j","o_state065j","o_state068j"}
item[5]={"o_state022j","o_state027j","o_state077j","o_state005j","o_state034j"}
item[6]={"o_state071j","o_state074j","o_state008j","o_state012j","o_state017j"}
	if(rt==3)then--װ��
	r=LuaRandom(3)+1
	earn=item[r][LuaRandom(8)+1]
	else--����
	r=LuaRandom(3)+4
	earn=item[r][LuaRandom(5)+1]
	end
end

return earn--Ǯ,����������ƷID
end
-------------------SelfDefineFunction��������ӵ�------
function SelfDefAddScore()
cdata={SelfDefGetColTask(0,LuaQueryTask("80col"))}
re=cdata[5]
----------
LuaSendMenu()
return
end
-----------------��������,ͬһ�ܷ�����ֵͬ,��һ��Ϊÿ�ܵĵ�һ��
function SelfDefGetCurWeek()
return floor((floor((GetCurrentTime()+3600*8)/86400)+3)/7)
end
