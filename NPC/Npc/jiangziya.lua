NPCINFO = { 
serial="112" ,
base_name="jiangziya" ,
icon=2572,
NpcMove=2572 ,
name="������" ,
iconaddr=1 ,
butt="10|15|60" ,
lastsay="��ȡ����֮�����û������ӣ�",
LuaType=1,
} 
function do_talk(answer) 

if (answer=="ask") then 
	havetask =0 
	local level= LuaQuery("level")
	local tt=LuaQueryTask("T870")%2
	AddTopSayMenuItem("@7�����б�","")
	if(tt==0)then
	AddTopSayMenuItem("@3�չ�����","T870")
        else
	AddTopSayMenuItem("@3�û�����","T870")
	end
	AddTopSayMenuItem("@3����˵��","xlsm")
return 1
--------------------------------------------------------------------------------------------------------------------		
elseif(answer=="T870") then
	local tt=LuaQueryTask("T870")%2
	local level= LuaQuery("level")
	if(GetCurrentDay()==LuaQueryStrTask("T870day") ) then
            if(LuaQueryTask("T870")<6)then     
	        if(tt==0)then
		   LuaSay("���������㿪���˱չ�������һСʱ�ڲ����뿪����ͼ��������ȡ���������¿�ʼ��")
		   LuaSetTask("T870time",LuaQuery("onlinetime"))
		   LuaAddTask("T870",1)
		   UpdateMenu()
		else
		  local XLtimes=LuaQuery("onlinetime")-LuaQueryTask("T870time")
		  local XL=floor(XLtimes/60)
		 if(XLtimes>3600 or XLtimes<0)then
		     LuaSay("�������������˶�������������������õĽ����������������Ҳ�����⽱����")
		     LuaAddJx("combat_exp",floor(level/5-1)*50000,"T870") 
                     LuaAddTask("T870",1)	
		     LuaSetTask("XLtimes",0)
		     if(LuaRandom(100) == 77) then
			LuaSay("���������ҿ������ʲ�����Ͷ���ָ����·���㣬����ƶ��һ��@3��ɴȯ@0�����������·�����")
                        AddMenuItem("��ѡ��","")
			AddMenuItem("����@8��ɴȯ","ssdzqsj","")
			AddMenuItem("������λ���","fq","")
			end
		     UpdateMenu()
		  else
		   LuaSay("�㵱ǰ����ʱ��Ϊ"..XL.."����,����1Сʱ������ʱ���в����뿪��ͼ����������ʱ�佫���㣡")
		  end

		end
	    else
	      LuaSay("�������������ˣ����Ѿ�����3��ʱ���ˣ����������ɣ�")
	    end
         else
	    LuaSay("���������µ�һ�쿪ʼ�ˣ��Ұ����ͨ���������ֿ�������������ʱ���ˡ�")
            LuaSetTask("T870day",GetCurrentDay())
	    LuaSetTask("T870",0)
	    UpdateMenu()
	end 	
	
elseif(answer=="ssdzqsj") then
	if(LuaItemStatusNormalCount("o_zhaiquan1y") > 0) then
		LuaNotice("������:��@2"..LuaQueryStr("name").."@0���������Է�������¶�ս���Ϊ���ɴ���20�����棡")
		AddMoneyToPartyBank(200000)
		LuaAddPartyMoney(0,20)
		DelItem("o_zhaiquan1y",1)
		LuaSet("hp",0)
                FlushMyInfo("0")
		LuaSay("�������������ѻ����������ɣ�")
		UpdateMenu()

	else
		LuaSay("�����������²����ϣ�������ɴȯ�����᲻�ɶ�ã�ȥ�ɡ���")
	end
elseif(answer=="fq")then
     LuaSay("�������������һ���Ļ��ᣬ������֪С����Ȼ����������������")
--------------------------------------------------------------------------------------------------------------------
  elseif(answer=="xlsm")then 
     LuaSay("��������ֻҪ��ƶ��������һСʱ�ߣ�С�϶������������Ľ�������Ȼ������ǰ��ġ�")
     LuaSay("��������һ���չ��ڼ䲻�ܳ�����ͼ������һ��ֻ���������Ρ�")
     LuaSay("�������������ڼ�ֻ������ʱ�䣬���������ڼ��뿪��ͼ������ʱ�佫�����¼��㣡�мǲ���͵��ˣ����")
   
end 
LuaSendMenu()
return 1
end 


