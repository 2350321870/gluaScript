NPCINFO = {
serial="133" ,
base_name="pz_smlz",
icon=2531,
NpcMove=2531,
name="����" ,
iconaddr=1 ,
butt="30|10|72", 
name_color="CEFFCE" ,
lastsay="ɳĮ���޵������Ǹ�����֮��",
LuaType=1,
}
function do_talk(answer)
if(answer=="ask")then
	havetask =0
	local havetask0=0	--Ĭ��û��
	local havetask1=0	--��̾��
	local havetask2=0	--��ɫ�ʺ�
	--local havetask3=0	--��ɫ�˵�
	local havetask4=0
	local level=LuaQuery("level")
	AddTopSayMenuItem("@7�����б�","")
	if(LuaQueryTask("T831")==0 and level>=66 and level<=70) then
		AddTopSayMenuItem("���´�ˮ��ѭ����","T831")
		havetask1=1
	end
	if(LuaQueryTask("T830")==0 and level>=66 and level<=68) then
		AddTopSayMenuItem("�ռ����ʡ�ѭ����","T830")
		havetask1=1
	end

------------------------------------------------------------------------
	if(LuaQueryTask("T831")==1)then
		AddTopSayMenuItem("@2���´�ˮ��ѭ����","T831")
		havetask4 =1
	end
	if(LuaQueryTask("T830")==1)then
		AddTopSayMenuItem("@2�ռ����ʡ�ѭ����","T830")
		havetask4 =1
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
-------------------------------------------------------------------------
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
-------------------------------------------------------------------------
elseif(answer=="liaotian") then
	  LuaSay("���⣺����������������ܡ�")
		

--------------------------------------------------------------------------����ѭ����
elseif(answer== "T831") then
	local level=LuaQuery("level")
	if(LuaQueryStrTask("831day")~=GetCurrentDay())then
		LuaDelTask("T831num")
	end
		if(LuaQueryTask("T831")==0) then
			LuaSay("����: ����@3ɳ��@0��ʳ�����޴���ˮ��Դ����ȥ@3�ɵ�30��ɳ��@0����ɺ�ظ���")
			LuaSetTask("T831",1)
			LuaAddTask("T831num",1)
			LuaSetTask("831day",GetCurrentDay())
			LuaSetTask("task_kill/mon_054/T831",1)
			UpdateTopSay("ɱ30��ɳ��")
			AddLog("���´�ˮ��ѭ����",831)
   			UpdateMenu()
		elseif(LuaQueryTask("T831")==1)then
			local a=(LuaQueryTask("task_kill/mon_054/T831")-1)
			if(LuaQueryTask("task_kill/mon_054/T831")>=31) then
				LuaSay(LuaQueryStr("name").."��@330��ɳ��@0�ѱ�������")
				LuaSay("����:����~...��Ȼ��������Ϊ���ɵò���")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T831jl")
			else
				LuaSay("����:�㻹û��ɱ��@4ɳĮ����@0��@330��ɳ��@0Ŷ������ɱ��"..a.."��")
				UpdateTopSay("ɱ��30��ɳ���������Ұ�")
			end
		end

elseif(answer=="T831jl")then
	local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaQueryTask("T831")==1) then
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
			LuaDelTask("T831")
			DelLog("831")
			LuaDelTask("task_kill/mon_054/T831")
			if(LuaQueryTask("T831num")<=30)then
				LuaAddJx("combat_exp",200236+level^2*20,"T831")
				LuaGive("coin",money,"T831")
			else
				LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ��顣")
				LuaAddJx("combat_exp",(200236+level^2*20)/2,"T831")
			end
			UpdateMenu()
	end


--------------------------------------------------------------------------�ռ���ѭ����
elseif(answer== "T830") then
	local level=LuaQuery("level")
	if(LuaQueryStrTask("830day")~=GetCurrentDay())then
		LuaDelTask("T830num")
	end
	if(LuaQueryTask("T830num")<=30)then
		if(LuaQueryTask("T830")==0) then
			LuaSay("����: ���������ѷ��ֱ��ռ�1�������󡢶���ľ����������Ұɣ�")
			LuaSetTask("T830",1)
			LuaAddTask("T830num",1)
			LuaSetTask("830day",GetCurrentDay())
			UpdateTopSay("�ֱ��ռ�1��������ľ��")
			AddLog("�ռ����ʡ�ѭ����",830)
   			UpdateMenu()
		elseif(LuaQueryTask("T830")==1)then
			if(LuaItemStatusNormalCount("o_material_48")>=1 and LuaItemStatusNormalCount("o_material_39")>=1 and LuaItemStatusNormalCount("o_material_30")>=1) then
				LuaSay("����:��Щ�������Խ��ȼü֮��������Ҫ���׽���������⻹ԶԶ��������")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T830jl")
			else
				LuaSay("����:��ס�ˣ���Ҫ����1��������1������ľ��1�������⣬�㻹û���ռ���ȫŶ��")
				UpdateTopSay("�ֱ��ռ�1��������ľ��")
			end
		end
	else
		LuaSay("����: ����������Ѿ��ռ����ˣ�����Ҫ�ˡ�")
	end
elseif(answer=="T830jl")then
	local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaQueryTask("T830")==1) then
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
			LuaDelTask("T830")
			DelLog("830")
			DelItem("o_material_48",1)
			DelItem("o_material_39",1)
			DelItem("o_material_30",1)
			if(LuaQueryTask("T830num")<=15)then
				LuaAddJx("combat_exp",246242+level^2*20,"T830")
				LuaGive("coin",money,"T830")
			else
				LuaSay("��ʾ���������������Ĵ����Ѿ�����15�Σ���ֻ�ܵõ�һ��ľ��顣")
				LuaAddJx("combat_exp",(246242+level^2*20)/2,"T830")
			end
			UpdateMenu()
	end




end
LuaSendMenu()
return 1
end

