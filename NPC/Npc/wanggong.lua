NPCINFO = { 
serial="44" ,
base_name="wanggong",
icon=2531,
NpcMove=2531,
name="����" ,
iconaddr=1 ,
butt="10|10|60" ,
name_color="CEFFCE" ,
lastsay="ɱ�����٣����ĺô���" ,
LuaType=1,
} 
function do_talk(answer)
if (answer=="ask") then
		havetask =0 
		local level= LuaQuery("level")
		local T330 = LuaQueryTask("T330")
		local T331 = LuaQueryTask("T331")
		local T332 = LuaQueryTask("T332")
		local T333 = LuaQueryTask("T333")
		local T334 = LuaQueryTask("T334")
		local T335 = LuaQueryTask("T335")
		AddTopSayMenuItem("@7�����б�","")      
		if(level<=20)then
		AddTopSayMenuItem("@3��Ѫ����@0","Tzhiliao02")
		end
		if (LuaQueryStr("class")~="zhan" and level<30)then
			AddTopSayMenuItem("@7ÿ�յ����ÿ�ա�","T70")	
		end
--		if(T331==0 and level>=13)  then
--			AddTopSayMenuItem("�������ԡ����顿","T331")
--			havetask =1
--			end
		if(T332==0 and T333==99)  then
			AddTopSayMenuItem("͵��ս�������顿","T332")
			havetask =1
			end
		if(T333==0 and level >=14)  then
			AddTopSayMenuItem("������������顿","T333")
			havetask =1
		end

		if(T334 <99 and level >=14) then
			AddTopSayMenuItem("�����Ľ̻塾�̡̳�","T334")
			havetask =1
		end
		if(LuaQueryTask("T336")==0 and level >=12)  then
			AddTopSayMenuItem("����֮ͽ�����顿","T336")
			havetask =1
			end
		if(T332==1)  then
			AddTopSayMenuItem("@2͵��ս�������顿","T332")
			havetask =4
			end
