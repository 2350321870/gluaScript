NPCINFO = {
serial= "34" ,
base_name="wqdhuoji",
icon= 2505, 
NpcMove=2505, 
name= "�������ˡ��̡�" , 
--level=10 ,
iconaddr=1, 
butt="40|10|63", 
name_color = "CEFFCE" , 
lastsay="��Ƕ�����˱���֮����",
have_sell_item=1,
LuaType=1,
}
addBuyitem={
count=13,
{"e_falchion004" , 2000  , 8 },
{"e_falchion007" , 2000  , 8 },
{"e_falchion010" , 2000  , 8 },
{"e_pen003" , 2000  , 8 },
{"e_pen004" , 2000  , 8 },
{"e_pen006" , 2000  , 8 },
{"e_sword005" , 2000  , 8 },
{"e_sword009" , 2000  , 8 },
{"e_sword012" , 2000  , 8 },
{"e_book001" , 2000  , 8 },
{"e_book003" , 2000  , 8 },
{"e_knife003", 2000  , 8 },
{"e_knife006", 2000  , 8 },
} 
function do_talk(answer)
 if (answer=="ask") then
        havetask =0
		local level= LuaQuery("level")
		local T230 = LuaQueryTask("T230")
		AddTopSayMenuItem("@7�����б�","")
		AddTopSayMenuItem("@3����","buy1")

		if(LuaQueryTask("bao_C")~=0)then
			AddTopSayMenuItem("@2�󾫡����ء�","T231")
			havetask =1
		end
