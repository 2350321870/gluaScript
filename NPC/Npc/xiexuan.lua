NPCINFO = {
serial="51" ,
base_name="xiexuan",
icon=2526,
NpcMove=2526,
name="л��" ,
iconaddr=1 ,
butt="5|5|58" ,
name_color="CEFFCE" ,
lastsay="��е�ǰ����Ӧ����ɱ��",
LuaType=1,
}
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local level= LuaQuery("level")
	local Tbprw2=LuaQueryTask("Tbprw2")
	AddTopSayMenuItem("@7�����б�","")

	if(LuaQueryTask("T400") == 0 and LuaQueryTask("T404") == 99)then
	AddTopSayMenuItem("л���Ŀ��顾���顿","T400")
	havetask =1
	end
	--[[if(LuaQueryTask("T401") == 0 and LuaQueryTask("T400") == 99)then  ---��������ʱ���Σ���Ϊ�漰���ı�����������������̫�࣬�����Ҫ������ע��ɽ������б�
	AddTopSayMenuItem("л���Ŀ���2�����顿","T401")
	havetask =1
	end]]
	if(LuaQueryTask("T406") == 0 and level>=21 and level<=25)then
	AddTopSayMenuItem("����֮ʦ��ѭ����","T406")
	havetask =1
	end
