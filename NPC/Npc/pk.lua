NPCINFO = {
serial="52" ,
base_name="pk" ,
icon=2568,
NpcMove=2568,
name="����ʹ��" ,
iconaddr=1 ,
butt="10|10|60" ,
lastsay="�����Ƿɻ��ڴ�Ľݾ�!" , 
LuaType=1,
have_sell_item=1,
}
addBuyitem={
count=6,
{"o_drug_hp1" , 0  , 8 },
{"o_drug_hp2" , 0  , 8 },
{"o_drug_hp3" , 0  , 8 },
{"o_drug_mp1" , 0  , 8 },
{"o_drug_mp2" , 0  , 8 },
{"o_drug_mp3" , 0  , 8 },
}
function do_talk(answer)            
if (answer=="ask") then 
        havetask =0	
	local mapname=MapName()	
	local level=LuaQuery("level")
	AddTopSayMenuItem("@7����ϵͳ","")
	if(mapname=="lu_bfjy") then
		AddTopSayMenuItem("@3����","buy1")
	end
	--if(mapname=="lu_bfjy" or mapname=="lu_leitaid") then
	--AddTopSayMenuItem("@3������̨","Tleitai2")
	--end
	if(mapname=="lu_leitaid") then
		AddTopSayMenuItem("@3�뿪��̨","likai2")
		AddTopSayMenuItem("@3�����ս","qcmz2")
	end
	if((LuaQueryTask("Tsnpc_37")==1 or LuaQueryTask("Tsnpc_37")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_37")
		if(LuaQueryTask("Tsnpc_37")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_37")==1 or LuaQueryTask("Tenpc_37")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_37")
		if(LuaQueryTask("Tenpc_37")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T402") == 1)then
		AddTopSayMenuItem("@2���������顿","T402")
		havetask =2
	end  
	if(LuaQueryTask("T395") == 1)then
		AddTopSayMenuItem("@2��̨���ԡ����顿","T395")
		havetask =2
	end  
	if(level>20) then
		
		if(mapname=="lu_bfjy" or mapname=="lu_pk01" or mapname=="lu_pk02") then
		AddTopSayMenuItem("@3����","T540")
		end
		local week=GetDayOfWeek()
		local idate={SelfDefTime2Date(GetCurrentTime())}--idate={�꣬�£��գ�ʱ���֣���}
		local day=idate[3]--ÿ��1������
	end						
	if(mapname=="lu_bfjy" or mapname=="lu_leitai" or mapname=="lu_leitaia" or mapname=="lu_leitaib") then
	AddTopSayMenuItem("@3��սȺ��","Tleitai")
	AddTopSayMenuItem("@7��սȺ�ۡ�ÿ�ա�","tzqx")
	end
	if(mapname=="lu_bfjy") then
	--AddTopSayMenuItem("@3��ƽ����","Tthesame") ��ʱע��
--	AddTopSayMenuItem("@3�ι۱���","canguan")
	AddTopSayMenuItem("@3������ֲ鿴","look")
	end
	if(mapname=="lu_leitaic") then
	AddTopSayMenuItem("@3��ƽ����ս��","Tsamepknum")
	end
 	if(mapname=="lu_leitai" or mapname=="lu_leitaia" or mapname=="lu_leitaib" or mapname=="lu_leitaic") then
		AddTopSayMenuItem("@3�뿪��̨","likai")
		AddTopSayMenuItem("@3�����ս","qcmz")
	end
	if(LuaQueryTask("T302")==5 and LuaQueryTask("T302E")==0) then
		AddTopSayMenuItem("@2ÿ����ʹ@0","T302E")
		havetask =2
	end 
	if(MapName()=="lu_bfjy")then
		AddTopSayMenuItem("@3PK��ѧ@0","Tpkjx")
	end
	if(MapName()=="lu_bfjy") then
        AddTopSayMenuItem("@2�Ĵ���ȡ@0","Thszk")
	end
	if(mapname=="lu_bfjy") then 		
	AddTopSayMenuItem("����","liaotian",""..havetask.."")
	end
	
return 1

elseif(answer=="liaotian") then
	LuaSay("����ʹ�ߣ����еĶ���ԹԹ�����������̨�Ͻ����")

elseif(answer=="zanshiguanbi") then
	LuaSay("����ʹ�ߣ�������̨������һЩ���⣬������Ա����Ѱ�����⣬���������Ĳ��㣬��ĺܱ�Ǹ�������½⣡")
	LuaSay("����ʹ�ߣ�ϣ�������İ����£�һ��ͳһ���ĸ��ã�")

elseif(answer=="Tpkjx")then
	if(LuaQueryTask("Tpkjx")==0)then
		LuaSay("@1PK���ǣ�@0@3��Ҫ�������������˿϶��ɲ��˸��֡�ǰ������Խ�࣬����ɱ��Խ�ͣ�@0")
		LuaSay("����ʹ�ߣ�֪����PK��Ҫ�컹����Ŷ��Ҫ��Ϊ������PK���ֻ���@2�������@0Ŷ��")
		LuaSay("����ʹ�ߣ�30����ǰӦ��Ӧ�ù���PK�أ�") 
			AddMenuItem("@7PK��ѧ","")
			AddMenuItem("����","NO_11")
			AddMenuItem("������","N11_ANSWER")
	elseif(LuaQueryTask("Tpkjx") == 1 ) then         
		LuaSay("����ʹ�ߣ�40��ǰɱ���Լ���5��������о�����")
			AddMenuItem("@7PK��ѧ","")
			AddMenuItem("��","NO_21")
			AddMenuItem("û��","N21_ANSWER")
	elseif(LuaQueryTask("Tpkjx") == 2 ) then         
		LuaSay("����ʹ�ߣ�40����ɱ���Լ���10��������о�����")
			AddMenuItem("@7PK��ѧ","")
			AddMenuItem("û��","N31_ANSWER")
			AddMenuItem("��","NO_31")		
	elseif(LuaQueryTask("Tpkjx") == 3 ) then         
		LuaSay("����ʹ�ߣ�ɱ���Լ��ȼ��ߵ�����о�����")
			AddMenuItem("@7PK��ѧ","")
			AddMenuItem("û��","NO_41")
			AddMenuItem("�кܶ�","N41_ANSWER")
	elseif(LuaQueryTask("Tpkjx") == 4 ) then         
		LuaSay("����ʹ�ߣ���ɱ�����Է������ô���أ�")
			AddMenuItem("@7PK��ѧ","")
			AddMenuItem("����","NO_51")
			AddMenuItem("Ѱ�˺ϻ�","N51_ANSWER")
	elseif(LuaQueryTask("Tpkjx") == 5 ) then         
		LuaSay("����ʹ�ߣ�PKʱ�ü��ٺ���")
			AddMenuItem("@7PK��ѧ","")
			AddMenuItem("�൱����","NO_61")
			AddMenuItem("����","N61_ANSWER")
	elseif(LuaQueryTask("Tpkjx") == 99)then
		LuaSay("����ʹ�ߣ��й�pk��֪ʶ�������Ѵ������ˣ�������ٽ���һ�аɣ�")
		if(LuaQueryStr("MobieType") ~= "S20")then
			LuaSay("����ʹ�ߣ��������˵�����Ͻǵ�PK���ٰ����ּ�֮�⣬Ȼ�󵱼�ͷѡ��Ŀ��󣬰�ȷ��������")
		else
			LuaSay("����ʹ�ߣ��������˰��Ǻż��ٰ����ּ�֮�⣬���˶�صط������Զఴ����#��ͷ��ѡ��Ŀ��С��ͷ���л�����Ȼ�󵱼�ͷѡ��Ŀ��󣬰�ȷ��������")
		end
		LuaSay("����ʹ�ߣ���Ҫ�����䡢�䲻����ˡ�������ս���֣����Խ���������õ���pk���ɺ;���Ҳ��Խ�࣡��ʿ���������������ͳһ��;�ɣ�")
		LuaSetTask("Tpkjx",0)
	
	end
elseif(answer=="NO_11") then                                           
	LuaSay("����ʹ�ߣ���ѡ������30����ǰ������pk����ĵȼ���װ�������ܿ϶�����̫�ͣ�30����������pk���Ǵ�ƴҩ����ʵ����ͳһ�������ֵ�һ���ֶΣ�Ѫ��ɱ���������ȸ߼�����ȫ��������������ҩ�Ļ��ᡣ")
	LuaSetTask("Tpkjx",1)
	DoTalk("Tpkjx")
elseif(answer=="N11_ANSWER") then
	if(LuaQueryTask("Tpkjx")<1) then
		LuaSetTask("Tpkjx",1)
		LuaSay("����ʹ�ߣ�������ѡ���ˣ�30����ǰ������pk����ĵȼ���װ�������ܿ϶�����̫�ͣ�30����������pk���Ǵ�ƴҩ����ʵ����ͳһ�������ֵ�һ���ֶΣ�Ѫ��ɱ���������ȸ߼�����ȫ��������������ҩ�Ļ��ᡣ")
		DoTalk("Tpkjx")
        end	
		
elseif(answer=="NO_21") then                                           
	LuaSay("����ʹ�ߣ����������ס40��ǰɱ���Լ���5���������û�о����Ŷ��")
	LuaSetTask("Tpkjx",2)
	DoTalk("Tpkjx")
elseif(answer=="N21_ANSWER") then
	if(LuaQueryTask("Tpkjx")<2) then
		LuaSetTask("Tpkjx",2)
		LuaSay("����ʹ�ߣ�������ѡ���ˣ�40��ǰɱ���Լ���5���������û�о���ġ�")
		DoTalk("Tpkjx")
        end

elseif(answer=="NO_31") then                                           
	LuaSay("����ʹ�ߣ����������ס40����ɱ���Լ���10���������û�о����Ŷ��")
	LuaSetTask("Tpkjx",3)
	DoTalk("Tpkjx")
elseif(answer=="N31_ANSWER") then
	if(LuaQueryTask("Tpkjx")<3) then
		LuaSetTask("Tpkjx",3)
		LuaSay("����ʹ�ߣ�������ѡ���ˣ�40����ɱ���Լ���10���������û�о���ġ�")
		DoTalk("Tpkjx")
        end

elseif(answer=="NO_41") then                                           
	LuaSay("����ʹ�ߣ�����ˣ�@1ɱ���Լ��ȼ��ߵ�������кܶྭ���Ŷ��@0")
	LuaSetTask("Tpkjx",4)
	DoTalk("Tpkjx")
elseif(answer=="N41_ANSWER") then
	if(LuaQueryTask("Tpkjx")<4) then
		LuaSetTask("Tpkjx",4)
		LuaSay("����ʹ�ߣ���ѡ���ˣ�@1ɱ���Լ��ȼ��ߵ�������кܶྭ��ġ�@0")
		DoTalk("Tpkjx")
        end

elseif(answer=="NO_51") then                                           
	LuaSay("����ʹ�ߣ�������ʲô���أ�������ɣ��Ž�������һ����ɱ��������������ɱ�����������м������ѣ��Ͳ���ɱ��������")
	LuaSetTask("Tpkjx",5)
	DoTalk("Tpkjx")
elseif(answer=="N51_ANSWER") then
	if(LuaQueryTask("Tpkjx")<5) then
		LuaSetTask("Tpkjx",5)
		LuaSay("����ʹ�ߣ����������Ͷ������Ž�������һ����ɱ��������������ɱ�����������м������ѣ��Ͳ���ɱ��������")
		DoTalk("Tpkjx")
        end

elseif(answer=="NO_61") then                                           
	LuaSay("����ʹ�ߣ�������ɣ��ü��ٵ���pk��ʱ�ᱻ�����������ƶ�������@1�����Ѫ@0��������Ҳ���ÿ���")
	LuaSetTask("Tpkjx",99)
	DoTalk("Tpkjx")
elseif(answer=="N61_ANSWER") then
	if(LuaQueryTask("Tpkjx")<6) then
		LuaSetTask("Tpkjx",99)
		LuaSay("����ʹ�ߣ���ѡ���ˣ���Ҫ�¼��٣��ü��ٵ���pk��ʱ�ᱻ�����������ƶ�����@1�����Ѫ@0�أ�")
		DoTalk("Tpkjx")
        end


elseif(answer=="Thszk") then
	if( LuaQueryTask("Tjzcount")>0 or LuaQueryTask("Tyzcount")>0 or LuaQueryTask("Ttzcount")>0 or LuaQueryTask("Tris")>0 or LuaQueryTask("Tzhous")>0 or LuaQueryTask("Tyues")>0 )then
		LuaSay("���ǰ��㱣�ܵ���Ʒ��")
		if(LuaQueryTask("Tjzcount")>0)then
			local a = LuaQueryTask("Tjzcount")
			LuaGive("o_mission212",LuaQueryTask("Tjzcount"))
			LuaLogRecord("�Ĵ���ȡ","o_mission212","��ȡ","��ש",a)
			LuaSetTask("Tjzcount",0)
		end
		if(LuaQueryTask("Tyzcount")>0)then
			local a = LuaQueryTask("Tyzcount")
			LuaGive("o_mission213",LuaQueryTask("Tyzcount"))
			LuaLogRecord("�Ĵ���ȡ","o_mission213","��ȡ","��װ",a)
			LuaSetTask("Tyzcount",0)
		end
		if(LuaQueryTask("Ttzcount")>0)then
			local a = LuaQueryTask("Ttzcount")
			LuaGive("o_mission214",LuaQueryTask("Ttzcount"))
			LuaLogRecord("�Ĵ���ȡ","o_mission214","��ȡ","��ש",a)
			LuaSetTask("Ttzcount",0)
		end
		if(LuaQueryTask("Tszcount")>0)then
			local a = LuaQueryTask("Tszcount")
			LuaGive("o_mission514",LuaQueryTask("Tszcount"))
			LuaLogRecord("�Ĵ���ȡ","o_mission514","��ȡ","����",a)
			LuaSetTask("Tszcount",0)
		end
		if(LuaQueryTask("Tris")>0)then
			local a = LuaQueryTask("Tris")
			LuaGive("o_mission119",LuaQueryTask("Tris"))
			LuaLogRecord("�Ĵ���ȡ","o_mission119","��ȡ","��֤",a)
			LuaDelTask("Tris",0)
		end
		if(LuaQueryTask("Tzhous")>0)then
			LuaGive("o_mission120",LuaQueryTask("Tzhous"))
			LuaLogRecord("�Ĵ���ȡ","o_mission120","��ȡ","��֤",a)
			LuaDelTask("Tzhous",0)
		end
		if(LuaQueryTask("Tyues")>0)then
			LuaGive("o_mission121",LuaQueryTask("Tyues"))
			LuaLogRecord("�Ĵ���ȡ","o_mission121","��ȡ","��֤",a)
			LuaDelTask("Tyues",0)
		end
		UpdateMenu()

--o_mission212	��ש
--o_mission213	��ש
--o_mission214	��ש
--o_mission514	��ש����

		
	else
		LuaSay("�������κζ��������Ᵽ�ܣ���̨PK�ǲ���Я����ש����ש���ߡ���ש����ש����������������������ս���ש���룬ÿ�ν�����̨���Ҷ����Զ����㱣�ܣ�������������Ҫ�ر����ˣ�")
	end
    
elseif(answer=="tzqx") then     -----��սȺ�ۡ�ÿ�ա�
	local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(level>20) then
    	if(LuaQueryStrTask("Ttzqx_Taskday")~=GetCurrentDay()) then
		LuaSetTask("Ttzqx",0)
		LuaSetTask("Ttzqx_Taskday",GetCurrentDay())
	end

		if(LuaQueryTask("Ttzqx") == 0) then
			LuaSay("����ʹ�ߣ�������Ľ����������սȺ�۵�ʤ�������йأ�ʤ������Խ�࣬����Խ�࣡�ú�Ŭ���ɣ�")
			LuaSay("����ʹ�ߣ���������ɱ�����ˣ���Ҫ�ı��𣿳��˵ȼ����֮�⣬�������ŰѴ��˺��ļ�����ߵȼ������Ҹ�������Ƕ��ǿ����")
			LuaSay("����ʹ�ߣ�ֻ���˺����ˣ�������������������������˵Ŀ�У�@!")
			LuaSay("@5��ܰ��ʾ��@0�����@1һ��Ҫ�ٴε����սȺ����ȡ���������Լ��ı������Ŷ@0������Խ�ߣ�������Խ��Ŷ@!")
			LuaSetTask("Ttzqx",1)
			UpdateMenu()
			elseif(LuaQueryTask("Ttzqx") == 1) then
				local tzqx_exp=20000+level^2*25+level*25
				if(LuaQueryTask("Tleitaitime")>0 and LuaQueryTask("Ttzqx_flag")==0)then --------����ʤ��һ����̨�����콱
					LuaSay("����ʹ�ߣ����Ѿ�����˽����@3��"..LuaQueryTask("Tleitaitime").."��ʤ����")
					LuaSay("����ʹ�ߣ���Ŀǰ���Ի��@3"..tzqx_exp.."�㾭��ֵ��")
					AddMenuItem("@7�����б�","")
					AddMenuItem("@3����ҽ���","tzqx_yes1")
				else
					LuaSay("����ʹ�ߣ��������1����ûӮ�����޷���ý�����")
				end
			elseif(LuaQueryTask("Ttzqx") == 2) then
				local tzqx_exp=40000+level^2*50+level*50
				if(LuaQueryTask("Tleitaitime")>=3)then --------�ڶ���
					LuaSay("����ʹ�ߣ����Ѿ�����˽����@3��"..LuaQueryTask("Tleitaitime").."��ʤ����")
					LuaSay("����ʹ�ߣ���Ŀǰ���Ի��@3"..tzqx_exp.."�㾭��ֵ��")
					AddMenuItem("@7�����б�","")
					AddMenuItem("@3����ҽ���","tzqx_yes2")
				else
				LuaSay("����ʹ�ߣ������ûӮ��3�����޷���ñ��ν�����")
				end
		elseif(LuaQueryTask("Ttzqx") == 3) then
				local tzqx_exp=60000+level^2*75+level*75
				if(LuaQueryTask("Tleitaitime")>=5)then --------������
					LuaSay("����ʹ�ߣ����Ѿ�����˽����@3��"..LuaQueryTask("Tleitaitime").."��ʤ����")
					LuaSay("����ʹ�ߣ���Ŀǰ���Ի��@3"..tzqx_exp.."�㾭��ֵ��")
					AddMenuItem("@7�����б�","")
					AddMenuItem("@3����ҽ���","tzqx_yes3")
				else
					LuaSay("����ʹ�ߣ������ûӮ��5�����޷���ñ��ν�����")
				end
		elseif(LuaQueryTask("Ttzqx")==99) then
			LuaSay("����ʹ�ߣ�������Ѿ���������������������Ұɣ�")
		end
	else
		LuaSay("����ʹ�ߣ���ȼ�̫�ͣ�������Ҫ20�����ϲ��ܽӣ�")
	end

elseif(answer=="tzqx_yes1") then
    if(LuaQueryTask("Tleitaitime")>0 and LuaQueryTask("Ttzqx_flag")==0)then
	local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
	local tzqx_exp=20000+level^2*25+level*25
	LuaAddJx("combat_exp",tzqx_exp,"Ttzqx")
	LuaSay("����ʹ�ߣ�������ܻ��3�����ϵ���̨ʤ�������������������ȡ���ߵĽ�����")
	LuaSetTask("Ttzqx",2)
	LuaSetTask("Ttzqx_flag",99)
	UpdateMenu()
    else
		LuaSay("����ʹ�ߣ��������1����ûӮ�����޷���ý�����")
	end
elseif(answer=="tzqx_yes2") then
    if(LuaQueryTask("Tleitaitime")>=3)then --------�ڶ���
	local level=LuaQuery("level")
	local tzqx_exp=40000+level^2*50+level*50
	LuaAddJx("combat_exp",tzqx_exp,"Ttzqx")
	LuaSay("����ʹ�ߣ�������ܻ��5�����ϵ���̨ʤ�������������������ȡ���ߵĽ�����")
	LuaSetTask("Ttzqx",3)
	UpdateMenu()
    else
        LuaSay("����ʹ�ߣ������ûӮ��3�����޷���ñ��ν�����")
	end
elseif(answer=="tzqx_yes3") then
    if(LuaQueryTask("Tleitaitime")>=5)then --------������
	local level=LuaQuery("level")
	local tzqx_exp=60000+level^2*75+level*75
	LuaAddJx("combat_exp",tzqx_exp,"Ttzqx")
	LuaSay("����ʹ�ߣ���������սȺ�������Ѿ���ɣ�")
	LuaSetTask("Ttzqx",99)
	UpdateMenu()
    else
        LuaSay("����ʹ�ߣ������ûӮ��5�����޷���ñ��ν�����")
	end
elseif(answer=="buy1") then
	if(LuaQuery("level")<10) then
		DoBuy()   
	else
	  	if(LuaQueryTask("lendmoney")~=0 and floor(GetCurrentTime()/86400)-LuaQueryTask("lend_day")-floor(LuaQueryTask("credit")/10)*7-7>0)then
			LuaSay("����ʹ�ߣ�@1������Ĵ����ѹ�����δ�����̽��������������˲�������ʱ��ֹ�������������")
			LuaSay("����ʹ�ߣ�@1����ȥ����Ǯׯ�Ĵ������������ɣ�����ʱ�������ֹ���๦�ܵġ�")
		else
			DoBuy()
		end
	end 

elseif(answer=="T345") then
	if(LuaQueryTask("T345")==2 and LuaItemStatusNormalCount("o_mission165")>=1)then
		LuaSay("����ʹ�ߣ��������������˾�Ӧ�ý������Ը�������ս��")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T345jl")
	elseif(LuaQueryTask("T345")==2 and LuaItemStatusNormalCount("o_mission165")==0)then
		LuaSay("����ʹ�ߣ������@2����֮��@0������ӵ��@2��̨��ս��@0������ȡ����Ŷ��@!")
	end
elseif(answer=="T345jl")then
	if(LuaQueryTask("T345")==2 and LuaItemStatusNormalCount("o_mission165")>=1)then	 
		  DelLog("345")
		  LuaSetTask("T345",99)
		  LuaAddJx("combat_exp",60000,"T345")
		  UpdateMenu()
	end
	  
elseif(answer=="qcmz") then
	LuaSay("��ʾ���Զ�������������Ƿ�����ս������޷�pk��״̬���еĻ��Զ�����������ˣ�")
	if(LuaCheckBuff("520")==1)then
		LuaDeleteBuff("520")
	end
	if(LuaCheckBuff("477")==1)then
		LuaDeleteBuff("477")
	end
	if(LuaCheckBuff("518")==1)then
		LuaDeleteBuff("518")
	end


elseif(answer=="likai") then        ---------��ʤ���뿪 
	local mapname=MapName()
	if(LuaItemCount("o_mission165")==0 or LuaQueryTask("Tflag_pk")==99 or (mapname=="lu_leitai" and LuaQueryPersonInMap("lu_leitai")<=1) or (mapname=="lu_leitaia" and LuaQueryPersonInMap("lu_leitaia")<=1) or (mapname=="lu_leitaib" and LuaQueryPersonInMap("lu_leitaib")<=1) or mapname=="lu_leitaic" ) then
			---������֤����������ˣ��ֳ�ʤ�������ߵ�ͼֻ��һ��ʱ�����Բ������ط�ֱ���뿪                                                                                                                                                                                        --��ƽ��������뿪
		local a=LuaItemCount("o_mission165")
    		if(a>0) then
   		 	DelItem("o_mission165",a)
  		end
    		ChangeMap("lu_bfjy",580,340)
	else   
   		LuaSay("��ʾ��@3��ʤ����ȡ����@0��������뿪�����˫��δ�ֳ�ʤ�������뿪�ĵ�����Ϊ�Զ���Ȩ��Ҫ��@33000@0ͭ�ҳ��طѲ��У���ʤ��δ�콱���뿪Ҳ��Ϊ�Զ���Ȩ")
		if(LuaItemCount("coin")<3000) then
		LuaSay("��ʾ�������ϵ�ͭ�Ҳ���@3�����ط�@0���޷��뿪����ͼ����ˮһս�ɣ�")
		end
		AddMenuItem("@7ѡ���б�","")
		AddMenuItem("@3��������","goon_no")
		if(LuaItemCount("coin")>=3000) then
			AddMenuItem("@3��Ҫ����","goon_yes")
		end
		UpdateMenu()
	end
    

elseif(answer=="goon_no") then 
	LuaSay("��ʾ��@3��ʤ����ȡ����@0��������뿪������Ҫ��@33000@0ͭ�ҳ��طѣ�")
	UpdateMenu()
elseif(answer=="goon_yes") then 
	LuaGive("coin",-3000,"Tpk_chetui")
	local a=LuaItemCount("o_mission165")
	if(a>0) then
		DelItem("o_mission165",a)
	end
	ChangeMap("lu_bfjy",580,340)

elseif(answer=="Tthesame") then   
	LuaSay("��ʾ����ƽ������˫���ᱻ���ó�Ϊ@3��ͬ�ȼ�����ͬװ������ְͬҵ@0����֤���Թ�ƽ��")
	AddMenuItem("@7��ƽ����","")
	AddMenuItem("@3��ս","insamepk")
	--����һ���xxx�ڹ�ƽ����ȡ����ʤ���������ķ��ڷ� 
	
elseif(answer=="insamepk") then 
	if(LuaQueryPersonInMap("lu_leitaic")<2) then
    		if(LuaQueryStr("MobieType") == "S62")then
    			LuaEnterDream("lu_leitaic",175,256,2)
		elseif(LuaQueryStr("MobieType") == "S20")then
			LuaEnterDream("lu_leitaic",175,256,6)
		else
			LuaEnterDream("lu_leitaic",175,256,5)
		end	
	else
		LuaSay("����ʹ�ߣ���ƽ���䳡�Ѿ������ˣ�")
   	end
   	
elseif(answer=="Tsamepknum") then
	if(LuaItemCount("o_mission165")>1) then
		DelItem("o_mission165",1)
		LuaNotice("����һ���@3"..LuaQueryStr("name").."@0��@3��ƽ����@0��ȡ��ʤ���������ķ��ڷ�")
	else
  		LuaSay("����ʹ�ߣ���û��ȡ�ù�ƽ�����ʤ��")
	end
elseif(answer=="canguan") then    
	AddMenuItem("@7����ѡ��","")
	AddMenuItem("@3��ս20~39��","20level")
	AddMenuItem("@3��ս40~59��","40level")
	AddMenuItem("@3��ս60������","60level")
--	AddMenuItem("@3��ս��ƽ����","samelevel")
elseif(answer=="20level") then 
	if(LuaQueryPersonInMap("lu_leitai")>=2) then
		ChangeMap("lu_leitai",121,96)
	else
		LuaSay("����ʹ�ߣ�ֻ�еȲ�����2λѡ���볡�󣬲��ܲι۱���")
	end
    
elseif(answer=="40level") then 
	if(LuaQueryPersonInMap("lu_leitaia")>=2) then
		ChangeMap("lu_leitaia",121,96)
	else
		LuaSay("����ʹ�ߣ�ֻ�еȲ�����2λѡ���볡�󣬲��ܲι۱���")
	end
    
elseif(answer=="60level") then 
	if(LuaQueryPersonInMap("lu_leitaib")>=2) then
	ChangeMap("lu_leitaib",121,96)
	else
	LuaSay("����ʹ�ߣ�ֻ�еȲ�����2λѡ���볡�󣬲��ܲι۱���")
	end
    
elseif(answer=="samelevel") then 
	if(LuaQueryPersonInMap("lu_leitaic")>=2) then
   		LuaEnterDream("lu_leitaic",121,96,1)
	else
		LuaSay("����ʹ�ߣ�ֻ�еȲ�����2λѡ���볡�󣬲��ܲι۱���")
   	end
    


elseif(answer=="Tleitai") then    ---������̨��ս���ּ����20~
	local mapname=MapName()
	local level=LuaQuery("level")
	if(level>=20) then
		LuaSay("����ʹ�ߣ��ҳ�����������ڣ�����֮�в����Ի����������ո�ǿ��������ܣ�����֮���������̨��������λӢ��һչ����")
		LuaSay("��ʾ��Ӧս�߽�����̨����30��ı���ʱ�䣬@3��30����˫���޷�PK@0��30����Զ���������Կ�ս��")
		AddMenuItem("@7������̨","")
		AddMenuItem("@5��̨����","ltgz")
		if(mapname=="lu_bfjy") then
			AddMenuItem("@3����","shelei")
			AddMenuItem("@3Ӧս","yingzhan")
		end
		AddMenuItem("@3��ʤ����","hsjl")
		AddMenuItem("@5��̨ս��","ltzj")
	else
		LuaSay("����ʹ�ߣ������ڵ���Ϊ̫�ͣ��ȼ�����20��������")
	end
elseif(answer=="ltgz") then
	LuaSay("@5ʱ��@0��ÿһ��20����Ϊ�ޣ��ɰ�����̨��ʼ��ʱ������20���ӣ���Ϊƽ��")
	LuaSay("@5�ȼ�@0����̨�ֳ�@320��39��@0��@340��59��@0��@360������@0����3�����䣬��ҽ��������Ӧ�������̨")
	LuaSay("@5��̨����@0��ÿһ��������̨��ս����Ҷ��������̨������󣬽��������̨��ɻ�ʤ�߻��")
        LuaSay("@5����������н�ש����ש�������������������ʸ�֤����ô������һ��Զ����㱣�ܣ��ǵó���ʱ���ٵ���������ؼ��ɣ�")
--	LuaSay("@5�ι�@0������˫����������̨��������ҿ��Խ����ս")
elseif(answer=="ltzj") then
	LuaSay("����ʹ�ߣ�������̨ս��Ϊ@3"..LuaQueryTask("Tleitaiwin").."ʤ")


elseif(answer=="shelei") then
	if(LuaQuery("ST")~=3 and LuaQuery("ST")~=4)then
		local level=LuaQuery("level")
		local a = 0
		local aa =0
		local bb = 0
		if(level<40) then
			a=LuaQueryPersonInMap("lu_leitai")
			aa=20
			bb=40
		elseif(level<60) then
			a=LuaQueryPersonInMap("lu_leitaia")
			aa=40
			bb=60
		else
			a=LuaQueryPersonInMap("lu_leitaib")
			aa=60
			bb=80
		end
	    
		if(a==0) then			--�����̨��ͼ����
			local country1=GeGJMC()			--GeGJMC()����ȡ��ǰ�ߵĹ�����
			local country2=LuaQueryStr("country")  
			if(country1==country2) then		
				LuaNotice("@3"..LuaQueryStr("name").."@0�����ں��а�����̨����������Ӣ�ۣ�ֻ��һ�ܣ�"..aa.."����"..bb.."����Ӣ�ۿ�ǰȥ������Ӫ�ұ���ʹ����ս��")
			else     
				if(country2=="��") then
					LuaNotice("@5���ɹ���@0��@3"..LuaQueryStr("name").."@0�Ѿ����������ˣ���@3"..country1.."@0�ж���ȥ��̨��ɱ֮��"..aa.."����"..bb.."����Ӣ�ۿ�ǰȥ������Ӫ�ұ���ʹ����ս��")
				elseif(country1=="��") then
					LuaNotice("@5"..country2.."@0��@3"..LuaQueryStr("name").."@0�Ѿ����������ˣ��۸������ɹ������˺���"..aa.."����"..bb.."����Ӣ�ۿ�ǰȥ������Ӫ�ұ���ʹ����ս��")
				else
					LuaNotice("@5"..country2.."@0��@3"..LuaQueryStr("name").."@0�Ѿ����������ˣ���@3"..country1.."@0"..aa.."����"..bb.."�����ж���ȥ��̨��ɱ֮��")
				end
			end
			
			local b=LuaItemCount("o_mission165")
			if(b>1) then
				DelItem("o_mission165",b-1)
			elseif(b==0) then
				LuaGive("o_mission165",1)
			end
			local c=LuaItemCount("o_mission119")
			if(c>0) then
				LuaSetTask("Tris",c)
				DelItem("o_mission119",c)
			end
			local d=LuaItemCount("o_mission120")
			if(d>0) then
				LuaSetTask("Tzhous",d)
				DelItem("o_mission120",d)
			end
			local e=LuaItemCount("o_mission121")
			if(e>0) then
				LuaSetTask("Tyues",e)
				DelItem("o_mission121",e)
			end
			if(level<40) then
				ChangeMap("lu_leitai",175,256)
			elseif(level<60) then
				ChangeMap("lu_leitaia",175,256)
			else
				ChangeMap("lu_leitaib",175,256)
			end
	      
		elseif(a==1) then
			LuaSay("��ʾ�������Ѿ����������������ڿ���ѡ����ս��")
		elseif(a>=2) then
			LuaSay("��ʾ����̨��������2�˱����д��ˣ�")
		end
	else
		LuaSay("��ʾ���������ڷ���״̬�����ܽ�����̨�����Ƚ������״̬")
	end



elseif(answer=="yingzhan") then		--���Ӧս
	if(LuaQuery("ST")~=3 and LuaQuery("ST")~=4)then
		local level=LuaQuery("level")
		local a = 0
		if(level<40) then
			a=LuaQueryPersonInMap("lu_leitai")
		elseif(level<60) then
			a=LuaQueryPersonInMap("lu_leitaia")
		else
			a=LuaQueryPersonInMap("lu_leitaib")
		end
		if(a==1) then 
			local c=LuaItemCount("o_mission119")
			if(c>0) then
				LuaSetTask("Tris",c)
				DelItem("o_mission119",c)
			end
			local d=LuaItemCount("o_mission120")
			if(d>0) then
				LuaSetTask("Tzhous",d)
				DelItem("o_mission120",d)
			end
			local e=LuaItemCount("o_mission121")
			if(e>0) then
				LuaSetTask("Tyues",e)
				DelItem("o_mission121",e)
			end
			local chngRet = 0
			if(level<40) then
				LuaGiveBuff("529",1)
				chngRet = ChangeMap("lu_leitai",175,256)
			elseif(level<60) then 
				LuaGiveBuff("529",1)
				chngRet = ChangeMap("lu_leitaia",175,256)
			else
				LuaGiveBuff("529",1)
				chngRet = ChangeMap("lu_leitaib",175,256)
			end
			if(chngRet==1)then
				local b=LuaItemCount("o_mission165")
				if(b>1) then
					DelItem("o_mission165",b-1)
				elseif(b==0) then
					LuaGive("o_mission165",1)
				end
				if(LuaQueryTask("Thx2")==7) then
					if(LuaQueryTask("Thx2G")==0) then
					       LuaSay("��ʾ�����Ѿ���ɻ����������������ȥ�ظ��ذϹ�ɡ�@!")
					       LuaSetTask("Thx2G",99)
					end
				end
			end
			
	      elseif(a==0) then 
			LuaSay("����ʹ�ߣ����ڻ�û��������̨�����˿�����ս")
	      elseif(a>=2) then 
			LuaSay("����ʹ�ߣ���̨�������˱����ˣ�")
	      end
	else
		LuaSay("��ʾ���������ڷ���״̬�����ܽ�����̨�����Ƚ������״̬")
	end
    
elseif(answer=="hsjl") then 
	local level=LuaQuery("level")
	local mapname=MapName()
	if(MapName()=="lu_leitai" or MapName()=="lu_leitaia" or MapName()=="lu_leitaib") then
		if(GetCurrentDay()~=LuaQueryStrTask("Tleitaiday")) then   ---ÿ���ʤ10���󣬲������ӱ�����֣����ǿ��Լ�������
			LuaDelTask("Tleitaitime")
			LuaSetTask("Ttzqx_flag",0)  --��սȺ�ۡ�ÿ�ա�������
		end	
		local c=LuaItemCount("o_mission165")
		if(c>=2) then
			LuaAddTask("Tleitaiwin",1)
			LuaAddTask("Tleitaitime",1)

			DelItem("o_mission165",c)
			LuaSetTask("Tflag_pk",99)
			 ---------------  �ɾ��ж�
			LuaAddAchievementSchedule("LeitPK_num",1)------������ +1
			if(LuaQueryTask("Tleitaitime")<10) then
				LuaAddTask("pknum",1)  --��ñ������1
				LuaSay("��ʾ�������������1")
				LuaGive("coin",500,"Tleitai")	--��η�ֹ�͹̶����˱���ˢǮ
				if(LuaQueryTempStr("online")~=LuaQueryStr("line") and LuaQueryTask("cuontry812")==1)then
					LuaSay("��ʾ���ڰ˻����")
					LuaSetTask("cuontry812",2)
					UpdateMenu()
				end  
				LuaNotice("@3"..LuaQueryStr("name").."@0����̨��ȡ�����������@3��"..LuaQueryTask("Tleitaitime").."��ʤ��")
				LuaSetTask("Tleitaiday",GetCurrentDay())		                           
			else
				if(LuaQueryTempStr("online")~=LuaQueryStr("line") and LuaQueryTask("cuontry812")==1)then
					LuaSay("��ʾ���ڰ˻����")
					LuaSetTask("cuontry812",2)
					UpdateMenu()
				end  
				LuaSay("��ʾ������������ʤ�����Ѿ�����10���������н�����������ʤ���ν����ۻ�")
				LuaNotice("@3"..LuaQueryStr("name").."@0����̨��ȡ�����������@3��"..LuaQueryTask("Tleitaitime").."��ʤ��")
			end
		else
			LuaSay("����ʹ�ߣ������ʤ�󣬲�ȡ��2����̨�������ȡ����")
		end
	else
		LuaSay("����ʹ�ߣ�ֻ������̨��ͼ����ȡ����")
	end

elseif(answer=="look") then       
	LuaSay("����ʹ�ߣ������ڵı������Ϊ@3"..LuaQueryTask("pknum").."@0���Ժ���Ի�ȡ���ؽ�ƷŶ@!")
       
elseif(answer=="T302E") then
	if(LuaQueryTask("T302E")==0) then
		LuaSay(""..LuaQueryStr("name").."��������վС�����Ҵ�������ż�")
		LuaSay("����ʹ�ߣ����������������ҵ�����@!�����˰���������������鷳@!")
		DelItem("o_mission076",1) 
		LuaSetTask("T302E",99)
		UpdateMenu()
	end

elseif(answer=="T402")then
	if(LuaQueryTask("T402")==1)then
		LuaSay("����ʹ�ߣ�����Ǹ��棬�ǿ�����ĺò��ϣ��������������ʱ�ձسɴ�����")
		LuaSay("����ʹ�ߣ���������ʶ���쵽@3��վС��@0����ȥ�����ɣ�")
		LuaSetTask("T402",2)
		AddLog("���������顿",402)
		UpdateTopSay("����վС������ȥ����")
		UpdateMenu()
		UpdateNPCMenu("yizhanxiaoli")
	end
       
elseif(answer=="T540") then	
	local level=LuaQuery("level")
	local a=LuaItemCount("o_mission119")
	local b=LuaItemCount("o_mission120")
	local c=LuaItemCount("o_mission121")
	local hour=GetCurrentHour()
	local minu=GetCurrentMinute()
	local week=GetDayOfWeek()
	local idate={SelfDefTime2Date(GetCurrentTime())}--idate={�꣬�£��գ�ʱ���֣���}
	local day=idate[3]--ÿ��1������
	if(GetCurrentDay()~=LuaQueryStrTask("T540day") and LuaQueryTask("T540") >0) then
		LuaDelTask("T540")
	end
	local online=LuaQueryTempStr("online")
	if(hour<21) then
		LuaSay("@3��ʾ������ʱ��Ϊ21��00~22��00")
	end 
		AddMenuItem("@7����","")
		AddMenuItem("@3�������","dzinfo")
	if(LuaQueryTask("T540") == 0) then 
		if(hour == 21) then
			if(day == 1) then 
	       			AddMenuItem("@3ÿ������","yuesai")
	       		elseif(week == 0) then
		   		AddMenuItem("@3ÿ������","zhousai")
		   	else
		   		AddMenuItem("@3ÿ�ձ���","risai")
		   	end
		end
	elseif(LuaQueryTask("T540") == 88) then
		if(day == 1) then 
			AddMenuItem("@3��������","yuesaijl")
		elseif(week == 0) then 
			AddMenuItem("@3��������","zhousaijl")
	        else
			AddMenuItem("@3��������","risaijl")
	        end	 
	end	
elseif(answer=="dzinfo") then
       		LuaSay("@7�����ճ̣�����[��һ������],����[����],����[ÿ��1��]")
       		LuaSay("@7����ʱ�䣺ÿ��21��00-22��00���У�21��20�Ժ��������̨������ȡ������������̨�ɲ�����ȡ������Ŷ.")
       		LuaSay("@7�ȼ��ֶΣ�������Ϊ2���׶Σ�40������Ϊ1���׶Σ�40������Ϊ����һ���׶�")
       		LuaSay("@7��ʤ����ÿ�˽���ʱ�����������ʸ�֤��ɱ���Է����ܻ�ø��ֻ࣬Ҫ���6�����ϣ����ɳ�Ϊ��ʤ�ߣ�")
      	 	LuaSay("@7��ʤ��ͭ�ҽ���������2������8������40�򣻾�����ߴﵽ500�򣡸��к�ү����������ƺţ�")
      	 		
	
elseif(answer=="risai") then
	local hour=GetCurrentHour()
	local minu=GetCurrentMinute()
	local week=GetDayOfWeek()
	local idate={SelfDefTime2Date(GetCurrentTime())}--idate={�꣬�£��գ�ʱ���֣���}
	local day=idate[3]--ÿ��1������
	if(day == 1) then
		LuaSay("����ʹ�ߣ��Բ��𣬽���������ʱ�䣬��μ�������")
	elseif(week == 0) then
		LuaSay("����ʹ�ߣ��Բ��𣬽���������ʱ�䣬��μ�������")
	else
		LuaSay("����ÿ��������������@2�����ʸ�֤@0��ʤ�߽��õ����ߵ������ʸ�֤")
		LuaSay("�����ռ�6�������ʸ�֤���ɻ������������ͽ�Ǯ�ν������ɽ�������")
		AddMenuItem("@7�Ƿ�μӱ���","")
		AddMenuItem("�μ�����","RYES","")
		AddMenuItem("���μ���","NO","")
	end

elseif(answer=="zhousai") then
local level=LuaQuery("level")
	local hour=GetCurrentHour()
	local minu=GetCurrentMinute()
	local week=GetDayOfWeek()
	local idate={SelfDefTime2Date(GetCurrentTime())}--idate={�꣬�£��գ�ʱ���֣���}
	local day=idate[3]--ÿ��1������
	if(day == 1) then
	LuaSay("����ʹ�ߣ��Բ��𣬽���������ʱ�䣬��μ�������")
	elseif(week==0) then
	LuaSay("����ÿ��������������@2�����ʸ�֤@0��ɱ��һ�ˣ��õ�һ������ɱ�������һ��")
	LuaSay("�����ռ�6�������ʸ�֤���ɻ�ø߶������������ͽ�Ǯ�ν������ɽ�������")
	AddMenuItem("@7�Ƿ�μӱ���","")
	AddMenuItem("�μ�����","ZYES","")
	AddMenuItem("���μ���","NO","")
	else
	LuaSay("����ʹ�ߣ��Բ��𣬽���������ʱ�䣬��μ�������")
	end

    
elseif(answer=="yuesai") then
	local hour=GetCurrentHour()
	local minu=GetCurrentMinute()
	local week=GetDayOfWeek()
	local idate={SelfDefTime2Date(GetCurrentTime())}--idate={�꣬�£��գ�ʱ���֣���}
	local day=idate[3]--ÿ��1������
	if(day == 1) then
	LuaSay("����ÿ��������������@2�����ʸ�֤@0��ɱ��һ�ˣ��õ�һ������ɱ�������һ��")
	LuaSay("�����ռ�6�������ʸ�֤���ɻ�ú���������������ͽ�Ǯ�ν���")
	AddMenuItem("@7�Ƿ�μӱ���","")
	AddMenuItem("�μ�����","YYES","")
	AddMenuItem("���μ���","NO","")
	else
	LuaSay("����ʹ�ߣ��Բ��𣬽��ղ���������ʱ��")
	end
	
elseif(answer=="RYES") then                 --�������� 
	local level=LuaQuery("level")
	local hour=GetCurrentHour()
	local minu=GetCurrentMinute()
	local week=GetDayOfWeek()
	local idate={SelfDefTime2Date(GetCurrentTime())}--idate={�꣬�£��գ�ʱ���֣���}
	local day=idate[3]--ÿ��1������
	local ld
	if(level<40) then 
		ld=1
	else
		ld=2
	end
	if(week > 0 and LuaQueryTask("T540") == 0 and hour == 21) then
		LuaSetTask("T540day",GetCurrentDay())
		local a=LuaItemCount("o_mission119")
		if(a == 0) then
		LuaGive("o_mission119",2)
		elseif(a == 1) then 
		LuaGive("o_mission119",1)
		elseif(a >2) then 
		DelItem("o_mission119",(a-2))        
		end
		LuaSetTask("T540",88)
		LuaGiveBuff("529",1)
		ChangeMap("lu_pk0"..ld.."",270,140)
		LuaSay("����ʹ�ߣ�ף�����������ɣ��ռ���6����ͬ�����ʸ�֤���ɳ�Ϊǿ�߽�����߼���̨����")
	end
	if(hour < 21) then
	LuaSay("����ʹ�ߣ��Բ���ʱ�����磬������9��00�������ɣ�")
	elseif(hour > 21) then
	LuaSay("����ʹ�ߣ��Բ��𣬱���ʱ���ѹ�������������9��00�������ɣ�")
	end

	
elseif(answer=="ZYES") then                  --�������� 
	local level=LuaQuery("level")
	local ld
	local hour=GetCurrentHour()
	local minu=GetCurrentMinute()
	local week=GetDayOfWeek()
	local idate={SelfDefTime2Date(GetCurrentTime())}--idate={�꣬�£��գ�ʱ���֣���}
	local day=idate[3]--ÿ��1������
	if(level<40) then 
		ld=1
	else
		ld=2
	end
	if(week == 0 and LuaQueryTask("T540") == 0 and hour == 21) then
		LuaSetTask("T540day",GetCurrentDay())
		local b=LuaItemCount("o_mission120")
		if(b == 1) then
			LuaGive("o_mission120",1) 
			LuaSetTask("T540",88)
			ChangeMap("lu_pk0"..ld.."",270,140)
		elseif(b==2) then    
			LuaSetTask("T540",88)
			ChangeMap("lu_pk0"..ld.."",270,140)
		elseif(b>2) then 
			DelItem("o_mission119",(b-2))   
			LuaSetTask("T540",88)
			LuaGiveBuff("529",1)
			ChangeMap("lu_pk0"..ld.."",270,140)
		elseif(b ==0) then
			LuaSay("����ʹ�ߣ��Բ�����û�������ʸ�֤�����ܲμӱ�������ͨ��������ʤ����ȡ�ɣ�")
		end
	end
	if(hour < 21) then
	LuaSay("����ʹ�ߣ��Բ���ʱ�����磬������9��00�������ɣ�")
	elseif(hour > 21) then
	LuaSay("����ʹ�ߣ��Բ��𣬱���ʱ���ѹ�������������9��00�������ɣ�")
	end

elseif(answer=="YYES") then                 --�������� 
	local level=LuaQuery("level")
	local hour=GetCurrentHour()
	local minu=GetCurrentMinute()
	local week=GetDayOfWeek()
	local idate={SelfDefTime2Date(GetCurrentTime())}--idate={�꣬�£��գ�ʱ���֣���}
	local day=idate[3]--ÿ��1������
	local ld
	if(level<40) then 
		ld=1
	else
		ld=2
	end
      c=LuaItemCount("o_mission121")
	if(day == 1 and LuaQueryTask("T540") == 0) then
		if(hour == 21) then
			LuaSetTask("T540day",GetCurrentDay())
			if(c == 1) then
				LuaGive("o_mission121",1)
				LuaSetTask("T540",88)
				ChangeMap("lu_pk0"..ld.."",270,140)
			elseif(c==2) then
				LuaSetTask("T540",88)
				ChangeMap("lu_pk0"..ld.."",270,140)
			elseif(c>2) then
				DelItem("o_mission119",(c-2))   
				LuaSetTask("T540",88)
				LuaGiveBuff("529",1)
				ChangeMap("lu_pk0"..ld.."",270,140)
			else
				LuaSay("����ʹ�ߣ��Բ�����û�������ʸ�֤�����ܲμӱ�������ͨ��������������ʤ����ȡ�ɣ�")
			end
		end
	end
	if(hour < 21) then
	LuaSay("����ʹ�ߣ��Բ���ʱ�����磬������9��00�������ɣ�")
	elseif(hour >21) then
	LuaSay("����ʹ�ߣ��Բ��𣬱���ʱ���ѹ�������������9���������ɣ�")
	end

	
elseif(answer=="qqbs") then        --������Ȩ 
	local a=LuaItemCount("o_mission119")
	local b=LuaItemCount("o_mission120")
	local c=LuaItemCount("o_mission121")
	LuaSay("����ʹ�ߣ��ӱ��ߣ���ų��ȡ��һ�в����ʸ�֤��")
	if(a > 0) then
	DelItem("o_mission119",a)
	end
	if(b > 0) then
	DelItem("o_mission120",b)
	end
	if(c > 0) then
	DelItem("o_mission121",c)
	end
	LuaSetTask("T540",99)
	LuaGiveBuff("529",1)
	ChangeMap("lu_bfjy",210,438)
	
	
elseif(answer=="risaijl") then       --��������
	local level=LuaQuery("level")
	local hour=GetCurrentHour()
	local minu=GetCurrentMinute()
	local week=GetDayOfWeek()
	local idate={SelfDefTime2Date(GetCurrentTime())}--idate={�꣬�£��գ�ʱ���֣���}
	local day=idate[3]--ÿ��1������
	local ld
	if(level<40) then 
		ld=1
	else
		ld=2
	end
	local mapname=MapName()
	if(mapname=="lu_pk01" or mapname=="lu_pk02") then 
		if(week > 0 and (hour ==21 and minu>20) and LuaQueryTask("T540")<99) then
			local a=LuaItemCount("o_mission119")
			if(a >= 6) then
				DelItem("o_mission119",a)
				if(LuaItemCount("o_mission119")==0) then
					LuaGive("coin",20000,"T540")
					LuaAddJx("combat_exp",a*8000*ld,"T540")
					LuaAddTask("pknum",2)                      --������ֵĻ��� 
					LuaGive("o_mission120",1)
				end
				LuaNotice("����گ:��@3"..LuaQueryStr("name").."@0�ڵ�ǰ����������ʤ��,�ش�@1ͭ��2�����������ʸ�֤��������������@0���մˣ�")
				LuaSay("����ʹ�ߣ���ϲ���ñ������2�������ڵı������Ϊ@3"..LuaQueryTask("pknum").."@0���Ժ���Ի�ȡ���ؽ�ƷŶ@!")
			elseif(a > 0) then
				DelItem("o_mission119",a)
				if(LuaItemCount("o_mission119")==0) then
				LuaAddJx("combat_exp",a*4000*ld,"T540")
				end
			else
				LuaSay("����ʹ�ߣ���ʧ���ˣ����辭����ʾ�ν���")
				LuaAddJx("combat_exp",2000*ld,"T540")
			end
				LuaSetTask("T540",99)
		else
			LuaSay("����ʹ�ߣ�21��20��22��00֮�䣬������ȡ����")
		end
	else
		LuaSay("����ʹ�ߣ�ֻ������̨������ȡ������������̨������ȡ����")
	end
		
elseif(answer=="zhousaijl") then      --��������
	local level=LuaQuery("level")
	local hour=GetCurrentHour()
	local minu=GetCurrentMinute()
	local week=GetDayOfWeek()
	local idate={SelfDefTime2Date(GetCurrentTime())}--idate={�꣬�£��գ�ʱ���֣���}
	local day=idate[3]--ÿ��1������
	local ld
	if(level<40) then 
		ld=1
	else
		ld=2
	end
	local mapname=MapName()
	if(mapname=="lu_pk01" or mapname=="lu_pk02") then 
		if(week == 0 and (hour ==21 and minu>20) and LuaQueryTask("T540")<99) then
		b=LuaItemCount("o_mission120")
			if(b >= 6) then
			DelItem("o_mission120",b)
			if(LuaItemCount("o_mission120")==0) then
			LuaGive("coin",80000,"T540")
			LuaAddJx("combat_exp",b*80000*ld,"T540")
			LuaAddTask("pknum",10)
			SetTitleMeg(96)
			LuaGive("o_mission121",1)
			end
			LuaNotice("����گ:��@2"..LuaQueryStr("name").."@0�ڵ�ǰ����������ʤ��,�ش�@1��ү@0֮��λ,��֮����,��ʾ¡��!")
			LuaSay("����ʹ�ߣ���ϲ���ñ������10�������ڵı������Ϊ@3"..LuaQueryTask("pknum").."@0���Ժ���Ի�ȡ���ؽ�ƷŶ@!")
			elseif(b < 6 and b > 0) then
			DelItem("o_mission120",b)
			  if(LuaItemCount("o_mission120")==0) then
			  LuaAddJx("combat_exp",b*40000*ld,"T540")
			  end
			else
			 LuaSay("����ʹ�ߣ���ʧ���ˣ����辭����ʾ�ν���")
			 if(LuaItemCount("o_mission120")==0) then
			 LuaAddJx("combat_exp",20000*ld,"T540")
			 end
			end
			LuaSetTask("T540",99)
		else
        LuaSay("����ʹ�ߣ�21��20��22��00֮�䣬������ȡ����")
		end
	else
	LuaSay("����ʹ�ߣ�ֻ������̨������ȡ������������̨������ȡ����")
	end 
		
elseif(answer=="yuesaijl") then      --��������
	local level=LuaQuery("level")
	local hour=GetCurrentHour()
	local minu=GetCurrentMinute()
	local week=GetDayOfWeek()
	local idate={SelfDefTime2Date(GetCurrentTime())}--idate={�꣬�£��գ�ʱ���֣���}
	local day=idate[3]--ÿ��1������
	local ld
	if(level<40) then 
		ld=1
	else
		ld=2
	end
	local mapname=MapName()
	 if(mapname=="lu_pk01" or mapname=="lu_pk02") then 
		if(day == 1 and (hour ==21 and minu>20) and LuaQueryTask("T540")<99) then   
		 	c=LuaItemCount("o_mission121")
			if(c >= 6) then
			 DelItem("o_mission121",c)
			 if(LuaItemCount("o_mission121")==0) then
			  LuaGive("coin",400000,"T540")
			  LuaAddJx("combat_exp",c*800000*ld,"T540")
			  LuaAddTask("pknum",30)
			  SetTitleMeg(97)
			 end
			 LuaNotice("����گ:��@2"..LuaQueryStr("name").."@0�ڵ�ǰ����������ʤ��,�ش�@1����@0֮��λ,��֮����,��ʾ¡��!")
			 LuaSay("����ʹ�ߣ���ϲ���ñ������30�������ڵı������Ϊ@3"..LuaQueryTask("pknum").."@0���Ժ���Ի�ȡ���ؽ�ƷŶ@!")
			elseif(c > 0) then
			DelItem("o_mission121",c)
			 if(LuaItemCount("o_mission121")==0) then
			   LuaAddJx("combat_exp",c*400000*ld,"T540")
			 end
			else
			LuaSay("����ʹ�ߣ���ʧ���ˣ����辭����ʾ�ν���")
			LuaAddJx("combat_exp",200000*ld,"T540")
			end
			LuaSetTask("T540",99)
		else
        LuaSay("����ʹ�ߣ�21��20��22��00֮�䣬������ȡ����")
		end
	else
	LuaSay("����ʹ�ߣ�ֻ������̨������ȡ������������̨������ȡ����")
	end

elseif(answer=="T395")then       -----------------------------  ��̨����
	if(LuaQueryTask("T395") == 1) then
		LuaSay("����ʹ�ߣ�Ӣ�۹�Ȼ�Ѿ���һλ�����ˣ���������Ŀ����������������̨Ŷ�����ض�ʱ�仹�������μӱ��������")
		LuaSay("����ʹ�ߣ��������Ҫ@2��������Լ���ʵ��@0����ô������@4������Ӫ@0�����������ɣ����߿�����@2����ǰ��@0��")
		AddMenuItem("@7�������","")
		AddMenuItem("��ȡ����","T395jl")
	end 
	elseif(answer=="T395jl")then
		if(LuaQueryTask("T395")==1) then
		LuaAddJx("combat_exp",140000,"T395")
		LuaAddAchievementSchedule("Task_num",1)
		LuaSetTask("T395",99)
		DelLog("395")
		UpdateMenu()
		LuaSay("����ʹ�ߣ���ϲ�����Ѿ���Ϊ�����ж���һ���Ĵ�����ÿ��ֻҪ���߾��ܵ�������@3����@0��@4˾�����@0����ȡ�޶����������½���и���ʢ���̳ǵ�������Ŷ")
		LuaSay("����ʹ�ߣ��Ķ������ж��������ɽ��뽨����һֱ�����߾��ܽ���@3����@0����@4˾�����@0�����ˣ���Ҫ˵���Ҹ������@D")
		AddMenuItem("@7͵͵�����㵽˾�����","")
		AddMenuItem("������˾�����","Tcs_smdz")

	end  
	elseif(answer=="Tcs_smdz")then
		ChangeMap("lu_gd",56,290)

elseif(answer=="Tleitai2") then    ---������̨��ս
	if ((LuaQueryTempStr("online")=="ew22" or LuaQueryTempStr("online")=="ew20" or LuaQueryTempStr("online")=="ew28") and ( LuaQueryStr("country_id")=="ew21" or LuaQueryStr("country_id")=="ew27" ))then
	LuaSay("��ʾ�������ڵĹ�����ù����ܽ���������ͨ��")	
	else
		if(LuaQuery("level")>=25) then
		AddMenuItem("@7������̨","")
		AddMenuItem("@1����˵��","GZSM")
			if(MapName()=="lu_bfjy") then
			AddMenuItem("@3����","shelei2")
			AddMenuItem("@3Ӧս","yingzhan2")
			end
		AddMenuItem("@3��ʤ����","hsjl2")
		AddMenuItem("@5�鿴ѡ������","CKXSZL")
		AddMenuItem("@5��ע","XZ")
		AddMenuItem("@5��ע����","XZJL")
		else
		LuaSay("��ʾ�������ڵ���Ϊ̫�ͣ�����25���Ժ������ɣ�")
		end
	end

elseif(answer=="GZSM") then
	LuaSay("��ʾ�������߿�������Ӧս�ߵĵȼ���Χ��ͬʱ������һ����������ս��Ӧս�߱���֧����������ս�����Ӧս��")
	LuaSay("��ʾ��������������Ӧս��20���Ӻ���̨���Զ��رգ���������ս���������뿪��̨��������90%����ս��")
	LuaSay("��ʾ������̨��ʤ�󣬻�ʤ�����������û�ԭ���Լ���ս�𣡻����Եõ�ʧ�ܷ���ս���90%��10%��Ϊ���ط��Ͻ�ϵͳ��")
	LuaSay("��ʾ������˫��Ҳ����ע������ͬʱ��ע˫������עֻ�����Ӳ��ܼ��٣�ֻҪ��������ע�����ܽ�����һֱ�£�")
	LuaSay("@1ע��@0�������Ҫ��ע�����ڿ���ϵͳ�����ʱ��ע������һ��ʱ�����ע�����ˣ�")
	LuaSay("@1ע��@0�������Ҫ��ע�콱�����ڿ���ϵͳ�����ʱ��ȡ������һ��ʱ�����ȡ���������ʧ��")
	LuaSay("@1ע��@0���������˫��δ�ֳ�ʤ���������б��������Ա������ߣ��������ע��ǮѪ���޹飡������ö���ע��Щ����")
	LuaSay("@1ע��@0���������˫�������ˣ����԰�����ע�������������������ҪС�����Ǵ�������������ţ�")

elseif(answer=="shelei2") then
	if((GetCurrentTime()-LuaPublicQuery("zhu_over_time"))>=300) 	 then
		local a=LuaQueryPersonInMap("lu_leitaid")
    		if(a==0) then			--�����̨��ͼ����
			LuaSetTask("sl_money",0) ---����Ϊ0
			LuaSetTask("sl_level",0)
			-----��ע���� 
			LuaPublicSet("zhu1_lv",0)      
			LuaPublicSet("zhu1_money",0)
			LuaPublicSetStr("zhu1_ID","��")
				LuaPublicSet("zhu2_lv",0)
			LuaPublicSet("zhu2_money",0)
			LuaPublicSetStr("zhu2_ID","��")
			LuaPublicSetStr("zhu_win_ID","��")
			------����˫����Ϣ���� 
			LuaPublicSet("shelei2_money",0)
			LuaPublicSet("shelei2_level",0)
			LuaPublicSet("player_lv1",0)
			LuaPublicSetStr("player_ID1","��")
			
			LuaPublicSet("yingzhan2_money",0)
			LuaPublicSet("yingzhan2_level",0)
			LuaPublicSet("player_lv2",0)
			LuaPublicSetStr("player_ID2","��")
    			--------����Ҫ��Ӧս��ҵĵȼ����µ���ս��
			LuaSay("��ʾ��������Ӧս�ߵĵȼ����ޣ�������������µ���Ҽ���һ���أ�")
			AddMenuItem("@7������","")
			AddMenuItem("@3��","shelei2_level_yes")


  		elseif(a==1) then
			LuaSay("��ʾ�������Ѿ����������������ڿ���ѡ����ս��")
   		elseif(a>=2) then
			LuaSay("��ʾ����̨��������2�˱����д��ˣ�")
   		end
   	else
   		LuaSay("��ʾ��"..(300-GetCurrentTime()+LuaPublicQuery("zhu_over_time")).."���������ޣ�")
   	end
elseif(answer=="shelei2_level_yes") then
    LuaSay("��ʾ����������ע����ս��(100~50000ͭ��)�������Ӧս����ö�����ս����һ���أ���ʤ������Ӯ��@3���־ųɵ���ս��@0��һ�ɾ���Ϊ���ط��Ͻ���ϵͳ��")
    AddMenuItem("@7������","")
    AddMenuItem("@3��","shelei2_money_yes")
    EnterNumber(25,100) -----����Ҫ��Ӧս�ĵȼ������ȼ�����͵ģ���һ��if_end���������ִ��
elseif(answer=="shelei2_money_yes") then
	if(LuaQueryTemp("min_max_num")==0) then
		LuaSay("��ʾ������һ����������ֲ�����Ҫ��")
	else
		LuaSetTask("sl_level",LuaQueryTemp("min_max_num"))   -----����Ҫ��Ӧս�ĵȼ�
    	EnterNumber(100,50000) ----������ս��
    	LuaSay("��ʾ��ȷ����ע��ս��")
    	AddMenuItem("@7ȷ��","")
    	AddMenuItem("@3��","shelei2_money_yes2")
    end
elseif(answer=="shelei2_money_yes2") then
	if(LuaQueryTemp("min_max_num")==0) then
		LuaSay("��ʾ������һ����������ֲ�����Ҫ��")
	else
		LuaSetTask("sl_money",LuaQueryTemp("min_max_num"))  --------������ս��
   	 	if(LuaItemCount("coin")>=LuaQueryTask("sl_money"))then
    	AddMenuItem("@7�ٴ�ȷ��","")
    	AddMenuItem("@3��","shelei2_no")
		AddMenuItem("@3֧����ս��","shelei2_yes")
   	 	else
    	LuaSay("��ʾ��������û����ô���ͭ�ң�")
    	end
    end
elseif(answer=="shelei2_yes") then  --���޳ɹ�
	if(LuaQuery("ST")~=3 and LuaQuery("ST")~=4)then
		if(LuaQueryPersonInMap("lu_leitaid")==0) then			--�����̨��ͼ�����������Ƿ�ֹ��Ϊ�����ӳ����2��+����
	    ---���в���������д��ĵط�

			LuaPublicSet("shelei2_money",LuaQueryTask("sl_money"))
			LuaPublicSet("shelei2_level",LuaQueryTask("sl_level"))
			LuaPublicSet("player_lv1",LuaQuery("level"))
			LuaPublicSetStr("player_ID1",LuaQueryStr("name"))
			LuaGive("coin",-1*LuaQueryTask("sl_money"),"Tleitai2")
			---------
			LuaNotice("@3"..LuaQuery("level").."��@0��@3"..LuaQueryStr("name").."@0������@3"..LuaQueryTask("sl_level").."��@0�µ���ҷ���������̨�����룬��ʤ������Ӯȡ���ֵľų���ս��@3"..floor(LuaQueryTask("sl_money")*0.9).."ͭ��@0��")
			local b=LuaItemCount("o_mission165")
			if(b>1) then
				DelItem("o_mission165",b-1)
			elseif(b==0) then
				LuaGive("o_mission165",1)
			end
			local c=LuaItemCount("o_mission119")
			if(c>0) then
				DelItem("o_mission119",c)
			end
			local d=LuaItemCount("o_mission120")
			if(d>0) then
				DelItem("o_mission120",d)
			end
			local e=LuaItemCount("o_mission121")
			if(e>0) then
				DelItem("o_mission121",e)
			end
			-------------------------------- ��ע�������� 
			LuaPublicSet("zhu1_lv",LuaPublicQuery("player_lv1"))
			LuaPublicSet("zhu1_money",0)
			LuaPublicSetStr("zhu1_ID",LuaPublicQueryStr("player_ID1")) 
			LuaSetTask("ZJXZ2_money",0)
		LuaSetTask("ZJXZ1_money",0) 
			----------------------------------
			ChangeMap("lu_leitaid",175,256)
		else
			LuaSay("��ʾ�����ź�������ұ������������ˣ�����ʱ�޷��ڴ���̨�����ޣ�")
		end
	else
		LuaSay("��ʾ���������ڷ���״̬�����ܽ�����̨�����Ƚ������״̬")
	end

elseif(answer=="shelei2_no") then  --������
    LuaSay("��ʾ����ѡ���˲����ޣ�")


----------------------------------------------------------------------------------
elseif(answer=="yingzhan2") then		--���Ӧս
	if(LuaQuery("level")<=LuaPublicQuery("shelei2_level"))then
		local a=LuaQueryPersonInMap("lu_leitaid")
      		if(a==1 and LuaPublicQueryStr("player_ID1") ~="��" and LuaPublicQueryStr("player_ID2")=="��") then
      			LuaSay("��ʾ����ȷ��Ҫ��@3"..LuaPublicQuery("player_lv1").."��@0��@3"..LuaPublicQueryStr("player_ID1").."@0һ�����£���Ҫ��ע@3"..LuaPublicQuery("shelei2_money").."ͭ��@0Ϊ��ս��")
	  		LuaSetTask("yz_money",0) ---����Ϊ0
    			LuaSetTask("yz_level",0)
			if(LuaItemCount("coin")>=LuaPublicQuery("shelei2_money"))then
				AddMenuItem("@7Ӧս��̨","")
				AddMenuItem("@3��","yingzhan2_no")
				AddMenuItem("@3֧����ս��","yingzhan2_yes")
			else
				LuaSay("��ʾ��������û����ô���ͭ�ң�")
			end

    		elseif(a==0) then
			LuaSay("��ʾ�����ڻ�û��������̨�����˿�����ս")
      		elseif(a>=2 and LuaPublicQueryStr("player_ID1") ~="��" and LuaPublicQueryStr("player_ID2")~="��") then
			LuaSay("��ʾ����̨�������˱����ˣ�")
		elseif(a==1 and LuaPublicQueryStr("player_ID1") ~="��" and LuaPublicQueryStr("player_ID2")~="��") then
			LuaSay("��ʾ����һ����̨��û�������Ѿ���һ�������ˣ���Ȼ�ʤ���콱�����̨�г������ſ��Խ�����һ�ֱ�����")
     		end

	else
		LuaSay("��ʾ���������������@3"..LuaPublicQuery("shelei2_level").."��@0���µ���ң��㲻��Ӧս��")
	end
elseif(answer=="yingzhan2_yes") then  --Ӧս�ɹ�
	if(LuaQuery("ST")~=3 and LuaQuery("ST")~=4)then
	    if(LuaQueryPersonInMap("lu_leitaid")==0) then			--�����̨��ͼ�����������Ƿ�ֹ��Ϊ�����ӳ�����������ˣ�Ӧս����ȴ����
		LuaSay("��ʾ����̨�����޵�����������")
		elseif(LuaQueryPersonInMap("lu_leitaid")>=2) then			--�����̨��ͼ�����������Ƿ�ֹ��Ϊ�����ӳ�����������ϵ�Ӧս���˽���
		LuaSay("��ʾ����̨���Ѿ����������ڱ�������")
		else
			---���в���������д��ĵط�
			LuaSetTask("yz_money",LuaPublicQuery("shelei2_money"))
			LuaSetTask("yz_level",LuaQuery("level"))
		LuaPublicSet("player_lv2",LuaQueryTask("yz_level"))
		LuaPublicSet("yingzhan2_money",LuaQueryTask("yz_money"))
		LuaPublicSetStr("player_ID2",LuaQueryStr("name"))
		LuaGive("coin",-1*LuaQueryTask("yz_money"),"Tleitai2")
		--------
			local b=LuaItemCount("o_mission165")
			if(b>1) then
			DelItem("o_mission165",b-1)
			elseif(b==0) then
			LuaGive("o_mission165",1)
			end
			------------------------------------------------  ��ע�Ĳ�������

			LuaPublicSet("zhu2_lv",LuaPublicQuery("player_lv2"))
		LuaPublicSet("zhu2_money",0)
		LuaPublicSetStr("zhu2_ID",LuaPublicQueryStr("player_ID2"))
		LuaSetTask("ZJXZ2_money",0)
		LuaSetTask("ZJXZ1_money",0)

		LuaPublicSet("zhu_begin_time",GetCurrentTime())
		if(LuaPublicQueryStr("Tjqlt_data")~=GetCurrentDay() )then   -----������̨�������������� 
			LuaPublicSet("TPublic_jqlt_times",0)
			LuaPublicSetStr("Tjqlt_data",GetCurrentDay())
			end
			LuaPublicSet("TPublic_jqlt_times",LuaPublicQuery("TPublic_jqlt_times")+1) ----Ӧս�ɹ������+1 
			--------------------------------------------------
			LuaNotice("@3"..LuaPublicQuery("player_lv2").."��@0��@3"..LuaPublicQueryStr("player_ID2").."@0Ӧս@3"..LuaPublicQuery("player_lv1").."��@0��@3"..LuaPublicQueryStr("player_ID1").."@0��@35������@0��ҿ���ȥ@3����ʹ��@0������ע����˭���ʤ��")
			LuaGiveBuff("528",1)
			LuaSay("������̨����,һ��ʱ���ڲ�����PK��������̨��5���ӻ��Զ����")
			ResetFBStartTime("lu_leitaid")
			ChangeMap("lu_leitaid",175,256)
		end
	else
		LuaSay("��ʾ���������������@3"..LuaPublicQuery("shelei2_level").."��@0���µ���ң��㲻��Ӧս��")
	end
elseif(answer=="yingzhan2_no") then  --��Ӧս
    LuaSay("��ʾ����ѡ���˲�Ӧս��")
--------------------------------------------------------------------------------------
elseif(answer=="hsjl2") then
      	if(MapName()=="lu_leitaid") then
            if((GetCurrentTime()-LuaPublicQuery("zhu_begin_time"))<=300) 	 then
            LuaSay("��������עʱ�䣬���������ע����"..(300-GetCurrentTime()+LuaPublicQuery("zhu_begin_time")).."�룡��ע����������콱")
            else
      			local c=LuaItemCount("o_mission165")
				if(c>=2) then

				DelItem("o_mission165",c)
		 		---------------  ���������콱
				LuaAddAchievementSchedule("LeitPK_num",1)------������ +1
				LuaGive("coin",floor(LuaPublicQuery("shelei2_money")*1.9),"Tleitai2")
				LuaPublicSet("zhu_over_time",GetCurrentTime())
					if(LuaQueryStr("name")==LuaPublicQueryStr("player_ID1"))   then
					LuaPublicSetStr("zhu_win_ID",LuaPublicQueryStr("player_ID1"))
					LuaNotice("@3"..LuaPublicQuery("player_lv1").."��@0��@3"..LuaPublicQueryStr("player_ID1").."@0�����@3"..LuaPublicQuery("player_lv2").."��@0��@3"..LuaPublicQueryStr("player_ID2").."@0��Ӯ����@3"..floor(LuaPublicQuery("shelei2_money")*0.9).."ͭ��@0����ע�����������5�����ڵ�����ʹ�������콱��")
					else
					LuaPublicSetStr("zhu_win_ID",LuaPublicQueryStr("player_ID2"))
					LuaNotice("@3"..LuaPublicQuery("player_lv2").."��@0��@3"..LuaPublicQueryStr("player_ID2").."@0�����@3"..LuaPublicQuery("player_lv1").."��@0��@3"..LuaPublicQueryStr("player_ID1").."@0��Ӯ����@3"..floor(LuaPublicQuery("shelei2_money")*0.9).."ͭ��@0����ע�����������5�����ڵ�����ʹ�������콱��")
					end

				elseif(LuaItemCount("o_mission165")==1 and (MapName()=="lu_leitaid" and LuaQueryPersonInMap("lu_leitaid")==1) and LuaPublicQuery("yingzhan2_money")~=0 and LuaPublicQuery("shelei2_money")~=0) then
				DelItem("o_mission165",c)
				---------------  ���������콱
				LuaAddAchievementSchedule("LeitPK_num",1)------������ +1
				LuaGive("coin",floor(LuaPublicQuery("shelei2_money")*1.9),"Tleitai2")
				LuaPublicSet("zhu_over_time",GetCurrentTime())
					if(LuaQueryStr("name")==LuaPublicQueryStr("player_ID2"))    then
					LuaPublicSetStr("zhu_win_ID",LuaPublicQueryStr("player_ID2"))
					LuaNotice("@3"..LuaPublicQuery("player_lv1").."��@0��@3"..LuaPublicQueryStr("player_ID1").."@0�����ˣ�@3"..LuaPublicQuery("player_lv2").."��@0��@3"..LuaPublicQueryStr("player_ID2").."@0��ʤ��Ӯ����@3"..floor(LuaPublicQuery("shelei2_money")*0.9).."ͭ��@0����ע�����������5�����ڵ�����ʹ�������콱��")
					else
					LuaPublicSetStr("zhu_win_ID",LuaPublicQueryStr("player_ID1"))
					LuaNotice("@3"..LuaPublicQuery("player_lv2").."��@0��@3"..LuaPublicQueryStr("player_ID2").."@0�����ˣ�@3"..LuaPublicQuery("player_lv1").."��@0��@3"..LuaPublicQueryStr("player_ID1").."@0��ʤ��Ӯ����@3"..floor(LuaPublicQuery("shelei2_money")*0.9).."ͭ��@0����ע�����������5�����ڵ�����ʹ�������콱��")
					end
				else
				LuaSay("����ʹ�ߣ������ʤ�󣬲�ȡ��2����̨�������ȡ����")
				end
			end
     	else
		LuaSay("����ʹ�ߣ�ֻ������̨��ͼ����ȡ����")
      	end

elseif(answer=="qcmz2") then
    LuaSay("��ʾ���Զ�������������Ƿ�����ս������޷�pk��״̬���еĻ��Զ�����������ˣ����������̨����ʱ������")
    if(LuaCheckBuff("520")==1)then
        LuaDeleteBuff("520")
    end
    if(LuaCheckBuff("477")==1)then
        LuaDeleteBuff("477")
    end
    if(LuaCheckBuff("518")==1)then
        LuaDeleteBuff("518")
    end
elseif(answer=="likai2") then

	if(LuaItemCount("o_mission165")==1 and (MapName()=="lu_leitaid" and LuaQueryPersonInMap("lu_leitaid")==2) ) then   ----��2��ʱ��һ������(��ʧ������ս��)
   		LuaSay("��ʾ��@3��ʤ����ȡ����@0��������뿪�����˫��δ�ֳ�ʤ�������뿪�ĵ�����Ϊ�Զ���Ȩ��ʧȥ�Լ���ע����ս�𣡻�ʤ��δ�콱���뿪Ҳ��Ϊ�Զ���Ȩ")
		AddMenuItem("@7ѡ���б�","")
		AddMenuItem("@3��Ҫ����","chetui_yes")
		UpdateMenu()
	elseif(LuaItemCount("o_mission165")==1 and (MapName()=="lu_leitaid" and LuaQueryPersonInMap("lu_leitaid")==1) ) then   ----��1��ʱ���뿪��̨
   		LuaSay("��ʾ�������뿪��̨������90%��ս��������У��۳�@310%����ս��@0��Ϊ���ط�Ŷ��")
		AddMenuItem("@7ѡ���б�","")
		AddMenuItem("@3��Ҫ�뿪","chetui2_yes")
		UpdateMenu()
	else
		if(LuaItemCount("o_mission165")>0) then
   		DelItem("o_mission165",LuaItemCount("o_mission165"))
  		end
		ChangeMap("lu_bfjy",580,340)
	end
elseif(answer=="chetui_yes") then
	if((GetCurrentTime()-LuaPublicQuery("zhu_begin_time"))<=300) 	 then
		LuaSay("��ʾ����������עʱ�䣬���������ע����"..(300-GetCurrentTime()+LuaPublicQuery("zhu_begin_time")).."�룡��ע��������ܳ��ˣ�")
	else
		if(LuaItemCount("o_mission165")>0) then
   		DelItem("o_mission165",LuaItemCount("o_mission165"))
  		end
		ChangeMap("lu_bfjy",580,340)
	end
elseif(answer=="chetui2_yes") then
		if(LuaItemCount("o_mission165")>0) then
  	 	DelItem("o_mission165",LuaItemCount("o_mission165"))
  		end
 	 	LuaGive("coin",floor(LuaQueryTask("sl_money")*0.9),"Tleitai2")
 	
 	 	LuaPublicSet("shelei2_money",0)
    	LuaPublicSet("shelei2_level",0)
  	 	LuaPublicSet("player_lv1",0)
    	LuaPublicSetStr("player_ID1",0)  
		ChangeMap("lu_bfjy",580,340)

----------------------------��ע------------------------------------------------------------
elseif(answer=="CKXSZL") then
	if((GetCurrentTime()-LuaPublicQuery("zhu_begin_time"))<=300) 	 then
		LuaSay("������@3"..LuaPublicQuery("player_lv1").."��@0��@3"..LuaPublicQueryStr("player_ID1").."@0����ս��Ϊ@3"..LuaPublicQuery("shelei2_money").."ͭ��@0������ע@3"..LuaPublicQuery("zhu1_money").."ͭ��@0��")
		LuaSay("Ӧս�ߣ�@3"..LuaPublicQuery("player_lv2").."��@0��@3"..LuaPublicQueryStr("player_ID2").."@0����ս��Ϊ@3"..LuaPublicQuery("yingzhan2_money").."ͭ��@0������ע@3"..LuaPublicQuery("zhu2_money").."ͭ��@0��")
		LuaSay("��ʾ�����������ע����"..(300-GetCurrentTime()+LuaPublicQuery("zhu_begin_time")).."�룡")
	else
		LuaSay("��ʾ�����ڲ��ܲ鿴������˫��������5�����ڲ�����ע�Ͳ鿴��")
	end
elseif(answer=="XZ") then
	--	LuaSay("��ʾ����ע�������⣬�����޸��У����������Ĳ��㣬�����½⣡")
	--[[�������˽�����ϵļ�����̨�����빫��������ͬ��˵������ͬһ���������Ѿ��ǵڶ��������Ǹ��ೡ��
	��ʱ��˽�˺͹�������̨����ͬ����ͬһ���������Լ�����ע���������㡣�������ͬһ�����Լ���ע���� ���㡣
	�������ʱ���㣬�����ˢͭ�ҡ� 
	]]
	if(LuaPublicQuery("TPublic_jqlt_times")~=LuaQueryTask("Tself_jqlt_times")) then
		LuaSetTask("Tself_jqlt_times",LuaPublicQuery("TPublic_jqlt_times"))
		LuaSetTask("ZJXZ1_money",0)
        LuaSetTask("ZJXZ2_money",0)
	end
	if((GetCurrentTime()-LuaPublicQuery("zhu_begin_time"))<=300) 	 then
		if(LuaPublicQuery("zhu1_money")+LuaPublicQuery("zhu2_money")<100000000) 	 then    ---����������� 
			AddMenuItem("@7ѡ���б�","")
			AddMenuItem("@3��ע"..LuaPublicQueryStr("player_ID1").."","XZ1")
			AddMenuItem("@3��ע"..LuaPublicQueryStr("player_ID2").."","XZ2")
		else
			LuaSay("��ʾ�����ֱ���˫������ע���ܽ��������Ѿ�����@3һ��ͭ��@0���ﵽ���ޣ���������ע����")
		end
	else
		LuaSay("��ʾ�����ڲ�����ע������˫��������5�����ڲ�����עʱ�䣡")
	end
elseif(answer=="XZ1") then
	EnterNumber(100,1000000) ----
    LuaSay("��ʾ��ȷ����ע��")
    AddMenuItem("@7ȷ��","")
    AddMenuItem("@3��","XZ1_yes")
elseif(answer=="XZ1_yes") then
	if(LuaQueryTemp("min_max_num")==0) then
		LuaSay("��ʾ������һ����������ֲ�����Ҫ��")
	else
		LuaSetTask("XZ1_money",LuaQueryTemp("min_max_num"))
		if((GetCurrentTime()-LuaPublicQuery("zhu_begin_time"))<=300) 	 then
   	 		if(LuaItemCount("coin")>=LuaQueryTask("XZ1_money"))then
    		LuaGive("coin",-1*LuaQueryTask("XZ1_money"),"Tzhu")
    		LuaPublicSet("zhu1_money",LuaPublicQuery("zhu1_money")+LuaQueryTask("XZ1_money"))
    		LuaSetTask("ZJXZ1_money",LuaQueryTask("XZ1_money")+LuaQueryTask("ZJXZ1_money"))
   	 		else
    		LuaSay("��ʾ��������û����ô���ͭ�ң�")
    		end
    	else
			LuaSay("��ʾ�����ڲ�����ע������˫��������5�����ڲ�����עʱ�䣡��ע�⣺�������˫��û�зֳ�ʤ�������ˣ��㽫��Ѫ���޹飡")
		end
    end

    ----------------------------------------------
elseif(answer=="XZ2") then
	EnterNumber(100,1000000) ----
    LuaSay("��ʾ��ȷ����ע��")
    AddMenuItem("@7ȷ��","")
    AddMenuItem("@3��","XZ2_yes")
elseif(answer=="XZ2_yes") then
	if(LuaQueryTemp("min_max_num")==0) then
		LuaSay("��ʾ������һ����������ֲ�����Ҫ��")
	else
		LuaSetTask("XZ2_money",LuaQueryTemp("min_max_num"))
		if((GetCurrentTime()-LuaPublicQuery("zhu_begin_time"))<=300) 	 then
			if(LuaItemCount("coin")>=LuaQueryTask("XZ2_money"))then
    		LuaGive("coin",-1*LuaQueryTask("XZ2_money"),"Tzhu")
    		LuaPublicSet("zhu2_money",LuaPublicQuery("zhu2_money")+LuaQueryTask("XZ2_money"))
    		LuaSetTask("ZJXZ2_money",LuaQueryTask("XZ2_money")+LuaQueryTask("ZJXZ2_money"))
   	 		else
    		LuaSay("��ʾ��������û����ô���ͭ�ң�")
    		end
			LuaSay("��ʾ�����������ע����"..(300-GetCurrentTime()+LuaPublicQuery("zhu_begin_time")).."�룡")
		else
			LuaSay("��ʾ�����ڲ�����ע������˫��������5�����ڲ�����עʱ�䣡")
		end

    end

elseif(answer=="XZJL") then
	--[[�������˽�����ϵļ�����̨�����빫��������ͬ��˵������ͬһ���������Ѿ��ǵڶ��������Ǹ��ೡ��
	��ʱ��˽�˺͹�������̨����ͬ����ͬһ���������Լ�����ע���������㡣�������ͬһ�����Լ���ע���� ���㡣
	�������ʱ���㣬�����ˢͭ�ҡ� 
	]]
	if(LuaPublicQuery("TPublic_jqlt_times")~=LuaQueryTask("Tself_jqlt_times")) then
		LuaSetTask("Tself_jqlt_times",LuaPublicQuery("TPublic_jqlt_times"))
		LuaSetTask("ZJXZ1_money",0)
        LuaSetTask("ZJXZ2_money",0)
	end
	if((GetCurrentTime()-LuaPublicQuery("zhu_over_time"))<=300) 	 then
		AddMenuItem("@7ѡ���б�","")
		AddMenuItem("@3��ȡ"..LuaPublicQueryStr("player_ID1").."��ע","XZJL1")
		AddMenuItem("@3��ȡ"..LuaPublicQueryStr("player_ID2").."��ע","XZJL2")
	else
		LuaSay("��ʾ����ע����˫���ֳ�ʤ����5�����ڣ������콱ʱ��Σ��������˫��û�зֳ�ʤ�������ˣ��㽫��Ѫ���޹飡")
	end
elseif(answer=="XZJL1") then
	if(LuaPublicQueryStr("zhu_win_ID")==LuaPublicQueryStr("player_ID1"))  then
		local a=LuaPublicQuery("zhu1_money")
		local b=LuaPublicQuery("zhu2_money")
		local c=LuaQueryTask("ZJXZ1_money")
		local d
		if(a>0 and b>0 and c>0) then                                       
		d=floor((c/a)*b*0.9)
		else
		d=0
		end
 		LuaSay("��ʾ����ϲ�㣬����ע����һ���ܼƱ���ע@3"..LuaPublicQuery("zhu1_money").."ͭ��@0���һ�ʤ�ˣ������ȡ�ر���@3"..c.."ͭ��@0��")
		LuaSay("��ʾ����һ���ܼƱ���ע@3"..LuaPublicQuery("zhu2_money").."ͭ��@0���۳�10%�ĳ��طѣ��������ʣ�׬ȡ@3"..d.."ͭ��@0��")
		LuaGive("coin",d+c,"Tzhu")
		LuaSetTask("ZJXZ1_money",0)
        LuaSetTask("ZJXZ2_money",0)
	else
		LuaSay("��ʾ�����ź�������ע����һ������ˣ�")
		LuaSetTask("ZJXZ1_money",0)
	end
elseif(answer=="XZJL2") then
	if(LuaPublicQueryStr("zhu_win_ID")==LuaPublicQueryStr("player_ID2"))  then

		local a=LuaPublicQuery("zhu2_money")
		local b=LuaPublicQuery("zhu1_money")
		local c=LuaQueryTask("ZJXZ2_money")
		local d
		if(a>0 and b>0 and c>0) then
		d=floor((c/a)*b*0.9)
		else
		d=0
		end
		LuaSay("��ʾ����ϲ�㣬����ע����һ���ܼƱ���ע@3"..LuaPublicQuery("zhu2_money").."ͭ��@0���һ�ʤ�ˣ�")
		LuaSay("��ʾ����һ���ܼƱ���ע@3"..LuaPublicQuery("zhu1_money").."ͭ��@0���۳�10%�ĳ��طѣ��������ʣ�׬ȡ@3"..d.."ͭ��@0��")
		LuaGive("coin",d+c,"Tzhu")
		LuaSetTask("ZJXZ2_money",0)
        LuaSetTask("ZJXZ1_money",0)
	else
		LuaSay("��ʾ�����ź�������ע����һ������ˣ�")
		LuaSetTask("ZJXZ2_money",0)
	end

elseif(answer=="Tsnpc_37")then
	if(LuaQueryTask("Tsnpc_37")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("����ʹ�ߣ����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_37",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_37")==2)then
		LuaSay("����ʹ�ߣ����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_37")then
	if(LuaQueryTask("Tenpc_37")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("����ʹ�ߣ��ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_37",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_37")==2)then
		LuaSay("����ʹ�ߣ����Ѿ������ˣ����ȥ��ȡ������")
	end



end
LuaSendMenu()
return 1
end
--/////////���ʱתΪ������ʱ����///////////
function SelfDefTime2Date(iTime)--iTime=GetCurrentTime()
local seconds=iTime+3600*8
--//seconds=GetCurrentTime()+3600*8
if(seconds>=3600*8)then
local days=floor(seconds/86400)
local weekday=days-floor(days/7)*7
local iYear=1970
local yearday=365
local iDays=days
while
	iDays>=yearday
do
	iYear=iYear+1
	iDays=iDays-yearday
	if((floor(iYear/4)==iYear/4 and floor(iYear/100)~=iYear/100) or floor(iYear/400)==iYear/400)then
	yearday=366
	else
	yearday=365
	end
end

local monthday=31
local iMonth=1
while
	iDays>=monthday
do
	iMonth=iMonth+1
	iDays=iDays-monthday
	if(iMonth==2)then
		if((floor(iYear/4)==iYear/4 and floor(iYear/100)~=iYear/100) or floor(iYear/400)==iYear/400)then
		monthday=29
		else
		monthday=28
		end
	elseif(iMonth==4 or iMonth==6 or iMonth==9 or iMonth==11)then
		monthday=30
	else
		monthday=31
	end
end
local Year=iYear
local Month=iMonth
local Day=iDays+1
local Hour=floor((seconds-days*86400)/3600)
local Minute=floor((seconds-floor(seconds/3600)*3600)/60)
local Second=floor(seconds-floor(seconds/60)*60)
return Year,Month,Day,Hour,Minute,Second--����������ʱ����
else
return 1970,1,1,8,0,0
end
end