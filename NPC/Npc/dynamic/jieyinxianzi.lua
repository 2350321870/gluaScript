NPCINFO = { 
serial="11" ,
base_name="jieyinxianzi",
icon=2561,
NpcMove=2561 ,
name="�Ϲ����������˽�����" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="�����ң�̤��ͳһ֮·",
LuaType=1,
} 
function do_talk(answer)
if (answer=="ask") then	
	havetask =0
	if(LuaQueryTask("T1")<99 )  then
		SetTitleMeg(0)
		if(LuaQueryStr("gender")=="����") then
			LuaSay("�Ϲ����������ӣ���ӭ����ͳһol�����磬@3�߽��ң����ҶԻ�@0�������õ�@3�������ִ����@0Ŷ��@!")
		else
			LuaSay("�Ϲ������������ӭ����ͳһol�����磬@3�߽��ң����ҶԻ�@0�������õ�@3�������ִ����@0Ŷ��@!")
		end
		if(LuaQueryStr("MobieType") ~= "S20")then
			LuaSay("�Ϲ������������Ե���ߵ��ҵ���ߣ�@3ֱ�ӵ���@0�����ҽ�̸��@!")
		else
			LuaSay("�Ϲ�������������ͨ��@3�����@0�ߵ��ҵ���ߣ���@3�м�ȷ�ϼ�@0��@3ֱ�ӵ���@0���ҽ�̸��@!")
		end
		LuaSetTask("T1",1)
		AddLog("���Ϲ������Ի�",1)
	end
		AddTopSayMenuItem("@7�����б�","")
		if(LuaQueryTask("T1")==1)  then
			AddTopSayMenuItem("@3��ȡ�������@0","T1")
			havetask =2
		else
			if(LuaQueryTask("T12")==0) then
				AddTopSayMenuItem("@5Ѱ·����Դ��@0","Txl_ty")
			end
		end

		if(LuaQueryTask("T9")<99 and LuaQueryTask("T1")==99) then
			AddTopSayMenuItem("@3���µ�����@0","T9")
		end 

--[[                                                            --------------����
		if(LuaQueryTask("T2")<99) then
			AddTopSayMenuItem("@3�������@0","T2")
			if(LuaQueryTask("T2")==1 and LuaQuery("level")>=12) then
			havetask =2
			elseif(LuaQueryTask("T2")==2 and LuaQuery("level")>=18) then
			havetask =2
			elseif(LuaQueryTask("T2")==3 and LuaQuery("level")>=24) then
			havetask =2
			end
		end    ]]
if(LuaQueryTask("T1")==99)  then
	if(havetask ==2)then
		AddTopSayMenuItem("@3����ʹ��","liaotian","2")
	elseif(havetask ==1) then
		AddTopSayMenuItem("@3����ʹ��","liaotian","1")
	else
		AddTopSayMenuItem("@3����ʹ��","liaotian","0")
	end
end
       
--return 1


elseif(answer=="liaotian") then
	LuaSay("�Ϲ�����������ĩ�꣬����������ԭ���������Ƶ���������ֻ���Ա������˵�ͳ���£����˹��ŷ��˵������������һ����")
	LuaSay("�Ϲ���������Ȧ��������������ū��ʹ�ã�ʧȥʹ�ü�ֵ�󣬾�ֱ�ӱ�ɱ���������������Ѫ��ͬʱȺ������")
	LuaSay("�Ϲ��������Ĵ����ҵ���ħ��ָ����ϰ��յ�����ѩ�ϼ�˪����ħ���ˣ���Ҳ���ˣ����տ಻���ԣ�")
	LuaSay("�Ϲ���������˵��������������Դ������ʿ���˳�û��СŮ���ڴˣ��ڴ��ܹ�һͳ���µ����������������һ���������ˮ��")
	LuaSay("�Ϲ����������쿴������������֪�Ǿ��������٣��Ͻ�ȥ@3��Դ��@0��@2Ƚ��@0�������͸���@3��Ʒ����@0Ŷ��")
	UpdateMenu()

elseif(answer=="Txl_ty")then	
		AutoPathByTaskStep("T1",99)
		--AutoGoToNpc("@7�Ƿ�@0Ѱ·��@4��԰������","lu_tyj")

