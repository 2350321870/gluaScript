NPCINFO = {
serial= "44" ,
base_name="zmzl",
icon= 2556,
NpcMove=2556,
name= "������" ,
iconaddr=1,
butt="10|10|63",
name_color = "CEFFCE" ,
lastsay="���֮�˱���ϴ�����﷽�ɽ��뽨��" ,
LuaType=1,
}

function do_talk(answer)
if (answer=="ask") then
	local level=LuaQuery("level")
	local day=GetCurrentDay()
	AddTopSayMenuItem("@7�����б�","")
	if(day=="2012-6-15" or day=="2012-6-16" or day=="2012-6-17") then
		AddTopSayMenuItem("���׽ڵ�����ʽ","Ac_43")
	else
		DelItem("o_mission525",LuaItemStatusNormalCount("o_mission525"))
        	DelItem("o_seed107",LuaItemStatusNormalCount("o_seed107"))
	end
		if(LuaQueryTask("T601")==1)then
			AddTopSayMenuItem("@2�������꡾���顿","T601")
			havetask=2
		end
            AddTopSayMenuItem("����","Tzhiliao01")
	    AddTopSayMenuItem("����","Txili")
	    AddTopSayMenuItem("@3תְ","zhuanzhi")
	    AddTopSayMenuItem("@3ϴ��","Tresetpoint")
	    if(level>=35)then
            AddTopSayMenuItem("�����ս��ͼ(20:00-21:00)","gjbwz")
        else
        	AddTopSayMenuItem("�����ս��ͼ(20:00-21:00)","gjbwz_no")
		end 
	    AddTopSayMenuItem("����","liaotian","0")
		return 1
		
elseif(answer=="liaotian") then
	LuaSay("������:����ʥ�𣬷��Ҳ�������������")
elseif(answer=="gjbwz")then
	if(LuaQueryTask("Ac14")==0)then
		LuaSay("ͳһ����ʿ����ӭ�����μӴ�˵�лҳ������Ĺ�սɱ�˻���������Ī��")
		LuaSetTask("Ac14_gz",LuaQuery("gj_gx"))
		LuaSetTask("Ac14",99)
	end
	GetInCountryProtectFightMap("lu_gzdt_01")
 elseif(answer=="gjbwz_no")then
 	LuaSay("��ʾ����Ҫ35�����ϲ��ܲμӹ�ս��")

elseif(answer=="Tresetpoint") then
	local level=LuaQuery("level")
	if(level>=10)then
		LuaSay("������:�����о��Լ������������ݡ��������Ե����Ĳ����⣬�ҿ��԰����ͨ������ϴ���ѷ�������Ե�")
		LuaSay("������:������Ҫ������һ����@3ϴ��ȯ@0�Ҳſϰ��㣬@3ϴ��ȯ@0��Ԫ���̳������п�����.")
		if(level<=100)then	
		local quan_number=2^(floor(level/10)-1)
		LuaSay("������:����Խ����Ҫ������Խ��,�����ڵļ�����Ҫ@1"..quan_number.."@0��@3ϴ��ȯ@0���С���Ҫϴ����")
		AddMenuItem("@7�Ƿ�ϴ��","")
		AddMenuItem("@5��Ŀ˵��","rplist")
		AddMenuItem("ϴ��","yes_reset")
		AddMenuItem("��ϴ","no")
		else
		LuaSay("������:�����Ϊ��100�������ˣ������������ʱ�޷���ͨ��ľ����������ౣ��һ��ʱ�ջظ�һ��������������")
		end
	else
	LuaSay("�����ڻ�����10����10��ѡְҵʱ�������ϴһ�����Ե㣬����Ҫ����")
	end
