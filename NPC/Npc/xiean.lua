NPCINFO = {
serial= "37" ,
base_name="xiean" ,
icon= 2550,
NpcMove=2550,
name= "л��" ,
iconaddr=1,
butt="10|10|60",
name_color = "CEFFCE" ,
lastsay="���ϼ������Ѳ��и������Ȥ",
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
	if(LuaQueryTask("Ttaozhuangjl")==0) then
		AddTopSayMenuItem("@315������װ����","Ttaozhuangjl")
	else
		if(LuaQueryTask("TtaozhuangA")==0 or LuaQueryTask("TtaozhuangB")==0 or LuaQueryTask("TtaozhuangC")==0) then
			AddTopSayMenuItem("@320����װ����ָ��","Ttaozhuangjl")
		end
	end
--����Ϊ���ⲿ��
	if(LuaQueryTask("T263")==1) then
		AddTopSayMenuItem("@2����Ǳ�������顿","T263")
		--havetask2=1
	end
	if(LuaQueryTask("T368")==2) then
		AddTopSayMenuItem("@2а�����䡾���顿@0","T368")
		havetask2 =1
	end
	if(LuaQueryTask("T850")==1 ) then
		AddTopSayMenuItem("@2������顿","T850")
	end
	if(LuaQueryTask("T851") >=1 and LuaQueryTask("T851") < 99)then
		AddTopSayMenuItem("@2ԩ�������顿","T851")
		if(LuaQueryTask("T851") ==4)then
		havetask2 =1
		end
	end
	if(LuaQueryTask("T21")==1 or LuaQueryTask("T21")==2) then
		AddTopSayMenuItem("@2����֮�������顿","T21")
		havetask2 =1
		end
------------------------------------------------------------------------------
	if((LuaQueryTask("Txrfuli")==0) or  LuaQueryTask("Txrfuli")<99) then
		AddTopSayMenuItem("@1[��]@0@5������Ʒ","Txrfuli")
	end
----------------------------------------------------------------------------


	if(LuaQueryTask("T322")==1 or LuaQueryTask("T322")==2) then
		AddTopSayMenuItem("@2��ֶ֮�顾���顿","T322")
		if(LuaQueryTask("T322")==1)then
			havetask2 =1
		end
	end
	if(LuaQueryTask("T385")==1)then
		if(LuaQueryTask("TfindNPC_1")==1 or LuaQueryTask("TfindNPC_1")==2)then
			AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
			havetask2=1
		end
	elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_1")==98)then
		AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
	end
	if((LuaQueryTask("Tsnpc_24")==1 or LuaQueryTask("Tsnpc_24")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_24")
		if(LuaQueryTask("Tsnpc_24")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_24")==1 or LuaQueryTask("Tenpc_24")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_24")
		if(LuaQueryTask("Tenpc_24")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T852")==1) then
		AddTopSayMenuItem("@2ǰ�������顿","T852")
		--havetask2=1
	end
	if(LuaQueryTask("T423")==1 and LuaQueryTask("T423A")==0) then
		AddTopSayMenuItem("@2�ٶȵĿ��顾���顿","T423A")
		havetask2 =1
	end
	if(LuaQueryTask("T265")==1) then
		AddTopSayMenuItem("@2���ٽ��������顿","T265")
		if(LuaQueryTask("T265A") == 99 and LuaQueryTask("T265B") == 99 and LuaQueryTask("T265C") == 99 and LuaQueryTask("T265D") == 99 and LuaQueryTask("T265E") == 99) then
		havetask2 =1
		end
	end

--����Ϊ��ɫ�ʺŲ���
	if(LuaQueryTask("T263")==0 and LuaQueryTask("Txrfuli")~=0)  then
		AddTopSayMenuItem("����Ǳ�������顿","T263")
		havetask1 =1
	end

	if(LuaQueryTask("T850")==0 and LuaQueryTask("T851") == 99) then
		AddTopSayMenuItem("������顿","T850")
		havetask1=1
	end
 	if(level>=19 and LuaQueryTask("T851") == 0)then
		AddTopSayMenuItem("ԩ�������顿","T851")
		havetask1 =1
	end
	if(LuaQueryTask("T852") == 0 and LuaQueryTask("T851") == 99)then
		AddTopSayMenuItem("ǰ�������顿","T852")
		havetask1 =1
	end
	if(LuaQueryTask("T302")==8 and LuaQueryTask("T302H")==0) then
		AddTopSayMenuItem("@2ÿ����ʹ@0","T302H")
		havetask2 =1
	end
	if(LuaQueryTask("T70") ==2) then
		AddTopSayMenuItem("@2ÿ�յ����ÿ�ա�@0","T70")
		havetask2 =1
	end
	--AddTopSayMenuItem("����ר��","text111")
	--AddTopSayMenuItem("@5���������������ȡ","Tpubcode")
	--AddTopSayMenuItem("@9�������������һ�����","Tpubcode1")
--����Ϊ��ɫ��̾������

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
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("����","liaotian","0")
end
return 1
--[[elseif(answer=="text111")then
	AddMenuItem("����","")
	AddMenuItem("50����װ��","11")
	AddMenuItem("1�����ϰ�","12")
	AddMenuItem("2�����ϰ�","13")
	AddMenuItem("3�����ϰ�","14")
	AddMenuItem("4�����ϰ�","15")
	AddMenuItem("5�����ϰ�","16")
	AddMenuItem("6�����ϰ�","17")
elseif(answer=="11")then
	LuaGive("o_present036",1)
elseif(answer=="12")then
	LuaGive("o_present022",1)
elseif(answer=="13")then
	LuaGive("o_present024",1)
elseif(answer=="14")then
	LuaGive("o_present026",1)
elseif(answer=="15")then
	LuaGive("o_present028",1)
elseif(answer=="16")then
	LuaGive("o_present030",1)
elseif(answer=="17")then
	LuaGive("o_present032",1)

]]


elseif(answer=="liaotian") then
		LuaSay("л����Ϊ��Ϊ�񣬾Ϲ����ᣬ�������ѣ�")
elseif(answer=="Txl_wqsr")then
	AutoGoToNpc("@7�Ƿ�@0Ѱ·��@4��������","wqdhuoji")

elseif(answer=="Ttaozhuangjl")then
	local level= LuaQuery("level")
	if(level>=15)  then
		if(LuaQueryTask("Ttaozhuangjl")==0) then
			if(LuaFreeBag()>=5)then
				LuaSay("л������ϲ�����õ�@320����Ʒ��װ8�����е�5��@0��")
				LuaSay("л����ʣ���3�����ֱ�����ɣ�@216���嶷ɽ������@0��@3���鼯��@0��@220��������˾��Ԫ�Դ�@0��@3�а�����@0��")
				LuaSay("л����@220��ɽկ��������֮��@0��@3�Ƴ�а��BOSS����@0�����ܵõ���")
				LuaSay("л�����ռ���@2����һ���ſ�ļ�Ʒ��װ@0���ͻ���@3��������װЧ��@0���ñ��˰ݷ���Ӣ������������°ɣ�@!")
				LuaGive("e_sword165",1,3,"Ttaozhuangjl")
				LuaGive("e_shoes165",1,2,"Ttaozhuangjl")
				LuaGive("e_knife165",1,2,"Ttaozhuangjl")
				LuaGive("e_earring165",1,2,"Ttaozhuangjl")
				LuaGive("e_necklace165",1,2,"Ttaozhuangjl")
				LuaSetTask("Ttaozhuangjl",99)
				UpdateMenu()
			else
				LuaSay("��ʾ�������ٱ���5������ռ䣬�����ȥ������Ǯׯ�ϰ�����Ѷ�����ֿ⣡")
			end
		else
			LuaSay("л����ʣ���3�����ֱ�����ɣ�@216���嶷ɽ������@0��@3���鼯��@0��@220��������˾��Ԫ�Դ�@0��@3�а�����@0��")
			LuaSay("л����@220��ɽկ��������֮��@0��@3�Ƴ�а��BOSS����@0�����ܵõ���")
			LuaSay("л�����ռ���@2����һ���ſ�ļ�Ʒ��װ@0���ͻ���@3��������װЧ��@0���ñ��˰ݷ���Ӣ������������°ɣ�@!")
		end
	else
		LuaSay("л����ͳһol@3�ſἫƷ��װ�������@0��ֻҪ���ﵽ@215��@0���Ϳ��Ե�����������ȡ@3�ſ�����ļ�Ʒ��װ@0��")
	end
elseif(answer=="T302H") then
	if(LuaQueryTask("T302H")==0) then
		LuaSay(""..LuaQueryStr("name").."��������վС�����Ҵ�������ż���")
		LuaSay("л������...��������!")
		DelItem("o_mission076",1)
		LuaSetTask("T302H",99)
		UpdateMenu()
	end

elseif(answer=="T21") then              ----------------------����֮��
	if(LuaQueryTask("T21")==1) then
		local a = LuaQuery("level") * 6 + LuaQuery("extra_skp") - LuaQuery("used_skpoint")
		if(LuaQuery("level")>=10)then
				if(LuaQueryStr("class")=="shen") then      --սʿ
					SendCommand("call=л���������Դ���������⻪�����£��Ϸ���֧�Ŷ��꣬�������ˡ�����������δ����Ҫ����������Щ�������ˡ�@!|0|12|3|4|2")
					if(LuaQueryStr("MobieType") ~= "S20")then
						LuaSay("л����ѧϰ�����ܹ��������ܵ��˺������@3�˵�@0�ٵ��@2���ܼ�@0���ܽ���ְҵ���ܽ���Ŷ��ѡ����Ҫѧϰ�ļ����ڵ����Ĳ˵���ѡ�����������������ܵȼ�Ŷ@!")
					else
						LuaSay("л����ѧϰ�����ܹ��������ܵ��˺���@3��ȷ�����ٰ�3@0���ܽ���ְҵ���ܽ���Ŷ��ѡ����Ҫѧϰ�ļ����ڵ����Ĳ˵���ѡ�����������������ܵȼ�Ŷ@!")
					end
					LuaSay("л����������Ϊ��򿪼��ܽ��棬ѡ��@3ŭն@0����@3���絶@0�����ѧϰ��Ŷ���ɹ���ѧϰ����֮��������@5��ȡ�����@0Ŷ")
				elseif(LuaQueryStr("class")=="wu") then       --����
					SendCommand("call=л���������Դ���������⻪�����£��Ϸ���֧�Ŷ��꣬�������ˡ�����������δ����Ҫ����������Щ�������ˡ�@!|0|12|3|4|2")
					if(LuaQueryStr("MobieType") ~= "S20")then
						LuaSay("л����ѧϰ�����ܹ��������ܵ��˺������@3�˵�@0�ٵ��@2���ܼ�@0���ܽ���ְҵ���ܽ���Ŷ��ѡ����Ҫѧϰ�ļ����ڵ����Ĳ˵���ѡ�����������������ܵȼ�Ŷ@!")
					else
						LuaSay("л����ѧϰ�����ܹ��������ܵ��˺���@3��ȷ�����ٰ�3@0���ܽ���ְҵ���ܽ���Ŷ��ѡ����Ҫѧϰ�ļ����ڵ����Ĳ˵���ѡ�����������������ܵȼ�Ŷ@!")
					end
					LuaSay("л����������Ϊ��򿪼��ܽ��棬ѡ��@3����@0����@3����ն@0�����ѧϰ��Ŷ���ɹ���ѧϰ����֮��������@5��ȡ�����@0Ŷ")
				elseif(LuaQueryStr("class")=="xian") then       --ıʿ
					SendCommand("call=л���������Դ���������⻪�����£��Ϸ���֧�Ŷ��꣬�������ˡ�����������δ����Ҫ����������Щ�������ˡ�@!|0|12|3|4|2")
					if(LuaQueryStr("MobieType") ~= "S20")then
						LuaSay("л����ѧϰ�����ܹ��������ܵ��˺������@3�˵�@0�ٵ��@2���ܼ�@0���ܽ���ְҵ���ܽ���Ŷ��ѡ����Ҫѧϰ�ļ����ڵ����Ĳ˵���ѡ�����������������ܵȼ�Ŷ@!")
					else
						LuaSay("л����ѧϰ�����ܹ��������ܵ��˺���@3��ȷ�����ٰ�3@0���ܽ���ְҵ���ܽ���Ŷ��ѡ����Ҫѧϰ�ļ����ڵ����Ĳ˵���ѡ�����������������ܵȼ�Ŷ@!")
					end
					LuaSay("л����������Ϊ��򿪼��ܽ��棬ѡ��@3�һ����@0����@3����@0�����ѧϰ��Ŷ���ɹ���ѧϰ����֮��������@5��ȡ�����@0Ŷ")
				end

		else
			LuaSay("л��������ĸ��˵ȼ�������10���������Ұɣ��ܵõ�@3���Ľ���@0Ŷ@!")
		end
		LuaSetTask("T21",2)
		AddLog("����֮�������顿",21)
		UpdateMenu()
	elseif(LuaQueryTask("T21")==2)then
		if(LuaQuery("used_skpoint")==0)then
			if(LuaQueryStr("class")=="shen") then      --սʿ
				if(LuaQueryStr("MobieType") ~= "S20")then
					SendCommand("call=л����ѧϰ�����ܹ�����������ܵ��˺������@3�˵�@0�ٵ��@3���ܼ�@0���ܽ���ְҵ���ܽ���Ŷ��ѡ����Ҫѧϰ�ļ����ڵ����Ĳ˵���ѡ�����������������ܵȼ�Ŷ@!|0|12|3|4|2")
				else
					SendCommand("call=л����ѧϰ�����ܹ�����������ܵ��˺���@3��ȷ�����ٰ�3@0���ܽ���ְҵ���ܽ���Ŷ��ѡ����Ҫѧϰ�ļ����ڵ����Ĳ˵���ѡ�����������������ܵȼ�Ŷ@!|0|12|3|4|2")
				end
				LuaSay("л����������Ϊ��򿪼��ܽ��棬ѡ��@3ŭն@0����@3���絶@0�����ѧϰ��Ŷ���ɹ���ѧϰ����֮��������@5��ȡ�����@0Ŷ")
			elseif(LuaQueryStr("class")=="wu") then       --����
				if(LuaQueryStr("MobieType") ~= "S20")then
					SendCommand("call=л����ѧϰ�����ܹ�����������ܵ��˺������@3�˵�@0�ٵ��@3���ܼ�@0���ܽ���ְҵ���ܽ���Ŷ��ѡ����Ҫѧϰ�ļ����ڵ����Ĳ˵���ѡ�����������������ܵȼ�Ŷ@!|0|12|3|4|2")
				else
					SendCommand("call=л����ѧϰ�����ܹ�����������ܵ��˺���@3��ȷ�����ٰ�3@0���ܽ���ְҵ���ܽ���Ŷ��ѡ����Ҫѧϰ�ļ����ڵ����Ĳ˵���ѡ�����������������ܵȼ�Ŷ@!|0|12|3|4|2")
				end
				LuaSay("л����������Ϊ��򿪼��ܽ��棬ѡ��@3����@0����@3����ն@0�����ѧϰ��Ŷ���ɹ���ѧϰ����֮��������@5��ȡ�����@0Ŷ")

			elseif(LuaQueryStr("class")=="xian") then       --ıʿ
				if(LuaQueryStr("MobieType") ~= "S20")then
					SendCommand("call=л����ѧϰ�����ܹ�����������ܵ��˺������@3�˵�@0�ٵ��@3���ܼ�@0���ܽ���ְҵ���ܽ���Ŷ��ѡ����Ҫѧϰ�ļ����ڵ����Ĳ˵���ѡ�����������������ܵȼ�Ŷ@!|0|12|3|4|2")
				else
					SendCommand("call=л����ѧϰ�����ܹ�����������ܵ��˺���@3��ȷ�����ٰ�3@0���ܽ���ְҵ���ܽ���Ŷ��ѡ����Ҫѧϰ�ļ����ڵ����Ĳ˵���ѡ�����������������ܵȼ�Ŷ@!|0|12|3|4|2")
				end
				LuaSay("л����������Ϊ��򿪼��ܽ��棬ѡ��@3�һ����@0����@3����@0�����ѧϰ��Ŷ���ɹ���ѧϰ����֮��������@5��ȡ�����@0Ŷ")
			end
		else
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T21jl")
		end
	end
elseif(answer=="T21jl")then
	if(LuaQueryTask("T21")==2)then
		LuaSetTask("T21",99)
		LuaAddJx("combat_exp",27500,"T21")
		LuaAddAchievementSchedule("Task_num",1)
		DelLog("21")
		UpdateMenu()
		AddMenuItem("@7��ȡ����","")
		AddMenuItem("@1[��]@0@5������Ʒ","Txrfuli")

	end
--------------------------------------------------------------------------------------------------------
elseif(answer=="Txrfuli") then
	
		if(LuaQueryTask("Txrfuli")==0)then
				LuaSay("л������ͳһOL�������ִ����ͣ������Ϸ���Ե�������Ҿ����͸���@248888����@0��@21W@0ͭ������������")
				LuaSay("л�����������������ң��ҽ���������@250���@0��@2����188888@0��@3���@0���ǰ󶨵�Ԫ��Ŷ�����᲻�ݴ��@!")
				AddMenuItem("@7���ִ���","")
				AddMenuItem("��ȡ�������ֽ���","Txrfulijl1")
			
		elseif(LuaQueryTask("Txrfuli")==1) then
			if(GetCurrentDay()~=LuaQueryStrTask("xrTaskday1")) then
				LuaSay("л����������,��ӭ���ٴ���������,�ҽ�ʵ���ҵĳ�ŵ������˵�������ȡ��50��ң�@2188888@0����@!")
				LuaSay("л���������㻹���Ե��Ϸ�������ȡ@2����388888@0��@2ͭ��58888@0��ֻҪ�������Ҿ��ͣ�ǧ��Ҫ����Ŷ")
				AddMenuItem("@7���ִ���","")
				AddMenuItem("��ȡ�������ֽ���","Txrfulijl2")
			else
				LuaSay("л�����ļ��Բ����ȶ���,�����Ѿ�����Ǽǹ���,@2������ܼ�����ȡ@0Ŷ,͵͵�����㣬������и��ߵĽ���Ŷ���ɱ���Ӵ��@!")
				LuaSay("л���������㻹���Ե��Ϸ�������ȡ@2����388888@0��@2ͭ��58888@0��ֻҪ�������Ҿ��ͣ�ǧ��Ҫ����Ŷ")
			end
		elseif(LuaQueryTask("Txrfuli")==2) then
			if(GetCurrentDay()~=LuaQueryStrTask("xrTaskday2")) then
				LuaSay("л��������,�Ϸ����ϲ���к��ĵ�������,���Ǹ���Ľ�����@!")
				AddMenuItem("@7���ִ���","")
				AddMenuItem("��ȡ�������ֽ���","Txrfulijl3")
			else
				LuaSay("л���������򲻴����ĸ������Ѿ���ȡ,@2�ڴ����и��ྫ�ʡ�@!")
			end
		elseif(LuaQueryTask("Txrfuli")==99) then
			LuaSay("л�������Ѿ���ȡ�����˸���,�Ͽ�����ͳһ����֮·�ɡ����ྫ�ʵ�����ȥ���֡�@!")
			LuaSay("л����͵͵�ĸ�����,@220��@0�Ϳ���ȥ@4����@0@3˾�����@0��,��ȡ@3ÿ�յ�½����@0�ˡ�@!")
		
		
		end
	
	
elseif(answer=="Txrfulijl1")then
				if(LuaQueryTask("Txrfuli")==0)then
					LuaAddJx("combat_exp",48888,"Txrfuli")
					LuaGive("coin",10000,"Txrfuli")
					LuaSay("л�����������������ң��ҽ���������@250���@0��@2����188888@0��@3���@0���ǰ󶨵�Ԫ��Ŷ�����᲻�ݴ��@!")
					if(LuaQueryStr("MobieType") ~= "S20")then
						LuaSay("л�����ٴ�����һ��ʵ�õļ��ɣ�������@3���������������ż�@0ʱ�����԰�@3ֱ�ӵ����@0�Ϳɴ��ż���@!")
					else
						LuaSay("л�����ٴ�����һ��ʵ�õļ��ɣ�������@3���������������ż�@0ʱ�����԰�@3ȷ����@0�ٰ�@38��@0���ż���@!")
					end
					LuaSetTask("Txrfuli",1)
					LuaSetTask("xrTaskday1",GetCurrentDay())
					UpdateMenu()
					if(LuaQueryTask("T263")==0) then
						AddMenuItem("@7��ȡ����","")
						AddMenuItem("@7����Ǳ�������顿","T263")
					end
				end
elseif(answer=="Txrfulijl2")then
				if(LuaQueryTask("Txrfuli")==1)then
					LuaAddJx("combat_exp",188888,"Txrfuli")
					LuaAddYB(2,50)------------���
					--LuaGive("o_state001j",1,"Txrfuli")
					--LuaGive("o_state012j",1,"Txrfuli")
					LuaSay("л���������㻹���Ե��Ϸ�������ȡ@2����388888@0��ͭ��5W��ֻҪ�������Ҿ��ͣ�ǧ��Ҫ����Ŷ")
					LuaSay("л����͵͵�ĸ�����,@220��@0�Ϳ���ȥ@4����@0@3˾�����@0��,��ȡ@3ÿ�յ�½����@0�ˡ�@!")
					LuaSetTask("Txrfuli",2)
					LuaSetTask("xrTaskday2",GetCurrentDay())
					UpdateMenu()
					if(LuaQueryTask("T263")<99) then
						AddMenuItem("@7��ȡ����","")
						AddMenuItem("@7����Ǳ�������顿","T263")
					end
				end
elseif(answer=="Txrfulijl3")then
				if(LuaQueryTask("Txrfuli")==2)then
					LuaAddJx("combat_exp",388888,"Txrfuli")
					LuaGive("coin",58888,"Txrfuli")
					--LuaAddYB(2,70)------------���
					--LuaGive("o_state001j",2,"Txrfuli")
					--LuaGive("o_state012j",2,"Txrfuli")
					LuaSay("л����͵͵�ĸ�����,@220��@0�Ϳ���ȥ@4����@0@3˾�����@0��,��ȡ@3ÿ�յ�½����@0�ˡ�@!")
					LuaSetTask("Txrfuli",99)
					UpdateMenu()
					if(LuaQueryTask("T263")<99) then
						AddMenuItem("@7��ȡ����","")
						AddMenuItem("@7����Ǳ�������顿","T263")
					end
				end








-------------------------------------------------------------------------------------------------
elseif(answer=="T265") then                    ------------���ٽ���
	if(LuaQueryTask("T265") == 0) then
		LuaSay("л������ӭ�����������ǣ�����������ҵ�����ĵط���ȥ�ݷ�һ��@4��������@0��@35λ����@0�ɣ�����в�С���ջ�Ŷ��@!")
		LuaSay("л���������ע��ͷ@3����̾�ŵ�NPC@0Ŷ�����ǻ�������Ҫ���İ�����")
		LuaSetTask("T265",1)
		AddLog("���ٽ��������顿",265)
		UpdateMenu()
		UpdateNPCMenu("wqdhuoji")
		UpdateNPCMenu("fjdhuoji")
		UpdateNPCMenu("spdhuoji")
		UpdateNPCMenu("ydhuoji")
		UpdateNPCMenu("zhongzis")
		UpdateTopSay("�ʺ򽨿����ϵ�5λ����")

	elseif(LuaQueryTask("T265") == 1) then
		if(LuaQueryTask("T265A") == 99 and LuaQueryTask("T265B") == 99 and LuaQueryTask("T265C") == 99 and LuaQueryTask("T265D") == 99 and LuaQueryTask("T265E") == 99) then
			LuaSay("л�������������������ջ��ķᰡ��@!")
			LuaSay("л�������⣬@2����@0�Ϳ�ǰ��@4��������@0Ŷ�������и��ྫ�ʵ����㣬���������㻹���ڴ˺úö�����@!")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T265jl")
		else
			LuaSay("л����@3��������Ʒ�����ߡ�ҩƷ������5λ����@0�㻹û�аݷ���Ŷ�����Ǿ�����@4��������@0����ȥ��أ�")
		end
	end
	elseif(answer=="T265jl") then
		if(LuaQueryTask("T265") == 1) then
			LuaDelTask("T265A")
			LuaDelTask("T265B")
			LuaDelTask("T265C")
			LuaDelTask("T265D")
			LuaDelTask("T265E")
			LuaSetTask("T265",99)
			DelLog("265")
			LuaAddJx("combat_exp",27500,"T265")
			LuaGive("coin",500,"T265")
			LuaAddAchievementSchedule("Task_num",1)
			UpdateMenu()
		end
elseif(answer=="T263") then                    ------------����Ǳ��
		if(LuaQueryTask("T263") == 0) then
			LuaSay("л���������Ϸ���Ĵ�������������񱱸����˲żüã����ǿ�����������֮����������������ο��@!")
			LuaSay("л����@4��������@0��@3��ԣ@0�����Ϸ�����˲ţ��и�������Ѳ��и�ǿ��ս���������һ������֮��ȥ����ԣŶ@!")
			LuaSetTask("T263",1)
			--local userid = LuaRandomFriend("���ſ����ѣ������������ֵܰ�@!")
			--if (userid == 0) then
			LuaSay("@1��ʾ��ϵͳ��ʱû���ҵ����ʵĺ��ѣ�")
			--else
			--	if(LuaQueryStr("MobieType") ~= "S20")then
			--		LuaSay("��ʾ����ĺ��ѽ�" .. LuaOtherQueryStr(userid, "name").."������˵��ٵ���罻��ѡ����Ѿ��ܿ����������Ŷ��@!")
			--	else
			--		LuaSay("��ʾ����ĺ��ѽ�" .. LuaOtherQueryStr(userid, "name").."����ȷ�����ٰ�9��ѡ����Ѿ��ܿ����������Ŷ��@!")
			--	end
			--end
			AddLog("����Ǳ�������顿",263)
			UpdateTopSay("���˵ĵط����н������˾��ǽ���")
			UpdateMenu()
			UpdateNPCMenu("liuyu")
			if(LuaQueryTask("T21")==99)then
				AutoGoToNpc("@7�Ƿ�@0Ѱ·��@4��ԣ","liuyu")
			end
		elseif(LuaQueryTask("T263") == 1) then

				LuaSay("л�������û����Ӻ��ѣ�����Ҳ���Լ����Ŷ���Ͽ�ȥ����ԣ�ɣ���������@4��������@0��")
				AutoGoToNpc("@7�Ƿ�@0Ѱ·��@4��ԣ","liuyu")
		end


elseif(answer=="T322") then              ------------------------��ֶ֮��
		if(LuaQueryTask("T322")==1) then
			LuaSay("л�������껸��֮���ƹ�ʧ�ܣ�����лĳ���ţ�лĳ�����������������Ի���ֶ�������Ļ�Ǹ�εġ�")
			LuaSay("л����������һ��@2���¾�@0��ϣ������ֶ�������ж�����Ϊ�һ���֮�������ɾ�һ����ҵ��ĪҪ���������׵ĺ󳾡�")
			LuaSay("л�������㽫���¾����ٽ���@4��������@0��@3����@0�ɡ�")
			LuaSetTask("T322",2)
			LuaGive("o_mission014",1)
			UpdateTopSay("�ظ����������Ļ���")
			AddLog("��ֶ֮�顾���顿",322)
			AddMenuItem("@7����������","")
			AddMenuItem("ȷ�ϴ���������","Tcs_hc")
			UpdateMenu()
		elseif(LuaQueryTask("T322")==2) then
			LuaSay("л���������¾�����@4��������@0��@3����@0�ɡ�")
			AddMenuItem("@7����������","")
			AddMenuItem("ȷ�ϴ���������","Tcs_hc")
		end
	elseif(answer=="Tcs_hc")then
		ChangeMap("lu_jkdj",244,221)

elseif(answer=="T368") then              ----------------------а������
		if(LuaQueryTask("T368")==2 ) then
			LuaSay("л������ô��˲�С��ѽ������������һ���Ϳ��Խ��а���������ˡ�@!")
			LuaSay("��ʾ��������а���������Ѿ������")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T368jl")
		end
		elseif(answer=="T368jl")then
		       if(LuaQueryTask("T368")==2)then
				LuaSetTask("T368",99)
				LuaAddJx("combat_exp",69000,"T368")
				LuaAddAchievementSchedule("Task_num",1)
				LuaGive("coin",500,"T368")
				DelLog("368")
				UpdateMenu()
			end

elseif(answer=="T850")then         ------����
	 if(LuaQueryTask("T850") == 0)then
 		LuaSay("л��������������ҥ��̫�����ˣ����µ��±����ɱΣ���������ȥ@4����@0����ȵ���������@3����@0��")
 		LuaSetTask("T850",1)
 		UpdateTopSay("������ȥ�ұ��°�")
		AddLog("������顿",850)
		UpdateMenu()
     elseif(LuaQueryTask("T850") == 1)then
 		LuaSay("л����@3����@0����@4����@0�")
 	end
elseif(answer=="T851")then         ------ԩ��
	 if(LuaQueryTask("T851") == 0)then
 		LuaSay("л�����������Ų��ԣ�����ϳ����ͷ�����ȥ@4����@0�ҵ�@3˾�����@0Ϊ������齨����������ʵ��")
		LuaSetTask("T851",1)
 		UpdateTopSay("������ȥ��˾����Ӱ�")
		AddLog("ԩ�������顿",851)
		UpdateMenu()
	elseif(LuaQueryTask("T851") == 1 or LuaQueryTask("T851") == 2 or  LuaQueryTask("T851") == 3)then
 		LuaSay("л������ȥ��@3˾�����@0�ɣ�������@4����@0�")
 	elseif(LuaQueryTask("T851") == 4)then
 		LuaSay("л������е�ǰ��˾��������˻����ڶ�����ɷ��Ҳ��")
 			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T851jl")
	 end
	elseif(answer=="T851jl")then
		if(LuaQueryTask("T851") == 4)then
		    LuaSetTask("T851",99)
		    LuaGive("coin",1000,"T851")
		    LuaAddJx("combat_exp",108000,"T851")
			LuaAddAchievementSchedule("Task_num",1)
		    DelLog(851)
		    UpdateMenu()
		    end
elseif(answer=="T852")then         ------ǰ��
	 if(LuaQueryTask("T852") == 0)then
   		LuaSay("л���������ñ����������˾�����֮�֣�������Ϊ�����ã�������һ�⣬����@4������Ӫ@0��@3л��@0��")
		LuaSetTask("T852",1)
		LuaGive("o_mission363",1)
 		UpdateTopSay("������ȥ��л����")
 		AddLog("ǰ�������顿",852)
		UpdateMenu()
	 elseif (LuaQueryTask("T852") == 1)then
		LuaSay("л�������Ž���@4������Ӫ@0��@3л��@0��")
	 end


elseif(answer=="T423A") then                       ---------�ٶȵĿ���
               if(LuaQueryTask("T423A") ==0) then
    			 LuaSay("л����������˵��ٶȴ�����Ϣ���������Ҿ�����ʱ���˽�ǰ��ս����")
    			 LuaSetTask("T423A",99)
			 UpdateTopSay("ȥ��Ӫǰ�ڻظ���վС����")
     			 UpdateMenu()
                end
elseif(answer=="T70")then		-------------ÿ�յ��
        if(LuaQueryTask("T70")==2)then
	LuaSay(LuaQueryStr("name").."��ة����ˣ���������������������㱨������")
	LuaSay("л�����ţ��ã�֪���ˣ����������㡣")
	LuaSetTask("T70",3)
	LuaSetTask("T70time",GetCurrentTime())
	UpdateMenu()
	end


--��ڽ�ɽ
elseif(answer=="T385")then
	if(TeamCount()>=2)then
		if(LuaQueryTask("T385")==1)then
			if(TeamQueryTask("T385")>=1)then
				if(LuaQueryTask("TfindNPC_1")==1)then
					LuaSay("л�����ܺã�лл����Ҵ���@2��ɽ����[�Ͼ�]@0�����Ҽ�ʱ���˽⵽��ǰ���������")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_1",98)
					DelItem("o_mission417",1)
					UpdateMenu()
				elseif(LuaQueryTask("TfindNPC_1")==2)then
					LuaSay("л�����ܺã�лл����Ҵ���@2��ɽ����[�¾�]@0�����Ҽ�ʱ���˽⵽��ǰ���������")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_1",98)
					DelItem("o_mission418",1)
					UpdateMenu()
				end
			else
				LuaSay("л������Ķ��ѻ�û�������ۣ��Ͽ�֪ͨ��������Ŷ")
			end
		elseif(LuaQueryTask("T385")==98)then
			LuaSay("л�������Ѿ���һ��Ľ�ɽ�����͵����ҵ����ϣ���ȥ���������ȡ�����ɡ�")

		end
	else
		LuaSay("��ʾ����������Ҫ��Ӳ��ܽ�����һ��")
	end

elseif(answer=="Tsnpc_24")then
	if(LuaQueryTask("Tsnpc_24")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("л�������ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_24",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_24")==2)then
		LuaSay("л�������ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_24")then
	if(LuaQueryTask("Tenpc_24")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ���������Ĺ��ף�ϣ�����ٽ�����")
		LuaSay("л�����ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_24",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_24")==2)then
		LuaSay("л�������Ѿ������ˣ����ȥ��ȡ������")
	end
elseif(answer=="Tpubcode")then
	if(LuaQuery("level")>=20)then
		if(LuaQueryTask("al_Tpubcode")==0)then
			LuaSet("Tgcjihuoma",2)	--Tgcjihuoma��ֻ��һ�ּ����룬1Ϊ��������
			local a = GetDjCode()
			LuaSay("��ȡ������ɹ�!�����Ʊ��ܣ�")
			LuaSay("���ļ�����Ϊ��"..a.."")
			SendMail("��������ȡ�ɹ�","ϵͳ","","���ļ�����Ϊ"..a.."")
			LuaSetTask("usercode",a)
			LuaSetTask("al_Tpubcode",1)
			UpdateMenu()
		else
			local a = LuaQueryStrTask("usercode")
			LuaSay("���Ѿ���ȡ���������ˣ����ļ�����Ϊ"..a.."��ף����Ϸ���@!")
		end
	else
		LuaSay("����������20��������ȡ�����룬�ڹ�������ȡ��@3������������@0Ŷ@!")
	end
--[[elseif(answer=="Tpubcode1")then
	LuaSay("�����Ǽ�����һ�����")
	if(LuaQuery("Txulie")== 0) then
		SetDjCode()  --�ɹ��󷵻�Txulie=1,�ü�����״̬��Ϊ2,���˼�����ʧЧ
	elseif(LuaQuery("Txulie")== 1)then
		LuaSay("���Գɹ��������㶫��")
		LuaSay("�����������ȡ����")
		LuaDel("Txulie")
	end]]

end
LuaSendMenu()
return 1
end



