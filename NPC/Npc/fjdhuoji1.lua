NPCINFO = {
serial= "63" ,
base_name="fjdhuoji1",
icon= 2506, 
NpcMove=2506, 
name= "�������ˡ��̡�" , 
--level=10 ,
iconaddr=1, 
butt="20|15|63", 
name_color = "CEFFCE" , 
lastsay="�����Ĺؼ�����Ƕ��",
have_sell_item=1,
LuaType=1,
}


addBuyitem={
count=6,

--{"e_shield005" , 2000, 8 },
--{"e_shield007" , 2000, 8 },
{"e_clothes016" , 2000, 8 },
{"e_clothes019" , 2000, 8 },
{"e_pants016" , 2000, 8 },
{"e_pants019" , 2000, 8 },
{"e_head016" , 2000, 8 },
{"e_head019" , 2000, 8 },
} 
function do_talk(answer)
 if (answer=="ask") then
	havetask =0
	local havetask0=0	--Ĭ��û��
	local havetask1=0	--��̾��
	local havetask2=0	--��ɫ�ʺ�
	local havetask4=0	--��ɫ�ʺ�

	Tbprw9=LuaQueryTask("Tbprw9")
	Tbprw9_0=LuaQueryTask("Tbprw9_0")

	AddTopSayMenuItem("@7�����б�","")
	AddTopSayMenuItem("����","buy1")
	   -------------------
	if(LuaQueryTask("T486")==1 or LuaQueryTask("T486")==2 or LuaQueryTask("T486")==3)then
		AddTopSayMenuItem("@2֪��ͼ�������顿","T486")
		if(LuaQueryTask("T486")==1) then--��ʾ��ɫ
			havetask2=1
		end
		if(LuaQueryTask("T486")==2) then--��ʾ��ɫ
			havetask4=1
		end
	end
	----------------
	if((LuaQueryTask("Tsnpc_47")==1 or LuaQueryTask("Tsnpc_47")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_47")
		if(LuaQueryTask("Tsnpc_47")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_47")==1 or LuaQueryTask("Tenpc_47")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_47")
		if(LuaQueryTask("Tenpc_47")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("Tbprw9_0")==1) then
		AddTopSayMenuItem("@2�������ʡ�ÿ�ա�","Tbprw9_0")
		havetask=2
	end
	if(LuaQueryTask("Tcoc")==23)then
		AddTopSayMenuItem("@2�̼���","Tcoc")
		havetask =2
	end
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
elseif(answer=="buy1") then
    DoBuy()
elseif(answer=="liaotian") then
     LuaSay("���ߵ���ƣ���ӭǰ��������ߡ�")
     
elseif(answer=="Tcoc")then---------------------�̼���8 Tcoc===19
	if(LuaQueryTask("Tcoc")==23)then
		LuaSay("���ߵ���ƣ���,����̫�ң��������֯Ҳ�ã�����һ����.")
		LuaSetTask("Tcoc",24)
		LuaSetTask("T955",24)
		AddLog("�̼��򱳡�ÿ�ա�",955)
		LuaGive("coin",1000,"Tcoc")
		LuaGive("o_drug_mp4",4,"Tcoc")
		UpdateMenu()
	end 
----------------------------------------------- ֪��ͼ��
elseif(answer=="T486")  then
	if(LuaQueryTask("T486")==1) then
		LuaSay(""..LuaQueryStr("name").."��С���磬����û����˵����������")
		LuaSay("��������:�������ף����������ʶԵط��ˣ��������׾������ǵ���")
		LuaSay(""..LuaQueryStr("name").."������������׶���Ǯ����!")
		LuaSay("�������� ����Ǯ�����󣬾����ҵ��и�����涨��ֻ��ɱ��20ֻ@2��ë��@0����ʿ�������ʸ���������·���@3��ë��@0����@2��������@0Ŷ@!")
		LuaSay(""..LuaQueryStr("name").."�Ǿ���С�����Եȡ���ȥȥ������")
		LuaSetTask("T486",2)
		LuaSetTask("task_kill/mon_026/T486",1)
		UpdateMenu()
	elseif(LuaQueryTask("T486")==2) then
		if(LuaQueryTask("task_kill/mon_026/T486")>=21) then
			LuaSay("��������:�����������£���ô���ɱ��20ֻ��ë�ܣ�������׾͸����,������ø�@3����@0��")
	        LuaGive("o_mission330",1)
	        LuaSetTask("T486",3)
		    LuaGive("coin",3000,"T486")
		    UpdateMenu()
		    UpdateNPCMenu("fujian")
		else
		LuaSay("����ɱ��20ֻ��ë���������Ǿ���@2��������@0")
		end
	elseif(LuaQueryTask("T486")==3) then
		LuaSay("��������:�����Ѿ������ˣ�������ø�@3����@0��")
	end
elseif(answer=="Tbprw9_0")  then
	if(LuaQueryStrTask("Tbprw9day")==GetCurrentDay())then
		if(LuaQueryTask("Tbprw9_0")==1) then
			LuaSay(""..LuaQueryStr("name").."���ҷ���۵�ʥּǰ������@3�������÷���@0�������и����㡣")
			LuaSay("�������ˣ�����@3�������÷���@0Ҫʹ��@33000ͭ��@0")
			AddMenuItem("ѡ���б�","")
			AddMenuItem("��","YES")
			AddMenuItem("����","NO1")
		end
		if(LuaQueryTask("Tbprw9")==2) then
			LuaSay("�������ˣ���ȥ��@3�������÷���@0�͸�@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0�ɣ�")
		end
	else
		LuaSay("�������ˣ��µ�һ�죬�µĿ�ʼ���������ǰ��@3�������ʡ�ÿ�ա�@0����û��ɣ�")
		LuaSay("�������ˣ����ڵ�@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0���½�ȡ����@3�������ʡ�ÿ�ա�@0����ɣ�")
	end
elseif(answer=="YES") then
	if(LuaQueryTask("Tbprw9_0")== 1) then
		if(LuaItemCount("coin")>=3000) then
			LuaGive("o_mission402",1)
			LuaGive("coin",-3000,"Tbprw9")
			LuaSay("�������ˣ���ȥ��@3�������÷���@0�͸�@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0�ɣ�")
			LuaSetTask("Tbprw9",2)
			LuaSetTask("Tbprw9_0",99)
		elseif(LuaItemCount("coin")<3000) then
			LuaSay("�������ˣ�������ֻ��@3"..LuaItemCount("coin").."ͭ��@0,����@330000ͭ��@0����")
			LuaSay("�������ˣ�����Ȼ�ǽ���������@3�������÷���@0�ģ���Ҳ�����������������Ⱑ��")
		end
	end
elseif(answer=="NO1") then
	if(LuaQueryTask("Tbprw9_0")== 1) then
		LuaSay("�������ˣ���ôС����@33000ͭ��@0����Ը����")
		LuaSay("�������ˣ���˵���ۺܴ���Ŷ�����������£������Բ��������ġ�")
		LuaSay("�������ˣ�������ɣ���ȥ�ý��")
		AddMenuItem("ѡ���б�","")
        AddMenuItem("��","YES")
	    AddMenuItem("����","NO2")
	end
elseif(answer=="NO2") then
	if(LuaQueryTask("Tbprw9_0")== 1) then
		LuaSay("�������ˣ�������������˰ɣ���Ҳ��ǿ���㣬�����ҿ������ˡ�")
	end



elseif(answer=="Tsnpc_47")then
	if(LuaQueryTask("Tsnpc_47")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("�������ˣ����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_47",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_47")==2)then
		LuaSay("�������ˣ����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_47")then
	if(LuaQueryTask("Tenpc_47")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("�������ˣ��ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_47",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_47")==2)then
		LuaSay("�������ˣ����Ѿ������ˣ����ȥ��ȡ������")
	end

end
LuaSendMenu()
return 1
end