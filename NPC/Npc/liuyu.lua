NPCINFO = { 
serial="38" ,
base_name="liuyu",
icon=2529,
NpcMove=2529,
name="��ԣ" ,
iconaddr=1 ,
butt="10|10|63" ,
name_color="CEFFCE" ,
lastsay="15�����¿���ȥ������������" ,
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
	
	if(LuaQueryTask("T263")==1) then
		AddTopSayMenuItem("@2����Ǳ�������顿","T263") 
		havetask2 =1
		end
	if(LuaQueryTask("T267")==1)then
		AddTopSayMenuItem("@2�ͳ����塾���顿","T267") 
	end 
	--[[if(LuaQueryTask("T275")==1) then
		AddTopSayMenuItem("@2��������ѭ����","T275") 
		if(LuaItemStatusNormalCount("o_material_47") >= 1 and LuaItemStatusNormalCount("o_material_38") >= 1 ) then
			havetask2 =1
		else
			havetask4 =1
		end
	end]]
	if((LuaQueryTask("Tsnpc_25")==1 or LuaQueryTask("Tsnpc_25")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_25")
		if(LuaQueryTask("Tsnpc_25")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_25")==1 or LuaQueryTask("Tenpc_25")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_25")
		if(LuaQueryTask("Tenpc_25")==1)then
			havetask2=1
		end
	end
		
	if(LuaQueryTask("Txinchun") == 1 or LuaQueryTask("Txinchun") == 2) then
		AddTopSayMenuItem("@2�����´�@0","Txinchun")
		havetask2 =1
	end
--����Ϊ��ɫ�ʺŲ���
	if(LuaQueryTask("T276")==1) then
		AddTopSayMenuItem("@2��ԣ�Ŀ��顾���顿","T276") 
		havetask4 =1
	end
--����Ϊ��ɫ�ʺŲ���
	--[[if(LuaQueryTask("T275")==0 and level>12 and level<17) then
		AddTopSayMenuItem("��������ѭ����","T275") 
		havetask1 =1
		end]]
	if(LuaQueryTask("T276")==0 and level>=11 and LuaQueryTask("T263")==99) then
		AddTopSayMenuItem("��ԣ�Ŀ��顾���顿","T276") 
		havetask1 =1
		end

	if(LuaQueryTask("T267")==0 and LuaQueryTask("T276")==99 and LuaQueryTask("T276")>0)  then
		AddTopSayMenuItem("�ͳ����塾���顿","T267")
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
	LuaSay("��ԣ�������15�����£�����ȥ������������Ŷ��")
elseif(answer=="Txl_jkdj")then
	AutoGoToNpc("@7�Ƿ�@0Ѱ·��@4��������","lu_jkcn")
elseif(answer=="Tcs_hc")then
	ChangeMap("lu_jkdj",250,221)

elseif(answer=="T111") then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
        if(LuaQueryTask("T111")==0) then                           --------��ͨ��ֲ�ͨ��̽������ʵ�ֱ���ķ��ֻ�� 
		if(LuaFreeBag()>0) then
			LuaSay("��ԣ�������Ĵ���ϵ�����@2����@0����������һ����ֵ���ǵ�@2̽����@0��ֻҪ����ʹ�ã��Ϳ���@2֪���������ޱ���@0��")
			LuaSay("��ԣ����˵����3���Ʊ�@2�ֱ�@0����@3���������������ú�ɫ������@0������������õĻ����������ڵ���Ʒװ��Ŷ��@!")
			LuaSay("��ԣ����@4��������@0��ÿ��@2����@0����@2�����е�̽����@0�ú�̽̽�ɡ�����@23������@0��͵���������ȡ������@!")
			LuaGive("o_mission013",1)
			LuaSetTask("T111",1)
			AddLog("������ء����顿",111)
			UpdateMenu() 
		else
			LuaSay("��ʾ���㱳������������ձ���")
		end
	elseif(LuaQueryTask("T111")==1) then
		if(LuaItemCount("o_mission016") >= 3)then
			LuaSetTask("T111",99)
			LuaSetTask("T111A",0)
			LuaSetTask("T111B",0)
			LuaSetTask("T111C",0)
			DelItem("o_mission013",1)
			DelItem("o_mission016",3)
			LuaSay("��ԣ����Ȼ��������������Ȼ��Ҳ������ҵ�ŵ�ԡ�")
			LuaGive("coin",2000,"T111")
			local jingyan=20000+level^2*40+level*4000        
			LuaAddJx("combat_exp",jingyan,"T111")
			DelLog("111")
			UpdateMenu() 
		else
			LuaSay("��ԣ���㻹û���ڵ�@23������@0�ء����Ǿ��ڽ���������ĳ3�ú�ɫ�����¡�")
		end
        end 


          
---------------------------------------------------------------------------------------�Ĳ�����



elseif(answer=="T263") then              ----------------------����Ǳ��
		if(LuaQueryTask("T263")==1) then  		
			LuaSay(""..LuaQueryStr("name").."����������л��ǰ�������ҵ��ˣ����ص�Ϊ������˺���@!")
			LuaSay("��ԣ�������Ѿ��н��������Ѿ��ǽ���")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T263jl")

		end

		elseif(answer=="T263jl")then	            
		       if(LuaQueryTask("T263")==1)then
					LuaSetTask("T263",99) 
					LuaAddJx("combat_exp",25000,"T263")
					LuaAddAchievementSchedule("Task_num",1)
					DelLog("263") 
					UpdateMenu() 
					UpdateNPCMenu("xiean")
					AddMenuItem("@7��ȡ������","")
					AddMenuItem("��ԣ�Ŀ��顾���顿","T276") 
			end

elseif(answer=="T275") then                    -------------------- ������
	local shijiancha=GetCurrentTime()-LuaQueryTask("275time")
	if(shijiancha>300) then
		if(LuaQueryTask("T275") == 0 ) then
		        LuaSay(""..LuaQueryStr("name").."����˵���������ڳ������������չ�@21�����1��ľ@0����֪�����Ǽ١�")
		        LuaSay("��ԣ��������Ҳ��ˬ��֮�ˣ�����Ҳ������������ȷʵ���ڴ����չ�@21�����1��ľ@0�ء�")
		        LuaSay("��ԣ����ÿ�ռ�@21��1����@0��@21��1��ľ@0�Ϳ��Ե���������ȡ������")
			LuaSay("��ԣ����ʯ�����ڿ󳡲ɼ��õ���ľ�����ڲɼ����ɼ��õ��������������ƴ����룬�ɼ�����ҩƷ���˴����롣")
			LuaSetTask("T275",1)
			UpdateTopSay("�ռ�1��1�����1��1��ľ")
			AddLog("��������ѭ����",275)
			UpdateMenu()
		elseif(LuaQueryTask("T275") == 1 ) then
		   if(LuaItemStatusNormalCount("o_material_47") >= 1 and LuaItemStatusNormalCount("o_material_38") >= 1 ) then
				LuaSay(""..LuaQueryStr("name").."���������ռ�����@21��1����@0��@21��1��ľ@0��������������������@!")
				LuaSay("��ԣ������һ���ô��ɷ����ʧ�������ء���ȥ�ɣ������ٽ�������")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T275jl")
			else
				LuaSay("��ԣ�����¼���ˬ��֮�ˣ�Ϊ��û���ռ���@21��1����@0��@21��1��ľ@0�������ѵ���ϷŪ���£�")
				LuaSay("��ԣ����ʯ�����ڿ󳡲ɼ��õ���ľ�����ڲɼ����ɼ��õ��������������ƴ����룬�ɼ�����ҩƷ���˴����롣")
				UpdateTopSay("�ռ�1��1�����1��1��ľ")
			end
		end
	else
		LuaSay("��ԣ����������Ҫ���5���Ӻ���ܼ�����ȡ�������ĵȴ���@!")
	end
		    elseif(answer=="T275jl")then
			local level= LuaQuery("level")
				if(level>80)then
					level=80
				end
		         if(LuaQueryTask("T275")==1) then
				if(LuaItemStatusNormalCount("o_material_47") >= 1 and LuaItemStatusNormalCount("o_material_38") >= 1 ) then
				 LuaDelTask("T275")
				 DelItem("o_material_47",1)
				 DelItem("o_material_38",1)
				 local jingyan=(31000+level^2*20)
				 LuaAddJx("combat_exp",jingyan,"T275")
				 LuaGive("coin",1000,"T275")
				  if(LuaQueryTask("T275_a")==0) then
				  LuaAddAchievementSchedule("Task_num",1)
				  LuaSetTask("T275_a",99)
				  end
				 DelLog("275")
				 time=GetCurrentTime()
				 LuaSetTask("275time",time)
				 UpdateMenu()
				 end
				 end

elseif(answer=="T276") then         ------------------------��ԣ�Ŀ���
	if(LuaQueryTask("T276") == 0 ) then
		LuaSay("��ԣ��������������Ǻ��������������������ӹ�Ҳ����Ӣ�ۣ����������ײе�����������ġ�")
		LuaSay(""..LuaQueryStr("name").."���������Բ��ӣ������˵�����֮�𣬵���һ�ŷ���ɱ��֮�ı�����η�塣")
		LuaSay("��ԣ��ֻ˵�������ٰ�ʽ��������ȥ@4��������@0����ֻ@2���@0��ȡ��@210�����֮��@0�����ң��Դ�֤����������ɡ�")
		LuaSetTask("T276",1)
		UpdateTopSay("ɱ����ռ�10�����֮��")
		AddLog("��ԣ�Ŀ��顾���顿",276)
		UpdateMenu()
		--if(LuaQueryTask("T275")==99)then
			AddMenuItem("@7�Ƿ�@0Ѱ·��@4��������","")
			AddMenuItem("�Զ�Ѱ·����������","xl_jkdj")
		--end
	elseif(LuaQueryTask("T276") == 1 ) then
		if(LuaItemCount("o_mission003")>=10) then
			LuaSay("��ԣ���ã����Ĳ������������������@3ʹ�ü��ܺͼ��ܵ�@0�ɡ�")
			if(LuaQueryStr("MobieType") ~= "S20")then
				LuaSay("��ԣ�����@3�˵�@0�ٵ��@3���ܼ�@0����@2���ܽ���@0�����ѡ�м��ܣ���ʱ�ڵ���������@3����һ����ݼ�С��@0�Ϳ���@2���ÿ�ݼ�@0���ٴε��@3�ü���@0�ͻ����@2���ܲ���ѡ����������ȣ�@0��")
			else	
				LuaSay("��ԣ����@3ȷ����@0�ٰ�@34��@0����@2���ܽ���@0��ѡ�м��ܣ���ʱ��@31/3/7/9��@0�Ϳ���@2���ÿ�ݼ�@0����@3�м�ȷ�ϼ�@0����@2��������@0��")
			end
			LuaSay("��ԣ���˳����ܽ����@3����ݼ��Ϳ����ͷż���@0�ˡ��򵥰ɣ�@!")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T276jl")
		else
			LuaSay("��ԣ���㻹û�еõ��㹻��@2���֮��@0�أ�ȥ@4��������@0����@2���@0��ȡ��@210�����֮��@0�����ҡ�")
			LuaSay("��ԣ��@2������@0���Ϳ��Ե���@4��������@0�ˡ�")
			UpdateTopSay("ɱ����ռ�10�����֮��")
			--if(LuaQueryTask("T275")==99)then
				AddMenuItem("@7�Ƿ�@0Ѱ·��@4��������","")
				AddMenuItem("�Զ�Ѱ·����������","xl_jkdj")
			--end
		end
	end
	elseif(answer=="xl_jkdj")then
		AutoPathByTaskStep("T276",1)
	elseif(answer=="T276jl")then
		if(LuaQueryTask("T276")==1 and LuaItemCount("o_mission003")>=10) then
			--local a = LuaQueryItemID(3,"o_mission003")
			--SendCommand("call=�����ս����������������Ҫ����������һ��Ѫ�أ�û����Ѫ���½���30%����Ѫ�ػὫ��Ѫ���Զ�������|2|0|0|8|"..a.."")
			LuaSay("��ԣ�������ս����������������Ҫ����������һ��Ѫ�أ�ÿ����Ѫ���½���30%����Ѫ�ػὫ��Ѫ���Զ��������򿪱������ܹ��ҵ�Ѫ����Ŷ��")
			LuaSetTask("T276",99)
			DelLog("276")
			DelItem("o_mission003",LuaItemCount("o_mission003"))
			LuaGive("o_state065j",1,"T276")
			LuaAddJx("combat_exp",29700,"T276")
			LuaAddAchievementSchedule("Task_num",1)
			UpdateMenu()
		end

elseif(answer=="T277")then
	if(LuaQueryTask("T277")==0)then
	LuaSay("��ԣ����һ·�������������ս�������˽��ˡ��о����̣�����ʱʱ�ܵõ����˵����Ƶģ����»���Ҫ���Լ���")
	LuaSay("��ԣ�������ռ�@21ƿ��ɢ��1ƿ�ش�¶@0���������Ұɡ����û�еĻ�������ȥ@4��������@0��@3ҩƷ����@0�ǹ���")
	UpdateTopSay("ȥҩƷ���˴������ɢ�ش�¶")
	LuaSetTask("T277",1)
	AddLog("�˻����ơ����顿",277)
	UpdateMenu()
	elseif(LuaQueryTask("T277")==1)then
	  if(LuaItemCount("o_drug_hp1")<1 or LuaItemCount("o_drug_mp1")<1) then
	  LuaSay("��ԣ���㻹û�й��򵽽�ɢ��ش�¶��һƿŶ��ȥ@3ҩƷ����@0������@2��ɢ��ش�¶��һƿ@0�����ظ��ҡ�")
	  else
	  LuaSay("��ԣ���������úã�ҩ�����Ѹ�ٲ���Ѫ����������ʵ�˾Ӽ�����ɱ��Խ��֮�ر�����@!")
	  AddMenuItem("@7�������","")
	  AddMenuItem("��ȡ����","T277jl")
	  end
	  end
	elseif(answer=="T277jl")then
	if(LuaQueryTask("T277")==1) then
	if(LuaItemCount("o_drug_hp1")>=1 and LuaItemCount("o_drug_mp1")>=1) then
	LuaSetTask("T277",99)
	DelLog("277")
	LuaAddJx("combat_exp",29700,"T277")--����
	LuaAddAchievementSchedule("Task_num",1)
	UpdateMenu()
	end
	end


elseif(answer=="T267") then                 ----------------------------- �ͳ�����
		if(LuaQueryTask("T267") == 0 ) then
				LuaSay("��ԣ���������������Ҿ��������������ľ��䵽�����ء�@3����@0���˷�ּ������ʦ�����˲�֪����ˡ�")
				LuaSay("��ԣ���������������Ҫ���������ֽ���@4��������@0��@3����@0���м��мǡ�")
				LuaSetTask("T267",1)
				AddLog("�ͳ����塾���顿",267)
				UpdateMenu()
				AddMenuItem("@7�Ƿ�@0Ѱ·��@4����","")
				AddMenuItem("�Զ�Ѱ·������","xl_huanchong")	
		elseif(LuaQueryTask("T267") == 1 ) then
			LuaSay("��ԣ����ȥѰ��@4��������@0��@3����@0��")
			AddMenuItem("@7�Ƿ�@0Ѱ·��@4����","")
			AddMenuItem("�Զ�Ѱ·������","xl_huanchong")	
				
		end


elseif(answer=="xl_huanchong")then
	AutoPathByTaskStep("T267",1)


elseif(answer=="Tsnpc_25")then
	if(LuaQueryTask("Tsnpc_25")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("��ԣ�����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_25",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_25")==2)then
		LuaSay("��ԣ�����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_25")then
	if(LuaQueryTask("Tenpc_25")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ���������Ĺ��ף�ϣ�����ٽ�����")
		LuaSay("��ԣ���ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_25",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_25")==2)then
		LuaSay("��ԣ�����Ѿ������ˣ����ȥ��ȡ������")
	end







end
LuaSendMenu()
return 1
end