elseif(answer=="yes_reset")then
	local level=LuaQuery("level")
	local quan_number=2^(floor(level/10)-1)
	if(LuaItemStatusNormalCount("o_resetpoint1y")>=quan_number)then
	LuaResetPoint()
	DelItem("o_resetpoint1y",quan_number)
	LuaSay("������:����,����,�����Ҳ�������,��������·������Ե���.��Щȯ���Ի�Щ�þƲ���,�ٺ�.")
	LuaSay(""..LuaQueryStr("name").."��...")
	else
	LuaSay("������:������û���㹻��ϴ��ȯ,�����ڵļ�����Ҫ@1"..quan_number.."@0��@3ϴ��ȯ@0����.@3ϴ��ȯ@0Ԫ���̳������п�����.")
	end
	elseif(answer=="rplist")then
	LuaSay("�����¶�Ҫ�������۵ģ�����㼶���ʱ���Լ�������Լ���Ǳ�ܣ�������˲�׷��Ī����Թ���ñ��ˣ�����Ҳ��Թ���յ�ȯ̫��")
	LuaSay("10-19��1��,20-29��2��,30-39��4��,40-49��8��,50-59��16��,60-69��32��,70-79��64��,80-89��128��,90������256��")


elseif(answer=="Tzhiliao01") then
	local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaQuery("hp")>0) then
	if((LuaQuery("max_hp") >LuaQuery("hp")) or (LuaQuery("max_mp") >LuaQuery("mp"))) then
		local jinqian=(level^2 +50)
		if(LuaItemCount("coin")>=jinqian) then
		local maxhp=LuaQuery("max_hp")
		local maxmp=LuaQuery("max_mp")
	      LuaSet("hp",maxhp)
	      LuaSet("mp",maxmp)
          FlushMyInfo("0")
          LuaGive("coin",-jinqian,"Tzhiliao01")
          LuaSay("��ջ���"..jinqian.."ͭ�ҽ�������,�ָֻ��˻���")
		 else
		   LuaSay("��Ľ�Ǯ����,������Ҫ"..jinqian.."ͭ�ҷ�������")
		  end
	  else
	  LuaSay("����������Ѫ��ħ״̬,����Ҫ����")
	   end
	else
		LuaSay("��ɫ������,�޷�����")
	end
elseif(answer=="Txili") then
	local level=LuaQuery("level")
   if(LuaQuery("pk_state")<0)  then
    LuaSay("������:������ˡ���һ�����,���Ա�����,�һ�����ϴˢ���Ļ���")
    LuaSay("������:�����ѡ��ϴˢ1�㡢5�㡢10���pkֵ")
    AddMenuItem("�б�","","")
    AddMenuItem("һ��","one","")
    AddMenuItem("���","five","")
    AddMenuItem("ʮ��","ten","")
   else
    LuaSay("������:�㲻��Ҫϴ������,ʩ����Ҫ�����Ժ�")
   end

    elseif(answer=="one") then
	local level=LuaQuery("level")
    local jinqian=(level*10)
     if(LuaItemCount("coin")>jinqian) then
     LuaAdd("pk_state",1)
     LuaSay("��ʾ:pkֵ����1")
     LuaGive("coin",-jinqian,"Txili")
     FlushPKState()
	else
	 LuaSay("������:����Ҫ@3"..jinqian.."@0ͭ�ҷ���ϴ@31��pkֵ")
	 end
	

    elseif(answer=="five") then
    local level=LuaQuery("level")
    local jinqian=(level*50)
     if(LuaItemCount("coin")>jinqian) then
     LuaAdd("pk_state",5)
     LuaSay("��ʾ:pkֵ����5")
     LuaGive("coin",-jinqian,"Txili")
     FlushPKState()
	else
	 LuaSay("������:����Ҫ@3"..jinqian.."@0ͭ�ҷ���ϴ@35��pkֵ")
	 end

    elseif(answer=="ten") then
    local level=LuaQuery("level")
    local jinqian=(level*100)
     if(LuaItemCount("coin")>jinqian) then
     LuaAdd("pk_state",10)
     LuaSay("��ʾ:pkֵ����10")
     LuaGive("coin",-jinqian,"Txili")
     FlushPKState()
	 else
	 LuaSay("������:����Ҫ@3"..jinqian.."@0ͭ�ҷ���ϴ@310��pkֵ")
	 end

