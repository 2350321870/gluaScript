NPCINFO = {
serial="182" ,
base_name="xylr" ,
icon=2558,
NpcMove=2558,
name="��������" ,
iconaddr=1 ,
butt="10|10|63" ,
lastsay="������£��ó�����" ,
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then 
        havetask =0    
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7�����б�","")
	if(LuaQueryTask("T220")==1)then
		AddTopSayMenuItem("@2�Ŷ������ء�","T220")
		havetask =2
	end

    if(LuaQueryTask("Thuanxing") ==4 and LuaQueryTask("Thx04") ==0)  then
	AddTopSayMenuItem("@2��������ÿ�ա�@0","Thuanxing")
	havetask =2
	end    
	if(LuaQueryTask("Tqlxs") ==1)  then
	AddTopSayMenuItem("@2ǧ�����̡�ÿ�ա�@0","Tqlxs")
	havetask =2
	end
	if(LuaQueryTask("T120")==2 and LuaQueryTask("T120B")==0)  then
	AddTopSayMenuItem("@2���Ŀ��顾ÿ�ա�@0","T120")
	havetask =2
	end
	if(LuaQueryTask("Tdiaoyuhd")==1)  then
	AddTopSayMenuItem("@2����@0","Tdiaoyuhd")
	havetask =2
	end
    if(LuaQueryTask("Tpty")==1)then
	AddTopSayMenuItem("@2���⹫������","Tptya")
	end
	if(LuaQueryTask("T680")==2 or LuaQueryTask("T680")==3) then
		AddTopSayMenuItem("@2��Ĺ���ˡ����顿","T680")
		havetask=2
	end
	if(LuaQueryTask("Tqxzf")>=4 and LuaQueryTask("Tqxzf")<6 )then
		AddTopSayMenuItem("@2��Ϧף��@0","Tqxzf")			--��Ϧף��
		havetask =2
	end 
	if(LuaQueryTask("TzhongqiudsA")==2) then				
	AddTopSayMenuItem("@2ʫ������@0","Tzhongqiuds")
	havetask =2							--�����
	end 
if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("����","liaotian","0")
end
return 1
elseif(answer=="liaotian") then
	LuaSay("�������ˣ������ѵð����������ô��ķÿ͵���")

elseif(answer=="Tptya")then
	if(LuaQueryTask("Tptyatime") == GetCurrentHour())then
		if(LuaQueryTask("Tptyatimes")<10)then
			if(LuaQueryTask("Tpty")==1)then
				LuaSay("ǧ�����ѣ�����ծҪ�������⹫���ҵ�����֮����������Ϊ����ֻ�ܸ���Щ���϶�ҩ�����պã�")
				LuaGive("o_mission215",3,Tcj)
				LuaGive("o_mission216",5,Tcj)
				LuaAddTask("Tptyatimes",1)
				LuaDelTask("Tpty")
				UpdateMenu()
			else
				LuaSay("�ϵܰ���������������ⲻ�ǻε�����")
			end
		else
			LuaSay("1Сʱ��ȡ�������ܹ�10�Σ�����һСʱ�����ɣ�")
		end
	else
		LuaSay("ǧ�����ѣ�����ծҪ�������⹫���ҵ�����֮����������Ϊ����ֻ�ܸ���Щ���϶�ҩ�����պã�")
		LuaSetTask("Tptyatime",GetCurrentHour())
		LuaDelTask("Tptyatimes")
		LuaGive("o_mission215",3,Tcj)
		LuaGive("o_mission216",5,Tcj)
		LuaDelTask("Tpty")
		UpdateMenu()
	end
------------------------------------------
 elseif(answer=="Tzhongqiuds")then
        if(LuaQueryTask("TzhongqiudsA")==2)then
        if(LuaQueryTask("TzhongqiudsAa")==0)then 
		LuaSay("�������ˣ�����ֻҪͨ�����ҵ��ʴ���Ϳ��Եõ�ʫ�����")
		end
		r=LuaRandom(21)
		if(r==0)then
		LuaSay("�������ˣ����ʡ�@3����һ���ƣ�����������@0���ĺ���һ���ǣ�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("�¼Ȳ�������Ӱͽ������","wrong")
		AddMenuItem("�ٱ������£���Ӱ������","correct")
		AddMenuItem("��ʱͬ������������ɢ","wrong")
		AddMenuItem("���������Σ��������ƺ�","wrong")

      		elseif(r==1)then
		LuaSay("�������ˣ����ʡ�@3��ʱհ���ã�ֱ�������@0����ǰ��һ���ǣ�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("���ָ�϶������Ǻ�����","wrong")
		AddMenuItem("���·������������۴�","wrong")
		AddMenuItem("ת���е�Զ���ʹ������","wrong")
		AddMenuItem("ˮ·��˪ѩ�����ܼ���ë","correct")

		elseif(r==2)then
		LuaSay("�������ˣ����ʡ�@3����ˮľ�������ڴ���@0������һ��ʫ�ǣ�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("������իʱ������³���","wrong")
		AddMenuItem("ǧ�ﹲ��Σ�΢�紵����","wrong")
		AddMenuItem("���ۼ�ӯ�飬�γα���","correct")
		AddMenuItem("�����彭�ϣ���ҹԽ����","wrong")

		elseif(r==3)then
		LuaSay("�������ˣ����ʡ�@3��ǰ���¹⣬���ǵ���˪@0���������")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("��׵ġ������¡�","wrong")
		AddMenuItem("��׵ġ���ҹ˼��","correct")
		AddMenuItem("����ƽ�ġ���ҹ��","wrong")
		AddMenuItem("�������ġ�˪�¡�","wrong")

		elseif(r==4)then
		LuaSay("�������ˣ����ʡ�@3��Ը�˳��ã�ǧ�ﹲ濾�@0����˭д�ģ�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("���","wrong")
		AddMenuItem("����","correct")
		AddMenuItem("�Ÿ�","wrong")
		AddMenuItem("�׾���","wrong")

		elseif(r==5)then
		LuaSay("�ʹ�ߣ����ʡ�@3Ұ��������������½���@0�����Ժδ���")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("�����»�Զ��","wrong")
		AddMenuItem("���޽��½���","correct")
		AddMenuItem("��ɽ�����ԡ�","wrong")
		AddMenuItem("�����ޡ�","wrong")

		elseif(r==6)then
		LuaSay("�ʹ�ߣ����ʡ�@3��ɽ�����,����������@0���ĺ����ǣ�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("���ⴺ��Ъ�������Կ���","wrong")
		AddMenuItem("�����ɼ���,��Ȫʯ����","correct")
		AddMenuItem("�������Ů,����������","wrong")
		AddMenuItem("��������","wrong")
		elseif(r==7)then
		LuaSay("�������ˣ����ʡ�@3�������³���ҹ��¶���������ƹ�@0����˭д�ģ�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("�׾���","correct")
		AddMenuItem("�Ÿ�","wrong")
		AddMenuItem("���","wrong")
		AddMenuItem("��ά","wrong")

		elseif(r==8)then
		LuaSay("�������ˣ����ʡ�@3��Ů��֪�����ޣ������̳���ͥ��@0��������ʫ��ģ�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("������ҹ����","wrong")
		AddMenuItem("����¥�иС�","wrong")
		AddMenuItem("�����ػ���","correct")
		AddMenuItem("����������ҹ��","wrong")
		elseif(r==10)then
		LuaSay("�������ˣ����ʡ�@3���Զ�����¥�����繳@0�������һ��ʫ�ǣ�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("ǧ����������","wrong")
		AddMenuItem("����һ����ζ����ͷ","wrong")
		AddMenuItem("��į��ͩ��Ժ������","correct")
		AddMenuItem("������˼��","wrong")
		elseif(r==11)then
		LuaSay("�������ˣ����ʡ�@3��üɽ�°�����@0������Ϊ��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("ҹ����Ϫ����Ͽ","wrong")
		AddMenuItem("˼������������","wrong")
		AddMenuItem("Ӱ��ƽǼ��ˮ��","correct")
		AddMenuItem("ֻ�������ޱ���","wrong")
		elseif(r==12)then
		LuaSay("�������ˣ����ʡ�@3�Ҽĳ���������@0������Ϊ��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("������ʱҹߵ��","wrong")
		AddMenuItem("����ҹ����","wrong")
		AddMenuItem("���ֱ��ҹ����","correct")
		AddMenuItem("ˮ��ʯ��","wrong")
		elseif(r==13)then
		LuaSay("�������ˣ�����������λ���ǡ�@3�����Ľ�@0����")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("����","wrong")
		AddMenuItem("�����","wrong")
		AddMenuItem("���","correct")
		AddMenuItem("¬����","wrong")
		elseif(r==14)then
		LuaSay("�������ˣ�����������λ���ǡ�@3��������@0����")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("ɽ��","wrong")
		AddMenuItem("�","wrong")
		AddMenuItem("�","correct")
		AddMenuItem("����","wrong")
		elseif(r==15)then
		LuaSay("�������ˣ����ʡ����������(��һ������)��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("����","wrong")
		AddMenuItem("�߹�","wrong")
		AddMenuItem("�˹�","correct")
		AddMenuItem("�޹�","wrong")
		elseif(r==16)then
		LuaSay("�������ˣ�����@3ʫ�����@0���ҹ��Ŵ��ĸ������ģ�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("����","wrong")
		AddMenuItem("�γ�","wrong")
		AddMenuItem("�Ƴ�","correct")
		AddMenuItem("�峯","wrong")
		elseif(r==17)then
		LuaSay("�������ˣ�����������һ�������ҹ�ʫ�贫ͳ�ı����ַ���")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("��","wrong")
		AddMenuItem("��","wrong")
		AddMenuItem("��","correct")
		AddMenuItem("��","wrong")
		elseif(r==18)then
		LuaSay("�������ˣ�����������һ���Ǹ߶ȼ��еظ�����ӳ��������һ����ѧ��ã�")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("��","wrong")
		AddMenuItem("��","wrong")
		AddMenuItem("ʫ","correct")
		AddMenuItem("С˵","wrong")
		elseif(r==19)then
		LuaSay("�������ˣ�����@3�ƴ�ʫ�˶Ÿ�@0���������Ϊʲô��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("ʫ��","wrong")
		AddMenuItem("ʫ��","wrong")
		AddMenuItem("ʫʥ","correct")
		AddMenuItem("ʫ��","wrong")
		elseif(r==20)then
		LuaSay("�������ˣ�����@3�ƴ�ʫ�˰׾���@0���������Ϊʲô��")
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("ʫ��","wrong")
		AddMenuItem("ʫ��","wrong")
		AddMenuItem("ʫħ","correct")
		AddMenuItem("ʫ��","wrong")
		end
    end  
UpdateMenu()                                         --�ش���� 
elseif(answer=="wrong")then
	LuaAddTask("TzhongqiudsAb",1)       --��¼�������
	if(LuaQueryTask("TzhongqiudsAa")<4)then
	 	LuaSay("�������ˣ�����~ ~ ~�����ˣ�@1ע��@0�����3���⿼��ʧ�ܣ�")
		LuaAddTask("TzhongqiudsAa",1)	--��¼������Ŀ
		DoTalk("Tzhongqiuds")
	else
		LuaSay("�ʹ�ߣ�������!@1����@0�����3���⿼��ʧ�ܣ�")
		LuaSay("�ʹ�ߣ����������")
		LuaSetTask("TzhongqiudsA",99)
		LuaSetTask("TzhongqiudsAa",99)
		if(LuaQueryTask("TzhongqiudsAb")<3)then 
		LuaSay("�������ˣ���ϲ��˳��ͨ���˴��⿼�飡")
		r = LuaRandom(16)			 
		if(r==0)then   		
		LuaGive("o_mission227",1)           --ʫ��һ��           
		elseif(r==1)then		
		LuaGive("o_mission228",1)                      
		elseif(r==2)then
		LuaGive("o_mission229",1)              
		elseif(r==3)then
		LuaGive("o_mission230",1)                     
		elseif(r==4)then
		LuaGive("o_mission231",1)                   
		elseif(r==5)then		
		LuaGive("o_mission232",1)                      
		elseif(r==6)then
		LuaGive("o_mission233",1)              
		elseif(r==7)then
		LuaGive("o_mission234",1)                     
		elseif(r==8)then
		LuaGive("o_mission235",1)              
		elseif(r==9)then
		LuaGive("o_mission236",1)                     
		elseif(r==10)then
		LuaGive("o_mission240",1)		 -- һ�����  
		elseif(r==11)then
		LuaGive("o_mission242",1)		 -- һ������ 
		elseif(r==12)then
		LuaGive("o_mission243",1)		 -- һ������ 
		elseif(r==13)then
		LuaGive("o_mission244",1)   		 -- һ������ 
		elseif(r==14)then
		LuaGive("o_mission245",1)		 -- һ������ 
		elseif(r==15)then
		LuaGive("o_mission246",1)   		 -- һ��֮�� 
		end
		else
		LuaSay("�������ˣ���������̫�࣡����ʧ�ܣ�")
		end	
	end
UpdateMenu()                            --�ش���ȷ 
elseif(answer=="correct")then
     if(LuaQueryTask("TzhongqiudsAa")<4) then
        LuaSay("�ʹ��:��ϲ�����ˣ��������̫���ˣ������������������һ�����⣡")
        LuaAddTask("TzhongqiudsAa",1)
	DoTalk("Tzhongqiuds")
    else
	LuaSay("�ʹ�ߣ���ϲ�����ˣ�")
	LuaSetTask("TzhongqiudsA",99)
	LuaSetTask("TzhongqiudsAa",99)
	if(LuaQueryTask("TzhongqiudsAb")<3)then 
	LuaSay("�������ˣ���ϲ��˳��ͨ���˴��⿼�飡")
	r = LuaRandom(16)			 
	if( r==0)then   		
	LuaGive("o_mission227",1)           --ʫ��һ��           
	elseif(r==1)then		
	LuaGive("o_mission228",1)                      
	elseif(r==2)then
	LuaGive("o_mission229",1)              
	elseif(r==3)then
	LuaGive("o_mission230",1)                     
	elseif(r==4)then
	LuaGive("o_mission231",1)                   
	elseif(r==5)then		
	LuaGive("o_mission232",1)                      
	elseif(r==6)then
	LuaGive("o_mission233",1)              
	elseif(r==7)then
	LuaGive("o_mission234",1)                     
	elseif(r==8)then
	LuaGive("o_mission235",1)              
	elseif(r==9)then
	LuaGive("o_mission236",1)                     
	elseif(r==10)then
	LuaGive("o_mission240",1)		 -- һ����� 
	elseif(r==11)then
	LuaGive("o_mission242",1)		 -- һ������ 
	elseif(r==12)then
	LuaGive("o_mission243",1)		 -- һ������ 
	elseif(r==13)then
	LuaGive("o_mission244",1)   		 -- һ������ 
	elseif(r==14)then
	LuaGive("o_mission245",1)		 -- һ������ 
	elseif(r==15)then
	LuaGive("o_mission246",1)   		 --һ��֮�� 
	end			
	else
	LuaSay("�������ˣ���������̫�࣡����ʧ�ܣ�")
	end
    end
UpdateMenu()
---------------------------------------------
elseif(answer=="Thuanxing") then
	if(LuaItemCount("o_drug_hp1")>=10) then
	LuaSay("�������ˣ������ѵð����������ô��ķÿ͵���")
	DelItem("o_drug_hp1",10)
	LuaSetTask("Thx04",99) 
    UpdateMenu()
	else
	LuaSay("�������ˣ��㻹û�а���Ҫ��@210����ɢ@0�����ء�")
	end

elseif(answer=="Tqlxs") then
	if(LuaQueryTask("Tqlxs") ==1)  then
		LuaSay("�������ˣ���������м����ܼ���ߵ������˰������ǲ��򵥣��Ϸ��Ѿ��ܾ�û�м������ˣ��������Ǹ��ˡ�")
		LuaSay("�������ˣ��Ϸ�����@4���ĺ���@0����60���أ������������ԭ������˵����ԭ�ķ���������ȥ��������")
		LuaSay("�������ˣ���Щ����ҹ�����ˣ���ȥ��@4��������@0��@3��������@0�ɡ�")
		LuaSetTask("Tqlxs",2)
		LuaSetTask("T952",2) 
		AddLog("ǧ�����̡�ÿ�ա�",952)
		DelItem("o_mission037",20)
		LuaGive("o_mission034",5)         
		UpdateMenu()
		end
		
elseif(answer=="T120") then
       LuaSay("�������ˣ����ǿ�����������������ôԶҲ�ܼ�ֹ���@!")
       LuaSetTask("T120B",99)
       UpdateMenu()
       
elseif(answer=="Tdiaoyuhd") then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	  if(LuaQueryTask("Tdiaoyuhd")==1) then
	   LuaSetTask("Tdiaoyuhd",0)
       LuaSay("�������ˣ�û�µ�ʱ�������һ�½�ǣ��ɲ�Ҫһ�쵽�����������Ŷ@!")
       local exp
       if(level<20) then
       exp=60000+level^2*40
       else
       exp=150000+level^2*40
       end
       if(LuaQueryTask("Tdiaoyuhd")==0) then
       LuaAddJx("combat_exp",exp,"Tdiaoyuhd")
       LuaGive("coin",3000,"Tdiaoyuhd")
       end
       UpdateMenu()
	  end

---------------------------
elseif(answer=="T680") then
	if(LuaQueryTask("T680")==2 ) then
	    LuaSay("�������ˣ���֪����Ĺ����������ͷϲ�������������֮�ơ�")
        LuaSay("�������ˣ���ȻӢ��Ҫ������壬����Ҳ����֣�����@4����֮��@0���㡣")
        LuaSetTask("T680",3)      -------��־�����
        LuaGive("o_mission357",1)
		AddLog("��Ĺ���ˡ����顿",680)
		UpdateMenu()
	elseif(LuaQueryTask("T680")==3 and LuaItemCount("o_mission357")==0) then
	    LuaSay("�������ˣ����ӣ���ô���Ķ����㶼Ū�����ˣ��Ҿ������ˡ�")
	    LuaSay("�������ˣ����ˣ�Ϊ�����µ������ڸ���һ���ɡ�")
	    LuaGive("o_mission357",1)
    elseif(LuaQueryTask("T680")==3 and LuaItemCount("o_mission357")>0) then
	LuaSay("�������ˣ���@4������@0��@3��Ĺ���ˡ�@0")
        UpdateTopSay("������������Ĺ����")
	end
-------------------------------------

elseif(answer=="T220")then
	if(LuaQueryTask("T220")==1)then
		LuaSay("�������ˣ������������糾������������֮�أ���ʲô���飿")
		if(LuaItemStatusNormalCount("o_mission018")>=1)then
			LuaSay(""..LuaQueryStr("name").."������˵����������ռ����ƾɹŶ���ǰ����̽��̽��")
			LuaSay("�������ˣ�������Щ�Ŷ��ڳ��˿���ûʲô�����ҿ���ȷ�Ǽ�ֵ���ǣ������Ƿ�Ը���͸��ң��������������ҡ�")
			AddMenuItem("@7�������","")
			AddMenuItem("@3�͸���","T220song")
			AddMenuItem("@3������","T220mai")
		else
			LuaSay(""..LuaQueryStr("name").."��������ʱ�����һ���Ŷ��������㿴����������ô�����ˡ�")
			DelLog("220")
			LuaDelTask("T220")
			LuaDelTask("bao_D")
			UpdateMenu()
		end
	end
		elseif(answer=="T220song")then
			if(LuaItemStatusNormalCount("o_mission018")>=1)then
				if(LuaQueryTask("T220")==1)then
					LuaSay("�������ˣ����������Ǻ��ġ�")
					local r=LuaRandom(5)
					if(r<=2)then
						LuaSay("�������ˣ���Ȼ������ô�õ��ˣ�����Ҳ������˼������Ķ��������Ǹ����һ�����Ʒ�������°ɡ�")
						AddMenuItem("@7�������","")
						AddMenuItem("@3��ȡ����","T220jl")
					elseif(r==4 or r==3)then
						LuaSay("�������ˣ�������͸����ˣ���������Ȼ����Ⱥ��£����ϵ��ڱ�����ɲ�Ҫ���Ŷ��")
						LuaSetTask("220Taskday",GetCurrentDay())
						LuaAddTask("220dotime",1)
						DelItem("o_mission018",1)
						LuaDelTask("T220")
						DelLog("220")
						LuaDelTask("bao_D")
						UpdateMenu()
					end
				end
			else
				LuaSay("@5��ʾ����û��Я���ƾɹŶ�")
			end

		elseif(answer=="T220mai")then
		if(LuaItemStatusNormalCount("o_mission018")>=1)then
			local level= LuaQuery("level")
			if(LuaQueryTask("T220")==1)then
			LuaSay("�������ˣ���ЩǮ�Ҹù��������ˣ����ǵ�лл�������Ҵ�������")
			LuaGive("coin",2500,"T220")
			LuaSetTask("220Taskday",GetCurrentDay())
			LuaAddTask("220dotime",1)
			DelItem("o_mission018",1)
			DelLog("220")
			LuaDelTask("T220")
			LuaDelTask("bao_D")
			UpdateMenu()
			end
		else
			LuaSay("@5��ʾ����û��Я���ƾɹŶ�")
		end
		elseif(answer=="T220jl")then
		if(LuaItemStatusNormalCount("o_mission018")>=1)then
			local level= LuaQuery("level")
				if(level>80)then
		level=80
	end
			if(LuaQueryTask("T220")==1)then
			local jingyan
			if(level<20)then
				jingyan=(21037+level^2*25)
			elseif(level<30)then
				jingyan=(33000+level^2*25)
			elseif(level<40)then
				jingyan=(43682+level^2*35)
			elseif(level<50)then
				jingyan=(53682+level^2*35)
			elseif(level<60)then
				jingyan=(64682+level^2*35)
			else
				jingyan=(84682+level^2*45)
			end
			LuaGive("coin",2500,"T220")
			DelItem("o_mission018",1)
			LuaSetTask("220Taskday",GetCurrentDay())
			LuaAddTask("220dotime",1)
			LuaAddJx("combat_exp",jingyan,"T220")
			DelLog("220")
			LuaDelTask("T220")
			LuaDelTask("bao_D")
			UpdateMenu()
			end
		else
			LuaSay("@5��ʾ����û��Я���ƾɹŶ�")
		end

-------------------------------------**��Ϧף��**-------------------------------------------
elseif(answer=="Tqxzf")then
	if(LuaQueryTask("Tqxzf")==4)then
		LuaSay("�������ˣ�������������������֮�ˣ���Զǧ��Ϊţ��֯Ůף������������ж����ѣ�")
		LuaSay("�������ˣ�ף���Դ���ص�@3���幫��@0����ȡ�����ɣ�")
		LuaSetTask("Tqxzf",5)
		AddLog("��Ϧף��",qxzf)
		DelItem("o_mission221",1)	
		UpdateMenu()
	elseif(LuaQueryTask("Tqxzf")==5) then
	    LuaSay("�������ˣ�ף���Դ���ص�@3���幫��@0����ȡ�����ɣ�")
	end
	UpdateMenu()



end
LuaSendMenu()
return 1
end