NPCINFO = {
serial= "14" ,
base_name="zhanglao",
icon= 2555,
NpcMove=2555,
name= "�ϴ峤" ,
iconaddr=1,
butt="10|10|60",
name_color = "CEFFCE" ,
lastsay="�л�ɫ��̾��NPC����������ָ��",
LuaType=1,
}
function do_talk(answer)
 if (answer=="ask") then
	havetask =0
	local havetask0=0	--Ĭ��û��
	local havetask1=0	--��̾��
	local havetask2=0	--��ɫ�ʺ�
	--local havetask3=0	--��ɫ�˵�
	local havetask4=0	--��ɫ�ʺ�

	local level= LuaQuery("level")
	local T31=LuaQueryTask("T31")
	AddTopSayMenuItem("@7�����б�","")
	if(LuaQueryTask("T11")==1) then
		AddTopSayMenuItem("@2���硾���顿","T11")
		havetask2 =1
	end
	if(LuaQueryTask("T30")==1) then
		AddTopSayMenuItem("@2������졾�̡̳�@0","T30")
		havetask2 =1
	end
	if(T31 ==1)then
		AddTopSayMenuItem("@2�ɳ�֮·1�����顿@0","T31")
		--AddTopSayMenuItem("@5Ѱ·�������@0","Txl_hyn")
		--havetask2 =1
	end
	if(LuaQueryTask("Tdwj_zzcq")==1 and LuaQueryTask("Tdwj_zzcq_zl")==0) then
		AddTopSayMenuItem("@2���Ӵ���","Tduanwu")
		havetask2 =1
	end
	if(LuaQueryTask("T302")==11 and LuaQueryTask("T302K")==0) then
		AddTopSayMenuItem("@2ÿ����ʹ@0","T302K")
		havetask2 =1
	end
	if((LuaQueryTask("Tsnpc_2")==1 or LuaQueryTask("Tsnpc_2")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_2")
		if(LuaQueryTask("Tsnpc_2")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_2")==1 or LuaQueryTask("Tenpc_2")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_2")
		if(LuaQueryTask("Tenpc_2")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T105") ==1 )   then     -----��������----
		AddTopSayMenuItem("@2���ݰ���","T105")
		havetask2 =1
	end
--�����ǻ�ɫ�ʺŲ���

	if(LuaQueryTask("T11")==0) then
		AddTopSayMenuItem("���硾���顿","T11")
		havetask1 =1
	end
	if(level<10 and LuaQueryTask("T30")==0 and LuaQueryTask("T11")==99)then
		AddTopSayMenuItem("������졾�̡̳�","T30")
		havetask1=1
	end
	if(T31 == 0 and LuaQueryTask("T30")==99)  then
		AddTopSayMenuItem("�ɳ�֮·1�����顿","T31")
		havetask1 =1
	end

--��Ϊ��ɫ��̾��

	--[[if((LuaQueryTask("Txrfuli")==0 and level<11) or  LuaQueryTask("Txrfuli")<99) then
		AddTopSayMenuItem("@3���˸���@0","Txrfuli")
	end]]
	--[[if(LuaQueryTempStr("online")=="cw21" or LuaQueryTempStr("online")=="cw23" or LuaQueryTempStr("online")=="cw24")then
		AddTopSayMenuItem("@3�μ�������̳�(������һ�)","Txqhd")
	end]]

	if(LuaQueryTask("T30")==99 and level<20)  then
		AddTopSayMenuItem("@9������졾�̡̳�","T30")
	end
--�޷���


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
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("����","liaotian","0")
end

return 1


elseif(answer=="T302K") then
	   LuaSay(""..LuaQueryStr("name").."��������վС�����Ҵ�������ż���")
	   LuaSay("�ϴ峤��˭������Ҹ���д�ţ���@!")
	   DelItem("o_mission076",1)
	   LuaSetTask("T302K",99)
	   UpdateMenu()


elseif(answer=="Txl_hyn")then
	AutoGoToNpc("@7�Ƿ�@0Ѱ·��@4�����","huanyiniang")


 elseif(answer=="Txqhd")then
       AddMenuItem("@7��ѡ����̳�����","")
       AddMenuItem("@3�һ�������(ÿ����2��,ˢ�����ص�½)","Tgzhd001")
      -- AddMenuItem("@3��������������","Tgzhd002")
     --  AddMenuItem("@3�弶��������","Tgzhd003")
        AddMenuItem("@3������һ�˵��","Tgzhd004")
	--[[elseif(answer=="tiyan") then
	if(IsVisitor()=="true")then
	LuaSay("ע���������鵽@350���ĸ߼���ͼ�볬�ŵļ���@0,��ȷ�������ٰ��Ǻż�����ע��")
	else
	LuaSay("��ʾ��������������鵽@350���ĸ߼���ͼ�볬�ŵļ���")
	AddMenuItem("@7��Ϸ����","")
--	AddMenuItem("@350����������","monster")
--	AddMenuItem("@350��PK����","pkty")
	AddMenuItem("@3�߼���ͼ����","map")
	end]]

    elseif(answer=="pkty") then
    if(IsVisitor()~="true")then
    LuaEnterDream("lu_testpkmap",81,100,1)
    end

 elseif(answer=="map") then
    AddMenuItem("@7��ͼѡ��","")
    AddMenuItem("����","zongmiao")
    AddMenuItem("������Դ","swty")
    AddMenuItem("��ׯ","cunzhuang")
    AddMenuItem("���Ź�","bg")


   elseif(answer=="zongmiao") then
    ChangeMap("lu_tyzm")
   elseif(answer=="swty") then
    ChangeMap("lu_tyswty")
   elseif(answer=="cunzhuang") then
    ChangeMap("lu_tycz")
   elseif(answer=="bg") then
    ChangeMap("lu_tybg")


 elseif(answer=="monster") then
 	if(IsVisitor()~="true")then
	 LuaEnterDream("lu_testmap",141,279,1)
	 end


elseif(answer=="liaotian") then
        	LuaSay("�ϴ峤��ȥ����������˰�,���ǻ����ཱܶ����@!")
		DelItem("o_mission010",LuaItemCount("o_mission010"))

elseif(answer=="Tduanwu") then
    if(LuaQueryTask("Tdwj_zzcq")==1 and LuaQueryTask("Tdwj_zzcq_zl")==0)  then
        if(LuaItemStatusNormalCount("o_mission204")>=4) then
        LuaSay("�ϴ峤���ѵ�������ܵ�,ÿ����綼�������������ӡ�")
		DelItem("o_mission204",4)
		LuaSetTask("Tdwj_zzcq_zl",99)
		UpdateMenu()
		else
  		LuaSay(""..LuaQueryStr("name").."���������ǲ���,��Ȼ���ֶ���,���ȥ׼��@34����Ʒ���ӡ�")
        end
	end

elseif(answer == "Tgzhd001") then--������
    if(LuaQueryTask("Tgzhdtime")<2)then
	     if(LuaQueryTask("Txulie")== 0) then
               --LuaSetTask("Tgcjihuoma",1)	--Tgcjihuoma��1��2��3��4�ֱ�����⼤���롢Ϊ����֤��ʷʫȨ֤������Ȩ֤
		SetDjCode()  --�ɹ��󷵻�Txulie=1,�ü�����״̬��Ϊ2,���˼�����ʧЧ
	      elseif(LuaQueryTask("Txulie")== 1)then
                LuaSetTask("Txulie",0)
	        LuaAddYB(2,50)
		LuaAddTask("Tgzhdtime",1)
	        LuaSay("��ɹ��һ��˼����룡���50���,��鿴�����н������,(�������������߼���ˢ�£�����ȡ������ѡ���̳��н���̳�,���ɹ������ԽϺõ�װ����")
	     end
     else
       LuaSay("һ����ɫֻ�ܶһ�2��������Ľ�������������µ�½��ˢ�£�")
     end
elseif(answer == "Tgzhd002") then
   if(GetCurrentDay()== "2010-4-15" or GetCurrentDay()== "2010-4-16" or GetCurrentDay()== "2010-4-17" ) then
      if(LuaQueryTask("Tgzhd002")==0)then
         if(LuaPartyLevel()>1 and LuaQueryRank()>=4)then
	   LuaNotice("��"..LuaQueryStr("name")..",��Ӣ���쵼��,���İ����ڻʱ�䣨8��-17�ţ�������2����,��ȡ�˰��ɽ��ｱ��,���ף������")
	    LuaSay("���ɵȼ�Խ�߽���Խ�ߣ���İ�⽫���50W��Ǯ,���ѯ�������У�")
             LuaSetTask("Tgzhd002",99)
	     AddMoneyToPartyBank(500000)
	  else
	   LuaSay("�����ɰ�������ȡ,���Ұ��ɵȼ����ڵ���2����")
	  end
      else
      LuaSay("��������Ѿ������,")
      end
    else
     LuaSay("��ã����������ʼ����ֹʱ����8��-14��,�콱ʱ����15,16,17����,������Ч,������������ϵ��̳�����ߡ�")
    end

elseif(answer == "Tgzhd003") then
     if(LuaQueryTask("Tgzhd003")== 0)then
         local r=RangeQuery("experice")
	if(GetCurrentDay()== "2010-4-15" or GetCurrentDay()== "2010-4-16" or GetCurrentDay()== "2010-4-17" ) then
	        if(r==1) then
                     LuaNotice(""..LuaQueryStr("name")..",��һ������ȡ�˳弶��,���ף������")
		     LuaSetTask("Tgzhd003",99)
		     for n1=1,4 do
		          local i3=LuaRandom(8)+1
		          a3,b3=get(i3)
		          LuaGive(b3,1,"Tgzhd003")
		          end
		  elseif(1<r and r <11)then
		    LuaSay("��������ǰ10��,���2����ҵ��ߣ�")
		     LuaSetTask("Tgzhd003",99)
		     for n1=1,3 do
		          local i3=LuaRandom(8)+1
		          a3,b3=get(i3)
		          LuaGive(b3,1,"Tgzhd003")
		          end
		  elseif(10<r and r <51)then
		    LuaSay("��ϲ��������ǰ50��,���1����ҵ��ߣ�")
		     LuaSetTask("Tgzhd003",99)
		          for n1=1,2 do
		         local i3=LuaRandom(8)+1
		          a3,b3=get(i3)
		          LuaGive(b3,1,"Tgzhd003")
		          end
		else
		  LuaSay("�㵱ǰ��������50��,������ȡ����Ŷ���鿴�����뿴���ְ�")
		end
	   else
	     LuaSay("��ã����������ʼ����ֹʱ����8��-14��,�콱ʱ����15,16,17����,������Ч,������������ϵ��̳�����ߡ�")
	    end
	  else
	   LuaSay("��ʾ���ý���ֻ����һ��,�����˲���̰�ģ���")
	  end
elseif(answer == "Tgzhd004") then
    LuaSay("��ã��������ǲ�����̳�����ļ�����,ÿ��������ɻ�ȡ50���,�������ע9����̳���һ����̴���̳�ϻ�ùٷ�����������,����Ϸ�а���ʾ���뼤����,ע���Լ��ļ����벻Ҫ������֪�����ⱻ����ȡ,��ý�ҿ���ȥ����̳��ﹺ��Ʒ�ʽϺõ�װ����")--��������


elseif(answer=="Txinchun") then              -----------------------�����´�
	 local level= LuaQuery("level")
		if(level>80)then
		level=80
	end
		if(LuaQueryTask("Txinchun")==3 ) then
      			LuaSay(""..LuaQueryStr("name").."���´��ѽ�,ף���µ�һ�����彡����@!")
				LuaSay("�ϴ峤������,������һ���ĳɳ�,������������ο��,������һ���������������Ķ��Ͱ���@!")
	            AddMenuItem("@7�������","")
	            AddMenuItem("��ȡ����","Txinchunjl")
		end
			elseif(answer=="Txinchunjl")then
		       if(LuaQueryTask("Txinchun")==3)then
				LuaSetTask("Txinchun",99)
  		    	LuaSetTask("Txinchunday",GetCurrentDay())
				LuaGive("coin",1000,"Txinchun")
				local jingyan=(20000+level^2*75+level*4000)
				LuaAddJx("combat_exp",jingyan,"Txinchun")
				if(stoday=="2010-2-14")then
				LuaGive("e_pants073t1",1,3,"Txinchun")
				LuaGive("e_clothes073t1",1,3,"Txinchun")
				end
				UpdateMenu()
		       end

elseif(answer=="Txrfuli") then       ---------------------------------������ȡ����
        if(LuaQueryTask("Txrfuli")==0) then
			if(LuaQuery("level")<10) then
				LuaSay("�ϴ峤����ʶ����Ե����,�Ϸ��Ѿ�Ϊ������@2���˵Ǽ�@0,@2����ͺ���@0���Ե�����@3��ȡ������@0Ŷ��@!")
				AddMenuItem("@7�����һ�׶����","")
				AddMenuItem("��ȡ��һ�ν���","Txrfulijl1")
			else
				LuaSay("�ϴ峤����ĵȼ��Ѿ�10��������,�Ѿ���һ��������,��ȥ@4������@0�����ɡ����ྫ�ʵ����㡣@!")
			end
		elseif(LuaQueryTask("Txrfuli")==1) then
			if(GetCurrentDay()~=LuaQueryStrTask("xrTaskday1")) then
				LuaSay("�ϴ峤��������,��ӭ���ٴ���������,�ҽ�ʵ���ҵĳ�ŵ��@2����@0����@2������������@0����,@2ǧ��Ҫ���@0��@!")
				AddMenuItem("@7����ڶ��׶����","")
				AddMenuItem("��ȡ�ڶ��ν���","Txrfulijl2")
			else
				LuaSay("�ϴ峤���ļ��Բ����ȶ���,�����Ѿ�����Ǽǹ���,@2���������ȡ������@0Ŷ,�ɱ���Ӵ��@!")
			end
		elseif(LuaQueryTask("Txrfuli")==2) then
			if(GetCurrentDay()~=LuaQueryStrTask("xrTaskday2")) then
				LuaSay("�ϴ峤������,�Ϸ����ϲ���к��ĵ�������,���Ǹ���Ľ�����@!")
				AddMenuItem("@7�������","")
				AddMenuItem("��ȡ���ս���","Txrfulijl3")
			else
				LuaSay("�ϴ峤�������򲻴����ĸ������Ѿ���ȡ,@2������и�����������@0����,�ɱ���Ӵ��@!")
			end
		elseif(LuaQueryTask("Txrfuli")==99) then
				LuaSay("�ϴ峤�����Ѿ���ȡ�����˸���,�Ͽ�����ͳһ����֮·�ɡ����ྫ�ʵ�����ȥ���֡�@!")
				LuaSay("�ϴ峤��͵͵�ĸ�����,@220��@0�Ϳ���ȥ@4����@0@3˾�����@0��,��ȡ@3ÿ�յ�½����@0�ˡ�@!")
		end
elseif(answer=="Txrfulijl1")then
				if(LuaQueryTask("Txrfuli")==0)then
					LuaAddJx("combat_exp",8000,"Txrfuli")
					if(LuaQueryStr("MobieType") ~= "S20")then
						LuaSay("�ϴ峤���ٴ�����һ��ʵ�õļ��ɣ�������@3���������������ż�@0ʱ�����԰�@3ֱ�ӵ����@0�Ϳɴ��ż���@!")
					else
						LuaSay("�ϴ峤���ٴ�����һ��ʵ�õļ��ɣ�������@3���������������ż�@0ʱ�����԰�@3ȷ����@0�ٰ�@38��@0���ż���@!")
					end
					LuaSetTask("Txrfuli",1)
					LuaSetTask("xrTaskday1",GetCurrentDay())
					UpdateMenu()
				end
			elseif(answer=="Txrfulijl2")then
				if(LuaQueryTask("Txrfuli")==1)then
				LuaAddJx("combat_exp",30000,"Txrfuli")
				LuaGive("o_state001j",1,"Txrfuli")
				LuaGive("o_state012j",1,"Txrfuli")
				LuaSay("�ϴ峤��͵͵�ĸ�����,@220��@0�Ϳ���ȥ@4����@0@3˾�����@0��,��ȡ@3ÿ�յ�½����@0�ˡ�@!")
				LuaSetTask("Txrfuli",2)
				LuaSetTask("xrTaskday2",GetCurrentDay())
				UpdateMenu()
				end
			elseif(answer=="Txrfulijl3")then
				if(LuaQueryTask("Txrfuli")==2)then
				LuaAddJx("combat_exp",80000,"Txrfuli")
				LuaGive("o_state001j",2,"Txrfuli")
				LuaGive("o_state012j",2,"Txrfuli")
				LuaSay("�ϴ峤��͵͵�ĸ�����,@220��@0�Ϳ���ȥ@4����@0@3˾�����@0��,��ȡ@3ÿ�յ�½����@0�ˡ�@!")
				LuaSetTask("Txrfuli",99)
				UpdateMenu()
				end


elseif(answer=="T11") then         -----------------------����
	if(LuaQueryTask("T10")==99)then
		if(LuaQueryTask("T11") == 0 or LuaQueryTask("T11") == 1 ) then
		    LuaSay("�ϴ峤��"..LuaQueryStr("name")..",�����ڻ�����,���Ӹ�������һ�ӹٱ�,�㽨����ҵ�Ļ������ˣ�����ȥ�ξ���@!")
		    AddMenuItem("@7�������","")
		    AddMenuItem("��ȡ����","T11jl")
		end
	else
		LuaSay("�ϴ峤��@!Ϊ�˴����ԡ�ͳһOL���������ӵ���Ϥ���˽⣬������������@4��Դ��@0@5Ƚ��@0����@3��һ�δ�֡��̡̳�@0�ٽ�����������Ŷ��")
		LuaSay("@5С��ʿ������̳������ǽ�����Ϸ�Ļ������������񣬲�����ɲ���򵥣����黹�������ܷḻŶ@!")
	end

	elseif(answer=="T11jl")then
		if(LuaQueryTask("T11") == 0 or LuaQueryTask("T11") == 1) then
			LuaSetTask("T11",99)
			DelLog("11")
			LuaAddJx("combat_exp",2500,"T11")
			LuaAddAchievementSchedule("Task_num",1)
			UpdateMenu()
			AddMenuItem("@7��ȡ������","")
			AddMenuItem("������졾�̡̳�","T30")
		end

elseif(answer=="T31") then              ------------------------�ɳ�֮·
	if(LuaQueryTask("T30")==99)then
		if(LuaQueryTask("T31")==0) then
		LuaSay("�ϴ峤������֮��,���������Ϸ�֪����������������,һͳ����֮־,���Ӿ����ǿ���һ����ҵ��ʱ����")
		LuaSay("�ϴ峤������,�����뿪֮ǰ,�Ҵ������ѧϰһ�㼼�ɰ�,�պ���ս���ϻ����������ó���")
		LuaSay("�ϴ峤��@4����@0��@3�����@0�����ܸ�,ȥ�������һ���ɡ�@2������@0���ܼ������ˡ�")
		LuaSay("�ϴ峤��@2����@0�߹���С�ſ���@3�����@0�ˣ��������������@7�Զ�Ѱ·��ȥ@0Ŷ@!")
		--[[if(LuaQueryTask("Txrfuli")==0)then
			LuaSay("�ϴ峤��ͯЬ������˽�����δ��ȡŶ����δ�������㶼��������������ȡ���˽���Ŷ@!")
		end]]
                LuaSetTask("T31",1)
		UpdateTopSay("ȥ���е������̸��")
                AddLog("�ɳ�֮·1�����顿",31)
		UpdateMenu()
		UpdateNPCMenu("huanyiniang")
		if(LuaQueryTask("T30")==99)then
			AutoGoToNpc("@7�Ƿ�@0Ѱ·��@4�����","huanyiniang")
		end
		elseif(LuaQueryTask("T31")==1) then
			LuaSay("�ϴ峤����ȥ��@3�����@0��,���������������,��������@4��Դ��@0��,@2������@0���ܼ������ˡ�")
			if(LuaQueryTask("T30")==99)then
				AutoGoToNpc("@7�Ƿ�@0Ѱ·��@4�����","huanyiniang")
			end
		end
	else
		LuaSay("�ϴ峤�������������˽��н�������Ҫ��ʽŶ��������Ҫ�����@3������졾�̡̳�@0������������̽��Ŷ@!")
	end
 --[[if (npcTeachCmd.size() > 0) { // �н�ѧ����:�԰�˵��1|keyType|key0|..keyn
// keyType:0��ʾ�Զ�ģ�����,1��ʾ�������û��Լ�����Ӧ�ļ� 2 3
// ��ֵ�����12���Ҽ�13 ���ּ�0-9��*��:10��#��:11
// �밴������ٰ�4�����뼼�ܲ˵�|0|-6|4&�밴������ٰ�3��|0|-6|3
]]
elseif(answer=="T30") then
     if(LuaQueryTask("T30")==0) then
		if(LuaQueryStr("MobieType") ~= "S20")then
		        SendCommand("call=�ϴ峤����֪�����������֪ʶ���������������,��������ϵ�@3����ɫ��������@0�Ϳ���@2������@0�ˣ����˵��@3����ɫ��������@0�����ɲ鿴�ղŵ�����Ի����ݣ�|0|10")
		else
			SendCommand("call=�ϴ峤����֪�����������֪ʶ���������������,��@30��@0�Ϳ���@2������@0�ˡ�|0|10")
		end
       UpdateTopSay("֪�������������������")
       LuaSetTask("T30",1)
       AddLog("������졾�̡̳�",30)
	UpdateMenu()

      elseif(LuaQueryTask("T30")==1) then
	LuaSay("�ϴ峤����Ӧ�ÿ�����˸ղŵ���ʾ�˰ɣ�������@3˽�ġ����ġ�����ϵͳ@0,����ѡ��ͬ��ѡ��ʱ,���Կ�����ص���Ϣ��")
      if(LuaQueryStr("MobieType") ~= "S20")then
	LuaSay("�ϴ峤�����������������ף���ĵĿ��ģ��ǺǺǣ���")
      else
	LuaSay("�ϴ峤����@3������2��0��@0ʱ,��Ϳ���ѡ������ģʽ,����һЩ���������ˡ�")
	LuaSay("�ϴ峤�����ں���,�����ѡ����ϲ��������ģʽ��,��Ҳ���Ը�������ѷ����ŵȵ�,�ܼ򵥰ɡ�")
      end
      AddMenuItem("@7�������","")
      AddMenuItem("��ȡ����","T30jl","")

      elseif(LuaQueryTask("T30")==99) then
	if(LuaQueryStr("MobieType") ~= "S20")then
		LuaSay("�ϴ峤�����������������ף���ĵĿ��ģ��ǺǺǣ���")
		LuaSay("�ϴ峤��ע�����ʹ�û���ɫ�������ݺͺ���ɫ�������ݣ���һ��������������")
	else
		LuaSay("�ϴ峤����0���Ϳ��Դ�����,������˽�ġ����ġ�����ϵͳ,����ѡ��ͬ��ѡ��ʱ,���Կ�����ص���Ϣ��")
		LuaSay("�ϴ峤����������2��0��ʱ,��Ϳ���ѡ������ģʽ,����һЩ���������ˡ�")
		LuaSay("�ϴ峤�����ں���,�����ѡ����ϲ��������ģʽ��,��Ҳ���Ը�������ѷ����ŵȵ�,�ܼ򵥰ɡ�")
	end
      LuaSay("��ʾ�������������")
      end
	elseif(answer=="T30jl") then
        if(LuaQueryTask("T30")==1) then
        LuaSetTask("T30",99)
      	DelLog("30")
      	LuaAddJx("combat_exp",3000,"T30")
		LuaAddAchievementSchedule("Task_num",1)
        UpdateMenu()
		end
elseif(answer=="T105")then ------------------------------------��������,���ݰ���
    if(LuaItemCount("o_mission373")==0) then
    LuaSay("�ϴ峤������@3������@0����Ҫ@31000@0ͭ�ҡ�")
    AddMenuItem("@7ѡ���б�","")
	AddMenuItem("@3��","T105_buy")
	AddMenuItem("@3����","T105_notbuy")
	else
	LuaSay("�ϴ峤�����Ѿ�����@3������@0��,��ظ�@4������@0���@3ѱ��ʦ@0�ɣ�")
	UpdateTopSay("��ظ����������ѱ��ʦ�ɣ�")
	end
elseif(answer=="T105_buy")  then
    if(LuaItemCount("coin")>= 1000) then
    LuaGive("coin",-1000,"T105")
    LuaGive("o_mission373",1)
    LuaSay("�ϴ峤��@3������@0�ú��ˣ���ȥ�ظ�@4������@0��@3ѱ��ʦ@0�ɣ�")
    UpdateTopSay("��ظ����������ѱ��ʦ�ɣ�")
    else
    LuaSay("�ϴ峤��@3������@0��1000ͭ��,����ģ�")
    UpdateTopSay("����Я��1000ͭ���������Ұ�")
    end
elseif(answer=="T105_notbuy")  then
    LuaSay("�ϴ峤��û��@3������@0,���޷���ɸ�����")



elseif(answer=="Tsnpc_2")then
	if(LuaQueryTask("Tsnpc_2")==1)then
		LuaSay(""..LuaQueryStr("name").."�����ǵ������˸���Ļ����ż���")
		LuaSay("�ϴ峤��������Ϲ�ͷ����˭����ŵİ�")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_2",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_2")==2)then
		LuaSay("�ϴ峤�������Ѿ��յ��ˣ�����Ի�ȥ������")
	end
elseif(answer=="Tenpc_2")then
	if(LuaQueryTask("Tenpc_2")==1)then
		LuaSay(""..LuaQueryStr("name").."������Ӣ�����ż���̫��ȫ�����Ҹ��㴫������ֻ˵�����ɽȥ��������������˺ܶ��ˣ���֪���Ǹ����")
		LuaSay("�ϴ峤��Ŷ���ᷢ��ս�£��ð����Ȼ�ȥ����֪����")
		LuaSetTask("Tenpc_2",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_2")==2)then
		LuaSay("�ϴ峤�����Ѿ�֪��ʲô����ˣ�����Ի�ȥ������")
	end


end
LuaSendMenu()
return 1
end

function get(n) ----------------���������Ʒ�б�
tab={
{"˫����","o_state001j"},
{"˫����","o_state012j"},
{"��������","o_state008j"},
{"HP����","o_state071j"},
{"������","o_state005j"},
{"̰����","o_state032j"},
{"ŭ���","o_state038j"},
{"��ת���굤","o_state016j"},
{"������","o_state017j"},
{"���Ƽ�","e_clothes011j"},               ----ʷʫ�������ƽ�
{"�����ּ�","e_pants011j"},
}
local a=tab[n][1]
local b=tab[n][2]
return a,b
end