elseif(answer=="T601") then
	if(LuaQueryTask("T601")==1) then
		LuaSay("�����ϣ���֪Ӣ�����Һ��£�")
		LuaSay(""..LuaQueryStr("name").."��������ѹ�ư׹Ƕ���Թ������֪��ʦ��û�а취��")
		LuaSay("�����ϣ��Ϸ����һ��@3������@0���㵽@4�׹Ƕ�@0ȥʹ�ã��������ЩԹ����Щ���á�")
		LuaGive("o_mission319",1)
		LuaSetTask("T601",2)
		
		UpdateMenu()		       
	elseif(LuaQueryTask("T601")==2 and LuaItemCount("o_mission319")==0) then
		LuaSay("�����ϣ���ô��Ҫ�Ķ��������㶪�ˣ���ʹ����Ϸ��ٸ���һ���ɣ�")
		LuaGive("o_mission319",1)
	elseif(LuaQueryTask("T601")==2 and LuaItemCount("o_mission319")==1) then
		LuaSay("��ʾ:@3���׹Ƕ�ʹ�ó����䣬Ȼ����ȥ��@3�����@0")
	end


elseif(answer=="zhuanzhi") then
	local level=LuaQuery("level")
   	LuaSay("�����ϣ�����о���ǰְҵ�����Լ������Դ��㹻������@2תְ����@0���ң��ҿɰ���תְ��@2תְ����@0��@3Ԫ���̳�@0@4����@0�п����򵽡�")
	LuaSay("�����ϣ�תְ��@3���ܵ��Զ�����@0������Ҫ@3�����������Ե�@0��ȥ������ĳ��ϡ�")
	local level=LuaQuery("level")
	--LuaSay("@1xx������תְ�ݲ�����")
	if(level>=10 and level<=100)then	--xx�������ݲ�����
	 if(EquipInfo(1)=="" and EquipInfo(2)=="") then
		local quan_number=2^(floor(level/10)-1)
		LuaSay("�����ϣ�����Խ��@2תְ����@0��Ҫ������Խ�࣬�����ڵļ�����Ҫ@1"..quan_number.."@0��@2תְ����@0���С���Ҫתְ��")
		AddMenuItem("@7תְ","")
		if(level>=30)then
		AddMenuItem("@5��Ŀ˵��","zzlist")
		end
		if(LuaQueryStr("class")~="wu") then
		AddMenuItem("תְΪ����","xiage_ag","") 
		end
		if(LuaQueryStr("class")~="xian") then
		AddMenuItem("תְΪıʿ","moushi_ag","")
		end
		if(LuaQueryStr("class")~="shen") then
		AddMenuItem("תְΪսʿ","zhanshi_ag","")
		end
	 else
		LuaSay("�����ϣ��ܱ�Ǹ��������@3���������������͸���������ж�º�@0���ܽ���תְ��")
	 end
	else
		LuaSay("�ܱ�Ǹ��10�����ϲ���תְ��")
	end
	elseif(answer=="zzlist")then
	LuaSay("�����ϣ��ȼ�Խ����Ҫ��תְ�����Խ�࣬�����Ǿ�����Ҫ������")
	LuaSay("�����ϣ�10-19��1��,20-29��2��,30-39��4��,40-49��8��,50-59��16��,60-69��32��,70-79��64��,80-89��128��,90������256�š�")

elseif(answer=="xiage_ag" and LuaQueryStr("class")~="wu") then
	local level=LuaQuery("level")
	local quan_number=2^(floor(level/10)-1)
	if(LuaItemStatusNormalCount("o_changeclass1y")>=quan_number)then
	    LuaSet("class","wu")
		ResetSkill()		--���ü�����
		DelItem("o_changeclass1y",quan_number)
		FlushMyInfo(2)	--ˢ��������Ϣ
		LuaLogRecord("ְҵ","10","ְҵ","ѡ��",3) --10�� ѡ��ְҵ 0��ְҵ 1ս 2ıʿ 3����
		LuaSay("��ʾ����ɹ���תְ��Ϊ�����͡�")
	else
	    LuaSay("�����ϣ���û���㹻��@2תְ����@0����ļ�����Ҫ@1"..quan_number.."@0��@2תְ����@0��@2תְ����@0@3Ԫ���̳�@0@4����@0�п����򵽡�")
	end
elseif(answer=="moushi_ag" and LuaQueryStr("class")~="xian") then
	local level=LuaQuery("level")
	local quan_number=2^(floor(level/10)-1)
        if(LuaItemStatusNormalCount("o_changeclass1y")>=quan_number)then
        LuaSet("class","xian")
		ResetSkill()
		DelItem("o_changeclass1y",quan_number)
		FlushMyInfo(2)
		LuaLogRecord("ְҵ","10","ְҵ","ѡ��",2)
		LuaSay("��ʾ����ɹ���תְ��Ϊ��ıʿ��")
        else
	    LuaSay("�����ϣ���û���㹻��@2תְ����@0����ļ�����Ҫ@1"..quan_number.."@0��@2תְ����@0��@2תְ����@0@3Ԫ���̳�@0@4����@0�п����򵽡�")
	    end