--		if(T230 ==0 and level >=10)  then
--			AddTopSayMenuItem("����װ�����̡̳�","T230")
--			havetask =1
--		end
--		if(T230>0 and T230<99)  then
--			AddTopSayMenuItem("@2����װ�����̡̳�","T230")
--			havetask =2
--		end
		if(LuaQueryTask("T385")==1)then
			if(LuaQueryTask("TfindNPC_3")==1 or LuaQueryTask("TfindNPC_3")==2)then
				AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
				havetask=2
			end
		elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_3")==98)then
			AddTopSayMenuItem("@2��ڽ�ɽ��ѭ����@0","T385")
		end
		if((LuaQueryTask("Tsnpc_21")==1 or LuaQueryTask("Tsnpc_21")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2��վС��","Tsnpc_21")
			if(LuaQueryTask("Tsnpc_21")==1)then
				havetask2=1
			end
		end
		if((LuaQueryTask("Tenpc_21")==1 or LuaQueryTask("Tenpc_21")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_21")
			if(LuaQueryTask("Tenpc_21")==1)then
				havetask2=1
			end
		end
		if(LuaQueryTask("T265")==1 and LuaQueryTask("T265B")==0)  then
			AddTopSayMenuItem("@2���ٽ��������顿","T265B")
			havetask =2
		end
		if(LuaQueryTask("Tcoc")==9)then
			AddTopSayMenuItem("@2�̼��򱳡�ÿ�ա�","Tcoc")
			havetask =2
		end
		AddTopSayMenuItem("ǰ����ɽ��","Cm1")
--		if(T230 ==99 and level<20)  then
--			AddTopSayMenuItem("����װ�����̡̳�","T230")
--		end

	if(havetask ==2)then
		AddTopSayMenuItem("����","liaotian","2")
	elseif(havetask ==1) then
		AddTopSayMenuItem("����","liaotian","1")
	else
		AddTopSayMenuItem("����","liaotian","0")
	end	 
	return 1

elseif(answer=="liaotian") then
	LuaSay("�������ˣ���Ҫ�����������ĸ���Ѥ�����Ǿͺú��˽�һ��@2װ����Ƕ������@0�ɡ�")	
elseif(answer=="buy1") then
    DoBuy()			   


elseif(answer=="Tcoc")then---------------------�̼���5 Tcoc===9
	if(LuaQueryTask("Tcoc")==9)then
		LuaSay("��������:��һֱ������뷨,ֻ��û����,�ҷǳ��޳��齨�̻�.")
		LuaSetTask("Tcoc",10)
		LuaSetTask("T955",10)
		AddLog("�̼��򱳡�ÿ�ա�",955)
		if(LuaQuery("level")>=25)then
		LuaGive("coin",700,"Tcoc")
		else
		LuaGive("coin",400,"Tcoc")
		LuaGive("o_drug_mp4",2,"Tcoc")
		end
	end
	UpdateMenu()
elseif(answer=="Tlvdep") then
	AddMenuItem("��ѡ��","")
	AddMenuItem("˵��","Tlvdepintro")
	AddMenuItem("����װ���ȼ�����","Tlvdepyes")
	elseif(answer=="Tlvdepintro") then
	LuaSay("ÿ�ο��Խ���װ���ȼ�����1��,ÿ�κķ�һ������Ʊ,�ķ�����ԭ�ȼ�������Ҫ�����ĵȼ��Ĳ�.")
	LuaSay("��ԭ�ȼ�60,��1�κķ�1����Ʊ,��2�κķ�2��...ͬһװ��Ŀǰ��ཱུ20��")
	elseif(answer=="Tlvdepyes") then
	LuaItemLevelDep()

elseif(answer=="T230") then
	if(LuaQueryTask("T230") == 0) then
             LuaSay("�������ˣ�������������װ���ɡ�ѡ���㱳���е�@2������@0�����@2����@0���ͻᵯ��һ��@2��������@0��")
             LuaSay("�������ˣ�ѡ��@3����@0��ť����@3ȷ����@0����������ʵ���°ɣ����Ҹ����@2������@0������@2������@0��")
             LuaGive("o_material_11",4)
             LuaGive("o_material_20",4)
             LuaGive("e_pants002",1,"T230")
             LuaGive("coin",400,"T230")
             LuaSetTask("T230",1)
             AddLog("����װ��",236)
             UpdateMenu()
       elseif(LuaQueryTask("T230") == 1) then
			if(LuaItemCount("e_pants003") >0 ) then
			LuaSay("�������ˣ����ӿɽ�Ҳ����ô���ѧ����������")
			AddMenuItem("@7�������","")
			AddMenuItem("��ȡ����","T230jl")
			else
			   LuaSay("�������ˣ��㻹û�н�@2������@0����Ϊ@2������@0�ء�")
			   LuaSay("�������ˣ�ѡ���㱳���е�@2������@0�����@25����@0���ᵯ��һ��@2��������@0��")
			   LuaSay("�������ˣ����@2����@0ѡ��Ϳ�������װ���ˡ�")
		    end
       elseif(LuaQueryTask("T230") == 99) then
              LuaSay("�������ˣ�ѡ���㱳���е�@2װ��@0�����@2����@0���ᵯ��һ��@2��������@0��")
             LuaSay("�������ˣ�ѡ��@3����@0��ť����@3ȷ����@0���������ɸ��ߵȼ���װ����")
	      LuaSay("��ʾ�������������")
	   end
	   elseif(answer=="T230jl") then
           if(LuaQueryTask("T230") == 1) then
               LuaAddJx("combat_exp",27000,"T176")
			   LuaAddAchievementSchedule("Task_num",1)
               LuaSetTask("T230",99)
               DelLog("236")
               UpdateMenu()
	       end

elseif(answer=="T265B") then                       -----���ٽ��� 
                 if(LuaQueryTask("T265B") ==0) then
    			LuaSay("�������ˣ�Ӵ���������е��������Ǽ�Ʒѽ������Ļ��ɱȲ��ϣ�����200ͭ��@!")
			LuaSetTask("T265B",99)
			LuaGive("coin",200,"T265B")
			--LuaDelTask("265B")
			UpdateMenu()
			UpdateNPCMenu("xiean")
		end


elseif(answer=="Cm1") then 
	local level= LuaQuery("level")
	if(level>=10 and LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
	ChangeMap("lu_mine01")
	else
	LuaSay("�����ɼ����豾����Ա10�����ܽ���.")
	end


elseif(answer=="T231") then                                                 
		if(LuaQueryStrTask("231Taskday")~=GetCurrentDay()) then
			LuaSetTask("231dotime",0)
		end
		if(LuaItemStatusNormalCount("o_mission145")>=1)then
			if(LuaQueryTask("231dotime")<10) then
				LuaSay("�������ƣ����������������Ҵ���΢�⣬Ī����ʲô������")
				LuaSay(""..LuaQueryStr("name").."��ʵ��������С��������һ�鷢���ʯͷ�����ڲ�֪����ʲô�ô�����������ʶ�㣬���ҿ�����!")
				LuaSay("�������ƣ�߹���˿���Ϊ@3��@0���Ǵ��������ľ��Ѳ��ϣ����˴�������������ܷ������ң�")
				AddMenuItem("@7����ѡ��","")
				AddMenuItem("@3��","231yes")
				AddMenuItem("����","231no")
				AddLog("�󾫡����ء�",231)
				UpdateMenu()
			else
				LuaSay("��ʾ������û����Щ��ʯ�����꣬������������")
				LuaDelTask("bao_C")
				UpdateMenu()
			end
		else
			LuaSay("�������ƣ���Ūһ����ͷ����û����˼�ģ�������Ŀ��������Ұɣ�")
		end
		
			
		   elseif(answer=="231yes")then
			LuaSay("�������ƣ���л�������պ�ص���л")
			LuaSetTask("T231",1)
			LuaSetTask("231Taskday",GetCurrentDay())
			LuaAddTask("231dotime",1)
			AddLog("�󾫡����ء�",231)
			AddMenuItem("@7�������","")
			AddMenuItem("@3��ȡ����","T231jl")
		  elseif(answer=="231no")then
			LuaSay("�������ƣ�ֻ�����������߲��ܽ��󾫵����÷��ӳ�������Ҫ�������ž����Ű�!")
			LuaDelTask("bao_C")
			UpdateMenu()

	    	    elseif(answer=="T231jl")then
			local level= LuaQuery("level")
				if(level>80)then
		level=80
	end
			if(LuaItemStatusNormalCount("o_mission145")>=1)then
		         if(LuaQueryTask("T231")==1) then
				 LuaDelTask("T231")
				 DelItem("o_mission145",1)
				 local jingyan
				 if(level<20)then
					jingyan=(21037+level^2*20)
				 elseif(level<30)then
					jingyan=(33000+level^2*20)
				 elseif(level<40)then
					jingyan=(43682+level^2*30)
				 elseif(level<50)then
					jingyan=(53682+level^2*30)
				 elseif(level<60)then
					jingyan=(64682+level^2*30)
				 else
					jingyan=(84682+level^2*40)
				 end
				 LuaAddJx("combat_exp",jingyan,"T231")
				 DelLog("231")
				 LuaDelTask("bao_C")
				 UpdateMenu()
			 end
			else
				LuaSay("@5��ʾ����û��Я����")
			end
--��ڽ�ɽ
elseif(answer=="T385")then
	if(TeamCount()>=2)then
		if(LuaQueryTask("T385")==1)then
			if(TeamQueryTask("T385")>=1)then
				if(LuaQueryTask("TfindNPC_3")==1)then
					LuaSay("�������ˣ��ܺã�лл����Ҵ���@2��ɽ����[�Ͼ�]@0�����Ҽ�ʱ���˽⵽��ǰ���������")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_3",98)
					DelItem("o_mission417",1)
					UpdateMenu()
				elseif(LuaQueryTask("TfindNPC_3")==2)then
					LuaSay("�������ˣ��ܺã�лл����Ҵ���@2��ɽ����[�¾�]@0�����Ҽ�ʱ���˽⵽��ǰ���������")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_3",98)
					DelItem("o_mission418",1)
					UpdateMenu()
				end
			else
				LuaSay("�������ˣ���Ķ��ѻ�û�������ۣ��Ͽ�֪ͨ��������Ŷ")
			end
		elseif(LuaQueryTask("T385")==98)then
			LuaSay("�������ˣ����Ѿ���һ��Ľ�ɽ�����͵����ҵ����ϣ���ȥ���������ȡ�����ɡ�")
		end
	else
		LuaSay("��ʾ����������Ҫ��Ӳ��ܽ�����һ��")	
	end



elseif(answer=="Tsnpc_21")then
	if(LuaQueryTask("Tsnpc_21")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸����@4��������@0���ż�")
		LuaSay("�������ˣ����ȿ�������ȥ�����ʺ����")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_21",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_21")==2)then
		LuaSay("�������ˣ����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_21")then
	if(LuaQueryTask("Tenpc_21")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҹ��������ע����������")
		LuaSay("�������ˣ�����������ı�������˷��ĺ��ˡ�")
		LuaSetTask("Tenpc_21",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_21")==2)then
		LuaSay("�������ˣ��Ŵ��˷���������ı�����ȥ�ظ����˰�")
	end


end
LuaSendMenu()
return 1
end

