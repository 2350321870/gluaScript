NPCINFO = {
serial="132" ,
base_name="pz_qdbl",
icon=2558,
NpcMove=2558,
name="�����峤" ,
iconaddr=1 ,
butt="30|10|72", 
name_color="CEFFCE" ,
lastsay="�������ǲ����̫��",
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
	if(LuaQueryTask("T820")==0 and level>=64 and level<=65) then
		AddTopSayMenuItem("����ս���ޡ�ѭ����","T820")
		havetask1=1
	end
	if(LuaQueryTask("T821")==0 and level>=65 and level<67) then
		AddTopSayMenuItem("���ǡ�ѭ����","T821")
		havetask1=1
	end

------------------------------------------------------------------------
	if(LuaQueryTask("T820")==1)then
		AddTopSayMenuItem("@2����ս���ޡ�ѭ����","T820")
		havetask4 =1
	end
	if(LuaQueryTask("T821")==1)then
		AddTopSayMenuItem("@2���ǡ�ѭ����","T821")
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
	  LuaSay("�����峤���������ǲ����̫����")
		
--------------------------------------------------------------------���ؾ�������
elseif(answer== "T802")then
	if(LuaQueryTask("T802b")==1)then
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
			LuaSetTask("T802b",0)
			DelLog("802")
			LuaDelTask("shuzu")
			DelItem("o_ycrwjz",1)
			LuaSay("�����Ȼ����һ��������ʧ��.....")
	else
		LuaSay("�����峤���Ϸ�������Ҳ��֪���𰸣���ȥ�����ذ��Һ�Ү���۲����Ƕ�λ�ɣ�")
	end
	UpdateMenu()
--------------------------------------------------------------------------����ѭ����
elseif(answer== "T820") then
	local level=LuaQuery("level")
	if(LuaQueryStrTask("820day")~=GetCurrentDay())then
		LuaDelTask("T820num")
	end
		if(LuaQueryTask("T820")==0) then
			LuaSay("�����峤:�������ޱ���������ȥ��æ@3��ѹ30��ս����@0����ɺ�ظ���")
			LuaSetTask("T820",1)
			LuaAddTask("T820num",1)
			LuaSetTask("820day",GetCurrentDay())
			LuaSetTask("task_kill/mon_056/T820",1)
			UpdateTopSay("ɱ30��ս����")
			AddLog("����ѭ����",820)
   			UpdateMenu()
		elseif(LuaQueryTask("T820")==1)then
			if(LuaQueryTask("task_kill/mon_056/T820")>=31) then
				LuaSay(LuaQueryStr("name").."��@330��ս����@0�ѱ�����ѹ��")
				LuaSay("�����峤:����~...��Ȼ��������Ϊ���ɵò���")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T820jl")
			else
				LuaSay("�����峤:�㻹û����ѹ@4��������@0��@330��ս����@0Ŷ��")
				UpdateTopSay("ɱ��30��ս�����������Ұ�")
			end
		end

elseif(answer=="T820jl")then
	local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaQueryTask("T820")==1) then
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
			LuaDelTask("T820")
			DelLog("820")
			LuaDelTask("task_kill/mon_056/T820")
			if(LuaQueryTask("T820num")<=30)then
				LuaAddJx("combat_exp",186820+level^2*20,"T820")
				LuaGive("coin",money,"T820")
			else
				LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ��顣")
				LuaAddJx("combat_exp",(186820+level^2*20)/2,"T820")
			end
			UpdateMenu()
	end


--------------------------------------------------------------------------�ռ���ѭ����
elseif(answer== "T821") then
	local level=LuaQuery("level")
	if(LuaQueryStrTask("821day")~=GetCurrentDay())then
		LuaDelTask("T821num")
	end
		if(LuaQueryTask("T821")==0) then
			LuaSay("�����峤:��ħ�ǵ�Ƥ�����Ϻ��Ƽ�ԭ�ϣ�����ȥ�����ħ�ǣ�ȡ��20����Ƥ�������ɣ�")
			LuaSetTask("T821",1)
			LuaAddTask("T821num",1)
			LuaSetTask("821day",GetCurrentDay())
			UpdateTopSay("ɱ��ħ��ȡ��Ƥ")
			AddLog("���ǡ�ѭ����",821)
   			UpdateMenu()
		elseif(LuaQueryTask("T821")==1)then
			if(LuaItemStatusNormalCount("o_mission422")>=20) then
				LuaSay(LuaQueryStr("name").."��@320����Ƥ@0����ȡ�ã���֪��������")
				LuaSay("�����峤:��Щ�������Խ��ȼü֮��������Ҫ���׽���������⻹ԶԶ��������")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T821jl")
			else
				LuaSay("�����峤:�㻹û�дӱ�ħ������ȡ��20����ƤŶ��")
				UpdateTopSay("ɱ��ħ��ȡ20����Ƥ")
			end
		end

elseif(answer=="T821jl")then
	local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaQueryTask("T821")==1) then
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
			LuaDelTask("T821")
			DelLog("821")
			DelItem("o_mission422",20)
			if(LuaQueryTask("T821num")<=30)then
				LuaAddJx("combat_exp",199481+level^2*20,"T821")
				LuaGive("coin",money,"T821")
			else
				LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ��顣")
				LuaAddJx("combat_exp",(199481+level^2*20)/2,"T821")
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