NPCINFO = {
serial= "91" ,
base_name="vipgly",
icon= 2550 ,
NpcMove=2550,
name= "vip����Ա" , 
iconaddr=1, 
butt="30|10|65", 
name_color ="CEFFCE" , 
lastsay="�߳�Ϊ������",
LuaType=1,
have_vip_item =1,
shopxh = 11,     ---vipר�����߳���
}
 function do_talk(answer)                          
 if (answer=="ask") then
	havetask =0
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7�����б�","")
        if(level>=20) then
        AddTopSayMenuItem("@3Կ�׻�����","Tkeychange")
        end
	AddTopSayMenuItem("@3VIP�����̳�","vipsc")
	if(havetask ==2)then
		AddTopSayMenuItem("����","liaotian","2")
	elseif(havetask ==1) then
		AddTopSayMenuItem("����","liaotian","1")
	else
		AddTopSayMenuItem("����","liaotian","0")
	end 
	return 1

elseif(answer=="vipsc") then
	DoBuy() 

elseif(answer=="Tkeychange") then		--Կ�׶һ�����
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(GetCurrentDay()~=LuaQueryStrTask("Tkeychangeday")) then	--�����һ�����:1~5��:,1��1��Կ�ף�6~10:2��11~15:3��16~20:4.����20,���ܻ�ȡ
	LuaSetTask("Tkeychangetime",0)
	end
	LuaSay("���Ƿ���Ҫ��Ϊ����ȫ����10������أ��Ƿ���Ϊ���������������أ�")
	LuaSay("ÿ�������໻ȡ20��,1~5�κķ�1��Կ��,6~10�ķ�2��Կ��,11~15�ķ�3��Կ��,16~20�ķ�4��Կ��")
	if(LuaQueryTask("Tkeychangetime")<20) then
	AddMenuItem("@7�Ƿ�ȡ","")
	AddMenuItem("Կ�׶һ�����","yescgexp")
	AddMenuItem("���һ�","nocgexp")
	else
	LuaSay("��ʾ��������Ѿ��ﵽ�˶һ�����20�Σ������ٶһ���")
	end
	elseif(answer=="yescgexp") then
	Tkeychangetime=LuaQueryTask("Tkeychangetime")
	local exp=120000+level^2*85+level*12000
	LuaSay("��ʾ������������@3��"..(Tkeychangetime+1).."��@0�һ����ķ�@2"..(floor(Tkeychangetime/5)+1).."��Կ�ס�")
	if(Tkeychangetime<5) then
		local keynumy=LuaItemCount("o_key002y")
		local keynumj=LuaItemCount("o_key002j")
		local keynum=keynumy+keynumj
		if(keynum>0) then
		  if(keynumy>0) then
		  DelItem("o_key002y",1)
		  else
		  DelItem("o_key002j",1)
		  end
		LuaSetTask("Tkeychangeday",GetCurrentDay())
		LuaAddTask("Tkeychangetime",1)
		LuaAddJx("combat_exp",exp,"Tkeychange")
		else
		LuaSay("��ʾ����û��@2����Կ��@0�����ܶһ���")
		end
	elseif(Tkeychangetime<10) then
		local keynumy=LuaItemCount("o_key002y")
		local keynumj=LuaItemCount("o_key002j")
		local keynum=keynumy+keynumj
		if(keynum>=2) then
		  if(keynumy>=2) then
		  DelItem("o_key002y",2)
		  elseif(keynumy>=1) then
		  DelItem("o_key002y",1)
		  DelItem("o_key002j",1)
		  else
		  DelItem("o_key002j",2)
		  end
		LuaSetTask("Tkeychangeday",GetCurrentDay())
		LuaAddTask("Tkeychangetime",1)
		LuaAddJx("combat_exp",exp,"Tkeychange")
		else
		LuaSay("��ʾ����@2����Կ��@0����2�ѣ����ܶһ���")
		end
	elseif(Tkeychangetime<15) then
		local keynumy=LuaItemCount("o_key002y")
		local keynumj=LuaItemCount("o_key002j")
		local keynum=keynumy+keynumj
		if(keynum>=3) then
		  if(keynumy>=3) then
		  DelItem("o_key002y",3)
		  elseif(keynumy>=2) then
		  DelItem("o_key002y",2)
		  DelItem("o_key002j",1)
		  elseif(keynumy>=1) then
		  DelItem("o_key002y",1)
		  DelItem("o_key002j",2)
		  else
		  DelItem("o_key002j",3)
		  end
		LuaSetTask("Tkeychangeday",GetCurrentDay())
		LuaAddTask("Tkeychangetime",1)
		LuaAddJx("combat_exp",exp,"Tkeychange")
		else
		LuaSay("��ʾ����@2����Կ��@0����3�ѣ����ܶһ���")
		end
	elseif(Tkeychangetime<20) then
		local keynumy=LuaItemCount("o_key002y")
		local keynumj=LuaItemCount("o_key002j")
		local keynum=keynumy+keynumj
		if(keynum>=4) then
		  if(keynumy>=4) then
		  DelItem("o_key002y",4)
		  elseif(keynumy>=3) then
		  DelItem("o_key002y",3)
		  DelItem("o_key002j",1)
		  elseif(keynumy>=2) then
		  DelItem("o_key002y",2)
		  DelItem("o_key002j",2)
		  elseif(keynumy>=1) then
		  DelItem("o_key002y",1)
		  DelItem("o_key002j",3)
		  else
		  DelItem("o_key002j",4)
		  end
		LuaSetTask("Tkeychangeday",GetCurrentDay())
		LuaAddTask("Tkeychangetime",1)
		LuaAddJx("combat_exp",exp,"Tkeychange")
		else
		LuaSay("��ʾ����@2����Կ��@0����4�ѣ����ܶһ���")
		end
	end
	elseif(answer=="nocgexp") then
		LuaSay("ÿ�տ���ֻ��20�λ���Ŷ�������ѵð���")		



end
LuaSendMenu()
return 1
end