--		if(T331==1)  then
---			AddTopSayMenuItem("@2�������ԡ����顿","T331")
--			havetask =4
--			end
		if((LuaQueryTask("Tsnpc_30")==1 or LuaQueryTask("Tsnpc_30")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2��վС��","Tsnpc_30")
			havetask=2
		end
		if((LuaQueryTask("Tenpc_30")==1 or LuaQueryTask("Tenpc_30")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_30")
			havetask=2
		end
		if(LuaQueryTask("T385")==1)then
			if(LuaQueryTask("TfindNPC_14")==1 or LuaQueryTask("TfindNPC_14")==2)then
				AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
				havetask=2
			end
		elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_14")==98)then
			AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
			havetask=2
		end

			
		if(LuaQueryTask("pettask") ==11) then
			AddTopSayMenuItem("@2�ͻ�[ÿ��]","pettask")
			havetask=2
			end
		---------------------------------------------------------
		if(T333==1)  then
			AddTopSayMenuItem("@2������������顿","T333")
			if(LuaQueryTask("T333A")==99) then
			havetask =2
			end
		end

--		if(LuaQueryTask("pettask") ==11) then
--			AddTopSayMenuItem("@2�ͻ�[ÿ��]","pettask")
--			havetask=2
--			end

		
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
	if(LuaItemCount("o_fatescroll")>=1)then
	LuaSay(""..LuaQueryStr("gender")..":��֪����������������")
	LuaSay("����:��������Ȼ��.")
	LuaSay(""..LuaQueryStr("gender")..":�������")
	LuaSay("����:������Ҳ��˵")--���
	LuaSay(""..LuaQueryStr("gender")..":��,����һ��컹ͦӲ��...")
	else
	LuaSay("��������˵������һ�첻���̣��־�������")
	end

elseif(answer=="pettask")then--------------�ͻ�
	if(LuaQueryStrTask("pettaskday")~=GetCurrentDay())then
	LuaSetTask("ptnumber",0)
	LuaSetTask("pettaskday",GetCurrentDay())
	end
	if(LuaQueryTask("pettask") ==11) then
	LuaSay("����:���������뿾�˳԰���")
	LuaSetTask("pettask",0)
	LuaAddTask("ptnumber",1)
	DelItem("o_mission049",LuaItemCount("o_mission049"))
	LuaGive("o_food02",10,"pettask")
	end
	UpdateMenu()


elseif(answer=="Tzhiliao02") then
	if((LuaQuery("max_hp") >LuaQuery("hp")) or (LuaQuery("max_mp") >LuaQuery("mp"))) then
	    local level=LuaQuery("level")
		if(level>80)then
			level=80
		end
        local jinqian=(level^2 + 50)
	  if(LuaItemCount("coin")>=jinqian) then
             local  maxhp=LuaQuery("max_hp")
	     local  maxmp=LuaQuery("max_mp")
	      LuaSet("hp",maxhp)
	      LuaSet("mp",maxmp)
              FlushMyInfo("0")
              LuaGive("coin",-jinqian,"Tzhiliao02")
              LuaSay("��������ջ���@2"..jinqian.."@0ͭǮ�������ƣ��ָֻ��˻�����")
	  else
	      LuaSay("���������ͭǮ���㣬��Ҫ@2"..jinqian.."@0ͭǮ�������ơ�")
	  end
	 else
	LuaSay("����������������Ѫ��ħ״̬������Ҫ���ơ�")
   end

--[[elseif(answer=="T334") then                         ------------------�����Ľ̻�
		if(LuaQueryTask("T334") == 0 ) then
           LuaSay("���������������ѣ���Ҫ���������������ϼ��ѡ��������ھ��ݴ�����ô�ã�һ��֪��ȭͷ����Ӳ����")
           LuaSay("��������Ҫ����@3��ʬ�Լ��Ӷ�@0���������˵�����������Ҫ֪����ô@3ɱ��@0����Ҫ���Ŵ�ү��Ǯ������������")
           LuaSay("�������ǿɾ͵�������@3PK����@0�ˣ�����Ҹ������@3#�ż�@0����ͬ��������ϻ����@31~9�����ַ���@0��")
           LuaSay("���������Լ�������@30�ż�@0�����¶�Ӧ�����ּ����Ϳ��Կ�ʼ���������ּ���Ӧ���ˣ�����@30��@0Ϊȡ����")
           LuaSay("����������˵����ô�࣬�������м���������Ҫ�����㡣")
           LuaSay("��������ô@3��������@0������ң�")
           AddMenuItem("@7��ѡ��","")
           AddMenuItem("A.��ߵ��@3#��@0��ѡ��Ӧ������","N11_ANSWER")
           AddMenuItem("B.��ߵ��@35��@0","NO_11")
           AddMenuItem("C.��ߵ��@3ȷ�ϼ�@0","NO_11")
           AddMenuItem("D.��ߵ��@3#��@0���ٰ�@30��@0","NO_11")
	  end

       if(LuaQueryTask("T334") == 1 ) then

	  LuaSay("�������������@3�Ӷ�@0������ǣ�")
	  AddMenuItem("@7��ѡ��","")
	  AddMenuItem("A.�л����Ӷᵽװ��","NO_21","")
	  AddMenuItem("B.���Զ�ʬ������ֹ���Ӷ�","N21_ANSWER","")
	  AddMenuItem("C.�л����Ӷᵽ��Ǯ","NO_21","")
	  AddMenuItem("D.�Ӷ������ħ��","NO_21","")
		 end

        if(LuaQueryTask("T334") == 2 ) then

        LuaSay("�������������@3��ʬ@0������ǣ�")
          AddMenuItem("@7��ѡ��","")
	  AddMenuItem("A.���Զ�ν��б�ʬ","NO_31","")
	  AddMenuItem("B.��ʬ����Խ�࣬��Ԯ�Ѷ�Խ��","NO_31","")
	  AddMenuItem("C.��ʬ������ħ��","NO_31","")
	  AddMenuItem("D.���ܶԸߵȼ���ҽ��б�ʬ","N31_ANSWER","")
		 end

        if(LuaQueryTask("T334") == 3 ) then

	  LuaSay("�������������@3��Ԯ@0������ǣ�")
	  AddMenuItem("@7��ѡ��","")
          AddMenuItem("A.��Ԯ������ħ��","NO_41","")
	  AddMenuItem("B.��Ԯ����ʬ��������Ѷȸ���","NO_41","")
	  AddMenuItem("C.ֻ�ж��Ѳ��ܾ�Ԯ","N41_ANSWER","")
	  AddMenuItem("D.�κ���Ҷ��ɽ��о�Ԯ","NO_41","")

		 end

	 elseif(answer=="NO_11") then                                              -----------����һ��
           LuaSetTask("T334",0)
          LuaSay("����������ɣ���ô�򵥵�����Ҳ��������ٴ�")

	 elseif(answer=="N11_ANSWER") then                                         ------------��Ե�һ��
           if(LuaQueryTask("T334")<1) then
		   LuaSetTask("T334",1)
           LuaAddJx("combat_exp",3000,"T334")
           LuaSay("��������ô�򵥵�����������Ҳûʲôϡ��ģ��������㡣")
           DoTalk("T334")
           end
		elseif(answer=="NO_21") then                                              -----------���ڶ���
             LuaSetTask("T334",1)
	       LuaSay("�����������ˣ������ٴ�")

		elseif(answer=="N21_ANSWER") then                                         -----------��Եڶ���
           if(LuaQueryTask("T334")<2) then
		   LuaSetTask("T334",2)
           LuaAddJx("combat_exp",3000,"T334")
           LuaSay("�����������㻹������������������㡣")
           DoTalk("T334")
           end

		elseif(answer=="NO_31") then                                             -----------��������
             LuaSetTask("T334",2)
	        LuaSay("�������������ȷʵ��һ���ѶȰ��������������ѡ��")

		elseif(answer=="N31_ANSWER") then                                        ----------��Ե�����
           if(LuaQueryTask("T334")<3) then
		        LuaSetTask("T334",3)
           LuaAddJx("combat_exp",3000,"T334")
           LuaSay("�����������Ǵ����������Ҳ֪������")
           DoTalk("T334")
           end

		elseif(answer=="NO_41") then                                                 ------��������
                 LuaSetTask("T334",3)
                 LuaSay("�������������ȷʵ�����ѶȰ��������������ѡ��")

		elseif(answer=="N41_ANSWER") then                                              ------��Ե�����
               if(LuaQueryTask("T334")<99) then
			     LuaSetTask("T334",99)
	           LuaSay("������������̫�����ˣ���Ȼȫ����֪����")
	           LuaGive("coin",600,"T334")
                 LuaAddJx("combat_exp",52000,"T334")
                 LuaGive("e_clothes005",1,1,"T334")            --13�����·�
				 LuaAddAchievementSchedule("Task_num",1)
                 UpdateMenu()
              end]]





elseif(answer=="T334") then            
        if(LuaQueryTask("T334")==0) then
	    LuaSay("�������������ͳһ�Ѿ��Ǻ���Ϥ�ˣ����Ҿ����㼸�����Ѷȵ�����⡣")
        LuaSay("�����������ɫ�ڵ�ͼ�п�ס��,��ȷ�����ֲ��û�ͭ�ҵ������ǣ�")             --   ��θ�λ
        AddMenuItem("@7��ѡ��","")
	    AddMenuItem("����������","NO_13")
	    AddMenuItem("�޷����","NO_13")
	    AddMenuItem("��ȡ�������ٰ�5��λ��","N13_ANSWER")
	    AddMenuItem("�������뿪","NO_13")
        
       elseif(LuaQueryTask("T334") == 1 ) then                            --   ������־
	    LuaSay("���������@3�鿴������־��")
	    AddMenuItem("@7��ѡ��","")
	    AddMenuItem("��ȷ�ϼ����ٰ�7��","N23_ANSWER")
	    AddMenuItem("��ȡ�������ٰ�1��","NO_23")
	    AddMenuItem("��ȷ�ϼ����ٰ�3��","NO_23")
	    AddMenuItem("��ȡ�������ٰ�4��","NO_23")

        elseif(LuaQueryTask("T334") == 2 ) then

        LuaSay("���������@3���죿")                                --   ����
        AddMenuItem("@7��ѡ��","")
	    AddMenuItem("��ȷ�ϼ����ٰ�3��","NO_33")
	    AddMenuItem("��ȡ�������ٰ�3��","NO_33")
        AddMenuItem("ֱ�Ӱ�0��","N33_ANSWER")
	    AddMenuItem("��ȷ�ϼ����ٰ�4��","NO_33")

        elseif(LuaQueryTask("T334") == 3 ) then                           --   ʹ��װ��
	    LuaSay("��������κ��������@3���н�����")
	    AddMenuItem("@7��ѡ��","")
        AddMenuItem("�ҵ�ͼ�ϵ�NPC","NO_43")
	    AddMenuItem("������Ұ��м�ȷ�ϼ����������˵�","N43_ANSWER")
	    AddMenuItem("ֱ�Ӻ�˭���ҽ���","NO_43")
	    AddMenuItem("����Ҫ����","NO_43")
		end

	   elseif(answer=="NO_13") then
           LuaSetTask("T334",0)
          LuaSay("����������ɣ���ô�򵥵�����Ҳ��������ٴ�")

	   elseif(answer=="N13_ANSWER") then
           if(LuaQueryTask("T334")<1) then
           LuaSetTask("T334",1)
           LuaAddJx("combat_exp",3000,"T334")
           LuaSay("��������ô�򵥵�����������Ҳûʲôϡ��ģ���������")
           DoTalk("T334")
           end
		elseif(answer=="NO_23") then
             LuaSetTask("T334",1)
	         LuaSay("�����������ˣ������ٴ�")

		elseif(answer=="N23_ANSWER") then
           if(LuaQueryTask("T334")<2) then
		     LuaSetTask("T334",2)
           LuaAddJx("combat_exp",3000,"T334")
           LuaSay("�����������㻹�������������������")
           DoTalk("T334")
           end

		elseif(answer=="NO_33") then
              LuaSetTask("T334",2)
	          LuaSay("�������������ȷʵ��һ���ѶȰ��������������ѡ��")
		elseif(answer=="N33_ANSWER") then
            if(LuaQueryTask("T334")<3) then
            LuaSetTask("T334",3)
            LuaAddJx("combat_exp",3000,"T334")
            LuaSay("�����������Ǵ����������Ҳ֪������������һ�����⡣")
            DoTalk("T334")
            end

		elseif(answer=="NO_43") then
                 LuaSetTask("T334",3)
                 LuaSay("�������������ȷʵ�����ѶȰ��������������ѡ��")

		elseif(answer=="N43_ANSWER") then
                 if(LuaQueryTask("T334")<99) then
                 LuaSetTask("T334",99)
	             LuaSay("������������̫�����ˣ���Ȼȫ����֪����")
	             LuaGive("coin",1000,"T334")
                 LuaAddJx("combat_exp",52000,"T334")
				 LuaAddAchievementSchedule("Task_num",1)
                 UpdateMenu()
                 end

elseif(answer=="pettask")then
	if(LuaQueryStrTask("pettaskday")~=GetCurrentDay())then
		LuaSetTask("ptnumber",0)
		LuaSetTask("pettaskday",GetCurrentDay())
	end
	if(LuaQueryTask("pettask") ==11) then
	LuaSay("����:�ź�,���ÿ���")
	LuaSetTask("pettask",0)
	LuaAddTask("ptnumber",1)
	DelItem("o_mission049",LuaItemCount("o_mission049"))
	LuaGive("o_food02",10,"pettask")
	UpdateMenu()
	end						

elseif(answer=="T333") then                     ----------------������������顿
		if(LuaQueryTask("T333") == 0 ) then
				LuaSay("������@3����@0����ͷ����ֶ��@3����@0����@2��ʦ��@0��ȴҪ����������@3����@0���������Ǹ㲻����")
				LuaSay("���������������������ߡ���Ϊ@2�ź��̻�@0����@4�嶷ɽ@0@2ʹ��@0��С���Ǿͻ��������ر��ˣ�����ȥʹ�����ɡ�")
				LuaSetTask("T333",1)
				LuaGive("o_mission033",1)
				UpdateTopSay("ȥ�嶷ɽʹ���ź��̻�")
				AddLog("������������顿",333)
				UpdateMenu()
			elseif(LuaQueryTask("T333")==1) then
				if(LuaQueryTask("T333A")==99) then
				LuaSay("�������ߺߣ�@3����@0��͵͵�������ϵ�@3����@0��@3����@0����ƹ���@3л��@0���ӣ������Ŀ��Ī��@3����@0Ҳ������֮�ģ�")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T333jl")
				else
			    LuaSay("�������㻹û�н�@2�ź��̻�@0��@4�嶷ɽ@0ʹ�õ��أ���ȥ@4�嶷ɽ@0ʹ��@3���񱳰�@0�е�@2�ź��̻�@0�ɡ�")
				end
			end
		        elseif(answer=="T333jl")then
			if(LuaQueryTask("T333")==1) then
			if(LuaQueryTask("T333A")==99) then
				LuaSetTask("T333",99)
				LuaDelTask("o_mission033",LuaItemCount("o_mission033"))
				LuaAddJx("combat_exp",47520,"T333")
				LuaGive("e_pants005",1,1,"T333")           --13������
				LuaAddAchievementSchedule("Task_num",1)
				DelLog("333")
				UpdateMenu()
				end
				end

elseif(answer=="T331") then                  -------------------------------�������ԡ����顿
		if(LuaQueryTask("T331")==0) then
				LuaSay("����������һ��Ѫսɳ�������Ķ����ȷ�Ѫ������ӣ������е�����������ץ��Ҳ�գ�����@4����@0���Է�йһ���ɡ�")
				LuaSay("�����������������ӵ���緶������һ�����ɣ�����@2��������Ƹ�15ֻ@0���ҿ�����")
				LuaSetTask("T331",1)
				LuaSetTask("task_kill/mon_007/T331",1)
				LuaSetTask("task_kill/mon_008/T331",1)
				UpdateTopSay("����������Ƹ�15ֻ")
				AddLog("�������ԡ����顿",331)
				UpdateMenu()
		elseif(LuaQueryTask("T331")==1) then
		local a=LuaQueryTask("task_kill/mon_008/T331")-1
		local b=LuaQueryTask("task_kill/mon_007/T331")-1
			if(a>=15 and b>=15) then
				LuaSay("�������������������Ҵ�֮�簡������Щ�����ɡ�")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T331jl")
   
			else 
				LuaSay("���������Ѿ������ˣ�@2"..a.."ֻ������"..b.."ֻ���@0������@2�����ͽ�Ƹ�15ֻ@0�����ұ������ɣ�")
				UpdateTopSay("����������Ƹ�15ֻ")
			end
		end 
			  elseif(answer=="T331jl")then	
		        if(LuaQueryTask("T331")==1) then			
			if(LuaQueryTask("task_kill/mon_007/T331")>=16 and LuaQueryTask("task_kill/mon_008/T331")>=16) then
				LuaSetTask("T331",99)
				LuaAddJx("combat_exp",40590,"T331")
				LuaAddAchievementSchedule("Task_num",1)
				LuaDelTask("task_kill/mon_007/T331")
				LuaDelTask("task_kill/mon_008/T331")
				DelLog("331")
				UpdateMenu()
				end
				end


elseif(answer=="T332") then                                  ----------------͵��ս�������顿
		if(LuaQueryTask("T332")==0) then
				LuaSay("������������������������Ҳ�����ս�����ٺ٣���ȴС�����ˡ��ҿ���������ս��ѽ���������������գ�@!")
				LuaSay("�������㣬�������ˡ�����ȥ@4�嶷ɽ@0����@215����ʦ�˱�@0��ر��ң���������Ҫ��������Щ�����ǲ�����ͷ���ۡ�")
				LuaSetTask("T332",1)
				LuaSetTask("task_kill/mon_011/T332",1)
				UpdateTopSay("������ʦ�˱�15����ظ���")
				AddLog("͵��ս�������顿",332)
				UpdateMenu()
		elseif(LuaQueryTask("T332")==1) then
		local a=LuaQueryTask("task_kill/mon_011/T332")-1
			if(a>=15) then
				LuaSay("�������úã����������������Ǽ�ʶ���������󽫾���������@!")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T332jl")
			else 
				LuaSay("���������������@2"..a.."����ʦ�˱�@0����û������@215��@0��ȥ@4�嶷ɽ@0�����������ұ������ɡ�")
			end
		end 
			  elseif(answer=="T332jl")then	
		        if(LuaQueryTask("T332")==1) then			
			if(LuaQueryTask("task_kill/mon_011/T332")>=16) then
				LuaSetTask("T332",99)
				LuaAddJx("combat_exp",47520,"T332")
				LuaAddAchievementSchedule("Task_num",1)
				LuaDelTask("task_kill/mon_011/T332")
				DelLog("332")
				UpdateMenu()
				end
				end
elseif(answer=="T70") then
	if(LuaQueryStrTask("T70day")~=GetCurrentDay())then
		LuaSetTask("T70day",GetCurrentDay())
		LuaSetTask("T70",1)
	end
	if(LuaQueryTask("T70")==1)then
		if(LuaQuery("onlinetime")>600)then
			LuaSay("�����������ӵģ������ô󽫾���Ҫ��л�����˻㱨��������@2ȥ���һ㱨��@0�ɡ�")
			LuaSay("������@2л��@0����@4��������@0������˽���������΢���¿�һ�۾��ܿ�����Ŷ@!")
			if(LuaQuery("level")<15)then
				LuaSay("�������㿴�����������֣�������������һ�£�����·�ˣ�@2����������ע��������һ��@0���ܿ���л���ˣ��㱨�˾����@2���ϻ���@0�ɡ�")
			end
			LuaSetTask("T70",2)
			LuaSetTask("T70time",GetCurrentTime())
			LuaSay("��ʾ����������񽫻��@3������@0����@3��ս��@0һ����@2������ֻ��30��������Ҳſ���ȡ����Ҫ���Ŷ@0��")--��������1�����������Ļ��ἰ������һ����")
			UpdateTopSay("ȥ������л���㱨����")
		else
			LuaSay("������"..LuaQueryStr("name").."������ʱ��ﵽ@210����@0�������ҽ�ȡ����Ŷ��")
		end
	elseif(LuaQueryTask("T70")==2)then
		LuaSay("�����������ô󽫾���Ҫ��л�����˻㱨��������@2ȥ���һ㱨��@0�ɣ�л�����ڽ������ϵ��·���")
	elseif(LuaQueryTask("T70")==3)then
			local shijiancha=(GetCurrentTime() - LuaQueryTask("T70time"))
		if(shijiancha>=900) then
			LuaSay("�������ţ������úøɣ�")
			LuaSetTask("T70",99)
			local r=LuaRandom(4)
			if(r<=2)then
			LuaGive("e_state008t",1,"T70")
			LuaSay("��ʾ���þ�������Ч��6Сʱ���뾡��ʹ�á�")
			elseif(r==3)then
			LuaGive("o_state092j",1,"T70")
			end
		else
			LuaSay("����:�ϱ����˰�,���ں�æ,�����ٵ�15������������,�Ҹ��㾭���������ս��һ�������ڻ�û���أ�")
		end
	else
		LuaSay("��������˽���ĵ������������׼ʱ�������ɡ�")
	end
	----
	UpdateMenu()

elseif(answer=="T336") then
	if(LuaQueryTask("T336")==0)then
		LuaSay("���������ӵ�������������ڵ���������������Ҳ������һ�°ɣ�")
		AddMenuItem("ѡ���б�","","")
		AddMenuItem("���㰡���������","duming","")
		AddMenuItem("������ӣ�������ƽ�","budu","")
	end
	elseif(answer=="duming" and LuaQueryTask("T336")<99) then
	local r = LuaRandom(2)
         if(r==0) then
		LuaSay("�����������ˣ�������������������ӵ��ˣ�����Ҫ�������������")
		LuaSet("hp",0)
		FlushMyInfo("0")
	 else
		LuaSay("�������������Ӿ�Ȼ���ˡ��ߺߣ��������ˣ�ɽ����ɽ���б�����ȥ��@3����@0��ͷ�ġ�")
		LuaSay("������������ͷ�ġ����˵ľ�ˡ�����������б��£��ͻ��зǳ����Ļر�����Ȼ���۾���������")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T336jl")
	end
	elseif(answer=="budu" and LuaQueryTask("T336")<99) then
		LuaSay("�������ߣ����Ǹ���С��")

		        elseif(answer=="T336jl")then
			if(LuaQueryTask("T336")==0) then
				LuaSetTask("T336",99)
				LuaAddJx("combat_exp",40590,"T336")
				LuaAddAchievementSchedule("Task_num",1)
				DelLog("336")
				UpdateMenu()
			end

--��ڽ�ɽ
elseif(answer=="T385")then
	if(TeamCount()>=2)then
		if(LuaQueryTask("T385")==1)then
			if(TeamQueryTask("T385")>=1)then
				if(LuaQueryTask("TfindNPC_14")==1)then
					LuaSay("�������ܺã�лл����Ҵ���@2��ɽ����[�Ͼ�]@0�����Ҽ�ʱ���˽⵽��ǰ���������")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_14",98)
					DelItem("o_mission417",1)
					UpdateMenu()
				elseif(LuaQueryTask("TfindNPC_14")==2)then
					LuaSay("�������ܺã�лл����Ҵ���@2��ɽ����[�¾�]@0�����Ҽ�ʱ���˽⵽��ǰ���������")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_14",98)
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

elseif(answer=="Tsnpc_30")then
	if(LuaQueryTask("Tsnpc_30")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("���������ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_30",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_30")==2)then
		LuaSay("���������ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_30")then
	if(LuaQueryTask("Tenpc_30")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("�������ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_30",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_30")==2)then
		LuaSay("���������Ѿ������ˣ����ȥ��ȡ������")
	end


end
LuaSendMenu()
return 1
end

