NPCINFO = {
serial="130" ,
base_name="pz_yzjw",
icon=2518,
NpcMove=2518,
name="�ذ���" ,
iconaddr=1 ,
butt="30|10|72", 
name_color="CEFFCE" ,
lastsay="Ϊ�˱�κ��ͳһ��ҵ",
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
	if(LuaQueryTask("T800")==0 and level>=61 and level<63) then
		AddTopSayMenuItem("ƽϢ���ҡ�ѭ����","T800")
		havetask1=1
	end
	if(LuaQueryTask("T801")==0 and level>=63 and level<=65) then
		AddTopSayMenuItem("������ʳ��ѭ����","T801")
		havetask1=1
	end

------------------------------------------------------------------------
	if(LuaQueryTask("T800")==1)then
		AddTopSayMenuItem("@2ƽϢ���ҡ�ѭ����","T800")
		havetask4 =1
	end
	if(LuaQueryTask("T801")==1)then
		AddTopSayMenuItem("@2������ʳ��ѭ����","T801")
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
	  LuaSay("�ذ��ң�ͳһ���µı�Ȼ���ұ�κ�ʳ���")
		
--------------------------------------------------------------------���ؾ�������
elseif(answer== "T802")then
	if(LuaQueryTask("T802c")==1)then
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
			LuaSetTask("T802c",0)
			DelLog("802")
			LuaDelTask("shuzu")
			DelItem("o_ycrwjz",1)
			LuaSay("�����Ȼ����һ��������ʧ��.....")
	else
		LuaSay("�ذ��ң��Ϸ�������Ҳ��֪���𰸣���ȥ���������峤��Ү���۲����Ƕ�λ�ɣ�")

	end
	UpdateMenu()
--------------------------------------------------------------------------����ѭ����
elseif(answer== "T800") then
	local level=LuaQuery("level")
	if(LuaQueryStrTask("800day")~=GetCurrentDay())then
		LuaDelTask("T800num")
	end
		if(LuaQueryTask("T800")==0) then
			LuaSay("�ذ���: ����ȱ���Ѿ���ʿ����ʼ�����ˣ�����ȥ@3�ɵ�30���ʱ�����@0��ɱһ�Ӱ٣���ɺ�ظ���")
			LuaSetTask("T800",1)
			LuaAddTask("T800num",1)
			LuaSetTask("800day",GetCurrentDay())
			LuaSetTask("task_kill/mon_050/T800",1)
			UpdateTopSay("ɱ30���ʱ�����")
			AddLog("ƽϢ���ҡ�ѭ����",800)
   			UpdateMenu()
		elseif(LuaQueryTask("T800")==1)then
			if(LuaQueryTask("task_kill/mon_050/T800")>=31) then
				LuaSay(LuaQueryStr("name").."��@330���ʱ�����@0�ѱ�������")
				LuaSay("�ذ���:����~...��Ȼ��������Ϊ���ɵò���")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T800jl")
			else
				LuaSay("�ذ���:�㻹û��ɱ��@4���гǽ���@0��@330���ʱ�����@0Ŷ��")
				UpdateTopSay("ɱ��30���ʱ������������Ұ�")
			end
		end

elseif(answer=="T800jl")then
	local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaQueryTask("T800")==1) then
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
			LuaDelTask("T800")
			DelLog("800")
			LuaDelTask("task_kill/mon_050/T800")
			if(LuaQueryTask("T800num")<=30)then
				LuaAddJx("combat_exp",174176+level^2*20,"T800")
				LuaGive("coin",money,"T800")
			else
				LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ��顣")
				LuaAddJx("combat_exp",(174176+level^2*20)/2,"T800")
			end
			UpdateMenu()
	end


--------------------------------------------------------------------------�ռ���ѭ����
elseif(answer== "T801") then
	local level=LuaQuery("level")
	if(LuaQueryStrTask("801day")~=GetCurrentDay())then
		LuaDelTask("T801num")
	end
		if(LuaQueryTask("T801")==0) then
			LuaSay("�ذ���: ����ȱ�����أ�ʮ��𼱣�����ȥ������Ы��ȡ��20����Ы�ⲹ������ɣ�")
			LuaSetTask("T801",1)
			LuaAddTask("T801num",1)
			LuaSetTask("801day",GetCurrentDay())
			UpdateTopSay("ɱ��Ыȡ��Ы��")
			AddLog("������ʳ��ѭ����",801)
   			UpdateMenu()
		elseif(LuaQueryTask("T801")==1)then
			if(LuaItemStatusNormalCount("o_mission420")>=20) then
				LuaSay(LuaQueryStr("name").."��@320����Ы��@0����ȡ�ã���֪��������")
				LuaSay("�ذ���:��Щ�������Խ��ȼü֮��������Ҫ���׽���������⻹ԶԶ��������")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ����","T801jl")
			else
				LuaSay("�ذ���:�㻹û�д���Ы����ȡ��20����Ы��Ŷ��")
				UpdateTopSay("ɱ��Ыȡ20����Ы��")
			end
		end

elseif(answer=="T801jl")then
	local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaQueryTask("T801")==1) then
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
			LuaDelTask("T801")
			DelLog("801")
			DelItem("o_mission420",20)
			if(LuaQueryTask("T801num")<=30)then
				LuaAddJx("combat_exp",185610+level^2*20,"T801")
				LuaGive("coin",money,"T801")
			else
				LuaSay("��ʾ���������������Ĵ����Ѿ�����30�Σ���ֻ�ܵõ�һ��ľ��顣")
				LuaAddJx("combat_exp",(185610+level^2*20)/2,"T801")
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