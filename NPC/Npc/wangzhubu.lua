NPCINFO = { 
serial="20" ,
base_name="wangzhubu",
icon=2564,
NpcMove=2564,
name="������" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="���ٳ��۲�Ѫ����ҩ�ȸ����ӻ�",
have_sell_item=1,
LuaType=1,
}
addBuyitem={
count=3,
{"o_drug_hp1" , 0, 8 },
{"o_drug_mp1" , 0  , 8 },
{"o_drug_mhp1" , 0  , 8 },
--{"o_mix_book001" , 2000, 8 },
--{"o_mix_book002" , 2000  , 8 },
--{"o_mix_book003" , 2000  , 8 },
--{"o_mix_book004" , 2000  , 8 },
--{"o_mix_book005" , 2000  , 8 },
--{"e_horse000" , 2000 , 8},
---{"e_horse001" , 2000 , 2},
--{"e_horse002t" , 2000 , 8},
}
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local level= LuaQuery("level")
	local T90= LuaQueryTask("T90")
	local T91= LuaQueryTask("T91")
	local T92= LuaQueryTask("T92")
	local T93= LuaQueryTask("T93")
	AddTopSayMenuItem("@7�����б�","")
		AddTopSayMenuItem("@3����@0","buy1")
		if(LuaQueryTask("T51")==0) then
			AddTopSayMenuItem("�Ӿ������顿","T51")
			havetask =1
		end
		if(T93==0) then
			AddTopSayMenuItem("������ߡ��̡̳�","T93")
			havetask =1
		end
		if(T92==0 and LuaQueryTask("T51") ==99) then
			AddTopSayMenuItem("���������������顿","T92")
			havetask =1
		end
--		if(T91==0 and T93==99 and level<10) then
--			AddTopSayMenuItem("����˵���ѭ����","T91")
---			havetask =1
--		end
---------------------------------------
		if(T91==1) then
			AddTopSayMenuItem("@2����˵���ѭ����","T91")
			havetask =4
		end
		-------------------------------------------------------------

		if(LuaQueryTask("T51") ==1)then
			AddTopSayMenuItem("@2�Ӿ������顿@0","T51")
			havetask =2
		end
		if(T93==1) then
			AddTopSayMenuItem("@2������ߡ��̡̳�","T93")
			havetask =2
		end
		if(T92==1) then
			AddTopSayMenuItem("@2���������������顿","T92")
		end

