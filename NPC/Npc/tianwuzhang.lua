NPCINFO = { 
serial="18" ,
base_name="tianwuzhang",
icon=2518,
NpcMove=2518 ,
name="���鳤" ,
iconaddr=1 ,
butt="5|5|70" ,
name_color="CEFFCE" ,
lastsay="�������߰��м�ȷ�ϼ����Խ���",
LuaType=1,
} 
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local level= LuaQuery("level")
	local T70= LuaQueryTask("T70")
	local T71= LuaQueryTask("T71")
	local T72= LuaQueryTask("T72")
	local T73= LuaQueryTask("T73")
	local T74= LuaQueryTask("T74")
	local T75= LuaQueryTask("T75")
	AddTopSayMenuItem("@7�����б�","")
		if(level>=8) then

		AddTopSayMenuItem("@3ʦͽ@0","shitu")
		end
		if(level>=6 and T75==0) then 
        		AddTopSayMenuItem("�����������̡̳�","T75")
        		havetask =1
		end
		if(level>=9 and T73==0) then 
        		AddTopSayMenuItem("����֮����BOSS��","T73")
        		havetask =1
		end
		if(T74 ==0  and T75==99 and level>=9)  then
			AddTopSayMenuItem("������ޡ����顿","T74")
			havetask =1
		end
		------------------------------------------------
		if(T73==1) then 
        		AddTopSayMenuItem("@2����֮����BOSS��","T73")			
			havetask =4
		end
		-----------------------------------------------
		if(LuaQueryTask("T87") ==1)  then
			AddTopSayMenuItem("@2��Ԯ���鳤�����顿","T87")
			havetask =2
		end
		if(T75==1 or T75==2) then 
        		AddTopSayMenuItem("@2�����������̡̳�","T75")
        		havetask =2
		end 

		if(T74 ==1)  then
			AddTopSayMenuItem("@2������ޡ����顿","T74")
		end
		if((LuaQueryTask("Tsnpc_5")==1 or LuaQueryTask("Tsnpc_5")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2��վС��","Tsnpc_5")
			havetask=2
		end
		if((LuaQueryTask("Tenpc_5")==1 or LuaQueryTask("Tenpc_5")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_5")
			havetask=2
		end
--		if(LuaQueryStr("class")=="zhan" and level>=10)  then
--			AddTopSayMenuItem("@3ѡ��ְҵ@0","class")
--			havetask =1
--		end

--		AddTopSayMenuItem("@3����Ե���ɳ���@0","T71")
		if(T75==99 and level<20) then 
        		AddTopSayMenuItem("@9�����������̡̳�","T75")
		end
		if(LuaQueryTask("T302")==9 and LuaQueryTask("T302I")==0) then
		AddTopSayMenuItem("@2ÿ����ʹ@0","T302I")
		havetask =2
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
	LuaSay("���鳤�������������߰�@2ȷ����@0�������@3��������@0���ɽ���@2�ύ/���@0�Ƚ���������") 

elseif(answer=="T302I") then
	   if(LuaQueryTask("T302I")==0) then
		LuaSay(""..LuaQueryStr("name").."������������Ҵ�������ż���")
		LuaSay("���鳤����л����!")
		DelItem("o_mission076",1)
		LuaSetTask("T302I",99)
		UpdateMenu()
	   end

elseif(answer=="T73") then
	if(LuaQueryTask("T73")==0)then
	LuaSay("���鳤���һ��ĺ���������ǧ�꣬���ȴ���������裬ԭ��Ϊ����������Ű��δ����˴���������֮����")
	LuaSay("���鳤�����鳤�ʾ���������Ϊ����������֮����"..LuaQueryStr("name").."������������@4��ʯ��@0�е�@3������ʿ@0��")
	LuaSay("���鳤������@2BOSS����PK@0��Ҫ@2��ɫ����@0����@3#��@0�ٰ���ɫ���ϵ�@3���ּ�@0������������@2ȡ����@0��@2ȡ������@0��")
	LuaSay("���鳤����Ҫע����ǣ�@2�������ɫ�ƶ�����ʱ����@0����@2ȡ����@0��@2ȡ������@0һ��ʱ���Ż�ָ���")
        LuaSay("��ܰ��ʾ��BOSS������ʿ��������������������10����װ������ȥ���١�@1��������̫�࣬����ȥ���������Լ��ɡ�@!")
	LuaSetTask("T73",1)
	LuaGive("o_drug_hp1",10)
	LuaGive("o_drug_mp1",10)
	AddLog("����֮����BOSS��",73)
	UpdateTopSay("������ʯ����������ʿ")
	UpdateMenu()
	elseif(LuaQueryTask("T73")==1 )then
    if(LuaItemCount("o_mission001")>=1) then
	    LuaSay("���鳤���ߣ������ë��Ѫ��Ұ�ˣ����ڸ�����Ӧ�ˡ������������£�һ�ٽ��������֮����")
			if(LuaFreeBag()>=1)then				 
	   	    AddMenuItem("@7�������","")
	    	AddMenuItem("��ȡ����","T73jl")
	    	else
	    	LuaSay("��ʾ�������ٱ���1������ռ䣬�����ȥ������Ǯׯ�ϰ�����Ѷ�����ֿ⣡") 
	    	end
	    else
	    LuaSay("���鳤���㻹û��ȥ����������ʿ���ѵ��Ǻ����ˣ��ðɣ��ñ��ٴ�����һ����BOSS���ؾ��ɡ�")
	    LuaSay("���鳤�����ǣ�@3װ��@0������㻹û�е�10���������㵽��10������10����װ����ȥ��")
	    LuaSay("���鳤�����У�@3���Ե�@0����Ǳ�ܵ�ӵ����Ե��ϡ����@3����@0����ȷ�ϼ����ٰ�4�����Ϳ��Խ��뼼�ܽ���������������")
	    LuaSay("���鳤����@3���ϼ������ѣ�һ�ߴ�BOSSһ�߳�ҩ@0�����پͲ��Ÿ㲻��һֻСС��BOSS��")
	    LuaSay("���鳤���ٸ������С���ܣ�ŭ������ʱ�򣬽���@3��ŭ״̬@0�����ܹ����ӱ�Ŷ����ȥ��ɱ@4��ʯ��@0���@3������ʿ@0�ɡ�")
	    LuaSay("��ܰ��ʾ��@1��������̫�࣬����ȥ���������Լ��ɡ�@!�ﵽ15��������ȥ��������л������ȡ@3�ſ���װ@0Ŷ@!")
		if(LuaItemCount("o_drug_hp4")<10 and LuaQueryTask("T73A")==1) then
		LuaGive("o_drug_hp4",10)
		LuaSetTask("T73A",99)
		UpdateMenu()
		end
	    end

	end
	elseif(answer=="T73jl") then
	  if(LuaQueryTask("T73")==1) then
		if(LuaItemCount("o_mission001")>=1) then
	  LuaSay("...")
	  LuaSay("......")
	  LuaSay("���鳤����ϲ���������˵��ܵ�����ľ�ˣ�������һ��@3�������@0�������@3ӵ��3����Ƕ�۵Ļƽ�װ��@0������������Ŷ��")
	  LuaSay("���鳤������ÿ���˶��ܵõ������Ļ���ġ�Ŭ���ɳ���ֱ����һ���ܴ���������������Ľ�ɡ�@!")
	  if(LuaQueryStr("class")=="shen") then      --սʿ
	  LuaGive("e_falchion004j",1,3,"T73")	
	  elseif(LuaQueryStr("class")=="wu") then       --����
	  LuaGive("e_sword005j",1,3,"T73")
	  elseif(LuaQueryStr("class")=="xian") then       --ıʿ
	  LuaGive("e_pen003j",1,3,"T73")
	  end
	  LuaSetTask("T73",99)
	  DelItem("o_mission001",LuaItemCount("o_mission001"))
	  DelLog("73")
	  LuaAddJx("combat_exp",20000,"T73")
	  LuaAddAchievementSchedule("Task_num",1)
	  LuaGive("coin",400,"T73")
	  UpdateMenu() 
	  end
	  end

		       
elseif(answer=="shitu") then
     AddMenuItem("@7ʦͽ����","")
     AddMenuItem("@3ʦͽƽ̨","STPT")
     --[[
     if(LuaQuery("level")<40) then
     AddMenuItem("@3��ʦ��","zhaoshifu")
     end        ]]
     AddMenuItem("@7��ͽ","shoutu")
     AddMenuItem("@7ʦͽ����","st_caozuo")
     AddMenuItem("@7ʦͽ����","st_task")
     AddMenuItem("@7ͽ��ÿ����������","jiangli")
     AddMenuItem("@7ʦͽ˵��","st_shuoming")
elseif(answer=="zhaoshifu") then
     AddMenuItem("�Ƿ񷢹�����ʦ��","")
     AddMenuItem("�����������ʦ��","zsfyes")
     AddMenuItem("����Ҫ","zsfno")
elseif(answer=="st_task")then
     AddMenuItem("@7ʦͽ����","")
     if(LuaQueryTask("Tshibiao")~=0 and LuaQueryTask("Tshibiao")~=99)then
	 	AddMenuItem("@2Ϊ��ʦ��ʦͽ��","Tshibiao")
     else
        AddMenuItem("Ϊ��ʦ��ʦͽ��","Tshibiao")
     end
     AddMenuItem("ʦͽ���顾ÿ�ա�","T260")
     elseif(answer=="st_caozuo")then
     AddMenuItem("ʦͽ����","")
     AddMenuItem("��ʦ","chushi")
     AddMenuItem("��ʦ","panshi")

     elseif(answer=="st_shuoming")then
	LuaSay("���鳤��ͽ�ܿ���ͨ��@1ʦͽƽ̨@0���߰�0�ڹ����ﺰ�����ύʦ����ʦͽ�����е�������Ҫ������ʦ��һͬ���ǰ����ȡŶ��")
	LuaSay("���鳤��ʦͽ�������ܽ��г�ʦ����ʦ�Ĳ�������ͽ������40�����ϵ������ͽ�ã���һ��40���ϵ������һ��8-40����������ʹ�á�")
	LuaSay("���鳤��ͽ��ÿ����1����ʦͽ��������ȡ������")
      elseif(answer == "zsfyes") then
   if(GetCurrentDay()~=LuaQueryStr("Tzsfday")) then
      LuaSet("Tzsfcishu",0)
      LuaSet("Tzsfday",GetCurrentDay())
   end
	if(LuaQuery("Tzsfcishu")<2 ) then
		if(IsVisitor()=="true")then--�ο���ʾע��
		LuaSay("��ʾ����@3�����ȷ��@0���ٰ�@3#��@0,�����˺����뼴��@2ע��@0��")
		else
		LuaNotice("@3"..LuaQueryStr("name").."@0���������������ɻ���Ҫ��һλʦ����Ը���Ϊ��ʦ���Ĵ�������ϵ��/���ɣ�TA��������֮�ֵ�@3���鳤@0����")
		LuaAdd("Tzsfcishu",1)
		end
	else
		LuaSay("��ʾ����������ʦ����ÿ��ֻ����2�Ρ��������Ѿ������ˣ����ź���")
	end
      elseif(answer == "Tzsfno") then
		LuaSay("���鳤���������Ǹ�ϲ��һ����ĬĬ�ܶ����ˣ��Ǿͼ��Ͱɡ�")	
	
	elseif(answer=="shoutu") then
	      if(LuaQuery("level")>=40) then
	        if(TeamCount()== 2) then
			if(TeamQuery("level")>8) then
			LuaSay("��ʾ��Ϊ�˸��õĺ�ͽ�ܽ�����ʦͽ˫����û���@2������ϵ��ʽ@0�ɡ�@!")
			LuaSay("��ʾ��@2ͽ��ÿ��һ�������Ե�����������ȡʦͽ����@0������@2ÿ��ʦͽ����@0������ɡ�@!")
			LuaSay("��ʾ��ͽ�ܴﵽ@240��@0ʱ��ʦ��ʦͽ���ܵõ����Ľ�����@!")
			ProcessMaster()
			else
			LuaSay("��ʾ��ֻ���յȼ�����8������Ϊͽ��")
			end
	         else
		 LuaSay("��ʾ��40���Ժ�@22�����@0������ͽ��")
		 end
	      else
	      LuaSay("��ʾ��40���Ժ�@22�����@0������ͽ��")
	      end

	elseif(answer=="chushi") then
	      if(LuaQuery("level")>=40) then
	      LuaSay("���鳤��һ��Ϊʦ����Ϊ������ĵ������ʦ�����ǻ���ʾ�����ڵ�ʦ��Ŷ��")
	      ProcessPrentice()
	      else
	      LuaSay("���鳤��@240��@0�Ժ��ʦ��2����ӷ��ܳ�ʦ��")
	      end

	elseif(answer=="panshi") then
	      DisMaster()

        elseif(answer=="jiangli") then     --���Ӵ������ƣ�ÿ�쳬�����ٴξͲ�������ȡ
	  if(LuaQueryStrTask("shituday")~=GetCurrentDay()) then
	  LuaDelTask("shitutime")
	  end
	  if(LuaQueryTask("shitutime")<10) then
            if(TeamCount()== 2) then
		if(TeamQuery("level")<40) then
	          if(LuaGetLevel_exp()==1) then
		  LuaSetTask("shituday",GetCurrentDay())
		  LuaAddTask("shitutime",1)
		  else
		  LuaSay("��ʾ�����Ķ��Ѳ�������ͽ�ܣ���������û����������Ҫ������ͽ����ӣ�����ͽ��������������ȡ������")
		  end
		else
		LuaSay("��ʾ��ͽ��40���Ժ�˫����������ȡʦͽ�������ý�����ʦ����ȡ��2�˶��ܵõ���")
		end
	    else
	    LuaSay("��ʾ����ʦͽ2����ԣ�ʦͽ2�˶����ý������ý�����ʦ����ȡ��")
	    end
	  else
	  LuaSay("��ʾ�����˿ɵþ��ľ���ʩ����̫�������ˣ����������ɡ�")
	  end


	elseif(answer=="Tshibiao")then
	local level=LuaQuery("level")
	if(level>=40 and LuaQueryTask("Tshibiao")==99 and (TeamQueryTask("Tshibiao")==0 or TeamQueryTask("Tshibiao")==99))then
		LuaDelTask("Tshibiao")
		LuaDelTask("Tshibiaoteamname")
		UpdateMenu()
	end
	
	LuaSay("���鳤��ʦͽ��ӿɽӴ����񣬴ӽ�ȡ������ʼ��ͽ�ܵĵȼ�����10�����ϣ�ʦͽ��������������ȡ�����������ĵȼ�Խ�ߣ�����Խ��Ŷ��һ��ͽ��ֻ����һ�Σ�ʦ�����Զ����@!")
	if(TeamCount()==2)then
		if(IsMaster()~=0)then
			if(LuaQueryTask("Tshibiao")==0)then
					if(IsMaster()==2)then
						if(TeamQueryTask("Tshibiao")==0)then
							if(TeamQuery("level")>30)then
								LuaSay("��ʾ������ӵ�ͽ�ܵȼ��Ѿ�������ʮ�������ܽ�ȡ������")
							else
								local teamlevel=TeamQuery("level")
								local teamname=TeamQueryStr("name")
								LuaSet("Tshibiaoteamname",teamname)
								LuaSetTask("Tshibiaoteamlevel",teamlevel)
								LuaSay("���鳤�����ͽ��@3"..LuaQueryStr("Tshibiaoteamname").."@0��ǰ�ȼ�Ϊ@1"..LuaQueryTask("Tshibiaoteamlevel").."@0��ʦͽ��ӽ����ж���ľ���ӳɣ�����ͽ�ܵĵȼ�����"..(LuaQueryTask("Tshibiaoteamlevel")+10).."��ʱ��Ϳ���һͬǰ����ȡ������Ŷ����ͽ�ܵĵȼ�����Խ�࣬������Խ��@!")
								LuaSetTask("Tshibiao",1)
								LuaSetTask("Tsf",1)
								UpdateMenu()
							end
						else
							LuaSay("���鳤�����ͽ���Ѿ�����һ��Ϊ��ʦ������񣬻�����������������У�")
							LuaSay("С���ɣ������ͽ�ܴ���ǰһ��ʦ�������������ж������ַǳ��������ʱ������������ȷ��������ٺ���һͬ��ȡ@!")
						end
					elseif(IsMaster()==1)then
						
							LuaSay("���鳤����ͬ���ʦ����ȡ�˴�����Ŷ��ͳһ�����罫��Ϊ��������Ӿ���@!")
							LuaSetTask("Tshibiao",1)
							LuaSet("td_level",LuaQuery("level"))
							LuaSetTask("Ttd",1)
							UpdateMenu()
						
					end
				
			elseif(LuaQueryTask("Tshibiao")==1)then
				if(IsMaster()==2)then
					if(TeamCount()==2)then	
							if(LuaQueryStr("Tshibiaoteamname")==TeamQueryStr("name"))then
								if(TeamQueryTask("Tshibiao")~=0)then
									local uplevel=TeamQuery("level")-LuaQueryTask("Tshibiaoteamlevel")
									if(uplevel>=10)then
										LuaSay("�㽫��ͽ�ܵĵȼ������"..uplevel.."")
										UpdateMenu()
										AddMenuItem("@7��ȡ����@0","")
										AddMenuItem("@7��ȡ����","Tshibiao_sfjl")
										
									else
										LuaSay("���鳤����ͽ�ܽ�ȡ�����ʱ����"..LuaQueryTask("Tshibiaoteamlevel").."�����������ͽ����"..TeamQuery("level").."������"..(10-(TeamQuery("level")-LuaQueryTask("Tshibiaoteamlevel"))).."�����ǲ�����ȡ����Ŷ")
										AddMenuItem("@7��������@0","")
										AddMenuItem("@7��������","Tshibiao_jixu")
										AddMenuItem("@1��������","Tshibiao_fangqi")
									end
								else
									LuaSay("��ʾ�����ͽ��û�н�ȡ����Ŷ��˫����Ҫ��ȡ����֮�������������������������ȡ����Ŷ��")
								end
							else
								LuaSay("���鳤����ǰ������ӵĲ�����������ͽ�ܣ�������ȡ����")
								AddMenuItem("@7��������@0","")
								AddMenuItem("@7��������","Tshibiao_jixu")
								AddMenuItem("@1��������","Tshibiao_fangqi")
							end
						
					else
						LuaSay("���鳤��������ȡ�������ͽ��һ�����ǰ������û�����Ŷ")
						AddMenuItem("@7��������@0","")
						AddMenuItem("@7��������","Tshibiao_jixu")
						AddMenuItem("@1��������","Tshibiao_fangqi")
					end
				elseif(IsMaster()==1)then
					if(TeamQueryTask("Tshibiao")==99)then
						uplevel_td=LuaQuery("level")-LuaQueryTask("td_level")
						LuaSay("���鳤��������ʦ���������³ɹ�������"..uplevel_td.."")
						AddMenuItem("@7��ȡ����@0","")
						AddMenuItem("@7��ȡ����","Tshibiao_tdjl")
					else
						LuaSay("���鳤���������ʦ����������10�����ϲ�����ʦ����ȡ����֮���������ȡ����Ŷ��Ϊʦ����@!")
						AddMenuItem("@7��������@0","")
						AddMenuItem("@7��������","Tshibiao_jixu")
						AddMenuItem("@1��������","Tshibiao_fangqi")
					end
				end
			elseif(LuaQueryTask("Tshibiao")==99)then
				if(LuaQuery("level")<40)then
					LuaSay("���鳤����ʦ���Ѿ�������һ���ˣ�ֻ�ܴ�һ��Ŷ")
				end
			end
			
		else
			LuaSay("���鳤�����ǵĹ�ϵ����ʦͽ�����ܽ�ȡ������")
		end
	else
		LuaSay("���鳤����ȷ�����ǵĹ�ϵ��ʦͽ��ϵ��������Ӵ�����")
	end
		
	elseif(answer=="Tshibiao_tdjl")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
		LuaSay("���鳤���������@7Ϊ��ʦ��@0�������Ǹ���Ľ���@!")
		--exp=80000+((LuaQuery("level")-LuaQueryTask("td_level"))^3*1000+LuaQuery("level")*100)
		local exp=80000+level^2*80+(LuaQuery("level")-LuaQueryTask("td_level"))*10000
		LuaAddJx("combat_exp",exp,"Tshibiao")
		LuaSetTask("Tshibiao",99)
		UpdateMenu()
	elseif(answer=="Tshibiao_sfjl")then
		local level= LuaQuery("level")
		if(level>80)then
		level=80
		end
		LuaSay("���鳤�����������ͽ�ܣ���㽱����Ӧ�ø����")
		--exp=80000+((TeamQuery("level")-LuaQueryTask("Tshibiaoteamlevel"))^3*1000+level*100)
		local exp=80000+level^2*80+(TeamQuery("level")-LuaQueryTask("Tshibiaoteamlevel"))*10000
		LuaAddJx("combat_exp",exp,"Tshibiao")
		LuaSetTask("Tshibiao",99)
		LuaDel("Tsf")
		UpdateMenu()
	elseif(answer=="Tshibiao_jixu")then
		LuaSay("���鳤����ѡ���˼����������񣬼���Ŷ@!")
	elseif(answer=="Tshibiao_fangqi")then
		LuaSay("���鳤����ѡ���˷�������ʦͽ���������½�ȡ")
		LuaDelTask("Tshibiao")
		UpdateMenu()



elseif(answer=="T74") then              ------------------------������� 
		if(LuaQueryTask("T74")==0) then
		LuaSay("���鳤���������������г��ã�Ӣ�۸��о��������䣬��������Ӣ�۱�ɫ��")
		LuaSay("���鳤����@2������@0����������Ͻ���@4�����Ͻ�@0��@3�س�ʿ��@0���Ǳ��鳤��ֿ�ѣ���������һƥǧ����԰ɡ�@!")
		LuaSetTask("T74",1)
                AddLog("������ޡ����顿",74)
                UpdateMenu()
		UpdateTopSay("���ҹ�ͼ���س�ʿ���ɵ�����")
		elseif(LuaQueryTask("T74")==1) then
		       LuaSay("���鳤��ȥ�ʺ�һ��@4�����Ͻ�@0��@3�س�ʿ��@0�ɣ���������һƥ@2����@0��@!")
		end 


elseif(answer=="T75") then----------��������
		if(LuaQueryTask("T75") == 0) then 
				LuaSay("���鳤����������֮�����Ǳر����ҹ�СӢ���������ѣ���Ҫ���ע�˵�ѽ������������@3Ǳ�ܵ�@0����ȷ�ӷ��ɡ�") 
				LuaSay("���鳤�����@2ȷ�ϼ�@0����@22��@0��������װ����ѡ��@2�������ǻۣ�����@0�е�һ�@3���Ҽ��Ӽ�@0���ٵ�@2ȷ��@0���ɡ�") 
				LuaSay("���鳤���������Զ�ÿ��ְҵ��������Ҫ������սʿ���������������Ͳ��������ݣ�ıʿ�������ǻۡ�@!")
				LuaSay("���鳤��@2���Լӷ�ǧǧ�򣬺ú�������@0��Ҳ����ǿ�ļӵ㷨���������е��������ڣ���@2��ʣ���Ǳ�ܵ�ȫ����@0���������ҡ�")
				SendCommand("call=���鳤����������ʾ���㿴�ɣ����@2ȷ�ϼ�@0���ٵ��@22��@0�͵���װ�����ˣ������Լ���ְҵ�ӵ�ͺ��ˡ�|0|12|1")
				LuaSetTask("T75",1) 
				UpdateTopSay("��ʣ��Ǳ�ܵ������������")
				AddLog("�����������̡̳�",75) 
				UpdateMenu()
		elseif(LuaQueryTask("T75") == 1) then
			if((LuaQuery("potential_point")-LuaQuery("used_potential_point"))==0 ) then
				LuaSay("���鳤���ţ�������������߰��������سɴ�����") 
				LuaSay(""..LuaQueryStr("name").."������������ˣ������ҵ�����֮���������������ġ�")	
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T75jl")
			else
				LuaSay("���鳤�����ȵ��@2ȷ�ϼ�@0���ٰ�@2��2@0��������װ��������ʱ��ῴ��@2�������ǻۣ�����@0�Աߵ��@2+��@0��") 
				LuaSay("���鳤���������Զ�ÿ��ְҵ��������Ҫ������սʿ���������������Ͳ��������ݣ�ıʿ�������ǻۡ�@!")
				LuaSay("���鳤��@2���Լӷ�ǧǧ�򣬺ú�������@0��Ҳ����ǿ�ļӵ㷨���������е��������ڣ���@2��ʣ���Ǳ�ܵ�ȫ����@0���������ҡ�")
			end
		elseif(LuaQueryTask("T75") == 99) then
				LuaSay("���鳤�����ȵ��@2ȷ�ϼ�@0���ٰ�@2��2@0��������װ��������ʱ��ῴ��@2�������ǻۣ�����@0�Աߵ��@2+��@0��") 
				LuaSay("���鳤���������Զ�ÿ��ְҵ��������Ҫ������սʿ���������������Ͳ��������ݣ�ıʿ�������ǻۡ�@!")
				LuaSay("���鳤��@2���Լӷ�ǧǧ�򣬺ú�������@0��Ҳ����ǿ�ļӵ㷨���������е�����")
		 LuaSay("��ʾ�������������")
		 end
	elseif(answer=="T75jl") then
				if(LuaQueryTask("T75") == 1) then
				LuaSetTask("T75",99) 				 
				LuaAddJx("combat_exp",8000,"T75")
				LuaAddAchievementSchedule("Task_num",1)
				LuaGive("coin",600,"T75")
				DelLog("75") 
				UpdateMenu()
				end

elseif(answer=="T87") then     -----------��Ԯ���鳤
		if(LuaQueryTask("T87")==1 ) then  
			LuaSay("���鳤�����������ˣ����鳤������ֽ�ȱ������Ҫ����������Ӣ�ۡ�@!")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T87jl")	
		end 
		elseif(answer=="T87jl")then	            
		       if(LuaQueryTask("T87")==1)then
				LuaSetTask("T87",99) 
				LuaAddJx("combat_exp",11000,"T87") 
				DelLog("87") 
				UpdateMenu() 
				UpdateNPCMenu("shibingjia")
			end



elseif(answer=="T260") then
--T260
--260day������
--260msg������Ϣ
	m={}
	m[0]="���ţ�Ǳ�����úν⣿"
	m[1]="�������죬�������ˡ���νҲ��"
	m[2]="�ñ�֮��Ϊ��Ҳ��"
	m[3]="��ɼ���������������ʲô��"
	m[4]="��������Ϊ�����ݣ�"

	m[5]="���¶�����Ҳ�����׺��������ɺ���"
	m[6]="ͬ����Ӧ��ͬ������"
	m[7]="���ߣ���֮���£�����֮�أ�����֮�������ɲ���Ҳ"
	m[8]="��Ϊľ��Ϊ��"
	m[9]="���������������� ��Ϊ����Է�����"

	m[10]="���������ƣ������Ƕ�����"
	m[11]="ˮ��ʪ�������ƴ�������ӻ�"
	m[12]="������ӣ��������ţ�ս��֮�䣬����թα"
	m[13]="��ľ��Ϊ���֮��"
	m[14]="�������Һ������� �ض���˹������"

	m[15]="������֮������Υ֮��ȷ���䲻�ɰΣ�Ǭ��Ҳ"
	m[16]="ʥ����������������������ϣ������������£����������Ҳ"
	m[17]="֪��֪�ˣ���ս����"
	m[18]="������ľ������"
	m[19]="����������̫���� �����˶��޹���"
	if(GetCurrentDay()~=LuaQueryStrTask("260day"))then
	LuaDelTask("T260")
	LuaDelTask("260T1")
	LuaDelTask("260T2")
	LuaDelTask("260T3")
	LuaDelTask("260T4")
	LuaSetTask("260day",GetCurrentDay())
	end
	if(LuaQueryStrTask("260day")~=TeamQueryStrTask("260day"))then
	LuaSay("���鳤���ȴ��������ұ�������Ҫ����Ҳ���������˵�����һ���ȡŶ��")	LuaSendMenu()
	return 1
	end
	if(TeamCount()==2 and ((LuaQueryTask("T260")==0 and IsMaster()==1) or (TeamQueryTask("T260")==0 and IsMaster()==2)))then
		if(IsMaster()==1)then
			if(LuaQuery("level")<40)then
			LuaSay("���鳤��ʦ������ţ�����ڸ��ˣ�������Ҫ����һ�����Ƿ��Ǹ��ϸ��ͽ�ܡ�")
			LuaSetTask("T260",1)
			LuaSetTask("260day",GetCurrentDay())
			else
			LuaSay("�����ڵļ���Ӧ����ʦ�ˣ����ƽ����ʦͽ����������������ʺ����ˡ�")
			end
		else
			if(TeamQuery("level")<40)then
			LuaSay("���鳤����ʦ����ͽ������ͽ�����������Ҫ����һ�����Ƿ��Ǹ��ϸ��ʦ��������ͽ����ʲô���������ɡ�")
			LuaDelTask("260msg")
			else
			LuaSay("�����ͽ��Ӧ����ʦ�ˣ����ƽ����ʦͽ����������������ʺ��������ˡ�")
			end
		end
	elseif(TeamCount()==2 and ((LuaQueryTask("T260")==1 and IsMaster()==1) or (TeamQueryTask("T260")==1 and IsMaster()==2)))then
		if(IsMaster()==1)then
		LuaSay("���鳤��Ϊͽ����ʦ�ؽ̣���ʲô�����׵�Ҫ��������ʦ����̣���Ҫ����ʦ��ʲô���⣿")
		local r=LuaRandom(5)
		LuaSay(""..r.."")
		LuaSay("���鳤����������֪��@7"..m[r].."@0,���𣿿���ʦ����ô��")
		LuaSetTask("260msg",r)
		LuaSetTask("T260",2)
		else
		LuaSay("���鳤��Ϊʦ�ߴ�����ҵ�������β��룬��������ͽ�ܣ�������ͽ����ʲô���������ɡ�")
		LuaDelTask("260msg")
		end
	elseif(TeamCount()==2 and ((LuaQueryTask("T260")==2 and IsMaster()==1) or (TeamQueryTask("T260")==2 and IsMaster()==2)))then
		if(IsMaster()==1)then
		LuaSay("���鳤���������������ʦ���ɣ�")
		if(TeamQueryTask("260msg")~=0)then
		LuaSetTask("T260",3)
		end
		else
		LuaSay("���鳤����ͽ��Ҫ����@7"..m[TeamQueryTask("260msg")].."��")
			if(LuaQueryTask("260msg")==0)then
			local ra=(LuaRandom(3)+1)*5+TeamQueryTask("260msg")
			LuaSay("���鳤����Ӧ��������@7"..m[ra])
			LuaSetTask("260msg",ra)
			else
			local ra=LuaQueryTask("260msg")
			LuaSay("������ͽ��@7"..m[ra].."")
			end
		end
	elseif(TeamCount()==2 and ((LuaQueryTask("T260")==3 and IsMaster()==1 and TeamQueryTask("260msg")~=0) or (TeamQueryTask("T260")==3 and IsMaster()==2)))then
		if(IsMaster()==1)then	
		AddMenuItem("��ʦ����ô�ش���ģ�","")
		AddMenuItem("@9ʦ����û������","no")
		AddMenuItem("����...","ans1")
		AddMenuItem("����...","ans6")
		AddMenuItem("����...","ans11")
		AddMenuItem("ʥ��...","ans12")
		AddMenuItem("ˮ��...","ans7")
		AddMenuItem("����...","ans8")
		AddMenuItem("����...","ans3")
		AddMenuItem("ͬ��...","ans2")
		AddMenuItem("֪��...","ans13")
		AddMenuItem("����...","ans14")
		AddMenuItem("����...","ans5")
		AddMenuItem("��Ϊ...","ans4")
		AddMenuItem("����...","ans10")
		AddMenuItem("��ľ...","ans9")
		AddMenuItem("����...","ans15")
		else
		ra=LuaQueryTask("260msg")
		LuaSay("������ͽ��@7"..m[ra].."")
		end
	elseif(TeamCount()==2 and ((LuaQueryTask("T260")==4 and IsMaster()==1) or (TeamQueryTask("T260")>=4 and IsMaster()==2)))then
		local level= LuaQuery("level")
		if(IsMaster()==1)then
		LuaSay("��ʦ����ͽ�ܣ���Щ�����ǵ�ͽ��Ӧ�õġ�")
		LuaSetTask("T260",99)
		LuaDelTask("260msg")		
		LuaAddJx("combat_exp",6*(LuaRandom(20)+10)*level^2,"T260")--LuaGive("o_seed105",3,"T260")--����С��ˢ��ȫ������ˣ�����ֱ�Ӹ�С�ž���
		elseif(IsMaster()==2 and (TeamQueryTask("T260")==4 or TeamQueryTask("T260")==99) and LuaQueryTask("260msg")~=0 and LuaQueryStr("260T1")~=TeamQueryStr("name") and LuaQueryStr("260T2")~=TeamQueryStr("name") and LuaQueryStr("260T3")~=TeamQueryStr("name") and LuaQueryStr("260T4")~=TeamQueryStr("name"))then
		LuaSay("��ʦ����ͽ�ܣ���Щ�����͸������ˡ�")
		LuaDelTask("260msg")
		LuaSetTask("260day",GetCurrentDay())
		LuaGive("o_seed105",1,"T260")
			if(LuaQueryStr("260T1")=="")then
			LuaSetTask("260T1",TeamQueryStr("name"))
			elseif(LuaQueryStr("260T2")=="")then
			LuaSetTask("260T2",TeamQueryStr("name"))
			elseif(LuaQueryStr("260T3")=="")then
			LuaSetTask("260T3",TeamQueryStr("name"))
			elseif(LuaQueryStr("260T4")=="")then
			LuaSetTask("260T4",TeamQueryStr("name"))
			end
		elseif(IsMaster()==2 and TeamQueryTask("T260")==98)then
		LuaSay("����ʧ�ܣ��������ͽ�ܵĽ������ã�����ͽ�ܻ����������ɡ�")
		LuaDelTask("260msg")
		elseif(IsMaster()==2 and (TeamQueryTask("T260")==4 or TeamQueryTask("T260")==99) and LuaQueryTask("260msg")==0 or LuaQueryStr("260T1")==TeamQueryStr("name") or LuaQueryStr("260T2")==TeamQueryStr("name") or LuaQueryStr("260T2")==TeamQueryStr("name") or LuaQueryStr("260T4")==TeamQueryStr("name"))then
		LuaSay("������ͽ��������˽���Ŀ��飬������ͽ�ܻ����������ɡ�")
		end
	else
		if(LuaQueryTask("T260")>4)then
		LuaSay("��������˽����ʦͽ��������")
		else
		LuaSay("ʦͽ������Ӳ�����ɴ������������ɽ��������")
		end
	end
UpdateMenu()
	elseif(answer=="ans1")then
	local a=5
	if(TeamQueryTask("260msg")==a)then
	LuaSay("���¶�����Ҳ�����׺��������ɺ�����")
	LuaSay("���Ĳ�����ʦ����ͽ�ܣ����콱���ɡ�")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("��ѽѽ��һ�ɺ��ԣ�ʦͽ��û�кúý�������ô������ѧ�գ�����ûͨ�������������ɡ�")
	end
	elseif(answer=="ans2")then
	local a=6
	if(TeamQueryTask("260msg")==a)then
	LuaSay("ͬ����Ӧ��ͬ������")
	LuaSay("���Ĳ�����ʦ����ͽ�ܣ����콱���ɡ�")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("��ѽѽ��һ�ɺ��ԣ�ʦͽ��û�кúý�������ô������ѧ�գ�����ûͨ�������������ɡ�")
	end
	elseif(answer=="ans3")then
	local a=7
	if(TeamQueryTask("260msg")==a)then
	LuaSay("���ߣ���֮���£�����֮�أ�����֮�������ɲ���Ҳ��")
	LuaSay("���Ĳ�����ʦ����ͽ�ܣ����콱���ɡ�")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("��ѽѽ��һ�ɺ��ԣ�ʦͽ��û�кúý�������ô������ѧ�գ�����ûͨ�������������ɡ�")
	end
	elseif(answer=="ans4")then
	local a=8
	if(TeamQueryTask("260msg")==a)then
	LuaSay("��Ϊľ��Ϊ����")
	LuaSay("���Ĳ�����ʦ����ͽ�ܣ����콱���ɡ�")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("��ѽѽ��һ�ɺ��ԣ�ʦͽ��û�кúý�������ô������ѧ�գ�����ûͨ�������������ɡ�")
	end
	elseif(answer=="ans5")then
	local a=9
	if(TeamQueryTask("260msg")==a)then
	LuaSay("���������������� ��Ϊ����Է�����")
	LuaSay("���Ĳ�����ʦ����ͽ�ܣ����콱���ɡ�")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("��ѽѽ��һ�ɺ��ԣ�ʦͽ��û�кúý�������ô������ѧ�գ�����ûͨ�������������ɡ�")
	end
	elseif(answer=="ans6")then
	local a=10
	if(TeamQueryTask("260msg")==a)then
	LuaSay("���������ƣ������Ƕ����ơ�")
	LuaSay("���Ĳ�����ʦ����ͽ�ܣ����콱���ɡ�")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("��ѽѽ��һ�ɺ��ԣ�ʦͽ��û�кúý�������ô������ѧ�գ�����ûͨ�������������ɡ�")
	end
	elseif(answer=="ans7")then
	local a=11
	if(TeamQueryTask("260msg")==a)then
	LuaSay("ˮ��ʪ�������ƴ�������ӻ���")
	LuaSay("���Ĳ�����ʦ����ͽ�ܣ����콱���ɡ�")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("��ѽѽ��һ�ɺ��ԣ�ʦͽ��û�кúý�������ô������ѧ�գ�����ûͨ�������������ɡ�")
	end
	elseif(answer=="ans8")then
	local a=12
	if(TeamQueryTask("260msg")==a)then
	LuaSay("������ӣ��������ţ�ս��֮�䣬����թα��")
	LuaSay("���Ĳ�����ʦ����ͽ�ܣ����콱���ɡ�")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("��ѽѽ��һ�ɺ��ԣ�ʦͽ��û�кúý�������ô������ѧ�գ�����ûͨ�������������ɡ�")
	end
	elseif(answer=="ans9")then
	local a=13
	if(TeamQueryTask("260msg")==a)then
	LuaSay("��ľ��Ϊ���֮�ס�")
	LuaSay("���Ĳ�����ʦ����ͽ�ܣ����콱���ɡ�")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("��ѽѽ��һ�ɺ��ԣ�ʦͽ��û�кúý�������ô������ѧ�գ�����ûͨ�������������ɡ�")
	end
	elseif(answer=="ans10")then
	local a=14
	if(TeamQueryTask("260msg")==a)then
	LuaSay("�������Һ������� �ض���˹�����ӡ�")
	LuaSay("���Ĳ�����ʦ����ͽ�ܣ����콱���ɡ�")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("��ѽѽ��һ�ɺ��ԣ�ʦͽ��û�кúý�������ô������ѧ�գ�����ûͨ�������������ɡ�")
	end
	elseif(answer=="ans11")then
	local a=15
	if(TeamQueryTask("260msg")==a)then
	LuaSay("������֮������Υ֮��ȷ���䲻�ɰΣ�Ǭ��Ҳ��")
	LuaSay("���Ĳ�����ʦ����ͽ�ܣ����콱���ɡ�")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("��ѽѽ��һ�ɺ��ԣ�ʦͽ��û�кúý�������ô������ѧ�գ�����ûͨ�������������ɡ�")
	end
	elseif(answer=="ans12")then
	local a=16
	if(TeamQueryTask("260msg")==a)then
	LuaSay("ʥ����������������������ϣ������������£����������Ҳ��")
	LuaSay("���Ĳ�����ʦ����ͽ�ܣ����콱���ɡ�")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("��ѽѽ��һ�ɺ��ԣ�ʦͽ��û�кúý�������ô������ѧ�գ�����ûͨ�������������ɡ�")
	end
	elseif(answer=="ans13")then
	local a=17
	if(TeamQueryTask("260msg")==a)then
	LuaSay("֪��֪�ˣ���ս���ݡ�")
	LuaSay("���Ĳ�����ʦ����ͽ�ܣ����콱���ɡ�")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("��ѽѽ��һ�ɺ��ԣ�ʦͽ��û�кúý�������ô������ѧ�գ�����ûͨ�������������ɡ�")
	end
	elseif(answer=="ans14")then
	local a=18
	if(TeamQueryTask("260msg")==a)then
	LuaSay("������ľ��������")
	LuaSay("���Ĳ�����ʦ����ͽ�ܣ����콱���ɡ�")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("��ѽѽ��һ�ɺ��ԣ�ʦͽ��û�кúý�������ô������ѧ�գ�����ûͨ�������������ɡ�")
	end
	elseif(answer=="ans15")then
	local a=19
	if(TeamQueryTask("260msg")==a)then
	LuaSay("����������̫���� �����˶��޹��ˡ�")
	LuaSay("���Ĳ�����ʦ����ͽ�ܣ����콱���ɡ�")
	LuaSetTask("T260",4)
	LuaDelTask("260msg")
	else
	LuaSetTask("T260",98)
	LuaSay("��ѽѽ��һ�ɺ��ԣ�ʦͽ��û�кúý�������ô������ѧ�գ�����ûͨ�������������ɡ�")
	end 
	 
--�ɳ����� 
elseif(answer == "T71") then
	local level= LuaQuery("level")
	if(LuaQueryTask("T71")== 0) then
		if(TeamCount()== 2) then
		if(TeamQuery("level")<=10 and level<=10) then
			if(TeamQueryTask("T71")== 0 or TeamQueryStr("Tczteamer")==LuaQueryStr("name")) then
			LuaSay("���鳤����������Ͽɹ��������һͬ�ɳ�һͬ���˵Ļ������@210����10�����µ�2�����@0�����ڴ˽�ȡ�ɳ�����Ŷ��")
			LuaSay("���鳤��ÿ������2����Ӷ����콱������2��һͬ�ﵽ@215��,20��,25��,30��@0ʱ�������Ե�������������ȡ���Ľ�����@!")
			LuaSay("���鳤����һͬ@2�ﵽ30��@0��һ�����@4��ˮ�԰�@0@3����@0��@2��ս���ߡ�BOSS������@0ʱ��@3��Ǯ�������顢��װ@0�������㡣@!")
			LuaSetTask("T71",1)
			LuaSetTask("Tczteamer",TeamQueryStr("name"))
			AddLog("����Ե���ɳ���",71)
			UpdateMenu()
			else
			LuaSay("���鳤�������ӳ�Ա�Ѿ���������Ϊ���Ļ�飬�㻹������������Ϊ��Ļ��ɡ�")
			LuaSay("@7��ܰ��ʾ@0����������Ҫ2����һ���ȡ����ɡ�����ÿ�춼�н�������15/20/25/30��ʱ���з��Ĵ󽱡�")
			end            
			elseif(TeamQuery("level")>10 or level>10) then
			LuaSay("���鳤��2��10����10�����ڵ���ң�������Ӳ�����ȡ������")
			LuaSay("@7��ܰ��ʾ@0����������Ҫ2����һ���ȡ����ɡ�����ÿ�춼�н�������15/20/25/30��ʱ���з��Ĵ󽱡�")
			end
		else
		LuaSay("���鳤��2��10����10�����ڵ���ң�������Ӳ�����ȡ������")
		LuaSay("@7��ܰ��ʾ@0����������Ҫ2����һ���ȡ����ɡ�����ÿ�춼�н�������15/20/25/30��ʱ���з��Ĵ󽱡�")
		AddMenuItem("@7�����ع�������","")
		AddMenuItem("@3����Ҫ����������","T71yes")
		AddMenuItem("@3����Ҫ","T71no")
		end
              
	elseif(LuaQueryTask("T71")== 1) then
	AddMenuItem("�����б�","")
	AddMenuItem("ÿ�ս���","T71A")
	AddMenuItem("�ɳ�����","T71B")
	elseif(LuaQueryTask("T71")== 2) then
	AddMenuItem("�����б�","")
	AddMenuItem("ÿ�ս���","T71A")
	AddMenuItem("�ɳ�����","T71B")
	elseif(LuaQueryTask("T71")== 3) then
	AddMenuItem("�����б�","")
	AddMenuItem("ÿ�ս���","T71A")
	AddMenuItem("�ɳ�����","T71B")
	elseif(LuaQueryTask("T71")== 4) then
	AddMenuItem("�����б�","")
	AddMenuItem("ÿ�ս���","T71A")
	AddMenuItem("�ɳ�����","T71B")
	end

      elseif(answer == "T71yes") then
   if(GetCurrentDay()~=LuaQueryStrTask("T71ggday")) then
      LuaSetTask("T71ggcishu",0)
      LuaSetTask("T71ggday",GetCurrentDay())
   end
	if(LuaQueryTask("T71ggcishu")<2 ) then
		if(IsVisitor()=="true")then--�ο���ʾע��
		LuaSay("��ʾ����@3ȷ����ȷ��@0���ٰ�@3#��@0,�����˺����뼴��@2ע��@0��")
		else
		LocalMsg("@3"..LuaQueryStr("name").."@0ϣ�����˺���һ��������@2����Ե�ɳ�����@0��Ը��Ŀ���ϵ���ɣ�")
		LuaAddTask("T71ggcishu",1)
		end
	else
		LuaSay("��ʾ�����������ˣ�ÿ��ֻ����2�Ρ��������Ѿ������ˣ����ź���")
	end
      elseif(answer == "T71no") then
		LuaSay("���鳤���������Ǹ�ϲ��һ����ĬĬ�ܶ����ˣ��Ǿͼ��Ͱɡ�")


elseif(answer == "T71B") then
local level= LuaQuery("level")
	if(LuaQueryTask("T71")== 1) then
		if(TeamCount()== 2) then
		if(LuaQueryStr("Tczteamer")==TeamQueryStr("name"))then
			if(TeamQuery("level")>=15 and level>=15) then
				LuaSay("���鳤�������Ļ����ô��͵�15�����أ��������Ͱ�@!�ڴ�֮ǰ������ҵ�������")
				AddMenuItem("@715��������ȡ","")
				AddMenuItem("��ȡ����","T71jl1")
			elseif(TeamQuery("level")<15 or level<15) then
			LuaSay("���鳤�����ǿ�ϧ���������Ļ�黹û�дﵽ15��Ŷ����Ҫ����Ŭ���ء�")
        	AddMenuItem("�Ƿ�Ҫ��������","","")
        	AddMenuItem("��������","jixu","")
	    	AddMenuItem("��������","fangqi","")
			end
		else
		LuaSay("���鳤����ô����ô��������»����𣿱����������ʱһ���ͬ����Ӳſ���Ŷ��")
        AddMenuItem("�Ƿ�Ҫ��������","","")
        AddMenuItem("��������","jixu","")
	    AddMenuItem("��������","fangqi","")
		end
		else
		LuaSay("���鳤�������������ʱһ����ӵ�ͬ��ſ����������������Ŷ��")
        AddMenuItem("�Ƿ�Ҫ��������","","")
        AddMenuItem("��������","jixu","")
	    AddMenuItem("��������","fangqi","")
		end
	elseif(LuaQueryTask("T71")== 2) then
		if(TeamCount()== 2) then
		if(LuaQueryStr("Tczteamer")==TeamQueryStr("name"))then
			if(TeamQuery("level")>=20 and level>=20) then
				LuaSay("���鳤�������Ļ����ô��͵�20�����أ��������Ͱ�@!�ڴ�֮ǰ������ҵ�������")
				AddMenuItem("@720��������ȡ","")
				AddMenuItem("��ȡ����","T71jl2")
			elseif(TeamQuery("level")<20 or level<20) then
			LuaSay("���鳤�����ǿ�ϧ���������Ļ�黹û�дﵽ20��Ŷ����Ҫ����Ŭ���ء�")
        	AddMenuItem("�Ƿ�Ҫ��������","","")
        	AddMenuItem("��������","jixu","")
	    	AddMenuItem("��������","fangqi","")
			end
		else
		LuaSay("���鳤����ô����ô��������»����𣿱����������ʱһ���ͬ����Ӳſ���Ŷ��")
        AddMenuItem("�Ƿ�Ҫ��������","","")
        AddMenuItem("��������","jixu","")
	    AddMenuItem("��������","fangqi","")
		end
		else
		LuaSay("���鳤�������������ʱһ���ͬ����Ӳſ����������������Ŷ��")
        AddMenuItem("�Ƿ�Ҫ��������","","")
        AddMenuItem("��������","jixu","")
	    AddMenuItem("��������","fangqi","")
		end
	elseif(LuaQueryTask("T71")== 3) then
		if(TeamCount()== 2) then
		if(LuaQueryStr("Tczteamer")==TeamQueryStr("name"))then
			if(TeamQuery("level")>=25 and level>=25) then
				LuaSay("���鳤�������Ļ����ô��͵�25�����أ��������Ͱ�@!�ڴ�֮ǰ������ҵ�������")
				AddMenuItem("@725��������ȡ","")
				AddMenuItem("��ȡ����","T71jl3")
			elseif(TeamQuery("level")<25 or level<25) then
			LuaSay("���鳤�����ǿ�ϧ���������Ļ�黹û�дﵽ25��Ŷ����Ҫ����Ŭ���ء�")
        	AddMenuItem("�Ƿ�Ҫ��������","","")
        	AddMenuItem("��������","jixu","")
	    	AddMenuItem("��������","fangqi","")
			end
		else
		LuaSay("���鳤����ô����ô��������»����𣿱����������ʱһ���ͬ����Ӳſ���Ŷ��")
        AddMenuItem("�Ƿ�Ҫ��������","","")
        AddMenuItem("��������","jixu","")
	    AddMenuItem("��������","fangqi","")
		end
		else
		LuaSay("���鳤�������������ʱһ���ͬ����Ӳſ����������������Ŷ��")
        AddMenuItem("�Ƿ�Ҫ��������","","")
        AddMenuItem("��������","jixu","")
	    AddMenuItem("��������","fangqi","")
		end
	elseif(LuaQueryTask("T71")== 4) then
		if(TeamCount()== 2) then
		if(LuaQueryStr("Tczteamer")==TeamQueryStr("name"))then
			if(TeamQuery("level")>=30 and level>=30) then
				if(TeamQueryTask("T468")==99 and LuaQueryTask("T468")==99) then
				LuaSay("���鳤�������Ļ�龭���˷�����꣬���ڶ��ɳ�Ϊ�ܶ���һ��Ĵ��������ء�@!")
				LuaSay("���鳤��������Ӣ����Ϊ���ǺȲʣ�������ҵ�������@!")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T71jl4")
				else
			  	LuaSay("���鳤�����ǿ�ϧ���������Ļ�黹û�����28��BOSS����@2��ս���ߡ�BOSS��@0����ȥ@4��ˮ�԰�@0��@3����@0����ȡ��")
        		AddMenuItem("�Ƿ�Ҫ��������","","")
        		AddMenuItem("��������","jixu","")
	    		AddMenuItem("��������","fangqi","")
				end
			elseif(TeamQuery("level")<30 or level<30) then
			LuaSay("���鳤�����ǿ�ϧ���������Ļ�黹û�дﵽ30��Ŷ����Ҫ����Ŭ���ء�")
        	AddMenuItem("�Ƿ�Ҫ��������","","")
        	AddMenuItem("��������","jixu","")
	    	AddMenuItem("��������","fangqi","")
			end
		else
		LuaSay("���鳤����ô����ô��������»����𣿱����������ʱһ���ͬ����Ӳſ���Ŷ��")
        AddMenuItem("�Ƿ�Ҫ��������","","")
        AddMenuItem("��������","jixu","")
	    AddMenuItem("��������","fangqi","")
		end
		else
		LuaSay("���鳤�������������ʱһ���ͬ����Ӳſ����������������Ŷ��")
        AddMenuItem("�Ƿ�Ҫ��������","","")
        AddMenuItem("��������","jixu","")
	    AddMenuItem("��������","fangqi","")
		end
	elseif(LuaQueryTask("T71")== 99) then
	LuaSay("���鳤�����Ѿ������ͬ������˴��������ڿ��Ժ����ͬ��ȥ���ܸ���̽���ˡ�@!")
    end
	elseif(answer=="fangqi") then
		LuaSay("���鳤��������ʧȥ��ȡ��������ʸ�Ŷ�����ٴ�ȷ���Ƿ�Ҫ������")
		AddMenuItem("�Ƿ�Ҫ��������","","")
        AddMenuItem("��������","jixu","")
	    AddMenuItem("��������","fangqi1","")
	elseif(answer=="fangqi1") then
		LuaSay("���鳤������̫�ź��ˣ�")
		LuaSetTask("T71",0)
        LuaDelTask("Tczteamer")
		DelLog("344")
		UpdateMenu()
	elseif(answer=="jixu") then
		LuaSay("���鳤��������־���ʤ�����������Ͱɣ��ҽ��������Ľ���Ŷ��")

	elseif(answer=="T71jl1") then
				if(LuaQueryTask("T71") == 1) then
				LuaSetTask("T71",2)
				LuaAddJx("combat_exp",100000,"T71")
				LuaGive("e_clothes005s",1,1,"T71")
				DelLog("71")
                if(LuaQueryTask("T71") == 2) then
                LuaSay("���鳤���������ٽ������ɣ�������һ��ﵽ20�����Ϳ�������ȡ20���Ľ����ˡ�@!")
                end
				AddLog("����Ե���ɳ���",71)
				UpdateMenu()
				end
	elseif(answer=="T71jl2") then
				if(LuaQueryTask("T71") == 2) then
				LuaSetTask("T71",3)
				LuaAddJx("combat_exp",300000,"T71")
				LuaGive("e_clothes006s",1,1,"T71")
				DelLog("71")
                if(LuaQueryTask("T71") == 3) then
                LuaSay("���鳤���������ٽ������ɣ�������һ��ﵽ25�����Ϳ�������ȡ25���Ľ����ˡ�@!")
                end
				AddLog("����Ե���ɳ���",71)
				UpdateMenu()
				end
	elseif(answer=="T71jl3") then
				if(LuaQueryTask("T71") == 3) then
				LuaSetTask("T71",4)
				LuaAddJx("combat_exp",650000,"T71")
				LuaGive("coin",15000,"T71")
				DelLog("71")
                if(LuaQueryTask("T71") == 4) then
                LuaSay("���鳤������������һ��ﵽ30����2�˶����@2��ˮ�԰������BOSS����@0���Ϳ�������ȡ30���Ľ����ˡ�@!")
                end
				AddLog("����Ե���ɳ���",71)
				UpdateMenu()
				end
	elseif(answer=="T71jl4") then
				if(LuaQueryTask("T71") == 4) then
				LuaSetTask("T71",99)
				LuaAddJx("combat_exp",1200000,"T71")
				LuaGive("coin",20000,"T71")
				LuaGive("e_clothes011s",1,2,"T71")
				DelLog("71")
				UpdateMenu()
				end

	elseif(answer == "T71A") then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	 if(GetCurrentDay()~=LuaQueryStrTask("71Taskday")) then	
	if(LuaQueryTask("T71")>0 and LuaQueryTask("T71")<99) then
		if(TeamCount()== 2) then
			if(TeamQueryStr("Tczteamer")==LuaQueryStr("name")) then
			local jingyan=20000+level^2*24+level*2500
			LuaAddJx("combat_exp",jingyan,"T71")
			LuaGive("coin",1000,"T71")
			LuaSetTask("71Taskday",GetCurrentDay())
			else
			LuaSay("���鳤����ô����ô��������»����𣿱����������ʱһ���ͬ����Ӳſ���Ŷ��")
			AddMenuItem("�Ƿ�Ҫ��������","","")
			AddMenuItem("��������","jixu","")
			AddMenuItem("��������","fangqi","")
			end
		else
		LuaSay("���鳤�������������ʱһ���ͬ����Ӳſ����������������Ŷ��")
		AddMenuItem("�Ƿ�Ҫ��������","","")
		AddMenuItem("��������","jixu","")
		AddMenuItem("��������","fangqi","")
		end
	end
    else
    LuaSay("���鳤�����������Ѿ���������ˣ�@2����Լ����ĺ���������@0���ɱ�����Ӵ��")
    end


elseif(answer=="Tsnpc_5")then
	if(LuaQueryTask("Tsnpc_5")==1)then
		LuaSay(""..LuaQueryStr("name").."�����ǵ������˸���������ż�������ܼ�������")
		LuaSay("���鳤��������¿���̫ƽʵ����Ũ�̹�����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_5",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_5")==2)then
		LuaSay("���鳤���Ϸ��Ѿ��յ����ˣ���ȥ�������Ǵ��˰�")
	end
elseif(answer=="Tenpc_5")then
	if(LuaQueryTask("Tenpc_5")==1)then
		LuaSay(""..LuaQueryStr("name").."������������˵�ż����ܻᱻ���٣����Ҹ���������ӽ�ѵ��")
		LuaSay("���鳤��������˵��Ҳ֪�������������������ɣ��")
		LuaSetTask("Tenpc_5",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_5")==2)then
		LuaSay("���鳤����ȥ�������Ǵ��ˣ���˵��֪����")
	end

elseif(answer=="STPT")then
	AddMenuItem("@7�����б�","","")
	AddMenuItem("@7���뵽ʦ���б�","SQ_SF","")
	AddMenuItem("@7���뵽ͽ���б�","SQ_TD","")
	AddMenuItem("@7��Ҫ��ʦ��","zhao_SF","")
	AddMenuItem("@7��Ҫ��ͽ��","zhao_TD","")
	AddMenuItem("@3��ʦ����","BSSY")
	AddMenuItem("@3ʦͽƽ̨˵��","STPTSM")
elseif(answer=="SQ_SF")then     ---�ɹ��������ʾʦ�����б�
	if(LuaRegisterNumFull("master")==2)then 
	LuaAddRegister("master")
	elseif(LuaRegisterNumFull("master")==1)   then 
		LuaSay("��ʾ��Ŀǰ@3ʦ���б������Ѿ�����50��������Ϊ200����@0��Ҫ��ȡ@33000@0ͭ�������Ѳ������룡")
		AddMenuItem("@7�����б�","","")
		AddMenuItem("@7���뵽ʦ���б�","SQ_SF_yes","")
	elseif(LuaRegisterNumFull("master")==0)   then 
	LuaSay("��ʾ�������Ѿ��ﵽ���ޣ���������������")
	end
elseif(answer=="SQ_SF_yes")then
	if(LuaItemCount("coin")>=3000) then
		LuaAddRegister("master")
		if(LuaIsInRegister("master")==1) then
		LuaGive("coin",-3000,"STPT")
		else
		LuaSay("��ʾ������ʧ�ܣ�")
		end
	else
	LuaSay("��ʾ��������ͭ�Ҳ���@33000@0��")
	end
	

elseif(answer=="SQ_TD")then     ---�ɹ��������ʾͽ�ܵ��б� 
	LuaAddRegister("prentice")
elseif(answer=="zhao_SF")then   ---��ʾʦ��
	LuaSendRegister("master")	
elseif(answer=="zhao_TD")then   ---��ʾͽ�� 
    LuaSendRegister("prentice")
elseif(answer=="STPTSM")then
    LuaSay("��ʾ����ֻҪ�����б�ɹ���������־ͻ�浽��Ӧ��ʦ����ͽ���б��У�������Ҿ��ܶ��������ͽ���ʦ�ˣ�")
    LuaSay("��ʾ����ѡ����Ӧ�Ĳ˵������������ֺ�����������Ұ�ʦ���߽��������Ϊͽ���ˣ�ǰ������Ҫ����ʦͽ������")
    LuaSay("��ʾ����ʦͽ�б��ϵ����ֿ��Ա���3�죡3���ᱻϵͳ�Զ�ɾ�����������ͽ���߰�ʦ�ɹ����������Ҳ�ᱻϵͳ���б�ɾ����")
    LuaSay("��ʾ���ͼ��������ͽ���б���ȫ��ѣ�����Ϊ200�ˣ�")
    LuaSay("��ʾ���߼��������ʦ���б�ǰ50����ȫ��ѣ�����50��������Ҫ��ȡһ���������ѣ�����Ϊ200�ˣ�")
elseif(answer=="BSSY")then

	if(LuaQueryStr("master")~="")  then
		if(LuaQueryTempStr("last_world_msg")==SYXT(1,1,0))  then
			SYXT(1,0,1)
		else
		    LuaSay("��ʾ����ֻҪ�ڹ���Ƶ�����ģ���@3"..SYXT(1,1,0).."@0����Ȼ������콱")
		end
	else 
		LuaSay("��ʾ����û��ʦ�����޷����д�����")
	end 

    
end
LuaSendMenu()
return 1
end 

   
shitu={}
shitu[1]={"һ��Ϊʦ����Ϊʦ"}
shitu[2]={"�һ��ʦ��һֱ��ͳһ����ȥ"}
shitu[3]={"һֱ��ʦ������ȥ"}
shitu[4]={"��Զ���뿪ʦ�����뿪ͳһ"}
shitu[5]={"��Զ������ʦ��������ͳһ"}
shitu[6]={"����Զ�����ҵ�ʦ��"}


hunyin={}
hunyin[1]={"�Ұ���ֱ����Զ"}
hunyin[2]={"�һ����һֱ��ͳһ����ȥ"}
hunyin[3]={"һֱ��������ȥ"}
hunyin[4]={"��Զ���뿪�㲻�뿪ͳһ"}
hunyin[5]={"��Զ�������㲻����ͳһ"}
hunyin[6]={"�Ұ��㵽����ʯ��"}
hunyin[7]={"��Ҫ������Զ��ͳһ����"}

bangpai={}
bangpai[1]={"��Ը׷�����ֱ����Զ"}
bangpai[2]={"�һ������һֱ��ͳһ����ȥ"}
bangpai[3]={"һֱ׷���������ȥ"}
bangpai[4]={"��Զ���뿪���ɲ��뿪ͳһ"}
bangpai[5]={"��Զ�����Ѱ��ɲ�����ͳһ"}
bangpai[6]={"�Ұ��Ұ�"}
bangpai[7]={"�������Ҽұ�ǿ�����"}

function SYXT(leixing,yuju,jiangli)
	--[[   SYXT(leixing,yuju,jiangli)
	        leixing 1��ʾ����ʦͽģ�飬2��ʾ���� ��3��ʾ����
            yuju    1��ʾ������䣬�������0 2���������֣������κη���
            jiangli 1��ʾ���ý���������ֱ��ִ�У����κη��ء��������0 2���������֣������κη���
	]]
	--[[   LuaQueryStr("lassie")��ż
			LuaQueryStr("master")ʦ��
			LuaQueryRank() > 2��Ĭ�ϰ���=1������=2������=3������=4�����ΪLuaQueryRank()==0������û�Ӱ���
			
			ע�⣺�����´�ģ�飬Ҫ������ص�npc��ֻҪ��������¼���
			Ŀǰ�õ���ģ���npc��1�����鳤 tianwuzhan  ---ʦͽ
			                     2�����幫��jinqing   -����
			                     3������jindi      ----����
			
	]]
	if(leixing==1)then ----------------------------------------------------------------------------ʦͽ����
	    if(LuaQueryTask("SYXT_shitu_r")==0) then
			local r=LuaRandom(6) +1
			LuaSetTask("SYXT_shitu_r",r)
		end
		
		local num=LuaQueryTask("SYXT_shitu_r")
		if(yuju==1) then------ �������Ϊ1ʱ���س���� 
		    return shitu[num][1]
		end

		------------------ʦͽ���ֽ���
		local lv_exp
		if(LuaQuery("level")<30) then
  			lv_exp=200000
  		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
  			lv_exp=500000
  		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=70 and LuaQuery("level")<80) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=80 and LuaQuery("level")<90) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=90 and LuaQuery("level")<100) then
  			lv_exp=1000000
  		end
  		-----------
  		if(LuaQueryTask("SYXT_shitu_over")==99)    then
		LuaSay("��ʾ�����Ѿ�����ý����ˣ�һ���Ӿ�ֻ����һ��Ŷ��")
		end
		if(jiangli==1 and LuaQueryTask("SYXT_shitu_over")~=99)    then
			LuaAddJx("combat_exp",lv_exp,"SYXT_shitu")
			LuaSetTask("SYXT_shitu_over",99)
		end 
		--------------------------
	elseif(leixing==2)then ------------------------------------------------------------------------------------��������
		if(LuaQueryTask("SYXT_hunyin_r")==0) then
			local r=LuaRandom(7) +1
			LuaSetTask("SYXT_hunyin_r",r)
		end

		local num=LuaQueryTask("SYXT_hunyin_r")
		if(yuju==1) then------ �������Ϊ1ʱ���س����
		    return hunyin[num][1]
		end

		------------------�������ֽ���
		local lv_exp
		if(LuaQuery("level")<30) then
  			lv_exp=200000
  		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
  			lv_exp=500000
  		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=70 and LuaQuery("level")<80) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=80 and LuaQuery("level")<90) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=90 and LuaQuery("level")<100) then
  			lv_exp=1000000
  		end
  		-----------
  		if(LuaQueryTask("SYXT_hunyin_over")==99)    then
		LuaSay("��ʾ�����Ѿ�����ý����ˣ�һ���Ӿ�ֻ����һ��Ŷ��")
		end
		if(jiangli==1 and LuaQueryTask("SYXT_hunyin_over")~=99)    then
			LuaAddJx("combat_exp",lv_exp,"SYXT_hunyin")
			LuaSetTask("SYXT_hunyin_over",99)
		end
		--------------------------
	elseif(leixing==3)then --------------------------------------------------------------------���ɲ���
			if(LuaQueryTask("SYXT_bangpai_r")==0) then
			local r=LuaRandom(7) +1
			LuaSetTask("SYXT_bangpai_r",r)
		end

		local num=LuaQueryTask("SYXT_bangpai_r")
		if(yuju==1) then------ �������Ϊ1ʱ���س����
		    return bangpai[num][1]
		end

		------------------���ɲ��ֽ���
		local lv_exp
		if(LuaQuery("level")<30) then
  			lv_exp=200000
  		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
  			lv_exp=500000
  		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=70 and LuaQuery("level")<80) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=80 and LuaQuery("level")<90) then
  			lv_exp=1000000
  		elseif(LuaQuery("level")>=90 and LuaQuery("level")<100) then
  			lv_exp=1000000
  		end
  		-----------
  		if(LuaQueryTask("SYXT_bangpai_over")==99)    then
		LuaSay("��ʾ�����Ѿ�����ý����ˣ�һ���Ӿ�ֻ����һ��Ŷ��")
		end
		if(jiangli==1 and LuaQueryTask("SYXT_bangpai_over")~=99)    then
			LuaAddJx("combat_exp",lv_exp,"SYXT_bangpai")
			LuaSetTask("SYXT_bangpai_over",99)
		end
		--------------------------
	end
end   