elseif(answer=="T1") then
	if(LuaQueryTask("T1")==1) then	
	 LuaSay("�Ϲ����������ĺܺã�ͳһol��Ҫ�������������ˡ�@2������@0��ȥ��@4��Դ��@0��@3Ƚ��@0����@2��ȡ��Ʒװ��@0Ŷ��@!")
	 AddMenuItem("@7�������","")
	 AddMenuItem("��ȡ����","T1jl")
	elseif(LuaQueryTask("T1")==99) then
 	LuaSay("�Ϲ����������Ѿ������������ˣ�ȥ׷Ѱ�������İ�ҵ�ɡ�@2����@0�ߵ�@3��ͷ@0���Ϳ���ȥ@4��Դ��@0��@3Ƚ��@0�ˡ�")
	 end
		elseif(answer=="T1jl")then
			if(LuaQueryTask("T1")==1) then       
			LuaAddJx("combat_exp",200,"T1")
			LuaGive("coin",200,"T1")
			LuaSay("ϵͳ��ʾ����ϲ���������@4��ֵ�����1000Ԫ@0��@4�������ִ����@0һ����ף����Ϸ��죡")
			LuaGive("o_present001",1,"T1")
                       -- LuaGive("o_sendmap",2,"T1")
			LuaSay("�Ϲ�������@2����@0�ߵ�@3��ͷ@0���Ϳ���ȥ@4��Դ��@0��@3Ƚ��@0�ˣ��������������@7�Զ�Ѱ·ȥ��԰��@0Ŷ@!")
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T1",99)
			DelLog("1")
			AddMenuItem("@7�Ƿ�Ѱ·��@0@4��Դ��","")
			AddMenuItem("@5Ѱ·����Դ��@0","Txl_ty")
			UpdateTopSay("������ȥ����Դ����Ƚ��̸��")
			UpdateMenu()
			end
			
elseif(answer=="T2") then 
	if(LuaQueryTask("T2")==0) then        
		LuaSay(""..LuaQueryStr("name").."�������������С�@3�������@0�������湦���������ָ��һ����")
		LuaSay("�Ϲ�������������ʦ�������������⴫����������������Ե��������ϴ�跥�")
		LuaSay("�Ϲ����������������㣬���к�־��")
		AddLog("�������",2)
		AddMenuItem("@7��ѡ��","")
		AddMenuItem("@3������Ȩֻ������@0","T2_1")      
		AddMenuItem("@3��ز��ʾ�����ħ@0","T2_2") 
		AddMenuItem("@3���ƺ쳾�������@0","T2_3") 
		AddMenuItem("@3��į���ֻΪ����@0","T2_4")
	elseif(LuaQueryTask("T2")==1) then 
		if(LuaQuery("level")>=12) then
		LuaSay("�Ϲ���������ϲ��������12�����ϣ�ʦ����ص������������ˣ������������@318��@0����Ը��ȥ��ʦ�������书��")
		LuaAddJx("combat_exp",7000,"T2")
		LuaSetTask("T2",2)
		UpdateMenu()
		else
		LuaSay("��ʾ�������ڹ�����������û����������һ�ɾ��絯���ˣ��ȵ�@312��@0�������԰ɣ�")
		end
	elseif(LuaQueryTask("T2")==2) then 
		if(LuaQuery("level")>=18) then
		LuaSay("��ʾ�������뿪��˵���������ͻȻ����һ��������������С����ϰ����ص����������ҿ����������ڡ�@3�������@0����")
		LuaSay("�Ϲ���������ϲ��Ŷ���������ڡ�@3�������@0��ѧϰҪ���ϣ�û���������������߻���ħ������ﵽ@324��@0�����ɣ�")
		LuaAddJx("combat_exp",20000,"T2")
		LuaSetTask("T2",3)
		UpdateMenu()
		else
		LuaSay("��ʾ�������ڹ�����������û����������һ�ɾ��絯���ˣ��ȵ�@318��@0�������԰ɣ�")
		end
	elseif(LuaQueryTask("T2")==3) then 
		if(LuaQuery("level")>=24) then                                                                                    
		LuaSay("��ʾ�������뿪��˵���������ͻȻ����һֻ����ֳ������£���һʱ��֪���룬����Ϊ�������ɣ�ȴ���ְ�Ȼ����")
			if(LuaQueryTask("T2_1")==1) then
			LuaSay("�Ϲ����������ϧŶ����Ҫ��������ȥ��ʦ����ƴһ�ƣ������ѧϰ��@3�������@0���м�Ϊ�Ե��ġ�@3������@0����")
			elseif(LuaQueryTask("T2_2")==1) then
			LuaSay("�Ϲ����������ϧŶ����Ҫ��������ȥ��ʦ����ƴһ�ƣ������ѧϰ��@3�������@0�������������ġ�@3������@0����") 
			elseif(LuaQueryTask("T2_3")==1) then
			LuaSay("�Ϲ����������ϧŶ����Ҫ��������ȥ��ʦ����ƴһ�ƣ������ѧϰ��@3�������@0�������������ġ�@3��������@0����")
			elseif(LuaQueryTask("T2_4")==1) then
			LuaSay("�Ϲ����������ϧŶ����Ҫ��������ȥ��ʦ����ƴһ�ƣ������ѧϰ��@3�������@0�����������˵ġ�@3��Ȼ������@0����")
			end 
			LuaSay("�Ϲ�������������Ĺ����ڲ�֪�����������µ���ߣ��ٽ�������Ŭ�����������ձض����Գ�Ϊһ����ʦ�ģ�")
			LuaAddJx("combat_exp",120000,"T2")
			LuaSetTask("T2",99)
			DelLog("2")
			UpdateMenu()
		else
		LuaSay("��ʾ�������ڹ�����������û����������һ�ɾ��絯���ˣ��ȵ�@324��@0�������԰ɣ�")
		end
	elseif(LuaQueryTask("T2")==99) then
	LuaSay("�Ϲ���������ϧŶ����ûͨ��ʦ���Ŀ��飬�޷�������@3�������@0���ˣ�ϣ���㲻Ҫ���ģ�Ŭ�����������ձض����Գ�Ϊһ����ʦ�ģ�")
	end