--	if(LuaQueryTask("T402") == 0 and level>=22)then
--	AddTopSayMenuItem("���������顿","T402")
--	havetask =1
--	end
	if(LuaQueryTask("T403") == 0 and level>=24 and LuaQueryTask("T404") == 99)then
	AddTopSayMenuItem("ǰ�����顾���顿","T403")
	havetask =1
	end
	if(LuaQueryTask("T404") == 0 and LuaQuery("level") >= 23)then
	AddTopSayMenuItem("��Ȩ���ա����顿","T404")
	havetask =1
	end
	if(LuaQueryTask("T405") == 0 and LuaQuery("level") >= 25 and LuaQueryTask("T403") ==99)then
	AddTopSayMenuItem("Э�������顿","T405")
	havetask =1
	end
	-----------------------------------------------------------------------------
	if(LuaQueryTask("T406") == 1)then
	AddTopSayMenuItem("@2����֮ʦ��ѭ����","T406")
	havetask =4
	end	
	if(LuaQueryTask("T400") == 1)then
	AddTopSayMenuItem("@2л���Ŀ��顾���顿","T400")
	havetask =4
	end
	--[[if(LuaQueryTask("T401") == 1)then
	AddTopSayMenuItem("@2л���Ŀ���2�����顿","T401")
	havetask =4
	end]]
	------------------------------------------------------------------------------
	if((LuaQueryTask("Tsnpc_36")==1 or LuaQueryTask("Tsnpc_36")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_36")
		havetask=2
	end
	if((LuaQueryTask("Tenpc_36")==1 or LuaQueryTask("Tenpc_36")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_36")
		havetask=2
	end
	if(LuaQueryTask("T852") == 1)then
	AddTopSayMenuItem("@2ǰ�������顿","T852")
	havetask =2
	end

	if(LuaQueryTask("T402") == 1 or LuaQueryTask("T402") == 2 or LuaQueryTask("T402") == 3)then
	AddTopSayMenuItem("@2���������顿","T402")
	if(LuaQueryTask("T402")==3) then
	havetask =2
	end
	end
	if(LuaQueryTask("T403") == 1)then
	AddTopSayMenuItem("@2ǰ�����顾���顿","T403")
	end
	if(LuaQueryTask("T442") == 1)then
	AddTopSayMenuItem("@2�㱨���顾���顿","T442")
	havetask =2
	end
	if(LuaQueryTask("T404") == 1 or LuaQueryTask("T404") == 2 or LuaQueryTask("T404") == 3)then
	AddTopSayMenuItem("@2��Ȩ���ա����顿","T404")
	if(LuaQueryTask("T404")==3) then
	havetask =2
	end
	end

	if(LuaQueryTask("T123")==1) then
	AddTopSayMenuItem("@2������Ӫ�����顿","T123")
	havetask =2
	end
	if(LuaQueryTask("T405") == 1)then
	AddTopSayMenuItem("@2Э�������顿","T405")
	end
	if(LuaQueryTask("Tbprw2")==1) then
		AddTopSayMenuItem("@2ǿʢ֮�������顿","Tbprw2")
		havetask=2
	end
	if(LuaQueryTask("Tbprw8")==1) then
		AddTopSayMenuItem("@2�������ʡ�ÿ�ա�","Tbprw8")
		havetask=2
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
	LuaSay("л������ӭ��ĵ���������Ҫ��������ڶ����꣬�γ��е�ǰ��")
elseif(answer=="T852" )then                  --------ǰ��
	 if(LuaQueryTask("T852")==1) then
		if (LuaItemCount("o_mission363")>=1)then
      			LuaSay("л��������л���ױ�����")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T852jl")
		end
	end

	elseif(answer=="T852jl")then
	if (LuaItemCount("o_mission363")>=1)then
		LuaSetTask("T852",99)
     		LuaAddJx("combat_exp",139000,"T852")
		LuaAddAchievementSchedule("Task_num",1)
		DelItem("o_mission363",1)
		DelLog("852")
		UpdateMenu()
		end
elseif(answer=="T400")then       -----------------------------  л���Ŀ��� 
	if(LuaQueryTask("T400") == 0) then
		LuaSay("л�����������д���@3л��@0Ϊ��Ϊ��ȴ�����ݺ�����Ȼ�����������ң������Ҽ���������֣�ȥ@4������Ӫ@0����@225����������@0��")
		LuaSay("л�������ɱ�ֲ����й���Ķ��⾭��ӳɣ����ܽύ������Ŷ�������ɴ������ж���ľ��齱����")
		LuaSay("л�������ֵܣ���ͳһ@!")
		LuaSay("��ܰ��ʾ������������������в��־���ӳ�@!")
		LuaSetTask("T400",1)
		LuaSetTask("task_kill/mon_016/T400",1)
		UpdateTopSay("����25����������")
		AddLog("л���Ŀ��顾���顿",400)
		UpdateMenu()
	elseif(LuaQueryTask("T400")==1) then
		if(LuaQueryTask("task_kill/mon_016/T400")>=26) then
		LuaSay("л����СӢ�����Ǻñ��죡")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T400jl")
		else
		LuaSay("л�����㻹ûɱ��25��@2��������@0��")
                UpdateTopSay("ɱ��25������������������")
		end
	end
	elseif(answer=="T400jl")then
		if(LuaQueryTask("T400")==1) then
		if(LuaQueryTask("task_kill/mon_016/T400")>=26) then
			if(TeamCount()>=2)then
				LuaAddJx("combat_exp",224000,"T400")
			else
				LuaAddJx("combat_exp",204000,"T400")
			end
			if(LuaRandom(10)==1)then
				LuaGive("e_earring002",1,2,"T400")
			else
				LuaGive("e_earring002",1,1,"T400")
			end
			LuaAddAchievementSchedule("Task_num",1)
			LuaDelTask("task_kill/mon_016/T400")
			LuaGive("coin",2000,"T400")
			DelLog("400")
			LuaSetTask("T400",99)
			UpdateMenu()
			end
                end

--[[elseif(answer=="T401")then       -----------------------------  л���Ŀ��� 2 ��������ʱ���Σ���Ϊ�漰���ı�����������������̫��
	if(LuaQueryTask("T401") == 0) then
		LuaSay("л����СӢ�۱����ǿ��ȥ@4������Ӫ@0����@225����������@0��")
		LuaSetTask("T401",1)
		LuaSetTask("task_kill/mon_017/T401",1)
		UpdateTopSay("����25����������")
		AddLog("л���Ŀ���2�����顿",401)
		UpdateMenu()
	elseif(LuaQueryTask("T401")==1) then
		if(LuaQueryTask("task_kill/mon_017/T401")>=26) then
		LuaSay("л����СӢ�����Ǻñ��죡")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T401jl")
		else
		LuaSay("л�����㻹ûɱ��25��@2��������@0��")
                UpdateTopSay("ɱ��25������������������")
		end
	end
	elseif(answer=="T401jl")then
		if(LuaQueryTask("T401")==1) then
		if(LuaQueryTask("task_kill/mon_017/T401")>=26) then
		LuaAddJx("combat_exp",204000,"T401")
		LuaAddAchievementSchedule("Task_num",1)
		LuaDelTask("task_kill/mon_017/T401")
		DelLog("401")
		LuaSetTask("T401",99)
		UpdateMenu()
		end
                end]]
 
elseif(answer=="T406")then       -----------------------------  ����֮ʦ
	if(LuaQueryTask("T406") == 0) then
		LuaSay("л�����ұ�����ʿû��һ��̰�������ģ�����������ű�������������Σ�")
		LuaSay("л�������@225����������@0�������ң��ú�����һ���ұ�����ʿ�Ŀ��°ɣ�������")	
		LuaSetTask("T406",1)
		LuaSetTask("task_kill/mon_017/T406",1)
		UpdateTopSay("����25����������")
		AddLog("����֮ʦ��ѭ����",406)
		UpdateMenu()
	elseif(LuaQueryTask("T406")==1) then
		if(LuaQueryTask("task_kill/mon_017/T406")>=26) then
		LuaSay("л����СӢ�����Ǻñ��죡�ٽ������ɡ�")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T406jl")
		else
		LuaSay("л�����㻹ûɱ��25��@2��������@0��������25�����������������ҡ�")
                UpdateTopSay("ɱ��25������������������")
		end
	end
	elseif(answer=="T406jl")then
		local level= LuaQuery("level")
			if(level>80)then
		level=80
	end
		if(LuaQueryTask("T406")==1) then
		if(LuaQueryTask("task_kill/mon_017/T406")>=26) then
		local money
		if(LuaQuery("level")<20)then
			money=200
		elseif(LuaQuery("level")<30)then
			money=300
		elseif(LuaQuery("level")<40)then
			money=400
		elseif(LuaQuery("level")<40)then
			money=500
		elseif(LuaQuery("level")<100)then
			money=600
		end
		local jingyan=(31824+level^2*20)
		LuaAddJx("combat_exp",jingyan,"T406")
		LuaGive("coin",money,"T406")
		if(LuaQueryTask("T406_a")==0) then
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T406_a",99)
		end
		LuaDelTask("task_kill/mon_017/T406")
		DelLog("406")
		LuaDelTask("T406")
		UpdateMenu()
		end
                end		

elseif(answer=="T402")then       -----------------------------  ����
	if(LuaQueryTask("T402") == 0) then
		LuaSay("л����СӢ�۱�����ߣ����ǻ�ԶԶ������ȥ@3����ʹ��@0��@3��վС��@0���ﱨ����")
		LuaSetTask("T402",1)
		UpdateTopSay("ȥ����ʹ�ߺ���վС�����ﱨ��")
		AddLog("���������顿",402)
		UpdateMenu()
		UpdateNPCMenu("pk")
	elseif(LuaQueryTask("T402")==1) then
		LuaSay("л������ȥ@3����ʹ��@0���ﱨ������ȥ@3��վС��@0���ﱨ�������Ƕ���@4������Ӫ@0��")
	elseif(LuaQueryTask("T402")==2) then
		LuaSay("л����ȥ@3��վС��@0���ﱨ��������@4������Ӫ@0��")
	elseif(LuaQueryTask("T402")==3) then
		LuaSay("л����æ����Щ���һ��б������Ҫ������")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T402jl")
	end 
	elseif(answer=="T402jl")then
		if(LuaQueryTask("T402")==3) then
			LuaAddJx("combat_exp",176000,"T402")
			if(LuaRandom(5)==1)then --22����
				LuaGive("e_pants008",1,2,"T402")
			else
				LuaGive("e_pants008",1,1,"T402")
			end
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T402",99)
			DelLog("402")
			UpdateMenu()
			UpdateNPCMenu("yizhanxiaoli")
                end
                
elseif(answer=="T403")then       -----------------------------  ǰ������ 
	if(LuaQueryTask("T403") == 0) then
		LuaSay("л����ǰ�����鲻֪��Σ��ͷ�СӢ��ȥ������@4��Ӫǰ��@0��@3л��@0��")
		LuaSetTask("T403",1)
		UpdateTopSay("ȥ��Ӫǰ��л������")
		AddLog("ǰ�����顾���顿",403)
		UpdateMenu()
	elseif(LuaQueryTask("T403")==1) then
		LuaSay("л������ȥ��@4��Ӫǰ��@0��@3л��@0��!")
	end


elseif(answer=="T442")then       -----------------------------  �㱨����
	if(LuaQueryTask("T442") == 1) then
		LuaSay(""..LuaQueryStr("name").."��@3л������@0���������㱨��ǰ����ʿһƬ���ǣ�")
		LuaSay("л����������ã�СӢ�۹�Ȼ�����鴫����ȫ��ʵ�����ֱ�������")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T442jl")
	end
	elseif(answer=="T442jl")then
		if(LuaQueryTask("T442")==1) then
		LuaAddJx("combat_exp",216000,"T442")
		LuaAddAchievementSchedule("Task_num",1)
		DelLog("442")
		LuaSetTask("T442",99)
		UpdateMenu()
                end
                
                
elseif(answer=="T404")then       -----------------------------  ��Ȩ����
	if(LuaQueryTask("T404") == 0) then
		LuaSay("л����������@3˾�����@0�ȼ鳼����һ�������������ܵоͲ����ˣ���ȥ@4������Ӫ@0���ҵ�@2ľ��@0��ȡ�������@2������ȯ@0��")
		LuaSay("л����ȡ�������@2������ȯ@0����@3˾�����@0������������ʲô�����ˣ�")
		LuaSetTask("T404",1)
		UpdateTopSay("�ҵ�ľ��ȡ��������ȯ")
		AddLog("��Ȩ���ա����顿",404)
		UpdateMenu()
		UpdateNPCMenu("muxiang02")
	elseif(LuaQueryTask("T404")==1) then
		LuaSay("л��������@2������ȯ@0��@2ľ��@0��@4������Ӫ@0��!")
	elseif(LuaQueryTask("T404")==2) then
		LuaSay("л������@2������ȯ@0��@4�����ǹ�����@0��@3˾�����@0����")
	elseif(LuaQueryTask("T404")==3) then
		LuaSay("л����������ã�ϣ��СӢ�������ջ�����һ��̫ƽ��")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T404jl")
	end
	elseif(answer=="T404jl")then
	if(LuaQueryTask("T404")==3) then
		LuaAddJx("combat_exp",184000,"T404")
		LuaAddAchievementSchedule("Task_num",1)
		if(LuaRandom(10)==1)then --23ͷ��
			LuaGive("e_head012",1,2,"T373")
		else
			LuaGive("e_head012",1,1,"T373")
		end
		DelLog("404")
		LuaSetTask("T404",99)
		UpdateMenu()
	end
                
elseif(answer=="T405")then       -----------------------------  Э�� 
	if(LuaQueryTask("T405") == 0) then
		LuaSay("л����������@3����֮@0�Ѿ�Эͬ@3��ǫ@0һ��ǰ��@4��ˮ֮��@0����ͽ@3����@0��ͷ���ͷ�СӢ��ǰ��@4��ˮ֮��@0ȥ����@3����֮@0��")
		LuaSay("л�����Ӵ�һֱ�����ߣ�ͨ��@4��Ӫǰ��@0���͵���@4��ˮ֮��@0�ˡ�")
		LuaSetTask("T405",1)
		UpdateTopSay("ȥ��ˮ֮����������֮")
		AddLog("Э�������顿",405)
		UpdateMenu()
	elseif(LuaQueryTask("T405")==1) then
		LuaSay("л������ȥ��@4��ˮ֮��@0��@3����֮@0��!")
		LuaSay("л�����Ӵ�һֱ�����ߣ�ͨ��@4��Ӫǰ��@0���͵���@4��ˮ֮��@0�ˡ�")
	end

elseif(answer=="T123") then              ------------------------������Ӫ 
		if(LuaQueryTask("T123")==1) then
			LuaSay("л���������һ���һ�������Ҫ�Ǹ������繫���㣬�һ��Ĵ�������ڹ���ƫ��һ�硣")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T123jl")
		end 
		elseif(answer=="T123jl")then	            
			if(LuaQueryTask("T123")==1)then
				LuaSetTask("T123",99) 
				LuaAddJx("combat_exp",139000,"T123") 
				if(LuaRandom(5)==1)then--22�·�
					LuaGive("e_clothes008",1,2,"T123")
				else
					LuaGive("e_clothes008",1,1,"T123")
				end
				LuaAddAchievementSchedule("Task_num",1)
				DelLog("123") 
				UpdateMenu() 
			end

elseif(answer=="Tbprw2") then      --------------------------ǿʢ֮��
	if(LuaQueryTask("Tbprw2")==1 and LuaQueryTask("Tbprw2B")==0) then
		LuaSay("л�������ɣ���Ҫ����@3��Ǯ@0��")
		LuaSay("л����@3��Ǯ@0����ͨ��@3�������񣬰�ս����ֵ�ȸ�������@0��ȡ@3��Ǯ@0��������ǿ�Լ���")
		LuaSetTask("Tbprw2B",99)      -------��־�����
		UpdateMenu()
	elseif(LuaQueryTask("Tbprw2A")==0 and LuaQueryTask("Tbprw2B")==99) then
		LuaSay("л����Ҳ����˵�Ļ�����ȫ�棬����ȥ����@4��Դ��@0��@3Ƚ��@0�ɡ�")
	elseif(LuaQueryTask("Tbprw2A")==99 and LuaQueryTask("Tbprw2B")==99) then
		LuaSay("л����ȥ�ظ�@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0�ɡ�")
	end

elseif(answer=="Tbprw8") then
	if(LuaQueryStrTask("Tbprw8day")==GetCurrentDay())then
		if(LuaQueryTask("Tbprw8")==1 and LuaQueryTask("Tbprw8A")==0) then
			LuaSay(""..LuaQueryStr("name").."��������ǰ������@3ս������@0��")
			LuaSay("л������лӢ�ۣ���������ʱ��")
			LuaSetTask("Tbprw8A",1)
			DelItem("o_mission401",1)
			UpdateMenu()
		end
		if(LuaQueryTask("Tbprw8")==1 and LuaQueryTask("Tbprw8A")==1 and  LuaQueryTask("Tbprw8B")==0) then
			LuaSay("л������ȥ��@4��Ӫǰ��@0��@3л��@0��@3ս������@0ȥ�ɣ�")
		elseif(LuaQueryTask("Tbprw8")==1 and LuaQueryTask("Tbprw8A")==1 and  LuaQueryTask("Tbprw8B")==1) then
			LuaSay("л������ȥ@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0�ظ��ɣ�")
		end
	else
		LuaSay("л�����µ�һ�죬�µĿ�ʼ�������������ǰ��@3�������ʡ�ÿ�ա�û���@0�������Զ�ɾ����")
		LuaSay("л�������������ܵ�@4����@0��@3����@0��@4������կ@0��@3�����ܹ�@0������@3�������ʡ�ÿ�ա�@0�����ˣ�")
		LuaSetTask("Tbprw8day",GetCurrentDay()) 
		LuaSetTask("Tbprw8",0)
		LuaSetTask("Tbprw8A",0)
		LuaSetTask("Tbprw8B",0)
		DelItem("o_mission401",LuaItemCount("o_mission401"))
		UpdateMenu()
end



elseif(answer=="Tsnpc_36")then
	if(LuaQueryTask("Tsnpc_36")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("����֮�����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_36",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_36")==2)then
		LuaSay("����֮�����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_36")then
	if(LuaQueryTask("Tenpc_36")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("����֮���ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_36",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_36")==2)then
		LuaSay("����֮�����Ѿ������ˣ����ȥ��ȡ������")
	end


end
LuaSendMenu()
return 1
end
