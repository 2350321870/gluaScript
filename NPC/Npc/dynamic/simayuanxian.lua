NPCINFO = {
serial= "29" ,
base_name="simayuanxian",
icon= 2530,
NpcMove=2530,
name= "˾��Ԫ��" , 
iconaddr=1,
butt="10|10|63",
name_color = "CEFFCE" , 
lastsay="����������Ϣ�ĵط�����Ů������һ������Ҳ",
LuaType=1,                            
}
function do_talk(answer)
if(answer=="ask") then
    havetask =0
    local T110= LuaQueryTask("T110")
    local T111= LuaQueryTask("T111")
    local level= LuaQuery("level")
    AddTopSayMenuItem("@7�����б�","")   

		if(LuaQueryTask("Ttaozhuang30jl")==0) then
		AddTopSayMenuItem("@325������װ����","Ttaozhuang30jl")
		else
		if(LuaQueryTask("Ttaozhuang30A")==0 or LuaQueryTask("Ttaozhuang30B")==0 or LuaQueryTask("Ttaozhuang30C")==0) then
		AddTopSayMenuItem("@330����װ����ָ��","Ttaozhuang30jl")
		end
		end
	if(LuaQueryTask("T112")==0 and LuaQueryTask("T114")==99)  then
		AddTopSayMenuItem("������𡾾��顿","T112")          
		havetask =1
	end 
