NPCINFO = { 
serial="16" ,
base_name="huanyiniang",
icon=2515,
NpcMove=2515,
name="�����" ,
iconaddr=1 ,
butt="5|5|50" ,
name_color="CEFFCE" ,
lastsay="ҩƷҲ�����ÿ�ݼ���ʹ��",
LuaType=1,
} 
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7�����б�","")
	if(LuaQueryTask("T60")==0) then
		AddTopSayMenuItem("ʹ����Ʒ���̡̳�","T60")
		havetask =1
	end

	if(LuaQueryTask("T61") == 0 and LuaQueryTask("T31") ==99)  then
		AddTopSayMenuItem("�ɳ�֮·2�����顿","T61")
		havetask =1
	end
	if(LuaQueryTask("T31") ==1)then
		AddTopSayMenuItem("@2�ɳ�֮·1�����顿@0","T31")
		havetask =2
	end
	if(LuaQueryTask("T60")==1) then
		AddTopSayMenuItem("@2ʹ����Ʒ���̡̳�","T60")
		havetask =2
	end
	if((LuaQueryTask("Tsnpc_3")==1 or LuaQueryTask("Tsnpc_3")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_3")
		havetask=2
	end
	if((LuaQueryTask("Tenpc_3")==1 or LuaQueryTask("Tenpc_3")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_3")
		havetask=2
	end

	if(LuaQueryTask("T61") ==1)then
		AddTopSayMenuItem("@2�ɳ�֮·2�����顿@0","T61")
	end
	if(LuaQueryTask("T60")==99 and level<20)  then
		AddTopSayMenuItem("@9ʹ����Ʒ���̡̳�","T60")--����һ��ʱ����ʾ
	end
	
	if(LuaQueryTask("pettask") ==1) then
			AddTopSayMenuItem("@2�ͻ�[ÿ��]","pettask")
			havetask=2
	end
------------------------------------------------
if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("����","liaotian","0")
end

return 1
------------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("����ʹ��@2���Ϻϳ���@0���Ժϳɲ��ϣ����Ͽ��ڸ���@4��ũ��@0�ɼ����ϳ������@2����NPC@0������") 
	
elseif(answer=="pettask")then--------------�ͻ�
	if(LuaQueryStrTask("pettaskday")~=GetCurrentDay())then
	LuaSetTask("ptnumber",0)
	LuaSetTask("pettaskday",GetCurrentDay())
	end
	if(LuaQueryTask("pettask") ==1) then
	LuaSay("�����:�ܺã����Ӳ������˭�������")
	LuaSetTask("pettask",0)
	LuaAddTask("ptnumber",2)
	DelItem("o_mission049",LuaItemCount("o_mission049"))
	LuaGive("o_food02",10,"pettask")
	end
	UpdateMenu()
		       
elseif(answer=="T31") then              ------------------------�ɳ�֮· 
		if(LuaQueryTask("T31")==1) then
		LuaSay("����"..LuaQueryStr("name").."����˵��Ҫ�뿪���ӣ�ȥ�������ˡ���˫Ь�Ӿ��͸���ɡ�@!")
		LuaSay("���������ײУ����ţ�����������˱���ɱ���������Ե����㣬���Ҫ���С�İ���")
		AddMenuItem("@7�������","")
	        AddMenuItem("��ȡ����","T31jl")
		end 
		elseif(answer=="T31jl")then	            
		       if(LuaQueryTask("T31")==1)then
				LuaSetTask("T31",99) 
				LuaAddJx("combat_exp",3600,"T31") 
				LuaGive("e_shoes001",1,1,"T31")    --3����Ь��
				LuaAddAchievementSchedule("Task_num",1)
				DelLog("31") 
				UpdateMenu() 
				UpdateNPCMenu("zhanglao")
				end
		       
elseif(answer=="T60") then                     ----------------ʹ�õ���
		if(LuaQueryTask("T60") == 0 ) then
				LuaSay("����������һ��@2���������@0���������ʹ�����ɡ�ʹ�ú�һСʱ�ڴ�־��鷭��Ŷ��")
				LuaSay("������@3ȷ����@0�ٰ�@33����@0�ɴ򿪱������棬�ڱ�����ѡ��������������@3ȷ����@0��ѡ��@3ʹ��@0���ɡ�")
				LuaSetTask("T60",1)
				LuaGive("o_state008j",1)
				jyshu1=LuaItemCount("o_state008j")
				LuaSetTask("T60jyshu",jyshu1)
				UpdateTopSay("����Դ��ʹ�ó��������")
				AddLog("ʹ����Ʒ���̡̳�",60)
				UpdateMenu()
		elseif(LuaQueryTask("T60")==1) then
			if(LuaQueryTask("T60jyshu")-LuaItemCount("o_state008j")>=1)then
				LuaSay("�������ĺã����Ǹ���Ľ�����")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T60jl")
			else
				LuaSay("�����㻹ûѧ������ϵ�@2����������ʹ�õ�@0�ޡ�@!")
				LuaSay("������@3ȷ����@0�ٰ�@33����@0�ɴ򿪱������棬�ڱ�����ѡ��������������@3ȷ����@0��ѡ��@2ʹ��@0���ɡ�")

			end
		elseif(LuaQueryTask("T60")==99) then
				LuaSay("������@3ȷ����@0�ٰ�@33����@0�ɴ򿪱������棬�ڱ�����ѡ����Ʒ����@3ȷ����@0��ѡ��@3ʹ��@0���ɡ�")
				LuaSay("����˳������㣬@3ʹ��װ��@0Ҳ��@2ͬ���Ĳ���@0Ŷ,�ܼ򵥰ɡ�@!")
				LuaSay("��ʾ�������������")
			end
		elseif(answer=="T60jl")then
			if(LuaQueryTask("T60")==1) then
				LuaSetTask("T60",99)
				LuaAddJx("combat_exp",4200,"T60")
				LuaAddAchievementSchedule("Task_num",1)
				LuaGive("o_drug_hp1",5)
				LuaGive("o_drug_mp1",5)
				DelLog("60")
				UpdateMenu()
			end

elseif(answer=="T61") then              ------------------------�ɳ�֮· 
		if(LuaQueryTask("T61")==0) then
		LuaSay("������ȷ��һ���Լ��϶����ɺͷ��߶�����������ɱ������ġ�")
		LuaSay("������������ʤ��һ���ȥ��@4����@0��@3������@0�ɡ�")
                LuaSetTask("T61",1)
		UpdateTopSay("ȥ�Ҵ��е�������̸��")
                AddLog("�ɳ�֮·2�����顿",61)
		UpdateMenu()
		UpdateNPCMenu("mengtiejiang")
		elseif(LuaQueryTask("T61")==1) then
		LuaSay("������ȥ��@3������@0�ɣ���������������ģ���������@4��Դ��@0�С�")
		end



elseif(answer=="Tsnpc_3")then
	if(LuaQueryTask("Tsnpc_3")==1)then
		LuaSay(""..LuaQueryStr("name").."�����ǵ������˸���������ż������滹�пź�����@!")
		LuaSay("������һ��ϴ����˭�����д�Ű�")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_3",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_3")==2)then
		LuaSay("���������ȥ�����Ǵ���˵���յ�����@!")
	end
elseif(answer=="Tenpc_3")then
	if(LuaQueryTask("Tenpc_3")==1)then
		LuaSay(""..LuaQueryStr("name").."������������˵�ż���͸¶���ܣ����Ҹ��㴫������ҹ����ʱ����������������")
		LuaSay("������������ͷ��ɶ�������ǡ���������")
		LuaSetTask("Tenpc_3",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_3")==2)then
		LuaSay("������ȥ�������Ǵ��ˣ���˵��֪����")
	end

end
LuaSendMenu()
return 1
end 