elseif(answer=="T2_1") then
	LuaSay("�Ϲ���������һ������׳־��")
	LuaSay("��ʾ���Ϲ�����ͻȻһ��������ͷ���ٻ�Ѩ��һ�ɻ���������ͷ�����£����ͷ�Զ�ʱһ��������")
	LuaSay("�Ϲ����������Ѿ�����ϴ�跥����Ժ��������°빦�����������������@312��@0���Ǿ��������Ұɣ�")
	LuaAddJx("combat_exp",100,"T2")
	LuaSetTask("T2_1",1)
	LuaSetTask("T2",1)

elseif(answer=="T2_2") then
	LuaSay("�Ϲ���������������������飡")
	LuaSay("��ʾ���Ϲ�����ͻȻһ��������ͷ���ٻ�Ѩ��һ�ɻ���������ͷ�����£����ͷ�Զ�ʱһ��������")
	LuaSay("�Ϲ����������Ѿ�����ϴ�跥����Ժ��������°빦�����������������@312��@0���Ǿ��������Ұɣ�")
	LuaAddJx("combat_exp",100,"T2")
	LuaSetTask("T2_2",1)
	LuaSetTask("T2",1)

elseif(answer=="T2_3") then
	LuaSay("�Ϲ�������ԭ�������������徻��")
	LuaSay("��ʾ���Ϲ�����ͻȻһ��������ͷ���ٻ�Ѩ��һ�ɻ���������ͷ�����£����ͷ�Զ�ʱһ��������")
	LuaSay("�Ϲ����������Ѿ�����ϴ�跥����Ժ��������°빦�����������������@312��@0���Ǿ��������Ұɣ�")
	LuaAddJx("combat_exp",100,"T2")
	LuaSetTask("T2_3",1)
	LuaSetTask("T2",1)

elseif(answer=="T2_4") then
	LuaSay("�Ϲ��������벻�������׷��")
	LuaSay("��ʾ���Ϲ�����ͻȻһ��������ͷ���ٻ�Ѩ��һ�ɻ���������ͷ�����£����ͷ�Զ�ʱһ��������")
	LuaSay("�Ϲ����������Ѿ�����ϴ�跥����Ժ��������°빦�����������������@312��@0���Ǿ��������Ұɣ�")
	LuaAddJx("combat_exp",100,"T2")
	LuaSetTask("T2_4",1)
	LuaSetTask("T2",1)
elseif(answer=="T9") then
	if(LuaQueryTask("T9")==0) then
	LuaSay("�Ϲ�������������������һ���������ˣ���֪�����Ǽ٣�������Ȥ����ȥ����Ŷ��")
	LuaSay("�Ϲ��������������ߣ����ܿ���@3����������@0��˵�������Եõ��书�ؼ����ƽ�������������Ů˧��Ŷ��@!")
	LuaSetTask("T9",1)	
	AddLog("���µ�����",9)
	UpdateMenu()
	else
	LuaSay("�Ϲ�������������������һ���������ˣ���֪�����Ǽ٣�������Ȥ����ȥ����Ŷ��")
	LuaSay("�Ϲ��������������ߣ����ܿ���@3����������@0��˵�������Եõ��书�ؼ����ƽ�������������Ů˧��Ŷ��@!")
	end
	

end
LuaSendMenu()
return 1
end

