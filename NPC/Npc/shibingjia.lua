NPCINFO = {
serial="19" ,
base_name="shibingjia" ,
icon=2569,
NpcMove=2569 ,
name="ʿ����" ,
iconaddr=1 ,
butt="10|10|61" ,
name_color="CEFFCE" ,
lastsay="���ֿɵ��˽����������" ,
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then
    havetask =0
    local level= LuaQuery("level")
    local T84= LuaQueryTask("T84")
		AddTopSayMenuItem("@7�����б�","")
		if(level<=15)then
			AddTopSayMenuItem("@3��Ѫ����@0","Tzhiliao02")
		end
		if(LuaQueryTask("T85") <99)  then
		AddTopSayMenuItem("����̻����̡̳�","T85")               
		havetask =1
		end
		
		if(T84 ==0)  then
			AddTopSayMenuItem("ʹ��װ�����̡̳�","T84")         --ʹ��װ��
			havetask =1
		end
--		if(LuaQueryTask("T81")==0  and LuaQueryTask("T92")==99 and level<13)  then
--			AddTopSayMenuItem("�������׳桾ѭ����","T81")
--			havetask =1
--		end
-----------------------------------------------------------------------
		if(LuaQueryTask("T92")==2) then
			AddTopSayMenuItem("@2���������������顿","T92")
			havetask =4
		end
--		if(LuaQueryTask("T81")==1) then
--			AddTopSayMenuItem("@2�������׳桾���顿","T81")
--			havetask =4
--		end
------------------------------------------------------------------------
		if(LuaQueryTask("T92")==1) then
			AddTopSayMenuItem("@2���������������顿","T92")
			havetask =2
		end
		if(T84 ==1)  then
			AddTopSayMenuItem("@2ʹ��װ�����̡̳�","T84")
			havetask =2
		end
		if((LuaQueryTask("Tsnpc_6")==1 or LuaQueryTask("Tsnpc_6")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2��վС��","Tsnpc_6")
			havetask=2
		end
		if((LuaQueryTask("Tenpc_6")==1 or LuaQueryTask("Tenpc_6")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_6")
			havetask=2
		end

		if(T84 ==99 and level<20)  then
			AddTopSayMenuItem("@9ʹ��װ�����̡̳�","T84")
		end
		if(LuaQueryTask("T92")==99 and level<20)  then
			AddTopSayMenuItem("@9ʹ�ÿ�ݼ����̡̳�","Tkjljn")
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
  LuaSay("ʿ���ף���@2ȷ����@0�󣬰�@21��@0�ɲ鿴@3������@0����@22��@0�ɽ���@3װ������@0����@2�������Ե�@0��@2�鿴��������װ��@0��")

elseif(answer=="Tzhiliao02") then
	if((LuaQuery("max_hp") >LuaQuery("hp")) or (LuaQuery("max_mp") >LuaQuery("mp"))) then
		if(LuaQuery("hp")>0) then
              maxhp=LuaQuery("max_hp")
	      maxmp=LuaQuery("max_mp")
	      LuaSet("hp",maxhp)
	      LuaSet("mp",maxmp)
              FlushMyInfo("0")
	      LuaSay("ʿ���ף��������ƣ����ѱ���������@3������@0�����Թ���Ѫ������ҩ��Ŷ��")
	      else
		LuaSay("ʿ���ף���ɫ���������޷����ơ�")
	      end
	 else
	LuaSay("ʿ���ף�����������Ѫ��ħ״̬������Ҫ���ơ�@3������@0�����Թ���Ѫ������ҩ��Ŷ��")
	end

elseif(answer=="T84") then                        ----------ʹ��װ������
	 if(LuaQueryTask("T84") == 0) then
           LuaSay("ʿ���ף�������Ӣ�ۣ��������洫����һ������Ϊ�����ס������ձ��������㣬װ��������������ķ�ɰɡ�")
           LuaSay("ʿ���ף����@2ȷ�ϼ�@0���ٰ�@23��@0����ʱ����@2��������@0��ѡ��@2����@0����@2ʹ��@0��װ�����ˡ�")
           LuaSay("ʿ���ף��ܼ򵥰ɣ�װ������@2����@0�������ң�")
	       LuaSetTask("T84",1)
           AddLog("ʹ��װ�������顿",84)
	   LuaGive("e_falchion002",1,1,"T82")
	   UpdateMenu()
           UpdateTopSay("װ���˸�����������")
      elseif(LuaQueryTask("T84") == 1) then
         if(EquipInfo(1)=="����") then
           LuaSay("ʿ���ף�СӢ��������ǣ�˳�������һ��С���ܣ�@2��ȷ�ϼ����ٰ�5��@0��@2�������紫��@0Ŷ��")            
           LuaSay("@7��ܰ��ʾ@0��װ�������������粻�ɻ�ȱ�İ��֣�����Ѿ����Դ��ϵ�װ�������ϰɡ�@!")  
	       AddMenuItem("@7�������","")
           AddMenuItem("��ȡ����","T84jl","")
         else
           LuaSay("ʿ���ף��㻹û�н�@2����@0װ�����أ����@2ȷ�ϼ�@0���ٰ�@23��@0����ʱ����@2��������@0��ѡ��@2����@0����ʹ�þ�װ�����ˡ�")
           UpdateTopSay("װ���˸�����������")
          end
      elseif(LuaQueryTask("T84") == 99)then
	  LuaSay("ʿ���ף����@2ȷ�ϼ�@0���ٰ�@23��@0����ʱ����@2��������@0��ѡ��@2����@0����@2ʹ��@0��װ�����ˡ�")
	  LuaSay("��ʾ�������������")
	  end
      elseif(answer=="T84jl") then 
          if(LuaQueryTask("T84") < 99) then
           LuaSetTask("T84",99)
           LuaAddJx("combat_exp",8400,"T84")
	   LuaAddAchievementSchedule("Task_num",1)
	   LuaGive("coin",640,"T10")
	   DelLog("84")
           UpdateMenu()
           end

elseif(answer=="T92") then                                                 -------����������
		if(LuaQueryTask("T92")==1) then
		LuaSay("ʿ���ף��������������ǣ�����֮�ֵ����׳������ײУ�ȥ����4ֻ���׳��������Լ��ɣ�")
 		LuaSay("ʿ���ף���@2ȷ�ϼ�@0���ٰ�@24��@0���ڼ��ܽ�����ѡ��Ҫʹ�õļ��ܣ��ٰ�@21379@0�е�һ�������ͽ�@2��������@0����@2��ݼ�@0�ˡ�")
		LuaSay("ʿ���ף�ʹ�ÿ�ݼ����Ϳ���ʹ�ü�������������ˡ����⣬��ݼ�������������@3�Ǻż�@0�л���@!�����԰ɣ�ɱ�ֿ���ѵ����PK�ľ��û���Ŷ")
		AddMenuItem("@7�˽��ÿ�ݼ�����","")
		AddMenuItem("����ÿ�ݼ�","Tkjljn")
		AddMenuItem("����ˣ������˽�","fangqi")
		LuaSetTask("T92",2)
                LuaSetTask("task_kill/mon_004/T92",1)
		UpdateTopSay("����4ֻ���׳���������")
		AddLog("������������ѭ����",92)
		UpdateMenu()
		UpdateNPCMenu("wangzhubu")
		elseif(LuaQueryTask("T92")==2) then
			local a=LuaQueryTask("task_kill/mon_004/T92")-1
			if(LuaQueryTask("task_kill/mon_004/T92")>=5) then
			LuaSay("ʿ���ף����úã�������Ѫ����ĥ����������һ�������ľ��ˡ�")
			AddMenuItem("@7�������","")
		        AddMenuItem("��ȡ����","T92jl")
			else 
			LuaSay("ʿ���ף����������@2"..a.."ֻ@0���׳棬������4ֻ���׳��������ң����Ǿ�����@4����֮��@0�С�")
 			LuaSay("ʿ���ף��Ƿ���Ҫ���˽�һ��@2���ʹ�ÿ�ݼ��ͷż���@0��")
			AddMenuItem("@7�˽��ÿ�ݼ�����","")
			AddMenuItem("����ÿ�ݼ�","Tkjljn")
			AddMenuItem("����ˣ������˽�","fangqi")
			end
		end 
			  elseif(answer=="T92jl")then	
		        if(LuaQueryTask("T92")==2) then			
				LuaAddJx("combat_exp",7500,"T92")
				LuaAddAchievementSchedule("Task_num",1)
				LuaDelTask("task_kill/mon_004/T92")
				DelLog("92")
				LuaSetTask("T92",99)
				UpdateMenu()
				end
				UpdateNPCMenu("wangzhubu")

     elseif(answer=="fangqi") then
        LuaSay("ʿ���ף��ţ��ܺã���Ȼ�Ѿ�֪�����ʹ�ÿ�ݼ��ͷż��ܣ��ҾͲ������ˡ�@!")
     elseif(answer=="Tkjljn") then
        LuaSay("ʿ���ף���@2ȷ�ϼ�@0���ٰ�@24��@0�������������Ǽ���������ɫ������ûѧ�ļ��ܣ������������õļ��ܣ�")
        LuaSay("ʿ���ף�@2ѡ��һ������@0�Ժ��ٰ�@21��3��7��9@0�е�����һ�������ͽ�@2�������@0����@2��ݼ�@0�ˡ�")
        LuaSay("ʿ���ף�@2�˳����ܽ���@0�󣬰����úõļ��ܿ�ݼ����Ϳ���@2ʹ�ø��ֿ��ż���@0���й����ˡ�")
        LuaSay("ʿ���ף����⣬����@2��ͬ���ķ���@0@3����ҩ�ﵽ��ݼ�@0����ʹ�á�@3��ݼ�@0��@2����@0�����԰�@3�Ǻż�@0�л��������԰ɡ�@!")



elseif(answer=="T81") then                                                 -------�������׳�
		if(LuaQueryTask("T81")==0) then
		LuaSay("ʿ���ף��Ҿ����˱���Ϊ�������������������������֮�����׳�֮�������ޡ�")
		LuaSay("ʿ���ף�����Ӣ������@28ֻ���׳�@0���������£����»����Ӧ�õĽ��������׳������@4����֮��@0�С�")
                LuaSetTask("T81",1)
                LuaSetTask("task_kill/mon_004/T81",1)
		UpdateTopSay("����8ֻ���׳�")
		AddLog("�������׳桾ѭ����",81)
		UpdateMenu()
		elseif(LuaQueryTask("T81")==1) then
			local b=LuaQueryTask("task_kill/mon_004/T81")-1
			if(LuaQueryTask("task_kill/mon_004/T81")>=9) then
			LuaSay("ʿ���ף����úã���������ǧ�����������¸����ٽ���������")
			AddMenuItem("@7�������","")
		        AddMenuItem("��ȡ����","T81jl")
			else 
			LuaSay("ʿ���ף����������@2"..b.."ֻ@0���׳棬������8ֻ���׳��������ң����Ǿ���@4������֮��@0�С�")
			UpdateTopSay("����8ֻ���׳���������")
			end
		end 
			  elseif(answer=="T81jl")then	
			  local level= LuaQuery("level")
			  	if(level>80)then
		level=80
	end
		        if(LuaQueryTask("T81")==1) then			
			if(LuaQueryTask("task_kill/mon_004/T81")>=9) then
				local jingyan=(7000+level^2*30)
				LuaAddJx("combat_exp",jingyan,"T81")
				if(LuaQueryTask("T81_a")==0) then
					LuaAddAchievementSchedule("Task_num",1)
					LuaSetTask("T81_a",99)
				end
				LuaDelTask("task_kill/mon_004/T81")
				DelLog("81")
				LuaDelTask("T81")
				UpdateMenu()
				end
				end

elseif(answer=="T85") then                     -----����̻�1
       if(LuaQueryTask("T85")==0) then
	    LuaSay("ʿ���ף������ڴ˽̻����񣬼�ס����@3ȡ����@0��@3#��@0����@2�Զ�Ѱ·@0����@37��@0���Դ�@2��������@0��")
	    LuaSay("ʿ���ף���@3ȷ����@0���ٰ�@32��@0���Բ鿴@2װ����Ϣ@0����@33��@0���Դ�@2��������@0���������������㣡")
		LuaSay("ʿ���ף����@3�Զ�Ѱ·��") --�Զ�Ѱ·
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("�����Զ�Ѱ·","NO_11")
		AddMenuItem("��ȡ�������ٰ�#��","N11_ANSWER")
		AddMenuItem("��ȷ�ϼ����ٰ�#��","NO_11")
		AddMenuItem("��ȷ�ϼ����ٰ�1��","NO_11")

       elseif(LuaQueryTask("T85") == 1 ) then         --ָ��
	    LuaSay("ʿ���ף����@3��ȡ������Ϣ��")
	    AddMenuItem("@7��ѡ��","")
	    AddMenuItem("��ȡ�������ٰ�#��","NO_21")
	    AddMenuItem("��ȷ������3��","NO_21")
	    AddMenuItem("��ȷ������8��","NO_21")
	    AddMenuItem("��ȡ�������ٰ�7ָ��","N21_ANSWER")
	    
        elseif(LuaQueryTask("T85") == 2 ) then       --�鿴װ��
        LuaSay("ʿ���ף����@3�鿴װ����")
        AddMenuItem("@7��ѡ��","")
	    AddMenuItem("��ȷ�ϼ��ٰ�3��","NO_31")
	    AddMenuItem("��ȡ�����ٰ�#��","NO_31")
	    AddMenuItem("��ȷ�ϼ��ٰ�2��","N31_ANSWER")
	    AddMenuItem("��ȡ�����ٰ�3��","NO_31")

        elseif(LuaQueryTask("T85") == 3 ) then       --�򿪱���
	    LuaSay("ʿ���ף����@3�򿪱�����")
	 AddMenuItem("@7��ѡ��","")
		AddMenuItem("��ȡ�����ٰ�3��","NO_41","")
	    AddMenuItem("��ȷ�ϼ��ٰ�3��","N41_ANSWER","")
	    AddMenuItem("��ȷ�ϼ��ٰ�2��","NO_41","")
	    AddMenuItem("��ȡ�����ٰ�#��","NO_41","")
		end

	   elseif(answer=="NO_11") then                                           
           LuaSetTask("T85",0)
          LuaSay("ʿ���ף�����ɣ���ô�򵥵�����Ҳ��������ٴ�")

	   elseif(answer=="N11_ANSWER") then
			if(LuaQueryTask("T85")<1) then
           LuaSetTask("T85",1)
           LuaAddJx("combat_exp",2000,"T85")
           LuaSay("ʿ���ף���ô�򵥵�����������Ҳûʲôϡ��ģ���������")
           DoTalk("T85")
           end
		elseif(answer=="NO_21") then                                            
             LuaSetTask("T85",1)
	         LuaSay("ʿ���ף������ˣ������ٴ�")

		elseif(answer=="N21_ANSWER") then
            if(LuaQueryTask("T85")<2) then
		     LuaSetTask("T85",2)
           LuaAddJx("combat_exp",2000,"T85")
           LuaSay("ʿ���ף������㻹�������������������")
           DoTalk("T85")
           end

		elseif(answer=="NO_31") then                                            
             LuaSetTask("T85",2)
	          LuaSay("ʿ���ף��������ȷʵ��һ���ѶȰ��������������ѡ��")

		elseif(answer=="N31_ANSWER") then
           if(LuaQueryTask("T85")<3) then
                LuaSetTask("T85",3)
           LuaAddJx("combat_exp",2000,"T85")
           LuaSay("ʿ���ף������Ǵ����������Ҳ֪������������һ�����⡣")
           DoTalk("T85")
           end

		elseif(answer=="NO_41") then                                                
                 LuaSetTask("T85",3)
                 LuaSay("ʿ���ף��������ȷʵ�����ѶȰ��������������ѡ��")

		elseif(answer=="N41_ANSWER") then
                 if(LuaQueryTask("T85")<99) then
                 LuaSetTask("T85",99)
	             LuaSay("ʿ���ף�������̫�����ˣ���Ȼȫ����֪����")
	             LuaGive("coin",500,"T85")
                 LuaAddJx("combat_exp",4000,"T85")
				 LuaAddAchievementSchedule("Task_num",1)
                 UpdateMenu()
                 end


elseif(answer=="Tsnpc_6")then
	if(LuaQueryTask("Tsnpc_6")==1)then
		LuaSay(""..LuaQueryStr("name").."�����ǵ������˸���������ż�����ֻ�Ǹ����")
		LuaSay("ʿ���ף����ʹ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_6",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_6")==2)then
		LuaSay("ʿ���ף�������ȥ�����ɣ����յ�����")
	end
elseif(answer=="Tenpc_6")then
	if(LuaQueryTask("Tenpc_6")==1)then
		LuaSay(""..LuaQueryStr("name").."������������˵�ż����ܻᱻ���٣����Ҹ���������ӽ���������")
		LuaSay("ʿ���ף�������˵��Ҳ֪�����������ϰ��յİ�ȫ�����ǵ����ΰ�")
		LuaSetTask("Tenpc_6",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_6")==2)then
		LuaSay("ʿ���ף���ȥ�������Ǵ��ˣ���˵��֪����")
	end


end
LuaSendMenu()
return 1
end