--		if(LuaQueryTask("T44")==1) then
--			AddTopSayMenuItem("@2��;�����顿","T44")
--			havetask =2
--		end
		if(T93==99 and level<20) then
			AddTopSayMenuItem("@9������ߡ��̡̳�","T93")
		end
		if((LuaQueryTask("Tsnpc_7")==1 or LuaQueryTask("Tsnpc_7")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2��վС��","Tsnpc_7")
			havetask=2
		end
		if((LuaQueryTask("Tenpc_7")==1 or LuaQueryTask("Tenpc_7")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_7")
			havetask=2
		end
		if(LuaQueryTask("pettask") ==3) then
			AddTopSayMenuItem("@2�ͻ�[ÿ��]","pettask")
			havetask=2
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
	LuaSay("������������������۲�Ѫ����ҩ������ڸ���@4����@0��@3����@0��Ҳ�г��ۡ�") 

elseif(answer=="buy1") then
	DoBuy()		     
	
elseif(answer=="pettask")then--------------�ͻ�
	if(LuaQueryStrTask("pettaskday")~=GetCurrentDay())then
	LuaSetTask("ptnumber",0)
	LuaSetTask("pettaskday",GetCurrentDay())
	end
	if(LuaQueryTask("pettask") ==3) then
	LuaSay("������:�������о�����Ȯ�ķ緶��")
	LuaSetTask("pettask",0)
	LuaAddTask("ptnumber",4)
	DelItem("o_mission049",LuaItemCount("o_mission049"))
	LuaGive("o_food02",10,"pettask")
	end
	UpdateMenu()
  

elseif(answer=="T93")then
	if(LuaQueryTask("T93")==0)then
	LuaSay("�������������������������Ƿǳ���Ҫ�ģ�Ҫÿʱÿ�̶�����ҩ���Ѫ�ͼ�����ҩ�������������NPC������")
	LuaSay("��������ѡ��@2NPC��������@0��ѡ��Ҫ�����@2��Ʒ@0�����@2����@0������@2����@0��ȷ���Ϳ����ˣ���@3������@0��һ��@2С����@0���԰ɡ�")
	UpdateTopSay("����������һ��С������ظ�")
	LuaSetTask("T93",1)
	AddLog("������ߡ��̡̳�",93)
	UpdateMenu()
	elseif(LuaQueryTask("T93")==1)then
	  if(LuaItemCount("o_drug_mhp1")<1) then
	  LuaSay("���������㻹û�й���һ��@2С����@0Ŷ����@3������@0����һ��@2С����@0�ٻظ��ҡ�")
	LuaSay("��������ѡ��@2NPC��������@0��ѡ��Ҫ�����@2��Ʒ@0�����@2����@0������@2����@0��ȷ���Ϳ����ˡ�")
	  else
	  LuaSay("���������ţ����úã�ҩ���ǿ���@2���ÿ�ݼ�@0��Ŷ��ѡ�б����е�ҩ���һ�ο�ݼ�����������ˡ�@!")
	  AddMenuItem("@7�������","")
	  AddMenuItem("��ȡ����","T93jl")
	  end
	elseif(LuaQueryTask("T93")==99)then
	LuaSay("��������ѡ��@2NPC��������@0��ѡ��Ҫ�����@2��Ʒ@0�����@2����@0������@2����@0��ȷ���Ϳ����ˡ�")
	LuaSay("��ʾ���������Ѿ����")
	  end
	elseif(answer=="T93jl")then
	if(LuaQueryTask("T93")==1) then
	if(LuaItemCount("o_drug_mhp1")>=1) then
	LuaSetTask("T93",99)
	DelLog("93")
	LuaAddJx("combat_exp",6530,"T93")			--����
	LuaAddAchievementSchedule("Task_num",1)
	UpdateMenu()
	end
	end

elseif(answer=="T92") then              ------------------------���������� 
		if(LuaQueryTask("T92")==0) then
		LuaSay("��������"..LuaQueryStr("name").."���ڣ�")
		LuaSay(LuaQueryStr("name").."���ڣ�")
		LuaSay("����������������ʿ�辭��Ѫ����������ȥ��@3ʿ����@0����ĥ���ɣ�@2������@0�Ϳ��Լ���@3ʿ����@0�ˡ�")
                LuaSetTask("T92",1)
		UpdateTopSay("ȥ������֮�ֵ�ʿ���װ�")
                AddLog("���������������顿",92)
                UpdateMenu()
		UpdateNPCMenu("shibingjia")
		elseif(LuaQueryTask("T92")==1) then
		       LuaSay("������������@4����֮��@0���ҵ�@3ʿ����@0������Ѫ����ĥ���ɡ�@2������@0�Ϳ��Լ���@3ʿ����@0�ˡ�")
		end


elseif(answer=="T44") then              ------------------------��;
		if(LuaQueryTask("T44")==0 or LuaQueryTask("T44")==1) then  
		    LuaSay("������������������ƥ�����𡣼�Ȼ�������˱���������Ӵ˱㿪ʼ�����;�ɡ�@!")
	            AddMenuItem("@7�������","")
	            AddMenuItem("��ȡ����","T44jl")
		end 
			elseif(answer=="T44jl")then	            
		       if(LuaQueryTask("T44")==0 or LuaQueryTask("T44")==1)then
				LuaSetTask("T44",99) 
				LuaAddJx("combat_exp",7500,"T44")
				LuaAddAchievementSchedule("Task_num",1)
				DelLog("44") 
				UpdateMenu() 
			end


elseif(answer=="T91")then
	if(LuaQueryTask("T91")==0)then
	LuaSay("��������ǧ����������ĥ����Ӣ�۱�ɫ��������Ҫ�й����ɾͣ�������Ҫ�������ƣ����費����������")
	LuaSay("��������@4����֮��@0�˵��ɻ���ȥ����@26ֻ�˵�@0�ɡ����֮�������ұ�������")
	LuaSay("����������@2ȷ�ϼ�@0���ٰ�@24��@0���ڼ��ܽ�����ѡ��Ҫʹ�õļ��ܣ��ٰ�@21379@0�е�һ�������ͽ�@2��������@0����@2��ݼ�@0�ˡ�")
	LuaSay("�������������ݼ����Ϳ���ʹ�ü������������Ŷ�����⣬��ݼ�������������@3�Ǻż�@0�л���@!�����԰ɡ�")
	UpdateTopSay("ɱ6ֻ�˵���������")
	LuaSetTask("T91",1)
	AddLog("����˵������顿",91)
	LuaSetTask("task_kill/mon_003/T91",1)
	UpdateMenu()
	elseif(LuaQueryTask("T91")==1)then
	  local a=LuaQueryTask("task_kill/mon_003/T91")-1
	  if(a<6) then
	  LuaSay("�����������������@2"..a.."���˵�@0����ȥ����@26���˵�@0�����������ɡ�")
	LuaSay("����������@2ȷ�ϼ�@0���ٰ�@24��@0���ڼ��ܽ�����ѡ��Ҫʹ�õļ��ܣ��ٰ�@21379@0�е�һ�������ͽ�@2��������@0����@2��ݼ�@0�ˡ�")
	LuaSay("�������������ݼ����Ϳ���ʹ�ü������������Ŷ�����⣬��ݼ�������������@3�Ǻż�@0�л���@!�����԰ɡ�")
	  else
	  LuaSay("�����������ĺã���������ǧ��ĥ����͸�����и���ˡ�")
	  AddMenuItem("@7�������","")
	  AddMenuItem("��ȡ����","T91jl")
	  end
	end

	elseif(answer=="T91jl")then
	if(LuaQueryTask("T91")==1) then
	if(LuaQueryTask("task_kill/mon_003/T91") >= 7 ) then
	LuaDelTask("T91")
	DelLog("91")
	LuaDelTask("task_kill/mon_003/T91")
	LuaAddJx("combat_exp",6000,"T91")--����
	if(LuaQueryTask("T91_a")==0) then
		LuaAddAchievementSchedule("Task_num",1)
		LuaSetTask("T91_a",99)
	end
	UpdateMenu() 
	end
	end



elseif(answer=="T51") then   --�Ӿ�
		if(LuaQueryTask("T51")==0 or LuaQueryTask("T51")==1) then
			LuaSay("���������ã����䲻�ڴ�С�����β������ݣ�ֻҪ��һǻ��Ѫ����־�Ӿ��ģ����Ǳ��ٵĵ��֡����ս�׾��͸���ɡ�")
			LuaSay("����������@3ȷ����@0�ٰ�@33����@0�ɴ򿪱������棬@2�ڱ�����ѡ��װ��@0����@3ȷ����@0��ѡ��@3ʹ��@0���ɴ����ˡ�")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T51jl")
		end 
		elseif(answer=="T51jl")then	            
		       if(LuaQueryTask("T51")==0 or LuaQueryTask("T51")==1)then
				LuaSetTask("T51",99) 
				LuaAddJx("combat_exp",6300,"T51") 
				LuaAddAchievementSchedule("Task_num",1)
				LuaGive("e_clothes002",1,1,"T51")
				DelLog("51") 
				UpdateMenu() 
				UpdateNPCMenu("mengtiejiang")
			end
elseif(answer=="Tsnpc_7")then
	if(LuaQueryTask("Tsnpc_7")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸���������ż�����ֻ�Ǹ���򣬲�Ҫɱ��")
		LuaSay("����������˵��������������������Ҳ�ǲ������ɱһ���˵İ�")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_7",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_7")==2)then
		LuaSay("�����������ҿ����ˣ����ȥ������")
	end
elseif(answer=="Tenpc_7")then
	if(LuaQueryTask("Tenpc_7")==1)then
		LuaSay(""..LuaQueryStr("name").."������������˵�ż����ܻᱻ���٣����Ҹ��������������Ҫ������@!")
		LuaSay("����������������ͷ��֪��˵������")
		LuaSetTask("Tenpc_7",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_7")==2)then
		LuaSay("����������ȥ�������Ǵ��ˣ���˵��֪����")
	end


end
LuaSendMenu()
return 1
end 