elseif(answer=="zhanshi_ag" and LuaQueryStr("class")~="shen") then
	local level=LuaQuery("level")
	local quan_number=2^(floor(level/10)-1)
        if(LuaItemStatusNormalCount("o_changeclass1y")>=quan_number)then
        LuaSet("class","shen")
		ResetSkill()
		DelItem("o_changeclass1y",quan_number)
		FlushMyInfo(2)
		LuaLogRecord("ְҵ","10","ְҵ","ѡ��",1)
		LuaSay("��ʾ����ɹ���תְ��Ϊ��սʿ��")
		else
	    LuaSay("�����ϣ���û���㹻��@2תְ����@0����ļ�����Ҫ@1"..quan_number.."@0��@2תְ����@0��@2תְ����@0@3Ԫ���̳�@0@4����@0�п����򵽡�")
	    end
	
elseif(answer=="class") then
	local level=LuaQuery("level")
         if(level>=10)  then
           LuaSay("�����ϣ�Ϊ�˱����������Ĺ��ף������ڿ���ѡ��@3���͡�ıʿ��սʿ@0�е��κ�һ��ְҵ�ˡ�")
	       if(LuaQueryStr("class")=="zhan")then	       
		   AddMenuItem("@7ѡ��ְҵ","")
           AddMenuItem("����","xiake")
           AddMenuItem("ıʿ","moushi")
           AddMenuItem("սʿ","zhanshi")
	       end
         else
         LuaSay("�����ϣ�10������ѡ��ְҵ��")
         end
	elseif(answer=="xiake") then
            LuaSay("�����ϣ�����׷��һ����ɱ����ԶҪ����һ����ӵ�б�ıʿǿ������HP����սʿ�ߵ�MP��")
            LuaSay("�����ϣ���ͬʱ��MP��ıʿ�͡�����HP��սʿ�ͣ�ӵ��3��ְҵ����ߵ����ݡ�")
            LuaSay("�����ϣ���ȷ��ѡ���ְҵ��")
	    	AddMenuItem("@7��Ϊ����","")
            AddMenuItem("�����룬�Ȳ�����","wait","")
			AddMenuItem("ȷ��","y_xiake","")
            
    elseif(answer=="moushi") then
            LuaSay("�����ϣ�ıʿ�����ǻ۵�׷��������һ����ѡ��ӵ������ְҵ������������HP����ߵ�MP��")
            LuaSay("�����ϣ�ıʿͨ������һ��ս����֧���ߡ������ܹ��ָ��Լ������ѽ�����Ҳ����ֱ�ӷ����������ˡ�")
            LuaSay("�����ϣ���ȷ��ѡ���ְҵ��")
            AddMenuItem("@7��Ϊıʿ","")
            AddMenuItem("�����룬�Ȳ�����","wait","")
			AddMenuItem("ȷ��","y_moushi","")
            
    elseif(answer=="zhanshi") then
            LuaSay("�����ϣ�սʿ׷������ļ��£��Ƴ�������ӵ������ְҵ����ǿ������HP����͵�MP��")
            LuaSay("�����ϣ�սʿͨ������һ��ս���е��ȷ棬����ֱǰ�����޷��ˡ�")
            LuaSay("�����ϣ���ȷ��ѡ���ְҵ��")
			AddMenuItem("@7��Ϊսʿ","")
			AddMenuItem("�����룬�Ȳ�����","wait","")
			AddMenuItem("ȷ��","y_zhanshi","")
            
        elseif(answer=="y_xiake" and LuaQueryStr("class")=="zhan") then
	local level=LuaQuery("level")
        LuaSay("�����ϣ�����"..LuaQueryStr("name").."�����Ѿ�ѡ����@3����@0���⼸��װ������Ϊ�͸��������ɡ�")
        LuaSay("��ܰ��ʾ�����Ѿ��ﵽ@210��@0�����Ե�һ��@3�����ִ����@0��Ŷ��@!")
		LuaSet("class","wu")      ---  ����
		ResetSkill()              ---���ü�����
		LuaResetPoint() --�������Ե�
		FlushMyInfo(2)          ---ˢ������������Ϣ
        LuaAddJx("combat_exp",18000,"T292")
		LuaGive("e_sword003",1,1,"Tclass")
		LuaGive("e_knife001",1,1,"Tclass")
		--LuaGive("e_clothes102",1,2)
		LuaGive("e_pants102",1,2)
		UpdateMenu()
        elseif(answer=="y_moushi" and LuaQueryStr("class")=="zhan") then
	local level=LuaQuery("level")
        LuaSay("�����ϣ�����"..LuaQueryStr("name").."�����Ѿ�ѡ����@3ıʿ@0���⼸��װ������Ϊ�͸��������ɡ�")
        LuaSay("��ܰ��ʾ�����Ѿ��ﵽ@210��@0�����Ե�һ��@3�����ִ����@0��Ŷ��@!")
		LuaSet("class","xian")      --ıʿ
		ResetSkill()
		LuaResetPoint()
		FlushMyInfo(2)
        LuaAddJx("combat_exp",18000,"Tclass")
		LuaGive("e_staff003",1,1,"Tclass")
		LuaGive("e_book016",1,1,"Tclass")
		--LuaGive("e_clothes101",1,2)
		LuaGive("e_pants101",1,2)
		UpdateMenu()
        elseif(answer=="y_zhanshi" and LuaQueryStr("class")=="zhan") then
	local level=LuaQuery("level")
        LuaSay("�����ϣ�����"..LuaQueryStr("name").."�����Ѿ�ѡ����@3սʿ@0���⼸��װ������Ϊ�͸��������ɡ�")
        LuaSay("��ܰ��ʾ�����Ѿ��ﵽ@210��@0�����Ե�һ��@3�����ִ����@0��Ŷ��@!")
		LuaSet("class","shen")      --սʿ
		ResetSkill()
		LuaResetPoint()
		FlushMyInfo(2)
        LuaAddJx("combat_exp",18000,"Tclass")
		LuaGive("e_falchion003",1,1,"Tclass")
		LuaGive("e_shield016",1,1,"Tclass")
		--LuaGive("e_clothes103",1,2)
		LuaGive("e_pants103",1,2)
		UpdateMenu()
		elseif(answer=="wait") then
        LuaSay("�����ϣ�Ҳ�ԣ���������������ҡ�@!")
        
