NPCINFO = { 
serial="67" ,
base_name="yaochang",
icon=2587,
NpcMove=2587 ,
name="Ҧ��" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="���������Ͼ����Ա�",
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
	local level= LuaQuery("level")

	AddTopSayMenuItem("@7�����б�","")
	if((LuaQueryTask("Tsnpc_51")==1 or LuaQueryTask("Tsnpc_51")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_51")
		if(LuaQueryTask("Tsnpc_51")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_51")==1 or LuaQueryTask("Tenpc_51")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_51")
		if(LuaQueryTask("Tenpc_51")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T565") ==1)  then
		AddTopSayMenuItem("@2Ǳ�����֡����顿","T565")
	end
	if(LuaQueryTask("T505")==1) then
		AddTopSayMenuItem("@2̽����顾���顿","T505")
		havetask2=1
	end 

	if(LuaQueryTask("T561")==1 or LuaQueryTask("T561")==2) then
		AddTopSayMenuItem("@2�ܽ���ı�����顿","T561")
		if(LuaQueryTask("T561")==2 and LuaItemCount("o_mission304")==1) then
		havetask2=1
		end
	end
	if(LuaQueryTask("T562")==1 or LuaQueryTask("T562")==2)then
		AddTopSayMenuItem("@2Ҧ�ɵ���ı�����顿","T562")
		if(LuaQueryTask("T562")==1) then
		havetask2=1
		end
	end 
	
	if(LuaQueryTask("T302")==16 and LuaQueryTask("T302P")==0) then
		AddTopSayMenuItem("@2ÿ����ʹ@0","T302P")
		havetask2 =1
	end
--����Ϊ��ɫ�ʺŲ���
	if(LuaQueryTask("T560")==1) then
		AddTopSayMenuItem("@2�ܾ����š����顿","T560")
		havetask4=1
	end
--����Ϊ��ɫ�ʺŲ���
	if(LuaQueryTask("T507")==99 and LuaQueryTask("T565")==0) then
		AddTopSayMenuItem("Ǳ�����֡����顿","T565")
		havetask1 =1
	end
	if(level>=33 and LuaQueryTask("T561")==0 and LuaQueryTask("T560")==99) then
		AddTopSayMenuItem("�ܽ���ı�����顿","T561")
		havetask1=1
	end
	if(level>=32 and LuaQueryTask("T560")==0) then
		AddTopSayMenuItem("�ܾ����š����顿","T560")
		havetask1=1
	end
--����Ϊ��ɫ��̾�Ų���
	
if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(������havetask0=1)
	havetask=0
end
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
	LuaSay("Ҧ�ɣ��������£���������Ϊ��!")
	----------------------------------
elseif(answer=="T302P") then
	   if(LuaQueryTask("T302P")==0) then
	   LuaSay(""..LuaQueryStr("name").."��������վС�����Ҵ�������ż���")
       LuaSay("Ҧ�ɣ����˸���д��,��֪��Ϊ���£�")
	   DelItem("o_mission076",1)
	   LuaSetTask("T302P",99)
	   UpdateMenu()
	   end
elseif(answer=="T505") then
	if(LuaQueryTask("T505")==1) then
    		LuaSay("Ҧ�ɣ����������ʰ����ⳡ��ս�����Ѿ�ҪӮ�ˣ�˭֪ͻȻ���������ذ��������Ķ���Ҳ�������Ҿ�֮�У�")
	   	AddMenuItem("@7�������","")
   		AddMenuItem("��ȡ����","T505jl")
	end
	elseif(answer=="T505jl")then
		if(LuaQueryTask("T505")==1) then
			LuaAddJx("combat_exp",224000,"T505") --ԭ294000 �� 153937
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T505",99)
			DelLog("505")-------��־��ɾ��
			UpdateMenu()
  			end
-------------------------------------------------
elseif(answer=="T565")then
	if(LuaQueryTask("T565")==0)then
		LuaSay("Ҧ�ɣ����ڴ���Ѿ��鸽�޼ᣬ�Ϸ��Ѿ�����Ͷ��·������������һ��Ч���޼�Ļ��ᡣ")
		LuaSay(""..LuaQueryStr("name").."���ðɣ�������������֮�ʣ��ҾͲ���ǰ���ˡ�")
    		LuaSay("Ҧ�ɣ�������װ�ܾ�ȥͶ��@3�������@0��һ���ܹ�̽�鵽���顣")
		AddLog("Ǳ�����֡����顿",565)
		LuaSetTask("T565",1)
		UpdateMenu()
		UpdateTopSay("��װ�ܾ�ȥͶ���������")
	elseif(LuaQueryTask("T565")==1) then
		LuaSay("Ҧ�ɣ���װ�ܾ�ȥͶ��@3�������@0��")
  	end                                                  
  --------------------------------------------
elseif(answer=="T560") then
	if(LuaQueryTask("T560")==0) then
		LuaSay("Ҧ�ɣ����ܾ�����ʿ�����䣬���һ����ϵ��ܵ�@4μˮ֮��@0��@2����@0�����ţ���@3"..LuaQueryStr("name").."@0Ӣ��ȥ�ﱾ����ɱ@230ֻ����@0��")
		UpdateTopSay("��@4μˮ֮��@0ɱ@230ֻ����@0")
		LuaSetTask("task_kill/mon_028/T560",1)   ------mon_028   ����  ����ɱ�ּ�����
		LuaSetTask("T560",1)
		UpdateMenu()
		AddLog("�ܾ����š����顿",560)-------��־�����
	elseif(LuaQueryTask("T560")==1) then
  		if(LuaQueryTask("task_kill/mon_028/T560") <31) then
  		LuaSay("Ҧ�ɣ��㻹û��ɱ��@230������@0���뵽@4μˮ֮��@0����ɱ��")
       		else
		LuaSay("Ҧ�ɣ���лӢ��Ϊ���������ǽ��ѣ��ô����ٲ�����ģ�")
      		AddMenuItem("@7�������","")
   		AddMenuItem("��ȡ����","T560jl")
       		end
	end
	elseif(answer=="T560jl")then
 	if(LuaQueryTask("T560")==1) then
 		if(LuaQueryTask("task_kill/mon_028/T560")>=31)then
 			LuaAddJx("combat_exp",224000,"T560")  --ԭ294000 �� 153937
			LuaGive("coin",2400,"T560")
			LuaAddAchievementSchedule("Task_num",1)	
			LuaSetTask("T560",99)
			DelLog("560")-------��־��ɾ��
			LuaDelTask("task_kill/mon_028/T560")
			UpdateMenu()
			end
  		end
----------------------------------------------------	
elseif(answer=="T561") then
	if(LuaQueryTask("T561")==0) then
		LuaSay("Ҧ�ɣ����ܾ��Ѷ���������Ӣ��ȥ������@3μˮ֮��@0������@3����@0������Ǻã�")
		LuaSetTask("T561",1)
		AddLog("�ܽ���ı�����顿",561)-------��־�����
		UpdateMenu()
		UpdateNPCMenu("zhangshi")
	elseif(LuaQueryTask("T561")==1) then
		LuaSay("Ҧ�ɣ���@3μˮ֮��@0��@3����@0��")
	elseif(LuaQueryTask("T561")==2 and LuaItemCount("o_mission304")==0) then
		LuaSay("Ҧ�ɣ�������ȥ@4μˮ֮��@0��@3����@0��������ȥ�������ϣ���û����ʲô���")
		LuaSay("Ҧ�ɣ��ҾͲ��������Ӿ�ʲô@2����@0��û���㣬���Ȼ����Ū���ˣ�")
		LuaSay("Ҧ�ɣ����ˣ�������Ҳ����С�Ǽ������ˣ�������ȥ������@3����@0�ǰ������д𰸵�@2����@0�����û�����")
		UpdateTopSay("��μˮ֮���������ǰ������д𰸵������ø��ң�")
	elseif(LuaQueryTask("T561")==2 and LuaItemCount("o_mission304")==1) then
		LuaSay("@3Ҧ��@0�����ǰ�ذ�ף�����һ�£�˵����������û�뵽�����ӻ���Ҵ�����ôһ������Ϣ��")
		LuaSay("��ʾ��Ҧ�ɵõ�ذ��ͻȻ���Ѵ����㣬����������")

   		AddMenuItem("@7�������","")
       		AddMenuItem("��ȡ����","T561jl")
	end
	elseif(answer=="T561jl") then
	if(LuaQueryTask("T561")==2) then
		if(LuaFreeBag()>=1)then
			LuaAddJx("combat_exp",261000,"T561")	--ԭ301000 �� 173659
			LuaAddAchievementSchedule("Task_num",1)	
			DelItem("o_mission304",LuaItemCount("o_mission304") )
			LuaGive("e_clothes012",1,LuaRandom(2)+1,"T561")
			LuaSetTask("T561",99)
			DelLog("561")-------��־��ɾ��
			UpdateMenu()
			UpdateNPCMenu("zhangshi")
		else
			LuaSay("��ʾ���뱣�ֱ�����һ���λ��������ȡ���Ľ�����Ϊ����������ʧ��")
		end
	end
    
    
    
elseif(answer=="T562") then
	if(LuaQueryTask("T562")==1) then
		LuaSay(""..LuaQueryStr("name").."��������Ĳ���˵��Ҫ����@3�޼�@0����������Ҫ��ɱ����")
		LuaSay("Ҧ������һ�£�˵����Ӣ�ۣ��˿�����ɱ�������ɲ����ҽ������ĸ�����˵�ģ��ҽ�����������ʡ�")		
		LuaSay(""..LuaQueryStr("name").."�뵽���һ��ǰ�����Ϣ����@3�޼�@0�ɣ����������������˵�����Ǻã��Ҿ͸���ˡ�")
		LuaSetTask("T562",2)
		AddLog("Ҧ�ɵ���ı�����顿",562)-------��־�����
		UpdateMenu()
	elseif(LuaQueryTask("T562")==2) then
		UpdateTopSay("�����������޼�") 
	end
		
elseif(answer=="Tsnpc_51")then
	if(LuaQueryTask("Tsnpc_51")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("Ҧ�ɣ����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_51",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_51")==2)then
		LuaSay("Ҧ�ɣ����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_51")then
	if(LuaQueryTask("Tenpc_51")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("Ҧ�ɣ��ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_51",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_51")==2)then
		LuaSay("Ҧ�ɣ����Ѿ������ˣ����ȥ��ȡ������")
	end				

end
LuaSendMenu()
return 1                                 
end 

