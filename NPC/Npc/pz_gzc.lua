NPCINFO = {
serial="131" ,
base_name="pz_gzc",
icon=2568,
NpcMove=2568,
name="Ү���۲�" ,
iconaddr=1 ,
butt="30|10|72", 
name_color="CEFFCE" ,
lastsay="������ʿ��Զ��������",
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
	if(LuaQueryTask("T810")==0 and level>=63 and level<66) then
		AddTopSayMenuItem("��ֹ���꡾ѭ����","T810")
		havetask1=1
	end
	if(LuaQueryTask("T811")==0 and level>=61 and level<63) then
		AddTopSayMenuItem("����������ѭ����","T811")
		havetask1=1
	end

------------------------------------------------------------------------
	if(LuaQueryTask("T810")==1)then
		AddTopSayMenuItem("@2��ֹ���꡾ѭ����","T810")
		havetask4 =1
	end
	if(LuaQueryTask("T811")==1)then
		AddTopSayMenuItem("@2����������ѭ����","T811")
		havetask4 =1
	end
	if(LuaQueryTask("T802")==1)then
		AddTopSayMenuItem("@2���ؾ�������","T802")
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
	  LuaSay("Ү���۲ţ�������ʿ��Զ����������")
		
--------------------------------------------------------------------���ؾ�������
elseif(answer== "T802")then
	if(LuaQueryTask("T802a")==1)then
		local coldata1={Ycrwjz(LuaQueryTask("shuzu"))}
		LuaSay("@2"..coldata1[2].."@0")	
		LuaSay("�𰸾��ǣ�@1"..coldata1[3].."@0��û�뵽�ɣ�@)")	
		local level=LuaQuery("level")
			if(level>80)then
		level=80
	end
		local jingyan=244176+level^2*20
			LuaAddJx("combat_exp",jingyan,"T802")
			LuaSetTask("T802",0)
			LuaSetTask("T802a",0)
			DelLog("802")
			LuaDelTask("shuzu")
			DelItem("o_ycrwjz",1)
			LuaSay("�����Ȼ����һ��������ʧ��.....")
	else
		LuaSay("Ү���۲ţ��Ϸ�������Ҳ��֪���𰸣���ȥ���������峤���ذ������Ƕ�λ�ɣ�")
	end
	UpdateMenu()
--------------------------------------------------------------------------����ѭ����
elseif(answer== "T810") then
	local level=LuaQuery("level")
	if(LuaQueryStrTask("810day")~=GetCurrentDay())then
		LuaDelTask("T810num")
	end
		if(LuaQueryTask("T810")==0) then
			LuaSay("Ү���۲�: �ʱ������������Ű��裬����ȥ@3�����30���ʱ�����@0����ֹս�ң���ɺ�ظ���")
			LuaSetTask("T810",1)
			LuaAddTask("T810num",1)
			LuaSetTask("810day",GetCurrentDay())
			LuaSetTask("task_kill/mon_052/T810",1)
			UpdateTopSay("ɱ30���ʱ�����")
			AddLog("��ֹ���꡾ѭ����",810)
   			UpdateMenu()
		elseif(LuaQueryTask("T810")==1)then
			if(LuaQueryTask("task_kill/mon_052/T810")>=31) then
				LuaSay(LuaQueryStr("name").."��@330���ʱ�����@0�ѱ�������")
				LuaSay("Ү���۲�:��Ȼ��������Ϊ���ɵò���")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T810jl")
			else
				LuaSay("Ү���۲�:�㻹û��ɱ��@4��ս��@0���@330���ʱ�����@0Ŷ��")
				UpdateTopSay("ɱ30���ʱ�����")
			end
		end

elseif(answer=="T810jl")then
	local level=LuaQuery("level")
		if(level>80)then
		level=80
	end
	if(LuaQueryTask("T810")==1) then
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
			LuaDelTask("T810")
			DelLog("810")
			LuaDelTask("task_kill/mon_052/T810")
			if(LuaQueryTask("T810num")<=30)then
				LuaAddJx("combat_exp",186820+level^2*20,"T810")
				LuaGive("coin",money,"T810")
			else
				LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ��顣")
				LuaAddJx("combat_exp",(186820+level^2*20)/2,"T810")
			end
			UpdateMenu()
	end


--------------------------------------------------------------------------�ռ���ѭ����
elseif(answer== "T811") then
	local level=LuaQuery("level")
	if(LuaQueryStrTask("811day")~=GetCurrentDay())then
		LuaDelTask("T811num")
	end
		if(LuaQueryTask("T811")==0) then
			LuaSay("Ү���۲�: ����ȱ�����أ�ʮ��𼱣�����ȥ����ս�ܣ�ȡ��20��ս���ⲹ������ɣ�")
			LuaSetTask("T811",1)
			LuaAddTask("T811num",1)
			LuaSetTask("811day",GetCurrentDay())
			UpdateTopSay("ɱս��ȡս����")
			AddLog("����������ѭ����",811)
   			UpdateMenu()
		elseif(LuaQueryTask("T811")==1)then
			if(LuaItemStatusNormalCount("o_mission421")>=20) then
				LuaSay(LuaQueryStr("name").."��@320��ս����@0����ȡ�ã���֪��������")
				LuaSay("Ү���۲�:��Щ�������Խ��ȼü֮��������Ҫ���׽���������⻹ԶԶ��������")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T811jl")
			else
				LuaSay("Ү���۲�:�㻹û�д�ս������ȡ��20��ս����Ŷ��")
				UpdateTopSay("ɱս��ȡ25��ս����")
			end
		end

elseif(answer=="T811jl")then
	local level=LuaQuery("level")
		if(level>80)then
		level=80
	end
	if(LuaQueryTask("T811")==1) then
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
			LuaDelTask("T811")
			DelLog("811")
			DelItem("o_mission421",20)
			if(LuaQueryTask("T811num")<=30)then
				LuaAddJx("combat_exp",174705+level^2*20,"T811")
				LuaGive("coin",money,"T811")
			else
				LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ��顣")
				LuaAddJx("combat_exp",(174705+level^2*20)/2,"T811")
			end
			UpdateMenu()
	end

end
LuaSendMenu()
return 1
end


function Ycrwjz(collection)
array={}
array[1]={1,"���ڲ����ʵ�ʱ��Ҳ��Ҫʲôˮ��","нˮ"}
array[2]={2,"���ֶ����С��ֻè���������񻢣�����ʲô�����أ�","С�ϻ�"}
array[3]={3,"������ʲôû�б��?","����"}
array[4]={4,"һ����ʲô�ط��ܴ���С��������?","���۶�"}
array[5]={5,"3����3����3Ͱˮ��9����9���ü�Ͱˮ�أ�","9"}
array[6]={6,"��Զ��û���ս������ʲô�أ�","����"}
array[7]={7,"���˲��ص���ʲô�¶���","ɹ��"}
array[8]={8,"��һ��ţƤ�����ױ���������ʲôţƤ�أ�","��ţƤ"}
array[9]={9,"ʲô�ط��ܳ���������","ҽԺ"}
array[10]={10,"�������κεط��Ҳ�����˱��˵�ס����ʲô�ط���","�η�"}
array[11]={11,"ʲô�������˵�������ˣ�","�ڻ�"}
array[12]={12,"һ�����ţ���ϵ��ʻ���ʲô����","ǣţ��"}
array[13]={13,"ʲô������ܷ���������","�鳵"}
array[14]={14,"����˾�����⣬����˭ÿ�������ظ�Ǯ��","��ƱԱ"}
array[15]={15,"ʲô�ط���Ʒ�ۼ�Խ�ߣ�����Խ����?","����"}
array[16]={16,"Ҫ����Ů���Ӻÿ���˵ʲô���������?","�ѻ�"}
array[17]={17,"һ��һ����ʲô��?","̫"}
array[18]={18,"ʲô���֣���Ҷ����Ầ��?","�ѹ�"}
array[19]={19,"�ʴȵĻʵ�ȴ�������˾������ͷ��ﷸ��Ϊʲô?","����������"}
array[20]={20,"������Ů����ʲô��ͬ��?","������"}
array[21]={21,"��һ���������㲻��Ҫ����ȴ�ֲ��ܲ�Ҫ������������ʲô��?","���"}
array[22]={22,"�����ָͷ���ٵ���������ʲô?","�з�"}
array[23]={23,"С����������Ϊ��û��?","����ûˮ"}
array[24]={24,"˯��������ʲô?","ʧ��"}
array[25]={25,"���������ι̵�����ʲô?","����"}
array[26]={26,"ֻ��ͷȴû�������ţ����ʲôţ?","һͷţ"}
array[27]={27,"ʲô�߿��ü���ץ����?","����"}
array[28]={28,"��û������үү����ʲôүү?","����ү"}
array[29]={29,"���˳ԺڵĶ�����ʲô?","�ڳԺ�"}
array[30]={30,"ʲô���Ĺ����˴���ʹ��?","����"}
if(collection==1)then
	 collection=LuaRandom(30)+1
end
	 str1=array[collection][2]	--����
	 str2=array[collection][3]	--��

return  collection,str1,str2
end