NPCINFO = {
serial="55" ,
base_name="xieyan",
icon=2535,
NpcMove=2535,
name="л��" ,
iconaddr=1 ,
butt="5|5|63" ,
name_color="CEFFCE" ,
lastsay="��ʹ���Ƿɽ��ڣ����̺������ɽ",
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
	local T383=LuaQueryTask("T383")	
	AddTopSayMenuItem("@7�����б�","")
	if((LuaQueryTask("Tsnpc_39")==1 or LuaQueryTask("Tsnpc_39")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_39")
		if(LuaQueryTask("Tsnpc_39")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_39")==1 or LuaQueryTask("Tenpc_39")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_39")
		if(LuaQueryTask("Tenpc_39")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T443") == 1)then
		AddTopSayMenuItem("@2�����󽫡����顿","T443")
		havetask2 =1
	end
	
	if(LuaQueryTask("T403") == 1)then
		AddTopSayMenuItem("@2ǰ�����顾���顿","T403")
		havetask2 =1
	end
	

	
	if(LuaQueryTask("T442") == 1)then
		AddTopSayMenuItem("@2�㱨���顾���顿","T442")
		havetask2 =1
	end
	

	if(LuaQueryTask("Tbprw8")==1) then
		AddTopSayMenuItem("@2@2�������ʡ�ÿ�ա�","Tbprw8")
		havetask2=1
	end
--����Ϊ��ɫ�ʺŲ��֡�
	if(LuaQueryTask("T440") == 1)then
		AddTopSayMenuItem("@2����ʿ�������顿","T440")
		havetask4 =1
	end
	if(LuaQueryTask("T446") == 1)then
		AddTopSayMenuItem("@2�������顾�̡̳�","T446")
		havetask4 =1
	end
	if(LuaQueryTask("T441") == 1)then
		AddTopSayMenuItem("@2����ʿ��2�����顿","T441")
		havetask4 =1
	end
	if(LuaQueryTask("T445") == 1)then
		AddTopSayMenuItem("@2Ұ������ѭ����","T445")
		havetask4 =1
	end
--����Ϊ��ɫ�ʺŲ���
	if(level>=20 and LuaQueryTask("T446")==0)then
		AddTopSayMenuItem("�������顾�̡̳�","T446")
		havetask1 =1
	end
	if(LuaQueryTask("T440") == 0 and level>=25)then
		AddTopSayMenuItem("����ʿ�������顿","T440")
		havetask1 =1
	end
	
	if(LuaQueryTask("T441") == 0 and LuaQueryTask("T440") == 99)then
		AddTopSayMenuItem("����ʿ��2�����顿","T441")
		havetask1 =1
	end
	
	if(LuaQueryTask("T442") == 0 and level>=24)then
		AddTopSayMenuItem("�㱨���顾���顿","T442")
		havetask1 =1
	end
	if(LuaQueryTask("T445") == 0 and LuaQuery("level") >= 24 and LuaQuery("level") < 30)then
		AddTopSayMenuItem("Ұ������ѭ����","T445")
		havetask1 =1
	end
	if(LuaQueryTask("T443") == 0 and level>=26)then
		AddTopSayMenuItem("�����󽫡����顿","T443")
		havetask1 =1
	end
--����Ϊ��ɫ��̾�Ų���
	
	AddTopSayMenuItem("@3�����춼��","Tdbjbs")
--����Ϊ���ⲿ��
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
------------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("л����������ս����׳ʿʮ��飡")
elseif(answer=="T446")then ---------��������
		if(LuaQueryTask("T446")==0 )then
			LuaSay("л����ȥ@4������@0�Ҹ���ʹ�ߣ���ѡ��򱦸������ٽ��븱��@3����������20~29��@0����ɱ@320��Ҧ��ʿ��@0��")
			LuaSetTask("T446",1)
			LuaSetTask("task_kill/mon_112/T446",1)
			AddLog("�������顾�̡̳�",446)
			UpdateMenu()
		elseif(LuaQueryTask("T446")==1)then
			local a=LuaQueryTask("task_kill/mon_112/T446")-1
			if(a>=21)then     --------ɱ�����ж� 
			
				--if(TeamQueryTask("T446_team")==99 ) then
				LuaSay("л��:������Ȼ���£����Ǹ���Ľ�����")
				AddMenuItem("�������","")
				AddMenuItem("��ȡ����","T446jl")
				--else
				--LuaSay("л��:���Ѿ�ɱ��50��Ҧ��ʿ���ˣ�������Ķ��ѻ�û��ɱ��50����")
				--LuaSay("��ʾ��ÿ����븱���Ĵ��������ƣ�ûɱ��Ŀ��Եڶ���ȥɱ��������������ң�20~29�����ǰ����ͬɱ�ֲ�����ɣ�")
				--end
			else
			LuaSay("л������Ż�ɱ��@2"..a.."��Ҧ��ʿ��@0��ȥ@4������@0�Ҹ���ʹ�ߣ����븱��@3����������20~29��@0����ɱ@320��Ҧ��ʿ��@0��")
			end 
		end
elseif(answer=="T446jl")then                   ---------------------446����
		if(LuaQueryTask("T446")==1)then
		if(LuaQueryTask("task_kill/mon_112/T446")>=21)then
		LuaSetTask("T446",99)
		LuaDelTask("task_kill/mon_112/T446")
		LuaAddJx("combat_exp",270000,"T446")
		LuaGive("coin",2500,"T446")
		DelLog("446")
		LuaAddAchievementSchedule("Task_num",1)
		UpdateMenu()
		end
		end
elseif(answer=="T403")then       -----------------------------  ǰ������ 
	if(LuaQueryTask("T403") == 1) then
	LuaSay("л����ǰ����������ֹۣ�������ʵ�����У����Һܶ�İ���Ҳ���޻�����ֻ��ˣ���������ʿ�����䣬�����Ѿ��������ã�")
    AddMenuItem("@7�������","")
	AddMenuItem("��ȡ����","T403jl")
	end 
	elseif(answer=="T403jl")then
		if(LuaQueryTask("T403")==1) then
			LuaAddJx("combat_exp",216000,"T403")
			LuaAddAchievementSchedule("Task_num",1)
			LuaSetTask("T403",99)
			DelLog("403")
			UpdateMenu()
			end
elseif(answer=="T440")then       -----------------------------  ����ʿ��
	if(LuaQueryTask("T440") == 0) then
		LuaSay("л�������ʿ�����䣬�ͷ��������@225����������@0����ѵ��ѵ������׳���Ҿ�ʿ����")
		LuaSay("л���������������򵥵ĺܶ�Ŷ�����ܽύ���ֵܣ����ֵܣ���ͳһ��")
		LuaSetTask("T440",1)
		LuaSetTask("task_kill/mon_019/T440",1)
		UpdateTopSay("����25����������")
		AddLog("����ʿ�������顿",440)
		UpdateMenu()
	elseif(LuaQueryTask("T440")==1) then
		if(LuaQueryTask("task_kill/mon_019/T440")>=26) then
			LuaSay("л�����������Ǻñ��죡")
			AddMenuItem("@7�������","")
		        AddMenuItem("��ȡ����","T440jl")
			else
			LuaSay("л�����㻹ûɱ��25��@2��������@0��")
			UpdateTopSay("ɱ��25������������������")
			end
	end
	elseif(answer=="T440jl")then
		if(LuaQueryTask("T440")==1) then
			if(LuaQueryTask("task_kill/mon_019/T440")>=26) then
			if(TeamCount()>=2)then
				LuaAddJx("combat_exp",268000,"T440")
			else
				LuaAddJx("combat_exp",248000,"T440")
			end
			--27���� �̼���
			LuaGive("e_necklace005",1,3,"T440")
			LuaGive("coin",800,"T440")
			LuaAddAchievementSchedule("Task_num",1)
			LuaDelTask("task_kill/mon_019/T440")
			LuaSetTask("T440",99)
			DelLog("440")
			UpdateMenu()
			end
                end
                
elseif(answer=="T441")then       -----------------------------  ����ʿ��2
	if(LuaQueryTask("T441") == 0) then
		LuaSay("л��������ʿ���������������Ƿ����ĺû��ᣬ�ͷ�����Ϊ�ȷ棬����@225��@2����@0�����ʴ����������")
		LuaSay("л������������ֵ�ȥ��ɱ��")
		LuaSetTask("T441",1)
		LuaSetTask("task_kill/mon_020/T441",1)
		UpdateTopSay("����25������")
		AddLog("����ʿ��2�����顿",441)
		UpdateMenu()
	elseif(LuaQueryTask("T441")==1) then
		if(LuaQueryTask("task_kill/mon_020/T441")>=26) then
			LuaSay("л�������º��ˣ��Ҿ�ʿ�����ǣ�")
			AddMenuItem("@7�������","")
		        AddMenuItem("��ȡ����","T441jl")
			else
			LuaSay("л�����㻹ûɱ��25��@2����@0��")
			UpdateTopSay("ɱ��25��������������")
			end
	end
	elseif(answer=="T441jl")then
		if(LuaQueryTask("T441")==1) then
			if(LuaFreeBag()>=1)then
				if(LuaQueryTask("task_kill/mon_020/T441")>=26) then
				if(TeamCount()>=2)then
					LuaAddJx("combat_exp",268000,"T441")
				else
					LuaAddJx("combat_exp",248000,"T441")
				end
				LuaGive("coin",2000,"T441")
				if(LuaQueryTask("Ttaozhuang30A") == 0) then
				LuaGive("e_pants166",1,2,"T441")
				LuaSetTask("Ttaozhuang30A",99)
				end
				LuaAddAchievementSchedule("Task_num",1)
				LuaDelTask("task_kill/mon_020/T441")
				LuaSetTask("T441",99)
				DelLog("441")
				UpdateMenu()
				end
			 else
				LuaSay("�����ռ䲻��1�����������°�����")
			end
                end
                
elseif(answer=="T442")then       -----------------------------  �㱨����
	if(LuaQueryTask("T442") == 0) then
		LuaSay("л�����Ȱѵ�ǰ����������@3л��@0�ɣ�")
		LuaSetTask("T442",1)
		UpdateTopSay("ȥ������Ӫ������л���Ի�")
		AddLog("�㱨���顾���顿",442)
		UpdateMenu()
	elseif(LuaQueryTask("T442")==1) then
		LuaSay("л�����쵽@4������Ӫ@0��@3л��@0����ȥ�ɣ�")
	end



elseif(answer=="T445")then       -----------------------------  Ұ������
	local level= LuaQuery("level")
	if(LuaQueryTask("T445") == 0 and LuaQuery("level") <=30) then
		LuaSay("л������Щ�����ײ�Ұ������Ұ�����죬�ͷ�����Ϊ�����������@225������@0��")
		LuaSay("л����һ�����Ƶ�������������ǰȥ�����ܻ�ø��ྭ�飡")
		LuaSetTask("T445",1)
		LuaSetTask("task_kill/mon_020/T445",1)
		UpdateTopSay("����25������")
		AddLog("Ұ������ѭ����",445)
		UpdateMenu()
	elseif(LuaQueryTask("T445")==1) then
		if(LuaQueryTask("task_kill/mon_020/T445")>=26) then
			LuaSay("л�������������ˣ�")
			AddMenuItem("@7�������","")
		        AddMenuItem("��ȡ����","T445jl")
			else
			LuaSay("л�����㻹ûɱ��25��@2����@0��")
			UpdateTopSay("ɱ��25��������������")
			end
		end
		elseif(answer=="T445jl")then
		local level= LuaQuery("level")
			if(level>80)then
		level=80
	end
		        if(LuaQueryTask("T445")==1) then
				if(LuaQueryTask("task_kill/mon_020/T445")>=26) then
					local jingyan
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
					if(TeamCount()>=2) then
						LuaSay("@1��ʾ�������Ӿ���ӳ�")
						jingyan=(50818+level^2*20)
					else
						jingyan=(39818+level^2*20)
					end
					LuaGive("coin",money,"T445")
					LuaAddJx("combat_exp",jingyan,"T445")
					if(LuaQueryTask("T445_a")==0) then
						LuaAddAchievementSchedule("Task_num",1)
						LuaSetTask("T445_a",99)
					end

					LuaDelTask("task_kill/mon_020/T445")
					DelLog("445")
					LuaSetTask("T445",0)
					UpdateMenu()
				end
			end
	---------

elseif(answer=="T443") then              ------------------------������ 
		if(LuaQueryTask("T443")==0) then
		LuaSay("л�����ұ��������˱뺷���뱱�����Ĳ��ض��ã�@3����֮@0����������һ�а١�")
		LuaSay("л�������¼�Ȼ��ͳһ����֮��־����Ȼ�ü����������ˣ�������@4��ˮ֮��@0����ȥ�ɡ�")
                LuaSetTask("T443",1)
		UpdateTopSay("ȥ����ˮ֮��������̸֮��")
                AddLog("�����󽫡����顿",443)
		UpdateMenu()
		elseif(LuaQueryTask("T443")==1) then
		LuaSay("л������ȥ��@3����֮@0�ɣ���������������ģ���������@4��ˮ֮��@0��")
		end

elseif(answer=="Tbprw8") then
if(LuaQueryStrTask("Tbprw8day")==GetCurrentDay())then
	if(LuaQueryTask("Tbprw8")==1 and LuaQueryTask("Tbprw8B")==0) then
		LuaSay(""..LuaQueryStr("name").."��������ǰ������@3ս������@0��")
		LuaSay("л������лӢ�ۣ������漰ʱ��")
		LuaSetTask("Tbprw8B",1)
		DelItem("o_mission401",1)
		UpdateMenu()
	end
	if(LuaQueryTask("Tbprw8")==1 and LuaQueryTask("Tbprw8B")==1 and  LuaQueryTask("Tbprw8A")==0) then
		LuaSay("л������ȥ��@4������Ӫ@0��@3л��@0��@3ս������@0ȥ�ɣ�")
	elseif(LuaQueryTask("Tbprw8")==1 and LuaQueryTask("Tbprw8A")==1 and  LuaQueryTask("Tbprw8B")==1) then
		LuaSay("л������ȥ@4����@0��@3����@0����@4������կ@0��@3�����ܹ�@0�ظ��ɣ�")
	end
else
	LuaSay("л�����µ�һ�죬�µĿ�ʼ�������������ǰ��@3�������ʡ�ÿ�ա�û���@0�������Զ�ɾ����")
	LuaSay("л�������������ܵ�@4����@0��@3����@0������@4������կ@0��@3�����ܹ�@0������@3�������ʡ�ÿ�ա�@0�����ˣ�")
	LuaSetTask("Tbprw8day",GetCurrentDay()) 
	LuaSetTask("Tbprw8",0)
	LuaSetTask("Tbprw8A",0)
	LuaSetTask("Tbprw8B",0)
	DelItem("o_mission401",LuaItemCount("o_mission401"))
	UpdateMenu()
end


elseif(answer=="Tsnpc_39")then
	if(LuaQueryTask("Tsnpc_39")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("л�������ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_39",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_39")==2)then
		LuaSay("л�������ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_39")then
	if(LuaQueryTask("Tenpc_39")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ������㣬˵ǰ��һ���ȶ�")
		LuaSay("л�����ⶼ�Ǵ��˵Ĺ��Ͱ�")
		LuaSetTask("Tenpc_39",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_39")==2)then
		LuaSay("л�������Ѿ������ˣ����ȥ��ȡ������")
	end

	-------��Ҷ�ô
elseif(answer=="Tdbjbs")then
	if(LuaQueryTask("Tdbjbs_ks")==1) then
		LuaSetTask("Tdbjbs_ds",1)  --����Ϊ1  ûͨ��
		LuaDelTask("Tdbjbs_ks")
		LuaSetTask("Tdbjbs_time",GetCurrentTime())
		LuaSay("������Ķľֱ���ϣ����϶���Ϊ�����ľ֣��ͷ�@22Сʱ@0�����ٴν��ܴ�����")
	end
	if(LuaQueryTask("Tdbjbs_ds")==1) then  --�ϴζľ�Ϊûͨ��
		local sjc=GetCurrentTime()-LuaQueryTask("Tdbjbs_time")
		if(sjc>=7200) then
			LuaSetTask("Tdbjbs_ds",0)  --����Ϊ0  
			LuaDelTask("Tdbjbs_time")
		else
			local h=floor((7200-sjc)/3600)
			local f=floor((7200-sjc-h*3600)/60)
			local s=floor((7200-sjc)%60)
			if(h>0) then
				if(f>0) then
					if(s>0) then
						LuaSay("������û��ͨ���ϴζľ֣�@22Сʱ@0�ͷ�ʱ�仹û�����ٵ�@2"..h.."Сʱ"..f.."����"..s.."��@0�Ժ�������")
					else
						LuaSay("������û��ͨ���ϴζľ֣�@22Сʱ@0�ͷ�ʱ�仹û�����ٵ�@2"..h.."Сʱ��"..f.."����@0�Ժ�������")
					end
				else  --����Ϊ0
					if(s>0) then
						LuaSay("������û��ͨ���ϴζľ֣�@22Сʱ@0�ͷ�ʱ�仹û�����ٵ�@2"..h.."Сʱ��"..s.."��@0�Ժ�������")
					else
						LuaSay("������û��ͨ���ϴζľ֣�@22Сʱ@0�ͷ�ʱ�仹û�����ٵ�@2"..h.."Сʱ��@0�Ժ�������")
					end
				end
			else --hΪ0
				if(f>0) then
					if(s>0) then
						LuaSay("������û��ͨ���ϴζľ֣�@22Сʱ@0�ͷ�ʱ�仹û�����ٵ�@2"..f.."����"..s.."��@0�Ժ�������")
					else
						LuaSay("������û��ͨ���ϴζľ֣�@22Сʱ@0�ͷ�ʱ�仹û�����ٵ�@2"..f.."����@0�Ժ�������")
					end
				else  --����Ϊ0
					if(s>0) then
						LuaSay("������û��ͨ���ϴζľ֣�@22Сʱ@0�ͷ�ʱ�仹û�����ٵ�"..s.."��@0�Ժ�������")
					end
				end
			end
		end
	end
	LuaDelTask("Tdbjbs_ggs")
	if(LuaQueryTask("Tdbjbs_ds")~=1) then  --�ϴ�Ϊͨ��  ����ʱ��ͷ��Ѿ����
		LuaSetTask("Tdbjbs_ks",1)  --��ʼ��������Ĭ��Ϊ��
		LuaSay("�ɴ����ߣ���������ʵ���⣬�����͵�ɫҲ�Ǿ����ɰܵĹؼ�")
		LuaSay("ֻҪ������@23�ζĲ���Ӯ����1��@0�����л���ǰ���춼����ɱboss@2��ʦͷĿ@0��ע�⣺@1��ϼ�Ϊ�����������ͷ��ʼ@0��,�����ζ����˻��߷����ľֻ��гͷ���Ŷ@!")
		LuaSay("�Ĳ���ʼ...")
		LuaSay("��һ�أ�@2ҡɫ�ӶĴ�С@0������С��3�㼴ΪС������3�㣩������3�㼴Ϊ��")
		AddMenuItem("@7Ѻ��С","")
		AddMenuItem("@3��","11")
		AddMenuItem("@3С","22")
	end
elseif(answer=="11" or answer=="22")then  --�����һ��
	local a=LuaRandom(6)+1
	LuaSay("ҡ..ҡ...��ҡ��ҡ...ҡ��������...  ���С����.. ")
	LuaSay("�ã������������ĵ���Ϊ@2"..a.."��@0")
	local n=answer+0 --��ȡ�Ĵ�С  11Ϊ��  22ΪС
	if(a>3) then  --����
		if(n==11) then  --ѡ��¶�
			LuaSay("Ӣ�ۺ�������@1��һ�ع���@0���ڶ��أ�@2ҡɫ�Ӷĵ���@0������ҡһ��ɫ�ӣ��ĶԵ�����Ϊ����")
			LuaAddTask("Tdbjbs_ggs",1) --������
			AddMenuItem("@7�Ƿ���еڶ���","")
			AddMenuItem("@3��","Tdbjbs_2") --����ڶ���
			AddMenuItem("@3ֱ�ӽ���boss��ͼ","Tdbjbs_jbst") --����boss��ͼ
		elseif(n==22) then --ѡС�´�
			LuaSay("��������Ӣ����Ʒ��զ�أ����ˮ���ѣ�@1��һ��ʧ��@0���ڶ��أ�@2ҡɫ�Ӷĵ���@0������ҡһ��ɫ�ӣ��ĶԵ�����Ϊ����")
			AddMenuItem("@7�Ƿ���еڶ���","")
			AddMenuItem("@3��","Tdbjbs_2") --����ڶ���
			AddMenuItem("@3��������","Tdbjbs_no") --��������
		end
	elseif(a<=3) then  --��С
		if(n==22) then  --ѡС�¶�
			LuaSay("Ӣ�ۺ�������@1��һ�ع���@0������ڶ��أ�@2ҡɫ�Ӷĵ���@0������ҡһ��ɫ�ӣ��ĶԵ�����Ϊ����")
			LuaAddTask("Tdbjbs_ggs",1) --������ --�����й�
			AddMenuItem("@7�Ƿ���еڶ���","")
			AddMenuItem("@3��","Tdbjbs_2") --����ڶ���
			AddMenuItem("@3ֱ�ӽ���boss��ͼ","Tdbjbs_jbst") --����boss��ͼ
		elseif(n==11) then --ѡ��´�
			LuaSay("��������Ӣ����Ʒ��զ�أ����ˮ���ѣ�@1��һ��ʧ��@0���ڶ��أ�@2ҡɫ�Ӷĵ���@0������ҡһ��ɫ�ӣ��ĶԵ�����Ϊ����")
			AddMenuItem("@7�Ƿ���еڶ���","")
			AddMenuItem("@3��","Tdbjbs_2") --����ڶ���
			AddMenuItem("@3��������","Tdbjbs_no") --��������
		end
	end
elseif(answer=="Tdbjbs_2")then  --����ڶ���
	AddMenuItem("@7��ѡ�����","")
	AddMenuItem("@31��","1") 
	AddMenuItem("@32��","2") 
	AddMenuItem("@33��","3") 
	AddMenuItem("@34��","4") 
	AddMenuItem("@35��","5") 
	AddMenuItem("@36��","6")
elseif(answer=="1" or answer=="2" or answer=="3" or answer=="4" or answer=="5" or answer=="6")then  --��ʼ�ڶ���
	local b=LuaRandom(6)+1
	local m=answer+0 --��ȡѡ�����
	LuaSay("ҡ..ҡ...��ҡ��ҡ...ҡ��������... ��ô�ֿ�С����.. ")
	LuaSay("�ã������������ĵ���Ϊ@2"..b.."��@0")
	if(b==m) then
		LuaSay("Ӣ�ۺ�������@1�ڶ��ع���@0�������أ�@2�ȴ�С@0��������ҡһ�Σ���ҡһ�Σ���˭�Ĵ�˭��Ӯ")
		LuaAddTask("Tdbjbs_ggs",1) --������ --�����й�
		AddMenuItem("@7�Ƿ���е�����","")
		AddMenuItem("@3��","Tdbjbs_3") --���������
		AddMenuItem("@3ֱ�ӽ���boss��ͼ","Tdbjbs_jbst") --����boss��ͼ
	else
		LuaSay("��������Ӣ����Ʒ��զ�ذ���@1�ڶ���ʧ��@0�������أ�@2�ȴ�С@0��������ҡһ�Σ���ҡһ�Σ���˭�Ĵ�˭��Ӯ����ͬ��Ϊ���Ӯ��")
		AddMenuItem("@7�Ƿ���е�����","")
		AddMenuItem("@3��","Tdbjbs_3") --���������
		if(LuaQueryTask("Tdbjbs_ggs")>=1) then  --��һ�ع���
			AddMenuItem("@3ֱ�ӽ���boss��ͼ","Tdbjbs_jbst") --����boss��ͼ
		else
			AddMenuItem("@3��������","Tdbjbs_no") --��������
		end
	end
elseif(answer=="Tdbjbs_3")then  --���������
	local c=LuaRandom(6)+1
	LuaSetTask("Tdbjbs_ys1",c)
	LuaSay("��������ҡ��ҡ..ҡ...��ҡ��ҡ...ҡ��������... ����Ӣ�۳�ĺ��.. �ֿ�С����..")
	LuaSay("�ã������ҿ������ĵ���Ϊ@2"..c.."��@0���ֵ�Ӣ����")
	AddMenuItem("@7ҡɫ","")
	AddMenuItem("@3ҡ","Tdbjbs_ys") --���������
	AddMenuItem("@3��û���ģ�����������","Tdbjbs_fq") --����boss��ͼ
elseif(answer=="Tdbjbs_ys")then  --���������
	LuaDelTask("Tdbjbs_ks")
	local d=LuaRandom(6)+1
	LuaSay("...")
	LuaSay(".....")
	LuaSay("Ӣ��ҡ���ĵ���Ϊ@2"..d.."@0")
	local c=LuaQueryTask("Tdbjbs_ys1")
	if(d>=c) then  --������Ӯ��
		LuaAddTask("Tdbjbs_ggs",1) --������ --�����й�
		LuaSay("��ϲӢ��@2����������@0")
	else
		LuaSay("@2������ʧ��@0")
	end
	if(LuaQueryTask("Tdbjbs_ggs")>=1) then  --����Ӯ��һ��
		LuaSay("���ؽ�����Ӣ���ܹ�Ӯȡ��@2"..LuaQueryTask("Tdbjbs_ggs").."��@0")
		LuaDelTask("Tdbjbs_ggs")
		LuaDelTask("Tdbjbs_ys1")
		AddMenuItem("@7�Ƿ����boss��ͼ","")
		AddMenuItem("@3��","Tdbjbs_jbst")
		AddMenuItem("@3����ȥ��","Tdbjbs_bq")
	else
		LuaSay("���ؽ��������ź���Ӣ��һ�ض�û�������ܽ���boss��ͼ��")
		LuaDelTask("Tdbjbs_ggs")
		LuaDelTask("Tdbjbs_ys1")
		LuaSetTask("Tdbjbs_ds",1)  --����Ϊ1  ûͨ��
		LuaSetTask("Tdbjbs_time",GetCurrentTime())
		LuaSay("������û��ͨ�����ζľ֣����϶���Ϊ@2ɥ����@0���ͷ�@22Сʱ@0�����ٴν��ܴ�����")
	end
elseif(answer=="Tdbjbs_jbst")then  --ֱ�ӽ���boss��ͼ
	LuaDelTask("Tdbjbs_ks")
	LuaDelTask("Tdbjbs_ggs")
	ChangeMap("lu_25ywfb")
elseif(answer=="Tdbjbs_no")then  --��������
	LuaDelTask("Tdbjbs_ks")
	LuaDelTask("Tdbjbs_ggs")
	LuaSetTask("Tdbjbs_ds",1)  --����Ϊ1  ûͨ��
	LuaSetTask("Tdbjbs_time",GetCurrentTime())
	LuaSay("������û��ͨ�����ζľ֣����϶���Ϊ@2ɥ����@0���ͷ�@22Сʱ@0�����ٴν��ܴ�����")
elseif(answer=="Tdbjbs_fq")then  --����������
	if(LuaQueryTask("Tdbjbs_ggs")>=1) then  --����Ӯ��һ��
		LuaSay("���ؽ�����Ӣ���ܹ�Ӯȡ��@2"..LuaQueryTask("Tdbjbs_ggs").."��@0")
		LuaDelTask("Tdbjbs_ggs")
		LuaDelTask("Tdbjbs_ys1")
		AddMenuItem("@7�Ƿ����boss��ͼ","")
		AddMenuItem("@3��","Tdbjbs_jbst")
		AddMenuItem("@3����ȥ��","Tdbjbs_bq")
	else
		LuaSay("���ؽ��������ź���Ӣ��һ�ض�û�������ܽ���boss��ͼ��")
		LuaDelTask("Tdbjbs_ggs")
		LuaSetTask("Tdbjbs_ds",1)  --����Ϊ1  ûͨ��
		LuaSetTask("Tdbjbs_time",GetCurrentTime())
		LuaSay("������û��ͨ�����ζľ֣����϶���Ϊ@2ɥ����@0���ͷ�@22Сʱ@0�����ٴν��ܴ�����")
	end
	LuaDelTask("Tdbjbs_ks")
elseif(answer=="Tdbjbs_bq")then  --������  ��������boss��ͼ
	LuaDelTask("Tdbjbs_ggs")
	LuaDelTask("Tdbjbs_ys1")
	LuaDelTask("Tdbjbs_ks")
end
LuaSendMenu()
return 1
end