NPCINFO = {
serial= "64" ,
base_name="wqdhuoji1",
icon= 2505, 
NpcMove=2505, 
name= "�������ˡ��̡�" , 
--level=10 ,
iconaddr=1, 
butt="40|10|63", 
name_color = "CEFFCE" , 
lastsay="װ��ǿ������������",
have_sell_item=1,
LuaType=1,
}
addBuyitem={
count=10,
{"e_falchion012" , 2000, 8 },
{"e_falchion014" , 2000, 8 },
{"e_falchion017" , 2000, 8 },
{"e_sword014" , 2000, 8 },
{"e_sword016" , 2000, 8 },
{"e_sword018" , 2000, 8 },
{"e_knife008" , 2000, 8 },
{"e_knife009" , 2000, 8 },
{"e_book006" , 2000, 8 },
{"e_book008" , 2000, 8 },
} 
function do_talk(answer)
 if (answer=="ask") then
        havetask =0
	local level= LuaQuery("level")
        local T533 = LuaQueryTask("T533")
	local Tbprw9=LuaQueryTask("Tbprw9")
	local Tbprw9_1=LuaQueryTask("Tbprw9_1")
	AddTopSayMenuItem("@7�����б�","")
	AddTopSayMenuItem("����","buy1")
 	AddTopSayMenuItem("@3���󡾻��","cm4")
	 if(T533 ==0 and level >=32) then
		AddTopSayMenuItem("Ϊ����������顿","T533")
		havetask =1
	end
	if(T533 ==1 or T533 ==2 or T533 ==3) then
		AddTopSayMenuItem("@2Ϊ����������顿","T533")
		if(T533 ==1) then	--��ʾ��ɫ
			havetask =4
		end
	end  
	if((LuaQueryTask("Tsnpc_48")==1 or LuaQueryTask("Tsnpc_48")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_48")
		if(LuaQueryTask("Tsnpc_48")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_48")==1 or LuaQueryTask("Tenpc_48")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_48")
		if(LuaQueryTask("Tenpc_48")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("Tbprw9_1")==1) then
		AddTopSayMenuItem("@2�������ʡ�ÿ�ա�","Tbprw9_1")
		havetask=2
	end
	if(LuaQueryTask("Tcoc")==19)then
		AddTopSayMenuItem("@2�̼���","Tcoc")
		havetask =2
	end

		AddTopSayMenuItem("ǰ����ʯ��","Cm2")	

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
elseif(answer=="buy1") then
	DoBuy()
elseif(answer=="liaotian") then
	LuaSay("�������ˣ�û�����������")
elseif(answer=="Tcoc")then---------------------�̼���8 Tcoc===19
	if(LuaQueryTask("Tcoc")==19)then
		LuaSay("�������ˣ���һ������������һ���һ�����徻.")
		LuaSetTask("Tcoc",20)
		LuaSetTask("T955",20)
		AddLog("�̼��򱳡�ÿ�ա�",955)
		LuaGive("coin",800,"Tcoc")
		LuaGive("o_drug_mp4",2,"Tcoc")
		UpdateMenu()
	end

elseif(answer=="cm4")then
	local hour=GetCurrentHour()
	local minute=GetCurrentMinute()
	if(hour==12 or hour==23)then
	LuaSay("������@212:00~13:00@0������@223:00~24:00@0ʱ�ֿ���@2���ɿ�@0,�л���ɵ��߼����ϣ����ĵȴ��ɡ�@!")
	AddMenuItem("Ҫ����@2���ɿ�@0��","")
	AddMenuItem("������","no")
	AddMenuItem("@2����","yescm4")
	else
	LuaSay("������@212:00~13:00@0������@223:00~24:00@0ʱ�ֿ���@2���ɿ�@0,�л���ɵ��߼����ϣ����ĵȴ��ɡ�@!")
	LuaSay("���ڷ�����ʱ����:@2"..hour.."ʱ"..minute.."��@0.��������ʱ��")
	end
elseif(answer=="yescm4")then
	local hour=GetCurrentHour()
	local minute=GetCurrentMinute()
	if(hour==12 or hour==23)then
		ChangeMap("lu_mine04")
	else
	LuaSay("�������С�ӣ����������ˣ�С�ķ���Ź���")
	end
elseif(answer=="no")then
	LuaSay("�������ˣ���ռ�ı��˶�����ռ�����Ӳ��ɽ�Ҳ��")

elseif(answer=="Cm2") then 
	local level= LuaQuery("level")
	if(level>=40)then
		if(LuaQuery("till")>=500)then
		ChangeMap("lu_mine02")
		else
		LuaSay("�ɼ������Ȳ���,��Ĳɼ������ﵽ500���ϲ��ܽ���.")
		end
	else
	LuaSay("�м��ɼ���40�����ܽ���")
	end


 elseif(answer=="T533")then
	if(LuaQueryTask("T533")==0)then
		LuaSay("������ƣ����������@3ص���ڱ�@0�������ң���������������ǿŰ���ǵĲ�������@2���뽣@0�ͱ����������ˡ�")
		LuaSay("������ƣ��������������У����Ǹ��֣��ͷ����°�æɱ@210��ص���ڱ�@0����˾Ϳ�����������İ�ȫ�����ˡ�")
		LuaSay("������ƣ� Ҫ����˳���ҵ������@3���뽣@0�Ǿ͸����ˣ�����һ����л��")
		LuaSay(""..LuaQueryStr("name").."��Ϊ����������ҵı��֣����¾Ͱ�����������")
		UpdateTopSay("ɱ10��ص���ڱ�������")
		LuaSetTask("T533",1)
		AddLog("Ϊ����������顿",533)
		LuaSetTask("task_kill/mon_025/T533",1)
		UpdateMenu()
	elseif(LuaQueryTask("T533")==1)then
		local a=LuaQueryTask("task_kill/mon_025/T533")-1
		if(a<10) then
			LuaSay("������ƣ����������@3"..a.."@0��ص���ڱ��������Ժ󻹻�Ϊ�������ȥɱ@210��ص���ڱ�@0���������ɡ�") 
		elseif(LuaItemCount("o_mission342")==1 and a>=10 ) then 
			LuaSay("������ƣ����²�������ɱ��@310��ص���ڱ�@0�������һ��˱����@2���뽣@0,����̫��л��") 
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T533j1")
		else
			LuaSay("������ƣ���л���ˣ�������ʱû����в�ˡ�")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T533j2")
		end
	else
	  LuaSay("������ƣ�ȥ��������ɱ10��ص���ڱ�������")
	end

	elseif(answer=="T533j1")then
		if(LuaQueryTask("T533")==1) then
		if(LuaQueryTask("task_kill/mon_025/T533") >= 11 and LuaItemCount("o_mission342")==1) then 
		LuaSetTask("T533",99)
		DelLog("533")
		LuaDelTask("task_kill/mon_005/T241")
		DelItem("o_mission342",1)
		LuaAddJx("combat_exp",314000,"T241")--����
		LuaAddAchievementSchedule("Task_num",1)
		LuaGive("coin",3000,"T533")
		UpdateMenu() 
		end
		end
	elseif(answer=="T533j2")then
		if(LuaQueryTask("T533")==1) then
		if(LuaQueryTask("task_kill/mon_025/T533") >= 11 ) then
		LuaSetTask("T533",99)
		DelLog("533")
		LuaDelTask("task_kill/mon_025/T533")
		LuaAddJx("combat_exp",314000,"T533")--����
		LuaAddAchievementSchedule("Task_num",1)
		UpdateMenu() 
		end
		end 

elseif(answer=="Tbprw9_1")  then
if(LuaQueryStrTask("Tbprw9day")==GetCurrentDay())then
	if(LuaQueryTask("Tbprw9_1")==1) then
		LuaSay(""..LuaQueryStr("name").."���ҷ���۵�ʥּǰ������@3������������@0�������и����㡣")
		LuaSay("������ƣ�����@3������������@0Ҫʹ��@33000ͭ��@0")
		AddMenuItem("ѡ���б�","")
        AddMenuItem("��","YES")
	    AddMenuItem("����","NO1")
	end
	if(LuaQueryTask("Tbprw9")==2) then
		LuaSay("������ƣ���ȥ��@3�������÷���@0�͸�@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0�ɣ�")
	end
else
		LuaSay("������ƣ��µ�һ�죬�µĿ�ʼ���������ǰ��@3�������ʡ�ÿ�ա�@0����û��ɣ�")
		LuaSay("������ƣ����ڵ�@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0���½�ȡ����@3�������ʡ�ÿ�ա�@0����ɣ�")
end
elseif(answer=="YES") then
	if(LuaQueryTask("Tbprw9_1")== 1) then
		if(LuaItemCount("coin")>=3000) then
			LuaGive("o_mission403",1)
			LuaGive("coin",-3000,"Tbprw9")
			LuaSay("������ƣ���ȥ��@3�������÷���@0�͸�@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0�ɣ�")
			LuaSetTask("Tbprw9",2)
			LuaSetTask("Tbprw9_1",99)
		elseif(LuaItemCount("coin")<3000) then
			LuaSay("������ƣ�������ֻ��@3"..LuaItemCount("coin").."ͭ��@0,����@33000ͭ��@0����")
			LuaSay("������ƣ�����Ȼ�ǽ���������@3������������@0�ģ���Ҳ�����������������Ⱑ��")
		end
	end
elseif(answer=="NO1") then
	if(LuaQueryTask("Tbprw9_1")== 1) then
		LuaSay("������ƣ���ôС����@33000ͭ��@0����Ը����")
		LuaSay("������ƣ���˵���ۺܴ���Ŷ�����������£������Բ��������ġ�")
		LuaSay("������ƣ�������ɣ���ȥ�ý��")
		AddMenuItem("ѡ���б�","")
        AddMenuItem("��","YES")
	    AddMenuItem("����","NO2")
	end
elseif(answer=="NO2") then
	if(LuaQueryTask("Tbprw9_1")== 1) then
		LuaSay("������ƣ������⺢�ӣ���������˰ɣ���Ҳ��ǿ���㣬�ֲ���ֻ����һ��������")
	end



elseif(answer=="Tsnpc_48")then
	if(LuaQueryTask("Tsnpc_48")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("������ƣ����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_48",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_48")==2)then
		LuaSay("������ƣ����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_48")then
	if(LuaQueryTask("Tenpc_48")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("������ƣ��ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_48",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_48")==2)then
		LuaSay("������ƣ����Ѿ������ˣ����ȥ��ȡ������")
	end

end
LuaSendMenu()
return 1
end

