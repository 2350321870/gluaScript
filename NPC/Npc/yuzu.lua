NPCINFO = { 
serial="171" ,
base_name="yuzu",
icon=2501,
NpcMove=2501,
name="����" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="�������׳�ȥ��" ,
LuaType=1,
} 
function do_talk(answer)
if (answer=="ask") then
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7ѡ���б�","") 	
	if(LuaQueryTask("T270")==1)then
	AddTopSayMenuItem("����׷ɱ","out")
	end   
	--AddTopSayMenuItem("����","gaizao")
	AddTopSayMenuItem("����","Tbaoshi")
	--AddTopSayMenuItem("Խ��","yueyu")
	AddTopSayMenuItem("����","liaotian")
	return 1 
		
elseif(answer=="out") then
    ChangeMap("lu_jkc")

elseif(answer=="liaotian") then
     LuaSay("���䣺�������κη�ʽֻҪ�����˵��Σ��ͻ����һ�����") 
		                                                                                      
elseif(answer=="buy1") then
    DoBuy()

elseif(answer=="gaizao") then                             -----------------���죺ÿ10��������pkֵ2������10���ӣ�Ҳֻ����ȡ2��pkֵ 
	if(LuaQueryTask("T666")==0) then
		if(LuaQuery("pk_state")<=-20)  then
			LuaSay("���䣺�����������ϴ���Ҫ����ȥ���͵��������ķ����ң����ǿ���ͨ��@3���˼��@0��@3�Ͷ�����@0����pkֵ��@!")     
			LuaSay("���䣺@3���˼��@0����ʲô�����������ú���ھ����ˣ�10�����Ժ��������ң�һ��pkֵ����2��") 
			LuaSay("���䣺@3�Ͷ�����@0��Ҫ��æ�ɼ���10�����Ժ󣬴���@210���˲ι�@0�����ң��ɹ����һ��pkֵ����4�����ɹ�ֻ����2��")
			AddMenuItem("ѡ���б�","") 
			AddMenuItem("���˼��","buzuo") 
			AddMenuItem("�Ͷ�����","laodong") 
		else
			LuaSay("���䣺���Ѿ��Ǻ��ˣ����Գ����ˡ�")
			ChangeMap("lu_jkc")
			LuaAdd("out_prison_num",1)
			DelItem("o_mission011",1)
		end 
	elseif(LuaQueryTask("T666")==1) then      ---------���죺���˼�� 
		local shijiancha=(GetCurrentTime() - LuaQueryTask("yuzu_time")) 
		if(shijiancha>=600) then
			LuaSetTask("T666",0)
			LuaAdd("pk_state",2)
			FlushPKState()
			LuaSay("��ʾ��pkֵ����2��") 
			if(LuaQuery("pk_state")>-20)  then
				LuaSay("���䣺����������������ֲ������ڿ��Գ����ˡ�") 
				AddMenuItem("ѡ���б�","") 
				AddMenuItem("����","chuyu") 
				AddMenuItem("������","liuxia")                
			else
			LuaSay("���䣺��ʵ���Ҹ��쵽@3����@0�ɣ����ڲ�Ҫ���ȥ��") 	   
			end 
		else
			LuaSay("���䣺����@310����@0�󣬷��ɶһ�pkֵ������ʱ�仹�����ء�") 
		end 
    
	elseif(LuaQueryTask("T666")==2) then      ---------���죺�Ͷ����� 
		local shijiancha=(GetCurrentTime() - LuaQueryTask("yuzu_time"))
		local number=LuaItemCount("o_mission164")
		if(shijiancha>=600) then
			if(number==10) then
			LuaSay("���䣺���ǲ����װ������˲ι��ɼ������ɲ��򵥡�@!")
			DelItem("o_mission164",number)
			LuaAdd("pk_state",4)
			FlushPKState()
			LuaSay("��ʾ��pkֵ����4��")
			elseif(number>10) then
				DelItem("o_mission164",number)
				LuaSay("���䣺���ǲ����װ������˲ι��ɼ������ɲ��򵥣��������Ҳȫ���乫��@!")
				DelItem("o_mission164",number)
				LuaAdd("pk_state",4)
				FlushPKState()
				LuaSay("��ʾ��pkֵ����4��")
			elseif(number<10) then
				LuaSay("���䣺��û�вɼ���@210���˲ι�@0���������ܵõ������pkֵ�����ˡ�")
				DelItem("o_mission164",number)
				LuaAdd("pk_state",2)
				FlushPKState()
				LuaSay("��ʾ��pkֵ����2��")
			end
			LuaSetTask("T666",0)
		else
			if(number>=10) then
				LuaSay("���䣺���ǲ����װ������˲ι��ɼ������ɲ��򵥡�@!")
				DelItem("o_mission164",number)
				LuaAdd("pk_state",4)
				FlushPKState()
				LuaSetTask("T666",0)
				LuaSay("��ʾ��pkֵ����4��")
			else
				LuaSay("���䣺�㻹û�вɼ���@210���˲ι�@0������@310���Ӻ�@0Ҳ������2��pkֵ��@!")	   
			end
		end
	end
    