--	if(LuaQueryTask("T114")==0 and level>=20) then
--		AddTopSayMenuItem("����ӵܡ����顿","T114")
--		havetask =1
--	end
	if(LuaQueryTask("T115")==0 and LuaQueryTask("T290")==99) then
		AddTopSayMenuItem("������С����顿","T115")
		havetask =1
	end
	if(LuaQueryTask("T299")==0 and level>=20)then
		AddTopSayMenuItem("�а����ء����顿","T299")
		havetask=1
	end

	if(LuaQueryTask("T385")==1)then
		if(LuaQueryTask("TfindNPC_8")==1 or LuaQueryTask("TfindNPC_8")==2)then
			AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
			havetask=2
		end
	elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_8")==98)then
		AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
	end
	

	
	if(LuaQueryTask("T115")==1) then
		AddTopSayMenuItem("@2������С����顿","T115")
		if(LuaQueryTask("T115A") == 99 and LuaQueryTask("T115B") == 99) then
		havetask =2
		end
	end
	if(LuaQueryTask("T114")==1) then
		AddTopSayMenuItem("@2����ӵܡ����顿","T114")
		if(LuaItemStatusNormalCount("o_mission020")>=1)then
		havetask =2
		end
	end
	if((LuaQueryTask("Tsnpc_13")==1 or LuaQueryTask("Tsnpc_13")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_13")
		if(LuaQueryTask("Tsnpc_13")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_13")==1 or LuaQueryTask("Tenpc_13")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_13")
		if(LuaQueryTask("Tenpc_13")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tsnpc_14")==1 or LuaQueryTask("Tsnpc_14")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_14")
		if(LuaQueryTask("Tsnpc_14")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_14")==1 or LuaQueryTask("Tenpc_14")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_14")
		if(LuaQueryTask("Tenpc_14")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T120")==1 and LuaQueryTask("T120A")<98) then
		AddTopSayMenuItem("@2���Ŀ��顾ÿ�ա�@0","T120A")
		havetask =2 
	end
	if(LuaQueryTask("pettask") ==5) then
		AddTopSayMenuItem("@2�ͻ�[ÿ��]","pettask")
		havetask=2
		end
	if(LuaQueryTask("T302")==10 and LuaQueryTask("T302J")==0) then
		AddTopSayMenuItem("@2ÿ����ʹ@0","T302J")
		havetask =2 
	end 
	if(LuaQueryTask("T112")==1)  then
		AddTopSayMenuItem("@2������𡾾��顿@0","T112")
		if(LuaQueryTask("T112A")==99) then
		havetask =2
		end
	end 
	if(LuaQueryTask("T290") ==2) then
		AddTopSayMenuItem("@2���ӳ��������顿@0","T290") 
		havetask =2
	end
	if(LuaQueryTask("T299")==1 or LuaQueryTask("T299")==2)then
		AddTopSayMenuItem("@2�а����ء����顿","T299")
		if(LuaQueryTask("T299")==2)then
		havetask=2
		end
	end
	if(havetask ==2)then
		AddTopSayMenuItem("����","liaotian","2")
	elseif(havetask ==1) then
		AddTopSayMenuItem("����","liaotian","1")
	else
		AddTopSayMenuItem("����","liaotian","0")
	end 
	return 1 
	    
elseif(answer=="liaotian") then
	LuaSay("˾��Ԫ�ԣ�����������Ϣ�ĵط�����Ů����������һ�����°���")
	if(LuaItemCount("o_fatescroll")>=1 and LuaQueryStr("gender")=="����")then
	LuaSay("@5������һ������@!��ֻҪ���������ﺰһ�䡰@0������Ů@5����Ȼ���@4�������@5��Ҳ���������ľ�ϲ��")--���
	end
elseif(answer=="pettask")then
	if(LuaQueryStrTask("pettaskday")~=GetCurrentDay())then
		LuaSetTask("ptnumber",0)
		LuaSetTask("pettaskday",GetCurrentDay())
	end
	if(LuaQueryTask("pettask") ==5) then
	LuaSay("˾��Ԫ��:�����,�������Сī��,��˵���������ſ�Ҳ�����ˡ�")
	LuaSetTask("pettask",6)
	LuaAddTask("ptnumber",1)
	DelItem("o_mission049",LuaItemCount("o_mission049"))
	LuaGive("o_food02",10,"pettask")
	UpdateMenu()
	end



elseif(answer=="T120A") then
	if(LuaQueryTask("T120A")==0) then
	LuaSay("˾��Ԫ�ԣ������Ͳ�������Щ��ν���������ŵ,��������,�κζ��������ܹ��ý�Ǯ�����ġ�")
	LuaSay("˾��Ԫ�ԣ�ֻҪ�������������,�ҾͿ��Ը���ܶ�Ľ�Ǯ��")
	LuaSay("˾��Ԫ�ԣ�@31000ͭ��@0,��Ը��������")
	AddMenuItem("����?","")
	AddMenuItem("����","YES1")
	AddMenuItem("������","NO1")
	end
    elseif(answer=="YES1") then
	if(LuaQueryTask("T120A")<98)then
	LuaGive("coin",1000,"T120")
	LuaSetTask("T120A",98)
	LuaSay("˾��Ԫ�ԣ�������»,�չ鳾��,������,���ֺα��߳���������·�أ�")
	DoTalk("1000")
	UpdateMenu()
	end
    elseif(answer=="NO1") then
	LuaSay("˾��Ԫ�ԣ�@35000ͭ��@0,��Ը��������")
	AddMenuItem("����?","")
	AddMenuItem("����","YES2","")
	AddMenuItem("������","NO2","")
    elseif(answer=="YES2") then
    if(LuaQueryTask("T120A")<98)then
	LuaGive("coin",5000,"T120")
	LuaSetTask("T120A",98)
	LuaSay("˾��Ԫ�ԣ�������»,�չ鳾��,������,���ֺα��߳���������·�أ�")
	DoTalk("5000")
	UpdateMenu()
	end
    elseif(answer=="NO2") then
	LuaSay("˾��Ԫ�ԣ��ҾͲ����Ž�Ǯ�������ܵ�,���һ��,@31Wͭ��@0,��Ը������������")
	AddMenuItem("����?","")
	AddMenuItem("����","YES3","")
	AddMenuItem("������","NO3","")
    elseif(answer=="YES3") then
    if(LuaQueryTask("T120A")<98)then
	LuaGive("coin",10000,"T120")
	LuaSetTask("T120A",98)
	LuaSay("˾��Ԫ�ԣ��վ����ǵ����˽�Ǯ��ǰ,������»,�չ鳾��,������,���ֺα��߳���������·�أ�")
	DoTalk("10000")
	UpdateMenu()
	end
    elseif(answer=="NO3") then
	LuaSay("˾��Ԫ�ԣ�����ʳ�Ų�����,���֪����ЩǮ�����Ҷ��ٸ������أ�")
	LuaSetTask("T120A",99)		
    elseif(answer=="1000" or answer=="5000" or answer=="10000")then--ѡǮ�Ĵ��һ��������
	local r1=LuaRandom(10)
	local r2=LuaRandom(10)
	local r3=LuaRandom(10)
	local r4=LuaRandom(10)
	if(r1<5)then
		LuaNotice(""..LuaQueryStr("name").."��ȻΪ��"..answer.."ͭ��������,���һ��������ɣ�")
		if(r2<3)then
			LuaNotice("�����������ص磺��ϲ�������ϳ����Ǻ�����˰�������!")
			LocalMsg("ĳС��:"..LuaQueryStr("name").."!���ΰ��,��ȥ�����������,Ȼ���������ɣ�")
			LocalMsg("л��Ի:�������ڵ������˰���")
		else
			if(r3<4)then
				LuaNotice("ĳС�������ص�:"..LuaQueryStr("name").."!���ΰ��,��ȥ�����������,Ȼ���������ɣ�")
				LocalMsg("�����������ص�:��ϲ�������ϳ����Ǻ�����˰�������!")
				LocalMsg("л��Ի:�������ڵ������˰���")
			else
				if(r4<6)then
				LuaNotice("л��Ի:�������ڵ������˰���")
				else
				LocalMsg("л��Ի:�������ڵ������˰���")
				end
				LocalMsg("ĳС��:"..LuaQueryStr("name").."!���ΰ��,��ȥ�����������,Ȼ���������ɣ�")
				LocalMsg("�����������ص�:��ϲ�������ϳ����Ǻ�����˰�������!")
			end
		end
	LuaShowNotify("��ʾ:�㱻������!")
	end
	LuaSay("˾��Ԫ��:�������»���@210%@0�Ļ��ʽ��������ϵ,�굱����Ϊ֮��")
	--if(LuaRandom(100)<10)then DisMarry() LuaShowNotify("��ʾ:���ɹ�!") end--�ݲ��ã��Ͼ�ֻ���Ż��˵�
	UpdateMenu()

elseif(answer=="T302J") then
	   LuaSay(""..LuaQueryStr("name").."������������Ҵ�������ż���")
       LuaSay("˾��Ԫ�ԣ���֪�������ļҵ�С�������д�����顣@!")
	   DelItem("o_mission076",1) 
	   LuaSetTask("T302J",99)
	   UpdateMenu()

elseif(answer=="T112") then                     ----------------�������
		if(LuaQueryTask("T112") == 0 ) then 
				LuaSay("˾��Ԫ�ԣ���˾�����������»��壬�Ҹ����ǵ���ة�ࡣ��Ц���ǣ���������Ȩ����Զ��������Ҫ��")
				LuaSay("˾��Ԫ�ԣ��Ҳ����ģ���Ҫ������ڣ�������һ��@2ҩ��@0�����������@4�����Ƕ���@0�����������С���ҡ�")
				if(LuaQueryStr("MobieType") ~= "S20")then
					LuaSay("˾��Ԫ�ԣ���@4�����Ƕ���@0�����@3�˵�@0���ٵ��@33������@0����@3���񱳰�@0�е��@2ҩ��@0�ٵ��@3ʹ��@0���ɡ�")
				else
					LuaSay("˾��Ԫ�ԣ���@4�����Ƕ���@0����@3�����@0���ٰ�@33����@0����@3���񱳰�@0�е��@2ҩ��@0�ٰ�@3ʹ��@0���ɡ�")
				end
				LuaSetTask("T112",1) 
				LuaGive("o_mission054",1)
				UpdateTopSay("��ҩ�����ڽ����Ƕ���")
				AddLog("������𡾾��顿",112) 
				UpdateMenu() 
		elseif(LuaQueryTask("T112")==1) then
			if(LuaQueryTask("T112A")==99) then
				LuaSay(""..LuaQueryStr("name").."������Ҳ�ǿ����˲Ű���������£���������֮��α���ˡ�")
				LuaSay("˾��Ԫ�ԣ��ҵ��²�����ܣ����Ǹ���Ľ�����")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T112jl")
			 else
			    LuaSay("˾��Ԫ�ԣ��㻹û�н�@2ҩ��@0����@4�����Ƕ���@0�أ���������ҡ�")
			 end
			end
		        elseif(answer=="T112jl")then
                if(LuaQueryTask("T112")==1) then
			if(LuaQueryTask("T112A")==99) then
				LuaSetTask("T112",99) 
				LuaAddJx("combat_exp",145000,"T112") 
				LuaAddAchievementSchedule("Task_num",1)
				DelLog("112") 
				UpdateMenu() 
				end
				end

elseif(answer=="T114") then
	if(LuaQueryTask("T114")==0)then
	LuaSay("˾��Ԫ�ԣ�����ս�ң���Щ�ɶ�ļ���ȫ��ӿ���Ϸ����ˣ�ռ��ռ䣬��Ҫ�˷ѹ�����ʳ��")
	LuaSay("˾��Ԫ�ԣ��������Լ�ʳ����@4������@0��@3����@0������@2����@0����@2һ����������@0�����Ұɣ�")
	AddLog("����ӵܡ����顿",114)
	LuaSetTask("T114",1)
	UpdateMenu()
	elseif(LuaQueryTask("T114")==1 and LuaItemStatusNormalCount("o_mission020")==0)then
	LuaSay("˾��Ԫ�ԣ��㻹û�е���@2һ����������@0���쵽@4������@0��@3����@0��@2����@0�ɣ�")
	elseif(LuaQueryTask("T114")==1 and LuaItemStatusNormalCount("o_mission020")>=1)then
	LuaSay("˾��Ԫ�ԣ��������ã��´ξͰ���Щ�������ⷢ�Ÿ���Щ����")
	LuaSay("@1��ܰ��ʾ�����Ѿ��ﵽ20��������ȥ@4������@0��@3ѱ��ʦ@0����ȡ��ѵ�@3���鱦��@0ʱ���ˣ�@!")
	AddMenuItem("@7�������","")
	AddMenuItem("��ȡ����","T114jl")
	end
	elseif(answer=="T114jl")then
	if(LuaQueryTask("T114")==1) then	 
	DelItem("o_mission020",1)
	DelLog("114")
 	LuaSetTask("T114",99)
	LuaAddJx("combat_exp",119000,"T114")
	LuaAddAchievementSchedule("Task_num",1)
	UpdateMenu()
	end


elseif(answer=="T290") then              ------------------------���ӳ��� 
		if(LuaQueryTask("T290")==2 ) then  
		LuaSay("˾��Ԫ�ԣ��ߣ�Ȩ��Ȩ�ƣ�����Ȩ���������Ĺ���ʲô������һ���һ�����������Ȩ�ƣ���ʱ������Ρ�")
	            AddMenuItem("@7�������","")
	            AddMenuItem("��ȡ����","T290jl")
		end 
		elseif(answer=="T290jl")then	            
		       if(LuaQueryTask("T290")==2)then
				LuaSetTask("T290",99) 
				LuaAddJx("combat_exp",119000,"T290")
				LuaAddAchievementSchedule("Task_num",1)
				DelLog("290") 
				UpdateMenu() 
				end

elseif(answer=="T115") then                    ------------������� 
		if(LuaQueryTask("T115") == 0) then
		LuaSay("˾��Ԫ�ԣ����ʱ�����죬����������Ҫһ��������ı��Ӣ��ȥ������������£����Ը�⣿��")
		LuaSay("˾��Ԫ�ԣ���һ����������������Ҹ���˾����Ӻ��¡��ڶ�����������ۣ����Ҵ����Ҹ���Ȩλ��")
		LuaSay("˾��Ԫ�ԣ����Ƕ��ڽ����Ĺ�����Ƚ�ҩ�������Ҹ�˾����Ӱɡ��ڴ���ĺ���Ϣ����")
		LuaSay(""..LuaQueryStr("name").."��˾����������������Ҫ���ң�����ұ���˾��Ԫ����С�ӡ�")
		LuaSetTask("T115",1) 
		LuaGive("o_mission010",1)
		AddLog("������С����顿",115)
		UpdateTopSay("����˾��Ԫ�����������")
		UpdateMenu()     
        elseif(LuaQueryTask("T115") == 1) then   
            if(LuaQueryTask("T115A") == 99 and LuaQueryTask("T115B") == 99) then 
		LuaSay("˾��Ԫ�ԣ�������..�����ӵ�ûʲô�ݣ�ֻ�ǻ������󲡲�������ŪȨ��һ��������Ҳ����Ϣ��Ϣ�ˡ�")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T115jl")
            else
		LuaSay("˾��Ԫ�ԣ���һ����������������Ҹ���˾����Ӻ��¡��ڶ�����������ۣ����Ҵ����Ҹ���Ȩλ���㻹û��ɡ�")
		LuaSay("˾��Ԫ�ԣ����Ƕ��ڽ����Ĺ�����ڴ���ĺ���Ϣ����")           
            end          
	   end
	       elseif(answer=="T115jl") then
		 if(LuaQueryTask("T115") == 1) then   
	          LuaDelTask("T115A")
		  LuaDelTask("T115B")
	          LuaSetTask("T115",99)
	          DelLog("115")
	          LuaAddJx("combat_exp",119000,"T115")
			  LuaAddAchievementSchedule("Task_num",1)
		  LuaGive("coin",1000,"T115")
	          UpdateMenu()
		  end



elseif(answer=="T299")then
	if(LuaQueryTask("T299")==0)then
		if(gender=="����")then
			LuaSay("˾��Ԫ�ԣ��Ҳ����Լ�ȥ���°��⹫�������ҿ������Գа����ػ�����ô��⣬��������Ҳ���ܳа���@!")
		else
			LuaSay("˾��Ԫ�ԣ��Ҳ����Լ�ȥ���°����ţ������ҿ������Գа����ػ�����ô��⣬��������Ҳ���ܳа���@!")
		end
		LuaSay("˾��Ԫ�ԣ��㵽��ֲ԰�İ��⹫����ȥ�˽�һ�³а����ص�������ˣ�������һֱ����������ܿ�����ֲ԰��@!")
		LuaSetTask("T299",1)
		AddLog("�а����ء����顿",299)
		UpdateMenu()
	elseif(LuaQueryTask("T299")==1)then
		LuaSay("˾��Ԫ�ԣ�����ֲ԰�İ��⹫����ȥ�˽�һ�³а����ص�������ˣ�������һֱ����������ܿ�����ֲ԰��@!")
	elseif(LuaQueryTask("T299")==2)then
		LuaSay("˾��Ԫ�ԣ����������Ѿ��˽�Ĳ���ˣ���Ҫ�а����صĻ���ȥ��@2��ֲ԰@0�İ��⹫�ɣ�")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T299jl")
	end

	elseif(answer=="T299jl")then
		if(LuaQueryTask("T299")==2)then
			if(LuaFreeBag()>=1)then
				LuaAddJx("combat_exp",145000,"T112") 
				LuaAddAchievementSchedule("Task_num",1)	
				LuaGive("coin",1000)
				LuaGive("e_head165",1,2,"T299")
				LuaSetTask("TtaozhuangC",99)
				LuaSetTask("T299",99)
				DelLog("299")
				UpdateMenu()
			else
				LuaSay("��ʾ����ı����ռ䲻��1������������������ȡŶ@!")
			end
		end
			

--��ڽ�ɽ
elseif(answer=="T385")then
	local level= LuaQuery("level")
	if(TeamCount()>=2)then
		if(LuaQueryTask("T385")==1)then
			if(TeamQueryTask("T385")>=1)then
				if(LuaQueryTask("TfindNPC_8")==1 )then
					LuaSay("˾��Ԫ�ԣ��ܺã�лл����Ҵ���@2��ɽ����[�Ͼ�]@0�����Ҽ�ʱ���˽⵽��ǰ���������")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_8",98)
					DelItem("o_mission417",1)
					UpdateMenu()
				elseif(LuaQueryTask("TfindNPC_8")==2)then
					LuaSay("˾��Ԫ�ԣ��ܺã�лл����Ҵ���@2��ɽ����[�¾�]@0�����Ҽ�ʱ���˽⵽��ǰ���������")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_8",98)
					DelItem("o_mission418",1)
					UpdateMenu()
				end
			else
				LuaSay("˾��Ԫ�ԣ���Ķ��ѻ�û�������ۣ��Ͽ�֪ͨ��������Ŷ")
			end
		elseif(LuaQueryTask("T385")==98)then
			LuaSay("˾��Ԫ�ԣ����Ѿ���һ��Ľ�ɽ�����͵����ҵ����ϣ���ȥ���������ȡ�����ɡ�")

		end
	else
		LuaSay("��ʾ����������Ҫ��Ӳ��ܽ�����һ��")	
	end





--<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<..�����������

--������ԵĲ�����ȡ
--[[elseif(answer=="lingqu")then
	if(LuaQueryTask("Txhuanxing")==2)then
		coldata2={AutoSearchTask_Goods(0,LuaQueryTask("Txhxcol"))}
		LuaGive(coldata2[2],coldata2[4])
		LuaSay("��ȡ�ɹ�")
	elseif(LuaQueryTask("Txhuanxing")==4)then
		coldata4={AutoSearchTask_Material(0,LuaQueryTask("Txhxcol"))}
		LuaGive(coldata4[2],coldata4[4])
		LuaSay("��ȡ�ɹ�")
	elseif(LuaQueryTask("Txhuanxing")==5)then
		coldata5={AutoSearchTask_Planting(0,LuaQueryTask("Txhxcol"))}
		LuaGive(coldata5[5],1)
		LuaSay("��ȡ�ɹ�")
	else
		LuaSay("��ǰ����û�в��Ͽ�����ȡ")
	end]]

elseif(answer=="Tsnpc_13")then
	if(LuaQueryTask("Tsnpc_13")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ���һ�����д�ļӼ��ż�����������Ŀһ��")
		LuaSay("˾��Ԫ�ԣ��ţ��á�")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_13",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_13")==2)then
		LuaSay("˾��Ԫ�ԣ����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_13")then
	if(LuaQueryTask("Tenpc_13")==1)then
		LuaSay(""..LuaQueryStr("name").."������Ӣ�����ż����׶�ʧ�����Ҵ������㣬ǰ��ս��һ�����ã�����˷���")
		LuaSay("˾��Ԫ�ԣ��ţ������ͺ�")
		LuaSetTask("Tenpc_13",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_13")==2)then
		LuaSay("˾��Ԫ�ԣ��ţ�����ƽ���ͺð�����ȥ����������Ͱ�")
	end
elseif(answer=="Tsnpc_14")then
	if(LuaQueryTask("Tsnpc_14")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ���һ�����д�ļӼ��ż�����������Ŀһ��")
		LuaSay("˾��Ԫ�ԣ��ţ��á�")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_14",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_14")==2)then
		LuaSay("˾��Ԫ�ԣ����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_14")then
	if(LuaQueryTask("Tenpc_14")==1)then
		LuaSay(""..LuaQueryStr("name").."������Ӣ�����ż����׶�ʧ�����Ҵ������㣬ǰ��ս��һ�����ã�����˷���")
		LuaSay("˾��Ԫ�ԣ��ţ������ͺ�")
		LuaSetTask("Tenpc_14",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_14")==2)then
		LuaSay("˾��Ԫ�ԣ��ţ�����ƽ���ͺð�����ȥ����������Ͱ�")
	end

elseif(answer=="Ttaozhuang30jl")then
	local level= LuaQuery("level")
	if(level>=25)  then
		if(LuaQueryTask("Ttaozhuang30jl")==0) then
			if(LuaFreeBag()>=5)then	
				LuaSay("˾��Ԫ�ԣ���ϲ�����õ�@330����Ʒ��װ8�����е�5��@0��")
				LuaSay("˾��Ԫ�ԣ�ʣ���3�����ֱ�����ɣ�@2��Ӫǰ�ڴ�л��@0��@3����ʿ��2����@0��@2��ˮ֮������ǫ@0��@3�ɺ�����@0��")
				LuaSay("˾��Ԫ�ԣ�@2��ˮ�԰�@0��@3��ս���ߡ�BOSS������@0�����ܵõ���")
				LuaSay("˾��Ԫ�ԣ��ռ���@2����һ���ſ�ļ�Ʒ��װ@0���ͻ���@3��������װЧ��@0���ñ��˰ݷ���Ӣ������������°ɣ�@!")
				LuaGive("e_sword166",1,3,"Ttaozhuang30jl")
				LuaGive("e_shoes166",1,2,"Ttaozhuang30jl")
				LuaGive("e_knife166",1,2,"Ttaozhuang30jl")
				LuaGive("e_earring166",1,2,"Ttaozhuang30jl")
				LuaGive("e_necklace166",1,2,"Ttaozhuang30jl")
				LuaSetTask("Ttaozhuang30jl",99)
				UpdateMenu() 
			else
				LuaSay("��ʾ�������ٱ���5������ռ䣬�����ȥ������Ǯׯ�ϰ�����Ѷ�����ֿ⣡") 
			end
		else
			LuaSay("˾��Ԫ�ԣ�ʣ���3�����ֱ�����ɣ�@2��Ӫǰ�ڴ�л��@0��@3����ʿ��2����@0��@2��ˮ֮������ǫ@0��@3�ɺ�����@0��")
			LuaSay("˾��Ԫ�ԣ�@2��ˮ�԰�@0��@3��ս���ߡ�BOSS������@0�����ܵõ���")
			LuaSay("˾��Ԫ�ԣ��ռ���@2����һ���ſ�ļ�Ʒ��װ@0���ͻ���@3��������װЧ��@0���ñ��˰ݷ���Ӣ������������°ɣ�@!")
		end
	else
		LuaSay("˾��Ԫ�ԣ�ͳһol@3�ſἫƷ��װ�������@0��ֻҪ���ﵽ@225��@0���Ϳ��Ե�����������ȡ@3�ſ�����ļ�Ʒ��װ@0��")
	end	



end
LuaSendMenu()
return 1
end