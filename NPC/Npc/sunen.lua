NPCINFO = {
serial="48" ,
base_name="sunen" ,
icon=2585,
NpcMove=2585,
name="���" ,
iconaddr=1 ,
butt="10|10|60" ,
lastsay="�ʺ��ڵ���������20��" ,
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then 
        havetask =0 
	local havetask0=0	--Ĭ��û��
	local havetask1=0	--��̾��
	local havetask2=0	--��ɫ�ʺ�
	--local havetask3=0	--��ɫ�˵�
	local havetask4=0

	local level= LuaQuery("level")
	local T100=LuaQueryTask("T100")
	local T101 = LuaQueryTask("T101")
	local T371=LuaQueryTask("T371")
	local T372=LuaQueryTask("T372")
	local T373=LuaQueryTask("T373")
	local T374=LuaQueryTask("T374")
	local T381 = LuaQueryTask("T381")
        AddTopSayMenuItem("@7�����б�","")

	if((LuaQueryTask("Tsnpc_33")==1 or LuaQueryTask("Tsnpc_33")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_33")
		if(LuaQueryTask("Tsnpc_33")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_33")==1 or LuaQueryTask("Tenpc_33")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_33")
		if(LuaQueryTask("Tenpc_33")==1)then
			havetask2=1
		end
	end
	
	if(LuaQueryTask("T116")==1) then
		AddTopSayMenuItem("@2��ʿ֮�Ρ����顿@0","T116")
		if(LuaQueryTask("T116A") == 99) then
			havetask2 =1
		else
			havetask4 =1
		end
	end
	if(LuaQueryTask("T375")==1) then
		AddTopSayMenuItem("@2�Թ������顾���顿@0","T375")
		if(LuaQueryTask("T375A") == 99) then
		havetask2 =1
		else
		havetask4 =1
		end
	end
	if(LuaQueryTask("T374")==1) then
		AddTopSayMenuItem("@2����֮�򡾾��顿","T374")
		if(LuaItemStatusNormalCount("o_mission020")>=1)then
			havetask2 =1
		else
			havetask4 =1
		end
	end

	if(LuaQueryTask("T371")==1)then
		AddTopSayMenuItem("@2��¶��ݡ����顿@0","T371")
	end
	if(T381==1 or LuaQueryTask("T381")==2)then
		AddTopSayMenuItem("@2��������䡾���顿@0","T381")
		if(LuaQueryTask("T381")==1)then
			havetask2=1
		end
	end
--�����ǻ�ɫ�ʺŲ���
	if(LuaQueryTask("T370")==1)then
		AddTopSayMenuItem("@2��Ѫ��ͽ�����顿","T370")
		havetask4=1
	end
--�����ǻ�ɫ�ʺŲ���
	if(LuaQueryTask("T370")==0 and level>=19)then
		AddTopSayMenuItem("��Ѫ��ͽ�����顿","T370")
		havetask1= 1
	end
	if(T371==0 and LuaQueryTask("T381")==99)then
		AddTopSayMenuItem("��¶��ݡ����顿","T371")
		havetask1=1
	end
	if(LuaQueryTask("T374")==0 and level>=18) then
		AddTopSayMenuItem("����֮�򡾾��顿","T374")
		havetask1 =1
	end
	if(LuaQueryTask("T116")==0 and LuaQueryTask("T375")==99)  then
		AddTopSayMenuItem("��ʿ֮�Ρ����顿","T116")
		havetask1 =1
	end
	AddTopSayMenuItem("@9����ָ��","Guidelines")

if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(������havetask0=1)
	havetask=0
end

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

elseif(answer=="liaotian") then
	LuaSay("������Ϸ�һ�ľ�������ˮ��֮�У�ֻҪ��������������а�����кη���")
	
	
elseif(answer=="Tzhiliao02") then
	if((LuaQuery("max_hp") >LuaQuery("hp")) or (LuaQuery("max_mp") >LuaQuery("mp"))) then
		if(LuaQuery("hp")>0) then
              local maxhp=LuaQuery("max_hp")
	      local maxmp=LuaQuery("max_mp")
	      LuaSet("hp",maxhp)
	      LuaSet("mp",maxmp)
              FlushMyInfo("0")
	      LuaSay("��������,���ѱ��������������е�@3ҩƷ����@0�����Թ���Ѫ������ҩ��Ŷ��")
	      else
		LuaSay("��ɫ������,�޷�����")
	      end
	 else
	LuaSay("����������Ѫ��ħ״̬������Ҫ���ơ������е�@3ҩƷ����@0�����Թ���Ѫ������ҩ��Ŷ��")
	end

elseif(answer=="T370")then
	if(LuaQueryTask("T370")==0)then 
		LuaSay("�������������ʦ�����ˣ���ϲ��Ѫ����������ȥ������ɱ20ֻ@2����@0���Ϸ���������")
		LuaSetTask("T370",1)
		AddLog("��Ѫ��ͽ�����顿",370)
		LuaSetTask("task_kill/mon_013/T370",1)
		UpdateTopSay("����20ֻ���պ�������")
		UpdateMenu()
		 
	elseif(LuaQueryTask("T370")==1)then
		local a=LuaQueryTask("task_kill/mon_013/T370")-1
		if(LuaQueryTask("task_kill/mon_013/T370")>=21)then
		LuaSay("�����û����������һ�Ҫ�ݰ���ǰ;������")
		AddMenuItem("@7�������","")
	  	AddMenuItem("��ȡ����","T370jl")
	  	else
	  	LuaSay("������������@2"..a.."ֻ@0���ա�ɱ��@220ֻ����@0�������ҡ�")
	  	end
	end
	elseif(answer=="T370jl")then
		if(LuaQueryTask("T370")==1)then
		if(LuaQueryTask("task_kill/mon_013/T370")>=21)then
			LuaSetTask("T370",99)
			DelLog("370")
			LuaDelTask("task_kill/mon_013/T370")
			LuaAddJx("combat_exp",99000,"T370")--����
			LuaAddAchievementSchedule("Task_num",1)
			LuaGive("coin",1000,"T370")
			UpdateMenu()
			end
			end
		
		
------------------------------------------------------------	��������
elseif(answer=="T373")then
	if(LuaQueryTask("T373")==0)then
		LuaSay("�������Щ���ˣ�̫�����ˣ�@3"..LuaQueryStr("name").."@0��ȥ���湥��ɽ��@3л���@0��Ҫ����̫��")
		LuaSay(LuaQueryStr("name").."����ЩСͽ��������ȥ����") 
		LuaSetTask("T373",1)
		AddLog("�������ա����顿",373)
		UpdateTopSay("ȥ����л���")
		UpdateMenu()
		UpdateNPCMenu("xiedaoyun")
		
		elseif(LuaQueryTask("T373")==1)then
		LuaSay("�����ȥ���湥��ɽ��@3л���@0��Ҫ����̫��")
	end 

elseif(answer=="T381")then              ---------------------------------------------��������䡾���顿
		if(LuaQueryTask("T381")==1)then
		LuaSay(LuaQueryStr("name").."����˵@3л���@0�ķ������ɽկ����֪���ںδ������ҵ�Ҫ�������ж�������")
		LuaSay("�����û�����͹���@3ɽկ����@0���棬���������ˣ�ȥ���Ͳ����ˣ�")
		LuaSay(LuaQueryStr("name").."������Ҳ�գ������ǿ���������!")
		LuaSetTask("T381",2)
		AddLog("��������䡾���顿",381)
		UpdateTopSay("�ظ�л���")
		UpdateMenu()
		AutoGoToNpc("@7�Ƿ�@0Ѱ·��@4л���","xiedaoyun")
		elseif(LuaQueryTask("T381")==2)then
		LuaSay("�����ȥ�ظ�@3л���@0�������������")
		AutoGoToNpc("@7�Ƿ�@0Ѱ·��@4л���","xiedaoyun")
		end
		UpdateNPCMenu("xiedaoyun")

elseif(answer=="T371")then                    ----------------------------------��¶��ݡ����顿
		if(LuaQueryTask("T371")==0)then
			LuaSay("�������ɱ������ô���@3��ʦ��ͽ@0���Ǻξ��ģ��Ѳ������Ǳ����������ڼ飿")
			LuaSay(LuaQueryStr("name").."��û�����ǣ���Ϊ�ҿ�����������Ща���۸����գ�ҪɱҪ������㣡")
			LuaSay("��������ˣ������������������ߵĶ������Լ�ȥ@2ɽկ����@0����ɣ�ȥ��@3����֮@0һ�����������ɣ�")
			LuaSetTask("T371",1)
			AddLog("��¶��ݡ����顿",371)
			UpdateTopSay("ȥɽկ���ΰ�")
			UpdateMenu()
			if(LuaQueryTask("T370")==99)then
					AddMenuItem("@7�Ƿ�@0Ѱ·��@3����֮","")
					AddMenuItem("�Զ�Ѱ·������֮","xl_wnz")
			end
		elseif(LuaQueryTask("T371")==1)then 
			LuaSay("�������Ϊ���㽲����������Լ�ȥ������ô��ʶ̧�٣�ȥ��@3����֮@0һ�����������ɡ�")
			if(LuaQueryTask("T370")==99)then
					AddMenuItem("@7�Ƿ�@0Ѱ·��@3����֮","")
					AddMenuItem("�Զ�Ѱ·������֮","xl_wnz")
			end
		end
		elseif(answer=="xl_wnz")then
		AutoPathByTaskStep("T371",1)

elseif(answer=="T374") then
	if(LuaQueryTask("T374")==0)then
	LuaSay("������������ң����ı�Ұ��������Ҳ����������Ҳ�����г�·��������֪���û������ʳ�ˡ�")
	LuaSay("����������ܷ����ȥŪЩ@2����@0����@4�����ǳر�@0��@3����@0�����Խ���@2����@0��һ��@2��������@0���ӡ�")
	AddLog("����֮�򡾾��顿",374)
	LuaSetTask("T374",1)
	UpdateMenu()
	if(LuaQueryTask("T381")==99)then
			AddMenuItem("@7����������������","")
			AddMenuItem("ȷ�ϴ���֮����������","Tcs_yw")
	end
	elseif(LuaQueryTask("T374")==1 and LuaItemStatusNormalCount("o_mission020")==0)then
	LuaSay("������㻹û��@2��������@0����ȥ@4�����ǳر�@0��@3����@0��@2����@0�ɡ�@!")
	LuaSay("�����ʲô���㻹��֪����ô���㣿ȥ��@4�����ǳر�@0��@3����@0ѧϰ�ɡ�")
	if(LuaQueryTask("T381")==99)then
			AddMenuItem("@7����������������","")
			AddMenuItem("ȷ�ϴ���֮����������","Tcs_yw")
	end
	elseif(LuaQueryTask("T374")==1 and LuaItemStatusNormalCount("o_mission020")>=1)then
	LuaSay("�����̫���ˣ�лл���°�æ�ˣ�@!")
	AddMenuItem("@7�������","")
	AddMenuItem("��ȡ����","T374jl")
	end
	elseif(answer=="T374jl")then
	if(LuaQueryTask("T374")==1) then	 
	DelItem("o_mission020",1)
	DelLog("374")
 	LuaSetTask("T374",99)
	LuaAddJx("combat_exp",121275,"T374")
	if(LuaRandom(10)==1)then--15������
		LuaGive("e_earring004",1,2,"T374")
	else
		LuaGive("e_earring004",1,1,"T374")
	end       
	LuaAddAchievementSchedule("Task_num",1)
	UpdateMenu()
	end
elseif(answer=="Tcs_yw")then
	ChangeMap("lu_jkc",205,650)

elseif(answer=="T375") then                    ------------�Թ�������
	if(LuaQueryTask("T375") == 0) then
         LuaSay("������ٺ٣��������ߣ����������ʱ���׼������·�ˡ���׼����һ���ܴ���Թ������ҵĲƱ����������档@!")
         LuaSay("�������ϧ����ֻ��18�����ϵ���Ҳ��ܽ��롣ȥ��@4�������м�@0��@3��������Ա@0�ɡ�@4�ӽ�����������@0�Ϳ��Ե����ˡ�")
         LuaSay("�������@3��������Ա@0�Ĳ˵���ѡ��@3�Թ��þ�@0����ѡ@3��ս�Թ�@0��ֻҪ������Թ����Ϳ���@2������������ȡ����@0�ˡ�@!")
	 LuaSay("@7��ܰ��ʾ@0��@!��ɱ����񽫻��з��Ľ���Ŷ��")
	 LuaSetTask("T375",1)
         AddLog("�Թ������顾���顿",375)
         UpdateMenu()
         UpdateTopSay("ȥ�����ǵĸ�������Ա�������Թ�")
	elseif(LuaQueryTask("T375") == 1) then 
			if(LuaQueryTask("T375A") == 99) then
		        LuaSay("�������������������Ŭ������20���ɣ��Թ�������������ȵȺܶ���淨���������顣@!")
		        if(LuaFreeBag()>=1)then
				AddMenuItem("@7�������","")
         		AddMenuItem("��ȡ����","T375jl")
         		else
	    		LuaSay("��ʾ�������ٱ���1������ռ䣬�����ȥ������Ǯׯ�ϰ�����Ѷ�����ֿ⣡") 
	    		end
			else
			LuaSay("�������@3��������Ա@0�Ĳ˵���ѡ��@3�Թ��þ�@0����ѡ@3��ս�Թ�@0��ֻҪ������Թ����Ϳ���@2������������ȡ����@0�ˡ�@!")
			LuaSay("�����ȥ��@4�������м�@0��@3��������Ա@0�ɡ�@4�ӽ�����������@0�Ϳ��Ե����ˡ�@!")
			end
		end
		  elseif(answer=="T375jl") then
                if(LuaQueryTask("T375") == 1 and LuaQueryTask("T375A") == 99) then
		        LuaSetTask("T375",99)
		        DelLog("375")
		        LuaAddJx("combat_exp",138600,"T375")
			LuaAddAchievementSchedule("Task_num",1)
			if(LuaQueryTask("TtaozhuangC") == 0) then
			LuaGive("e_head165",1,2,"T375")
			LuaSetTask("TtaozhuangC",99)
			end

			LuaGive("coin",1000,"T375")
		        UpdateMenu()
		        end

elseif(answer=="T116") then                    ------------��ʿ֮��
	if(LuaQueryTask("T116") == 0) then
         LuaSay("�������ҹ�μ��ҳ���һ����ʿ������һ���ξ���ȥ��һλ�����Ŀ��ˡ����������������� ")
         LuaSay("����������Լ������룬���ͳһ��ҵ��������һ��ͳһOL��@!")
	 LuaSay("��������⵱�㲻֪����ʲô��ʱ������Ե����������鿴����ָ��Ŷ�������ܸ���������ٵİ���@!")
	 AddMenuItem("@7�������","")
         AddMenuItem("��ȡ����","T116jl")
	elseif(LuaQueryTask("T116") == 1) then 
			if(LuaQueryTask("T116A") == 99) then
		        LuaSay("����������������Ѿ�������ξ��ˡ�@3�ξ��з��Ľ���Ŷ����Ȥ������������@0��")
		        LuaSay("��������������ĸ����𣿵���ﵽ20����ʱ��ȥ@4������@0��@3����ʹ��@0����ɣ�@3�Թ���@0�����������ʡ�")
			AddMenuItem("@7�������","")
         		AddMenuItem("��ȡ����","T116jl")
			else
		        LuaSay("������㻹û�н�����ξ��ء�ȥ��@4������@0��@3�ξ�ʹ��@0���Խ����ξ��ɡ�")
			end
		end
		  elseif(answer=="T116jl") then
                if(LuaQueryTask("T116") == 1 and LuaQueryTask("T116A") == 99) then
		        LuaSetTask("T116",99)
		        DelLog("116")
		        LuaAddJx("combat_exp",121275,"T116")
		        LuaGive("coin",1000,"T116")
				LuaAddAchievementSchedule("Task_num",1)
		        UpdateMenu()
		        end
elseif(answer=="Tsnpc_33")then
	if(LuaQueryTask("Tsnpc_33")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("��������ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_33",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_33")==2)then
		LuaSay("��������ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_33")then
	if(LuaQueryTask("Tenpc_33")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("������ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_33",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_33")==2)then
		LuaSay("��������Ѿ������ˣ����ȥ��ȡ������")
	end


elseif(answer=="Guidelines")then
		local level= LuaQuery("level")
		LuaSay("����������ڵĵȼ���"..level.."��")
		if(level<10)then
			LuaSay("�����������@2��Դ��@0��@2����֮��@0��@2�����ǽ�@0�����񡢴��������")
		elseif(level<15)then
			LuaSay("��������ʺ���@2��������@0��@2�嶷ɽ@0��������@2������@0��@3���幫��@0���ܲμ�@2������@0��@1����������@0Ŷ��")
			LuaSay("�޼᣺@2��������@0��@3��������@0�����@1ǧ������@0����һ���ܺõ�׬Ǯ���ᣬ@2��������@0��@3��������@0�����ܽ���@2��ֲ��@0��@3��������@0�����ܹ��򵽸�ʽ���������ӣ����ĵĸ����㣬ժ������͵@!")
			--LuaSay("�����������һ�䣬@2��������@0��@3������@0���������鵽���޵�@1�ʴ���ս@0��˭�������أ���Ŀ�Դ�Ŷ��")
		elseif(level<20)then
			LuaSay("������ʺ���@2�嶷ɽ@0��@2ɽկ@0��@2ɽկ@0����������")
			LuaSay("�����ÿ����@2��������@0��@3ҩƷ����@0���ﶼ��@1ÿ��ҩƷ����@0����ѵ���Ͳ��ò���@!")
		elseif(level<25)then
			LuaSay("������ʺ���@2������Ӫ@0��@2��Ӫǰ��@0��������������ͬʱ��Ҫ�����˻��и������Ȥ��ÿ�����������Ŷ@!")
			LuaSay("�������ʱ��@2������@0@3�ʹ��@0��@1�´��Թ��@0��@2������@0@3�н�����@0����@1����Ѱ��@0ȫ��չ���������ǰ����Ŷ��")
			LuaSay("�����@2������Ӫ@0��@3����ʹ��@0���ڿ������չ���ֵĺõط�����սȺ�ۡ���չ������ˣ�ͳһָ�տɴ�")
			LuaSay("���������֪����ʲô�𣬻��Ǹ�����ɣ���@2������@0��@3��������@0���������ܽ���@1��װ��@0��@2ϴװ������@0��@2����װ���ȼ�����@0����Щ�㶼����Ŷ@!")
		elseif(level<30)then
			LuaSay("������ʺ���@2��ˮ�԰�@0��@2��������@0��������������ͬʱ��Ҫ�����˻��и������Ȥ��ÿ�����������Ŷ@!")
			LuaSay("�����������ͬʱҲ��Ҫ����ȥ@2�����Ͻ�@0@3�س�����@0�������������Ŷ�����˱ض����кñ�����ʱ��������߶δ�ز���һ������Ŷ@!")
		elseif(level<35)then
			LuaSay("������ʺ���@2μˮ֮��@0��@2��������@0��������������ͬʱ��Ҫ�����˻��и������Ȥ���淨������Ŷ@!")
			LuaSay("�����������Ѿ��ҵ��������һ�룬��ô���ʱ������Դ�����������һ��ȥ@2������@0@3���幫��@0��������Ŷ����ף��������Զ�Ҹ�@!")
		elseif(level<40)then
			LuaSay("������ʺ���@2ʳ�˹�@0��@2�׹Ƕ�@0��������������ͬʱ��Ҫ�����˻��и������Ȥ��ÿ�����������Ŷ@!")
		else
			LuaSay("����������ڵ������Ѿ��㹻����������")
		end



end
LuaSendMenu() 
return 1
end