elseif(answer=="Tbaoshi") then                             -------------------���ͣ��ķѺ����δ������ȼ���pkֵ���
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local pkzhi=LuaQuery("pk_state")
	local zuolaotime
	if(pkzhi<=-20) then
		zuolaotime=600 
	elseif(pkzhi<=-10) then
		zuolaotime=180 
	end
	if(pkzhi<=-10) then
		if(GetCurrentTime() - LuaQuery("Tdilaointime")>zuolaotime) then
			local jinqian=level^2*(-pkzhi+30) +50000 + LuaQueryTask("out_prison_num")*15000
			LuaSetTemp("Tbsjinqian",jinqian)
			if(LuaItemCount("coin")>jinqian) then
				LuaSay("���䣺����������̶ȣ�������Ҫ@3"..jinqian.."@0ͭ�ң���ȷ��Ҫ������")
				AddMenuItem("ѡ���б�","") 
				AddMenuItem("ȷ��","yes") 
				AddMenuItem("����","no")      
			else
				LuaSay("���䣺�����Ͻ�Ǯ����@3"..jinqian.."@0�����ܱ��͡�")
			end 
		else
			LuaSay("���䣺��ǮҲ���ڵ������"..(zuolaotime/60).."���ӣ����ܱ���")
		end
	else
		LuaSay("���䣺�������Ѿ��Ǻ��ˣ�����Ҫ�����ˣ��ҿ�ʱ����ԭ��ġ�")
		DelItem("o_mission011",1)
		ChangeMap("lu_jkc")
	end 



elseif(answer=="yueyu") then        -------------------Խ��
	local pkzhi=LuaQuery("pk_state")
	local zuolaotime
	if(pkzhi<=-20) then
		zuolaotime=600 
	elseif(pkzhi<=-10) then
		zuolaotime=180 
	end
	if(pkzhi<=-10) then 
		if(GetCurrentTime() - LuaQueryTask("Tdilaointime")>zuolaotime) then
		LuaSay("���䣺��ү�����������������˳���أ��Ҿ͸���ָһ����·��@!")
		LuaSay("���䣺ɱ���������ȵ�@3��������@0�󣬻���@31/40@0�ļ��ʵõ�@21��Կ��@0��ֻҪ�õ�Կ�׺󣬾Ϳ����뿪�����ˡ�@!")
		LuaSay("���䣺��������������ǳ���������Ҫ�ɹ����Ƿǳ����ѵģ���Ҫ������Ƿ�Խ���ˡ�") 
		AddMenuItem("ѡ���б�","") 
		AddMenuItem("Ը��","yuanyi") 
		AddMenuItem("����","fangqi")   
		else
		LuaSay("���䣺������������Ѳ�ߣ�����"..(zuolaotime/60).."���Ӻ���Խ����")
		end
	else
		LuaSay("���䣺���Ǻ��ˣ�����ҪԽ��������ֱ�ӳ�ȥ�ˡ�")
		--LuaSet("pk_state",0)
		FlushPKState()
		ChangeMap("lu_jkc")
		LuaAdd("out_prison_num",1)
		DelItem("o_mission011",1)
	end 

elseif(answer=="yes") then
	local jinqian=LuaQueryTemp("Tbsjinqian")
	LuaDel("Tdilaointime")
	LuaGive("coin",-jinqian,"Tbaoshi")
	LuaSet("pk_state",0)
	FlushPKState()
	LuaAdd("out_prison_num",1)
	DelItem("o_mission011",1)
	ChangeMap("lu_zongmiao")


elseif(answer=="no") then
     LuaSay("���䣺����Ͱ��ε������ɣ������̵ģ�һ����춼�̲�����")	


elseif(answer=="chuyu") then
	LuaSet("pk_state",0)
	FlushPKState()
	LuaAdd("out_prison_num",1)
	DelItem("o_mission011",1)
	ChangeMap("lu_jkc")


elseif(answer=="liuxia") then
       LuaSay("���䣺����͸�����ʵ�Ĵ�������ɣ����ȥ�������ҡ�")
       
elseif(answer=="yuanyi") then        ---��ͬ�ȼ���Ӧ��ͬ�ѶȵĹ����ͼ����������û�б仯��ֻ�ǹ�����ֵ�ı仯�����ŵȼ��������Ѷ������ܶ�
	local level=LuaQuery("level")
		LuaSetTask("Tdlzlkillnum",1)
		LuaDelTask("Tdilaointime")
	if(level<=15) then
		LuaSetTask("T666A",1)
		ChangeMap("lu_dilaozl01")
	elseif(level<=25)  then
		ChangeMap("lu_dilaozl02")            
		LuaSetTask("T666A",1)
	elseif(level<=35)   then
		ChangeMap("lu_dilaozl03")
		LuaSetTask("T666A",1)
	elseif(level<=45)   then
		ChangeMap("lu_dilaozl04")
		LuaSetTask("T666A",1)
	elseif(level<=55)   then
		ChangeMap("lu_dilaozl05")
		LuaSetTask("T666A",1)
	elseif(level<=65)   then
		ChangeMap("lu_dilaozl06")
		LuaSetTask("T666A",1)
	elseif(level<=75)   then
		ChangeMap("lu_dilaozl07")
		LuaSetTask("T666A",1)
	elseif(level<=85)   then
		ChangeMap("lu_dilaozl08")
		LuaSetTask("T666A",1)
	elseif(level<=95)   then
		ChangeMap("lu_dilaozl09")
		LuaSetTask("T666A",1)
	end


elseif(answer=="fangqi") then
      LuaSay("���䣺������С����ļһ����͸�����ʵ�Ĵ����η���ɡ�") 
     
elseif(answer=="laodong") then
	LuaSetTask("yuzu_time",GetCurrentTime())
	LuaSetTask("T666",2)
	ChangeMap("lu_lgnc")
     
elseif(answer=="buzuo") then
	LuaSetTask("yuzu_time",GetCurrentTime())
	LuaSay("���䣺��������Ҳ�ã�����Ƥ������Ҳ����һ�㣬@310����@0���������Ұɡ�") 
	LuaSetTask("T666",1)

end
LuaSendMenu()
return 1
end 