elseif(answer=="Ac_43") then----���׽ڵ�����ʽ
    LuaSay("��ڼ䣺2012��6��15��-6��17�գ�ֻ���Լ�����10���ʻ���������������������Ϳɻ�����ף���뽱�������������Լ��߼�����")
    LuaSay("��ȡ20���ʻ����Ӻ���@4��������@0@3��������@0�����������ֲ���������ʻ��ȴ�1Сʱ���죬ÿ�������ܲ���2�仨��ֻ����ȡһ�ν���Ŷ��")
    LuaSay("ע�⣺���������ɾ�������������Ӻ��ʻ���")
	if(LuaQueryTask("Ac_43")==0)then
		if(LuaFreeBag()>=1)then
			LuaGive("o_seed107",20,"Ac_43")
			LuaSetTask("Ac_43",1)
		else
			LuaSay("�뱣������1��ı����ռ�")
		end
	elseif(LuaQueryTask("Ac_43")==1)then
		if(LuaItemStatusNormalCount("o_mission525")>=10)then
			LuaSay("��ϲ�����������")
			LuaAddJx("combat_exp",1000000,"Ac_43")
			LuaGive("o_longyuSP",1,"Ac_43")
			DelItem("o_mission525",LuaItemStatusNormalCount("o_mission525"))
			DelItem("o_seed107",LuaItemStatusNormalCount("o_seed107"))
			LuaSetTask("Ac_43",99)
		else
			LuaSay("��Ҫ�ռ�10���ʻ�Ŷ���������Ͱɣ�")
		end
	elseif(LuaQueryTask("Ac_43")==99)then
		LuaSay("���Ѿ�����˱�����Ѿ���ȡ��������")
	end



end
LuaSendMenu()
return 1
end

