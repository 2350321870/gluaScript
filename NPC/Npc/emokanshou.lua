NPCINFO = { 
serial="311" ,
base_name="emokanshou",
icon=2510,
NpcMove=2510,
name="��ħ����" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="ħ������ǿ��ս��һ������",
LuaType=1,
} 
function do_talk(answer) 
 if (answer=="ask") then
	havetask =0
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7�����б�","")
	AddTopSayMenuItem("@3BOSS���","Tbossta")

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
	LuaSay("��ħ���أ��Ϸ�ľ���һ����˥�ߣ�ħ������Ŵ��......")


elseif(answer=="Tbossta")then
	if(LuaQueryTask("Tbossta")==2)then
		if(LuaQueryTask("Tbosstaanswer")==0)then	--������Ŀ
			LuaSay("��ħ���أ��ײ��ħ���׺��ޱ���������Ⱥ���������г�ǿ�����ն��޾������ǻ�Ҳ�ǰٴͨ�����ҵ��ʴ���Ϳ��Խ���ͨ�����ײ���ս�ڰ�ħ���ˣ�")
			LuaSay("��ħ���أ��ܹ���10�⣬���2�����ǿ���ʧ�ܣ�����ʧ�ܽ��ᱻ�߳�BOOSS����")
		end
	local r=LuaRandom(46)
	if(r==0)then
	LuaSay("��ħ���أ����й���һ���ܷ����л����񹲺͹��ܷ������������ꣿ")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("1952��","F")
		AddMenuItem("1953��","F")
		AddMenuItem("1954��","T")
		AddMenuItem("1955��","F")
	elseif(r==1)then
	LuaSay("��ħ���أ��й���һ��ԭ�ӵ���ը�ɹ���ʱ���ǣ�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("1965��9��16��","F")
		AddMenuItem("1964��10��16��","T")
		AddMenuItem("1964��9��16�� ","F")
		AddMenuItem("1966��10��16��","F")
	elseif(r==2)then
	LuaSay("��ħ���أ��й�������ó��֯��WTO����ʱ���ǣ�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("2000��","F")
		AddMenuItem("2001��","T")
		AddMenuItem("2002��","F")
		AddMenuItem("2003��","F")
	elseif(r==3)then
	LuaSay("��ħ���أ��ĸ��ָ��߿��ĵ�һ�ο��ԣ���570���������߽��˿��������Ե�ʱ��Ϊ��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("1977����","F")
		AddMenuItem("977����","F")
		AddMenuItem("1978�괺","F")
		AddMenuItem("1977�궬 ","T")
	elseif(r==4)then
	LuaSay("��ħ���أ��й�����ۻָ�����ʹ��Ȩ����ʲôʱ��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("1999��12��20��","F")
		AddMenuItem("1998��7��1��","F")
		AddMenuItem("1996��7��1��","F")
		AddMenuItem("1997��7��1��","T")
	elseif(r==5)then
	LuaSay("��ħ���أ��л����񹲺͹����衶���¾�������������˭��������")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("����","T")
		AddMenuItem("ϴ�Ǻ�","F")
		AddMenuItem("�ﺺ","F")
		AddMenuItem("�¸�","F")
	elseif(r==6)then
	LuaSay("��ħ���أ��������޽��ĵ�һ����·�ǣ� ")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("������·","F")
		AddMenuItem("������·","T")
		AddMenuItem("������·","F")
		AddMenuItem("�����·","F")
	elseif(r==7)then
	LuaSay("��ħ���أ��ҹ���һ���˵�վ�ǣ�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("������˵�վ","F")
		AddMenuItem("��ɽ�˵�վ","T")
		AddMenuItem("��ĺ˵�վ","F")
		AddMenuItem("���Ƹۺ˵�վ","F")
	elseif(r==8)then
	LuaSay("��ħ���أ���������ó����֯���������������� �й���3250����Ԫ�Ľ�����ֵ���״�����ȫ��ʮǿ������һ�ꣿ")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("1995��","F")
		AddMenuItem("1996��","F")
		AddMenuItem("1997��","T")
		AddMenuItem("1998��","F")
	elseif(r==9)then
	LuaSay("��ħ���أ��й���һ�����������Ƶ����˷ɴ�����̫�յ��ԱΪ������ΰ����ô��һλʵʩ�ռ���ջ���Ա����˭�أ�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("������","F")
		AddMenuItem("��־��","T")
		AddMenuItem("�ܰ���","F")
		AddMenuItem("����ı","F")
	elseif(r==10)then
	LuaSay("��ħ���أ��й������һ����������������һ�ꣿ")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("1968��","F")
		AddMenuItem("1970��","T")
		AddMenuItem("1971��","F")
		AddMenuItem("1972��","F")
	elseif(r==11)then
	LuaSay("��ħ���أ��й���������һ��ȫ����������ʲôʱ���ٿ��ģ�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("1920��7��23��","F")
		AddMenuItem("1921��7��22��","F")
		AddMenuItem("1922��7��23��","F")
		AddMenuItem("1921��7��23��","T")
	elseif(r==12)then
	LuaSay("��ħ���أ���һ�ʲ��ã���һ�����٣���һ�֣�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("Ϳ","F")
		AddMenuItem("��","F")
		AddMenuItem("Ϧ","T")
		AddMenuItem("��","F")
	elseif(r==13)then
	LuaSay("��ħ���أ���������������滮����ȷ�˱�����չĿ��Ϊ�������׶������ʳ��С��Ļ����ǻ��У�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("�˾ӳ���","T")
		AddMenuItem("��������","F")
		AddMenuItem("��г����","F")
		AddMenuItem("��������","F")
	elseif(r==14)then
	LuaSay("��ħ���أ�1990��ͨ���ġ����취���涨��ÿ���ش���գ���������¹��졣��ʹ���첻�������ҵ��ʱ��Ҳ���ܳ��������죿")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("1","F")
		AddMenuItem("7","F")
		AddMenuItem("10","T")
		AddMenuItem("30","F")
	elseif(r==15)then
	LuaSay("��ħ���أ��й���һ�����˻�ھ���˭��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("������","F")
		AddMenuItem("����","T")
		AddMenuItem("�� ��","F")
		AddMenuItem("���� ","F")
	elseif(r==16)then
	LuaSay("��ħ���أ��ڶ�ʮ�Ž����ƥ���˶�����������У�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("ϣ��","F")
		AddMenuItem("����","T")
		AddMenuItem("����","F")
		AddMenuItem("Ӣ��","F")
	elseif(r==17)then
	LuaSay("��ħ���أ����Żع������ǣ�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("1997��7��1��","F")
		AddMenuItem("1999��12��20��","T")
		AddMenuItem("1997��7��7��","F")
		AddMenuItem("1998��12��1��","F")
	elseif(r==18)then
	LuaSay("��ħ���أ�ơ��ƿʲô��ɫ����ã�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("��ɫ","F")
		AddMenuItem("��ɫ","F")
		AddMenuItem("��ɫ","T")
	elseif(r==19)then
	LuaSay("��ħ���أ�������ҩ��һ����ʲôʱ��ʹ�ã�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("����","T")
		AddMenuItem("��ǰ","F")
		AddMenuItem("�뷹һͬ��","F")
	elseif(r==20)then
		LuaSay("��ħ���أ�������ļ�������?")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("�����豸","F")
		AddMenuItem("����豸","F")
		AddMenuItem("�����豸","T")				
	elseif(r==21)then
	LuaSay("��ħ���أ����ǳ�˵��CPU��ָ���������һ���֣�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("��ʾ��","F")
		AddMenuItem("��������豸","F")
		AddMenuItem("���봦����","T")
	elseif(r==22)then
	LuaSay("��ħ���أ��������������в����������֣�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("��Ҷ","F")
		AddMenuItem("����","T")
		AddMenuItem("����","F")
	elseif(r==23)then
	LuaSay("��ħ���أ����˿�����ʱ����ʳ�ã�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("����","F")
		AddMenuItem("�״�","F")
		AddMenuItem("����","T")
	elseif(r==24)then
	LuaSay("��ħ���أ�����ˮ�м������Σ������������� ��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("����","T","")
		AddMenuItem("����","F","")
		AddMenuItem("��� ","F","")
	elseif(r==25)then
	LuaSay("��ħ���أ�PC��ʲô��˼�� ")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("���˵���","T")
		AddMenuItem("��Ϣ����","F")
		AddMenuItem("��ó","F")
	elseif(r==26)then
	LuaSay("��ħ���أ������к����̲��ж������������ǣ�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("��Ŷ�","T")
		AddMenuItem("������","F")
		AddMenuItem("�̽���","F")			
	elseif(r==27)then
	LuaSay("��ħ���أ����ĺ����ǳ��� ��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("����","F")
		AddMenuItem("��ͷ","T")
		AddMenuItem("��Ƥ","F")
	elseif(r==28)then
	LuaSay("��ħ���أ���ҵ�ƾ��к������� ��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("����","F")
		AddMenuItem("�Ҵ�","F")
		AddMenuItem("�״�","T")
	elseif(r==29)then
	LuaSay("��ħ���أ�����֦ɽ�軨����Ӧ����ʲô�� ")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("����ˮ","F")
		AddMenuItem("����","F")
		AddMenuItem("����ˮ","T")
	elseif(r==30)then
	LuaSay("��ħ���أ��ɱ�����ʲô����������ɵģ� ")            
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("ˮ","F")
		AddMenuItem("������̼","T")
		AddMenuItem("��","F")
	elseif(r==31)then
	LuaSay("��ħ���أ�����Ϊʲô������ ��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("ɱ��","F")
		AddMenuItem("����","F")
		AddMenuItem("��й������η�","T")
	elseif(r==32)then
	LuaSay("��ħ���أ�ª������������˭��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("�Ÿ�","F")
		AddMenuItem("������","F")
		AddMenuItem("������","T")
	elseif(r==33)then
	LuaSay("��ħ���أ��Ƴ�������ʫ���У�����Ϊʫ�ɵ��ǣ�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("���","T")
		AddMenuItem("�Ÿ�","F")
		AddMenuItem("�׾���","F")
	elseif(r==34)then
	LuaSay("��ħ���أ��й�ΨһһλŮ�ʵ���˭��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("�Ϲ���","F")
		AddMenuItem("����","F")
		AddMenuItem("������","T")				
	elseif(r==35)then
	LuaSay("��ħ���أ�������ɽ���ڣ��Ǵ���ľ������ԶŸ�������ʫ��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("����","F")
		AddMenuItem("����","F")
		AddMenuItem("����","T")
	elseif(r==36)then
	LuaSay("��ħ���أ���������®�����̡�ʫ��������ɽ��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("̩ɽ","F")
		AddMenuItem("®ɽ","T")
		AddMenuItem("��ɽ","F")
	elseif(r==37)then
	LuaSay("��ħ���أ������Խ��ǣ�Ψ�жſ����ſ�ָʲô��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("��","F")
		AddMenuItem("ˮ","F")
		AddMenuItem("��","T")
	elseif(r==38)then
	LuaSay("��ħ���أ������õ���ʲô��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("��","T")
		AddMenuItem("ƻ��","F")
		AddMenuItem("����","F")
	elseif(r==39)then
	LuaSay("��ħ���أ�������ָ������ӡ���ѧ��ʲô��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("��ӹ","T")
		AddMenuItem("ʫ��","F")
		AddMenuItem("����","F")
	elseif(r==40)then
	LuaSay("��ħ���أ���ԭ�������й��Ŵ��������ʫ�ǣ�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("��ɧ","T")
		AddMenuItem("���","F")
		AddMenuItem("���","F")			
	elseif(r==41)then
	LuaSay("��ħ���أ�³Ѹ����ԭ�������٣������Ϊʲô��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("������","F")
		AddMenuItem("������","T")
		AddMenuItem("�ܻ���","F")
	elseif(r==42)then
	LuaSay("��ħ���أ����μǵ�������˭��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("ʩ����","F")
		AddMenuItem("��ѩ��","F")
		AddMenuItem("��ж�","T")
	elseif(r==43)then
	LuaSay("��ħ���أ������ϵ���˿����������ɻ���ʼ�ɡ�������������ʲôְҵ���ˣ�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("����","F")
		AddMenuItem("ҽ��","F")
		AddMenuItem("��ʦ","T")
	elseif(r==44)then
	LuaSay("��ħ���أ������ص������ǣ�")            
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("��ɮ","F")
		AddMenuItem("������","T")
		AddMenuItem("����","F")
	elseif(r==45)then
	LuaSay("��ħ���أ���������é®��˭��ɽ������")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("˾��ܲ","F")
		AddMenuItem("����","F")
		AddMenuItem("�����","T")
	end
	elseif(LuaQueryTask("Tbossta")==3)then
		LuaSay("��ħ���أ����Ѿ�ͨ�����������飬����ײ��ɱ�ڰ�ħ���ɣ�")
		LuaSay("��ʾ��40������������ڰ�ħ��")
		AddMenuItem("��ѡ��","")
			AddMenuItem("����","jingru")
			AddMenuItem("����","giveup")
	end


elseif(answer=="F")then
	LuaAddTask("Tbosstafalse",1)	--��¼�����ĵ���
	if(LuaQueryTask("Tbosstafalse")<2)then
	if(LuaQueryTask("Tbosstaanswer")<9)then
		LuaSay("��ħ���أ�����~ ~ ~�����ˣ����2�������սʧ�ܣ�")
		LuaAddTask("Tbosstaanswer",1)	--��¼������Ŀ
		DoTalk("Tbossta")
	else
		if(LuaQueryTask("Tbosstafalse")<2)then
			LuaSetTask("Tbossta",3)
			LuaSetTask("Tbosstafalse",99)
			LuaSetTask("Tbosstaanswer",99)
			LuaSay("��ħ���أ�������̺ܸ����ϲ��ͨ���˿��飡")
			LuaSay("��ʾ��40������������ڰ�ħ��")
			AddMenuItem("��ѡ��","")
				AddMenuItem("����","jingru")
				AddMenuItem("����","giveup")
		else
			LuaSay("��ħ���������Ѵ��2���⣬����ʧ�ܣ���ȥ�����ϰ�����������ɣ�")
			LocalMsg(""..LuaQueryStr("name").."����δͨ����������Ѽ�����ս���Ͱ���")
			LuaSetTask("Tbosstafalse",0)
			LuaSetTask("Tbosstaanswer",0)
			ChangeMap("lu_jkc")
		end
	end
	else
		LuaSay("��ħ���������Ѵ��2���⣬����ʧ�ܣ���ȥ�����ϰ�����������ɣ�")
		LocalMsg(""..LuaQueryStr("name").."����δͨ����������Ѽ�����ս���Ͱ���")
		LuaSetTask("Tbosstafalse",0)
		LuaSetTask("Tbosstaanswer",0)
		ChangeMap("lu_jkc")
	end
	UpdateMenu()

elseif(answer=="T")then
	if(LuaQueryTask("Tbosstaanswer")<9)then
		LuaSay("��ħ���أ������̫���ˣ���������һ���⡣")
		LuaAddTask("Tbosstaanswer",1)	--��¼������Ŀ
		DoTalk("Tbossta")
	else
		if(LuaQueryTask("Tbosstafalse")<2)then
			LuaSetTask("Tbossta",3)
			LuaSetTask("Tbosstafalse",99)
			LuaSetTask("Tbosstaanswer",99)
			LuaSay("��ħ���أ�������̺ܸ����ϲ��ͨ���˿��飡")
			LuaSay("��ʾ��40������������ڰ�ħ��")
			AddMenuItem("��ѡ��","")
				AddMenuItem("����","jingru")
				AddMenuItem("����","giveup")
		else
			LuaSetTask("Tbosstafalse",0)
			LuaSetTask("Tbosstaanswer",0)
			ChangeMap("lu_jkc")
		end
	end
	UpdateMenu()

elseif(answer=="jingru")then
	ChangeMap("lu_tongtiantasi")
elseif(answer=="giveup")then
	LuaSay("��ħ���أ����Ͼ������һ���ˣ��úÿ��ǿ��ǰɣ�")
----------------------
end 
LuaSendMenu()
return 1
end 
