function do_use()
if(LuaQueryTask("T802")==0)then
	local coldata1={Ycrwjz(1)}
	LuaSetTask("shuzu",coldata1[1])
	LuaSay("�����Ȼ����һ���Խת���⣺@2"..coldata1[2].."@0")
	LuaSay("�ڹ�����������ȷ��֮���ٴε��ʹ�þ���Ϳ��Եõ���������@-")
	LuaSetTask("T802",1)
	AddLog("�����������",802)
	local a=LuaRandom(3)
	if(a==0)then
		LuaSetTask("T802a",1)	--�����ȷ�𰸵�npc
	elseif(a==1)then
		LuaSetTask("T802b",1)
	elseif(a==2)then
		LuaSetTask("T802c",1)
	end
	UpdateNPCMenu("pz_yzjw")
	UpdateNPCMenu("pz_qdbl")
	UpdateNPCMenu("pz_gzc")
elseif(LuaQueryTask("T802")==1)then
	local coldata1={Ycrwjz(LuaQueryTask("shuzu"))}
	if(LuaQueryTempStr("last_channel_msg")==""..coldata1[3].."")then
		LuaSay("@.�����������Ҳ��������ˣ�@B")
		local level=LuaQuery("level")
			if(level>80)then
		level=80
	end
		local jingyan=244176+level^2*20
			LuaAddJx("combat_exp",jingyan,"T802")
			LuaSetTask("T802",0)
			LuaSetTask("T802a",0)
			LuaSetTask("T802b",0)
			LuaSetTask("T802c",0)
			LuaDelTask("shuzu")
			DelLog("802")
			UpdateNPCMenu("pz_yzjw")
			UpdateNPCMenu("pz_qdbl")
			UpdateNPCMenu("pz_gzc")
			LuaSay("�����Ȼ����һ��������ʧ��.....")
			LuaOtherSendMenu()
			return 1
	else
		LuaSay("@2"..coldata1[2].."@0�㻹û���ڹ�����������ȷ�𰸻�������𰸴���")
		LuaSay("�����Ĳ²����𰸣����Ҿ����ĵĸ�����ɣ�@!�ذ��ҡ������峤��Ү���۲�����һλ֪����Ŷ���ҵ�һλ֪���𰸵�NPC�Ϳ�����ȡ��������")
	end
end
LuaOtherSendMenu()
return 0
end


function Ycrwjz(collection)
array={}
array[1]={1,"���ڲ����ʵ�ʱ��Ҳ��Ҫʲôˮ��","нˮ"}
array[2]={2,"���ֶ����С��ֻè���������񻢣�����ʲô�����أ�","С�ϻ�"}
array[3]={3,"�������ϳԵ�������ô�Ų���?","��һֱ�ڳԿ�"}
array[4]={4,"һ����ʲô�ط��ܴ���С��������?","���۶�"}
array[5]={5,"3����3����3Ͱˮ��9����9���ü�Ͱˮ�أ�","9Ͱˮ"}
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
array[17]={17,"ʲô����Զ�ز���?","����"}
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