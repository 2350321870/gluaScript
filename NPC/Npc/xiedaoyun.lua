NPCINFO = {
serial="49" ,
base_name="xiedaoyun" ,
icon=2519,
NpcMove=2519,
name="л���" ,
iconaddr=1 ,
butt="10|10|60" ,
name_color="CEFFCE" ,
lastsay="������˿ɵ��˽�������" ,
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
	local T380=LuaQueryTask("T380")
	local T381=LuaQueryTask("T381")
	local T382=LuaQueryTask("T382")
	AddTopSayMenuItem("@7�����б�","")
	--if(level<=25)then	
	AddTopSayMenuItem("@3��Ѫ����@0","Tzhiliao02")
	--end
--����Ϊ���ⲿ��
	if((LuaQueryTask("Tsnpc_34")==1 or LuaQueryTask("Tsnpc_34")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_34")
		if(LuaQueryTask("Tsnpc_34")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_34")==1 or LuaQueryTask("Tenpc_34")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_34")
		if(LuaQueryTask("Tenpc_34")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T266")==1) then
		AddTopSayMenuItem("@2л�ҷ�ǡ����顿","T266") 
		havetask2 =1
		end
	if(LuaQueryTask("T355")==1)  then                    
		AddTopSayMenuItem("@2л��Ů�������顿","T355")
		havetask2 =1
	end

	if(LuaQueryTask("T381")==1 or LuaQueryTask("T381")==2)then
		AddTopSayMenuItem("@2��������䡾���顿@0","T381")
		if(LuaQueryTask("T381")==2)then
		havetask2=1
		end
	end

--	if(LuaQueryTask("T384")==1 or LuaQueryTask("T384")==2) then
--		AddTopSayMenuItem("@2ǧ�ﹲ濾꡾���顿@0","T384")
--		havetask =2
--	end
	if(LuaQueryTask("T373")==1) then
		AddTopSayMenuItem("@2�������ա����顿","T373")
		havetask2=1
	end
	
	if(LuaQueryTask("T302")==6 and LuaQueryTask("T302F")==0) then
		AddTopSayMenuItem("@2ÿ����ʹ@0","T302F")
		havetask2 =1
	end
--����Ϊ��ɫ�ʺŲ���
	if(LuaQueryTask("T380")==1)then
		AddTopSayMenuItem("@2��ʦ���������顿@0","T380")
		havetask4=1
	end
	if(LuaQueryTask("T382")==1)then
		AddTopSayMenuItem("@2���а�̡�ѭ����@0","T382")
		havetask4=1
	end
--����Ϊ��ɫ�ʺŲ���
	if(LuaQueryTask("T266")==0 and LuaQueryTask("T278")==99)  then
		AddTopSayMenuItem("л�ҷ�ǡ����顿","T266")
		havetask1 =1
		end	
--	if(T380==0 and level>=18)then
--		AddTopSayMenuItem("��ʦ���������顿","T380")
--		havetask=1
--	end
	if(T381==0 and level>=19)then
		AddTopSayMenuItem("��������䡾���顿","T381")
		havetask1=1
	end
	if(T382==0 and level>=16 and level<=21)then
		AddTopSayMenuItem("���а�̡�ѭ����","T382")
		havetask1=1
	end
--	if(LuaQueryTask("T384")==0 and LuaQueryTask("T381")==99)then
--		AddTopSayMenuItem("ǧ�ﹲ濾꡾���顿","T384")
--		havetask=1
--	end
	if(LuaQueryTask("T278")<99 and level>=18)  then
		AddTopSayMenuItem("������ҵ���̡̳�","T278")
		havetask1 =1
	end
--����Ϊ��ɫ��̾�Ų���


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
	  LuaSay("л��蹣�ҩ����ս������ıر�������ͨ�������ã����ҿ����õ���ݼ���")


elseif(answer=="T266") then    -------------------------л�ҷ��
      if(LuaQueryTask("T266")==0) then  
       LuaSay("л��蹣���л�����Ǵ�����������ң��������ʲ�����Ǳ�����ѣ�����������㼸������ɡ�")
       LuaSay("л��蹣������ľ䲻�������˼�룿")
       AddMenuItem("@7��","")
       AddMenuItem("[��]�����б�����ʦ","NO_266")
       AddMenuItem("[��]��������","NO_266")
       AddMenuItem("[��]����ƽ��","N266_ANSWER")
       AddMenuItem("[��]ѧ����˼����","NO_266")
      elseif(LuaQueryTask("T266")==1) then  
       LuaSay("л��蹣����������������ѧʶҲ���൱���������������㣬�����Ĵ��鷨�ҽ�ʲô��")
       AddMenuItem("@7��","")
       AddMenuItem("[��]������","NO_266")
       AddMenuItem("[��]����Ȩ","NO_266")
       AddMenuItem("[��]����֮","N266_ANSWER1")
       AddMenuItem("[��]���ϼ�","NO_266")
      end 
	elseif(answer=="NO_266") then					  
		LuaSay("л��蹣������˹�֪������ɲ���Ŷ���ٸ���һ�λ���ش�ɡ�@!")
	elseif(answer=="N266_ANSWER") then					 
		LuaSetTask("T266",1)
		AddLog("л�ҷ��",266)
		LuaSay("л��蹣����������������ѧʶҲ���൱���������������㣬�����Ĵ��鷨�ҽ�ʲô��")
		AddMenuItem("@7��","")
		AddMenuItem("[��]������","NO_266")
		AddMenuItem("[��]����Ȩ","NO_266")
		AddMenuItem("[��]����֮","N266_ANSWER1")
		AddMenuItem("[��]���ϼ�","NO_266")
		UpdateMenu()	 
	elseif(answer=="N266_ANSWER1") then
		if(LuaQueryTask("T266")==1) then
		LuaSay("л��蹣��ܺã��������û�п����㡣���Ǻ�����η�������ڴ���ĳɳ�Ŷ��@!")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T266jl")
		end
	       elseif(answer=="T266jl") then
		      if(LuaQueryTask("T266") == 1) then   
			LuaSetTask("T266",99)
			DelLog("266")
			LuaAddJx("combat_exp",76230,"T266")
			LuaAddAchievementSchedule("Task_num",1)
			UpdateMenu()
		      end

elseif(answer=="T302F") then
	if(LuaQueryTask("T302F")==0) then
	   LuaSay(""..LuaQueryStr("name").."��������վС�����Ҵ�������ż���")
	   LuaSay("л��蹣����������ĸ��ᱡ֮ͽŪЩ����֮�°ɡ�")
	   DelItem("o_mission076",1)
	   LuaSetTask("T302F",99)
	   UpdateMenu()
	end

elseif(answer=="Tzhiliao02") then
	local level= LuaQuery("level")
	if(level>80)then
			level=80
		end
	if((LuaQuery("max_hp") >LuaQuery("hp")) or (LuaQuery("max_mp") >LuaQuery("mp"))) then
        local jinqian=(level^2 + 50)
	  if(LuaItemCount("coin")>=jinqian) then
              local maxhp=LuaQuery("max_hp")
	      local maxmp=LuaQuery("max_mp")
	      LuaSet("hp",maxhp)
	      LuaSet("mp",maxmp)
              FlushMyInfo("0")
              LuaGive("coin",-jinqian,"Tzhiliao02")
	      LuaSay("л��蹣��ּ��е���������������ƣ����Ʋ����ҩʡǮ����������ѻ�������Ԯ����ʡǮ����ҩ�Ļ����ǵ�@3ҩƷ����@0����ÿ����ȡ���ҩŶ@!")
              LuaSay("л��蹣���ջ���@2"..jinqian.."@0ͭ�ҽ������ƣ��ָֻ��˻�����")
	  else
	      LuaSay("л��蹣����ͭ�Ҳ��㣬��Ҫ@2"..jinqian.."@0ͭ�ҷ������ơ�")
	  end
	 else
	LuaSay("л��蹣�����������Ѫ��ħ״̬������Ҫ���ơ�")
   end


elseif(answer=="T384")then
	if(LuaQueryTask("T384")==0)then
	LuaSay("л���:�������ɲ��ã�Ȼ��������@3����֮@0ȴ�ָ����أ��������ǵ�˼��֮����ʱ����.")
	LuaSay("л���:�޷�������������ź������ͷ�����Ұ�������彻���ҷ��@3����֮@0�ɣ������ڲ�Զ��@4ɽկ����@0")
	LuaSetTask("T384",1)
	LuaGive("o_mission187",1)
	AddLog("ǧ�ﹲ濾꡾���顿",384)
	UpdateTopSay("�����彻������֮")
	UpdateMenu()

	elseif(LuaQueryTask("T384")==1)then
	LuaSay("л���:������Ұ����彻����@4ɽկ����@0��@3����֮@0��.")

	elseif(LuaQueryTask("T384")==2)then
	LuaSay("л��蹣������������ô˵����Ҳ�������㣬��л�����ˣ�")
	AddMenuItem("�������","")
	AddMenuItem("��ȡ����","T384jl")
	end

	elseif(answer=="T384jl")then
	if(LuaQueryTask("T384")==2)then
	LuaSetTask("T384",99)
	LuaDelTask("o_mission187",1)
	DelLog("384")
	LuaAddJx("combat_exp",89100,"T384")--����
	if(LuaRandom(10)==1)then  --16�����·� 
		LuaGive("e_clothes006",1,2,"T384")
	else
		LuaGive("e_clothes006",1,1,"T384")
	end
	LuaAddAchievementSchedule("Task_num",1)
	LuaGive("coin",1000,"T384")
	UpdateMenu()
	end



elseif(answer=="T373")then         --------��������
	if(LuaQueryTask("T373")==1)then
		LuaSay(LuaQueryStr("name").."��л���ˣ�����αװǱ����ʦ�������ˣ�����ͷ�������������㣬��Ҫ����̫�������ͻ�һ�¹��ưɣ�")	
		LuaSay("л��蹣��ã����������ԣ�")
		AddMenuItem("@7�������","")
	  	AddMenuItem("��ȡ����","T373jl")
		UpdateMenu()
	end
elseif(answer=="T373jl")then
		if(LuaQueryTask("T373")==1)then
		LuaAddJx("combat_exp",80100,"T373")--����
		if( LuaQueryStr("class")=="wu")then   --���ͣ�14�� ذ��
			if(LuaRandom(10)==1)then
				LuaGive("e_knife002",1,2,"T373")
			else
				LuaGive("e_knife002",1,1,"T373")
			end
		elseif(LuaQueryStr("class")=="xian")then --ıʿ��15�� ��
			if(LuaRandom(10)==1)then
				LuaGive("e_book001",1,2,"T373")
			else
				LuaGive("e_book001",1,1,"T373")
			end
		elseif(LuaQueryStr("class")=="shen")then--սʿ��15�� ������
			if(LuaRandom(10)==1)then
				LuaGive("e_shield001",1,2,"T373")
			else
				LuaGive("e_shield001",1,1,"T373")
			end
		end
		LuaAddAchievementSchedule("Task_num",1) 
		LuaSetTask("T373",99)
		DelLog("373")
		UpdateMenu()
		UpdateNPCMenu("sunen")
		end

		
elseif(answer=="T380")then   -----------------------------------��ʦ���������顿
		if(LuaQueryTask("T380")==0 and TeamCount()>=2)then
			LuaSay("л��蹣���Ȼ���Ҷ����Լ��ˣ������Ща����Ϊ�����������ȥ@4ɽկ@0��ɱ@220����ʦ��ͽ@0��")
			LuaSay("л��蹣��мǣ���Ҫ��¶�Լ�����ݣ�")
			LuaSay("л��蹣����ɱ�ֻ��ж���ľ���ӳ�Ŷ��ͬʱ���ܽύ����������ѣ�")
			LuaSetTask("T380",1)
			LuaSetTask("task_kill/mon_012/T380",1)
			AddLog("��ʦ���������顿",380)
			UpdateTopSay("��ɱ20����ʦ��ͽ")
			UpdateMenu()
		elseif(LuaQueryTask("T380")==1)then
			a=LuaQueryTask("task_kill/mon_012/T380")-1
			if(a>=20)then
			LuaSay("л���:�ܺã��ڴ������һ�ν�����")
			AddMenuItem("�������","")
			AddMenuItem("��ȡ����","T380jl")
			else
			LuaSay("л��蹣����ǲŻ�ɱ��@2"..a.."����ʦ��ͽ@0����ȥ��ɱ@220����ʦ��ͽ@0�ɣ�")
			end
		else
			LuaSay("л��蹣�ƾ��һ���˵������ǲ����İ�������Ҫ�����ˣ���ȥ��Ӱɣ�")
			LuaSay("л��蹣���������������ӵĺô��ɣ������������ɱ��������ӵĿ죬���ȥ�����Ļ�����߳�װ���ļ���Ŷ@!")
			LuaSay("л��蹣������Ķӳ����ж౶�����״̬����ô��Ҳ�����ܵ�50%Ŷ@!")
		end

		elseif(answer=="T380jl")then                   ---------------------380����
		if(LuaQueryTask("T380")==1)then
		if(LuaQueryTask("task_kill/mon_012/T380")>=21)then
		LuaSetTask("T380",99)
		DelLog("380")
		LuaDelTask("task_kill/mon_012/T380")
		if(TeamCount()>=2)then
			LuaAddJx("combat_exp",82230,"T380")
		else
			LuaAddJx("combat_exp",76230,"T380")
		end
		LuaAddAchievementSchedule("Task_num",1)
		UpdateMenu()
		end
		end


elseif(answer=="T381")then                          ----------------------------��������䡾���顿
		if(LuaQueryTask("T381")==0)then
			LuaSay("л��蹣�������֪���ҷ��@3����֮@0�ѱ�@4ɽկ@0��@3���@0���񣬷������ȥ��̽һ���ҷ�������䣡")
			LuaSay("л��蹣������ǻ������»ظ�����")
			LuaSay(LuaQueryStr("name").."������˷��ģ�")
			LuaSetTask("T381",1)
			AddLog("��������䡾���顿",381)
			UpdateTopSay("�������̽���������")
			UpdateMenu()
			UpdateNPCMenu("sunen")
			if(LuaQueryTask("T266")==99)then
				AutoGoToNpc("@7�Ƿ�@0Ѱ·��@4���","sunen")
			end
		elseif(LuaQueryTask("T381")==1)then
			LuaSay("л��蹣�������䲻�����������ȥ����ǿ�����")
			if(LuaQueryTask("T266")==99)then
				AutoGoToNpc("@7�Ƿ�@0Ѱ·��@4���","sunen")
			end
			elseif(LuaQueryTask("T381")==2)then
			LuaSay("л��蹣����¿�����̽����ҷ���������ˣ���������")
			LuaSay(LuaQueryStr("name").."��@3����֮@0�ѱ�@3���@0������@3ɽկ����@0����˵��������������!")
			AddMenuItem("�������","")
			AddMenuItem("��ȡ����","T381jl")
		end
		elseif(answer=="T381jl")then         ------------------------------------381����
		if(LuaQueryTask("T381")==2)then
		LuaSetTask("T381",99)
		DelLog("381")
		LuaAddJx("combat_exp",82100,"T380")
		LuaGive("coin",1000,"T381")
		LuaAddAchievementSchedule("Task_num",1)
		UpdateMenu()
		UpdateNPCMenu("sunen")
		end


elseif(answer=="T382")then                -----------------------------------------------���а�̡�ѭ����
	local level= LuaQuery("level")
		if(LuaQueryTask("T382")==0)then
		LuaSay("л��蹣��������֪�����ǻСŮ��˼�����У���������@3��ʦ��ͽ@0�ڵ�ס��ȥ·")
		LuaSay(LuaQueryStr("name").."���޷�����С����������������գ�ɱ@3��ʦ��ͽ@0��Ƭ�ײ���")
		LuaSay("л��蹣���л�����������Ǿ�ȥ��ɱ@220����ʦ��ͽ@0�ɣ�ѧ����Ӳ����������°빦�������ܽύ�����������Ŷ@!")
		LuaSetTask("T382",1)
	        LuaSetTask("task_kill/mon_012/T382",1)
		AddLog("���а�̡�ѭ����",382)
		UpdateMenu()
		UpdateTopSay("��ɱ20����ʦ��ͽ")
		elseif(LuaQueryTask("T382")==1)then
		local a=LuaQueryTask("task_kill/mon_012/T382")-1
		if(a>=20)then
		LuaSay("л��蹣������������£�����֮������")
		AddMenuItem("�������","")
		AddMenuItem("��ȡ����","T382jl")
		else
		LuaSay("л��蹣����ɱ��@2"..a.."����ʦ��ͽ@0����ȥɱ@220����ʦ��ͽ@0��!")
		end
		end

		elseif(answer=="T382jl")then        ----------------------------382����
			local level= LuaQuery("level")
				if(level>80)then
		level=80
	end
			if(LuaQueryTask("T382")==1)then
				if(LuaQueryTask("task_kill/mon_012/T382")>=21)then
					local jinyan
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
					if(LuaQueryTask("T382_first")~=1)then
						jinyan=((level^2*20+22580)*1.4)
					else
						jinyan=(level^2*20+22580)
					end
					LuaDelTask("T382")
					DelLog("382")
					LuaDelTask("task_kill/mon_012/T382")
					LuaGive("coin",money,"T382")
					LuaAddJx("combat_exp",jinyan,"T382")
					if(LuaQueryTask("T382_a")==0) then
						LuaAddAchievementSchedule("Task_num",1)
						LuaSetTask("T382_a",99)
					end
				LuaSetTask("T382_first",1)
				UpdateMenu()
				end
			end

elseif(answer=="T355") then              ------------------------л��Ů�� 
		if(LuaQueryTask("T355")==1) then
		LuaSay("л��蹣�̫���ˣ��������ǿ��İ��֣��γ���ʦ���˲���@!")
	        AddMenuItem("@7�������","")
	        AddMenuItem("��ȡ����","T355jl")
		end 
		elseif(answer=="T355jl")then	            
		       if(LuaQueryTask("T355")==1)then
				LuaSetTask("T355",99) 
				LuaAddJx("combat_exp",76230,"T355") 
				LuaAddAchievementSchedule("Task_num",1)
				DelLog("355") 
				UpdateMenu() 
				end

-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>л�����ҵ��ʼ
elseif(answer=="T278")then
 if(LuaQueryTask("T278")==0) then
	LuaSay("л��蹣����˽�֪��л�����Ƿ������ң�������Ե���Ҿʹ�����һЩ����֮���ɡ�")
	LuaSay("л��蹣���Ƕ��Ҫʲô������")
	AddMenuItem("@7��ѡ��","")
	AddMenuItem("[��]��,ľ,��,��,Ƥ,ë","N12_ANSWER","")
	AddMenuItem("[��]���飬��ʯ�����","NO_12","")
	AddMenuItem("[��]��,ľ,��,��,��,ë","NO_12","")
	AddMenuItem("[��]��,��,ͭ,��,ǯ,��","NO_12","")
	end

       if(LuaQueryTask("T278") == 1 ) then
	LuaSay("л��蹣���ζ�װ������ǿ����")
	AddMenuItem("@7��ѡ��","")
	AddMenuItem("[��]���̻�ƴ�����ǿ��","NO_22","")
	AddMenuItem("[��]ɱ�ֽ���ǿ��","NO_22","")
	AddMenuItem("[��]��������ǿ��","NO_22","")
	AddMenuItem("[��]��ǿ��ʯ����ǿ��","N22_ANSWER","")
	end

	if(LuaQueryTask("T278") == 2 ) then
	LuaSay("л��蹣�ǿ����Ҫʲô��")
	AddMenuItem("@7��ѡ��","")
	AddMenuItem("[��]���ľ","NO_32","")
	AddMenuItem("[��]˫����","NO_32","")
	AddMenuItem("[��]ǿ��ʯ","N32_ANSWER","")
	AddMenuItem("[��]��֦","NO_32","")
	end

	if(LuaQueryTask("T278") == 3 ) then
	LuaSay("л��蹣���ζ�װ�����в�⣿")
	AddMenuItem("@7��ѡ��","")
	AddMenuItem("[��]���������","NO_42","")
	AddMenuItem("[��]�û��գ�������ˮ��","NO_42","")
	AddMenuItem("[��]��ʯͷ��","NO_42","")
	AddMenuItem("[��]�ò������в��","N42_ANSWER","")
	end

	elseif(answer=="NO_12") then					  
	LuaSetTask("T278",0)
	  LuaSay("л��蹣�����ɣ���ô�򵥵�����Ҳ��������ٴ�")

	elseif(answer=="N12_ANSWER") then
		if(LuaQueryTask("T278")<1) then
		LuaSetTask("T278",1)
		LuaAddJx("combat_exp",6000,"T278")
		LuaSay("л��蹣���ô�򵥵�����������Ҳûʲôϡ��ģ���������")
		DoTalk("T278")
		end
	elseif(answer=="NO_22") then					  
	 LuaSetTask("T278",1)
	 LuaSay("л��蹣������ˣ������ٴ�")

	elseif(answer=="N22_ANSWER") then
		if(LuaQueryTask("T278")<2) then
		 LuaSetTask("T278",2)
		LuaAddJx("combat_exp",6000,"T278")
		LuaSay("л��蹣������㻹���������ӵ����������")
		DoTalk("T278")
		end

	elseif(answer=="NO_32") then					 
	 LuaSetTask("T278",2)
	  LuaSay("л��蹣��������ȷʵ��һ���ѶȰ��������������ѡ��")

	elseif(answer=="N32_ANSWER") then
		if(LuaQueryTask("T278")<3) then
		LuaSetTask("T278",3)
		LuaAddJx("combat_exp",6000,"T278")
		LuaSay("л��蹣������Ǵ����������Ҳ֪����")
		DoTalk("T278")
		end

	elseif(answer=="NO_42") then						 
		 LuaSetTask("T278",3)
		 LuaSay("л��蹣��������ȷʵ�����ѶȰ��������������ѡ��")

	elseif(answer=="N42_ANSWER") then
		if(LuaQueryTask("T278")<99) then
		 LuaSetTask("T278",99)
		 LuaSay("л��蹣�������̫�����ˣ���Ȼȫ����֪����")
		 LuaGive("coin",1000,"T278")
		 LuaAddJx("combat_exp",72000,"T278")
		 UpdateMenu()
		 end
elseif(answer=="Tsnpc_34")then
	if(LuaQueryTask("Tsnpc_34")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("л��蹣����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_34",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_34")==2)then
		LuaSay("л��蹣����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_34")then
	if(LuaQueryTask("Tenpc_34")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("л��蹣��ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_34",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_34")==2)then
		LuaSay("л��蹣����Ѿ������ˣ����ȥ��ȡ������")
	end

end
LuaSendMenu()
return 1
end
