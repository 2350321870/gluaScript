NPCINFO = {
serial= "28" ,
base_name="dphuoji_odw21",
icon= 2509,
NpcMove=2509,
name= "���̻�ơ�������[net]" , 
iconaddr=1, 
butt="15|10|63", 
name_color = "CEFFCE" , 
lastsay="net����������",
have_resell_item=1,
}
USERINFO ={
level=0,
userid=0,
kill_task=0,
Tcoc=0,
}

ans = {}
ans.ask = {}
ans.ask[1] = {}
ans.ask[2] = {}
ans.ask[3] = {}
ans.ask[4] = {}
ans.ask[5] = {}
ans.ask[6] = {}
ans.ask[7] = {}
ans.ask[8] = {}
ans.ask[9] = {}
function do_talk(answer)
if (answer=="ask") then
	ans.rtype=0
	ans.count=2
	title = 1      
	ans.ask[title]={type="",key="",show="@7�����б�",val="",}
		title= title + 1	
	if(USERINFO.level >= 10)  then
		ans.ask[title]={type="",key="",show="@3����",val="buy1",}
		title= title + 1
	end	  
	if(USERINFO.level >= 10)  then
		ans.ask[title]={type="",key="",show="@7��ȡ����",val="getagentmoney",}
		title= title + 1
	end	   
	if(USERINFO.level >= 1)  then 
		ans.ask[title]={type="",key="",show="@5����˵��",val="jimai_intro",}
		title= title + 1
	end
	if(USERINFO.level >= 1)  then 
		ans.ask[title]={type="",key="",show="����",val="liaotian",}
		title= title + 1
	end
		ans.count=title-1  

elseif(answer=="buy1") then
	ans.rtype=3
elseif(answer=="getagentmoney") then
	ans.rtype=8
elseif(answer=="jimai_intro") then
	ans.rtype=2
	ans.count=1
	ans.ask[1]={show="@7net����������"}
elseif(answer=="liaotian") then
	ans.rtype=2
	ans.count=1
	ans.ask[1]={type="set",key="command",show=" ", val="call=���̻�ƣ�Ӣ��׼��������ȫ�µ��ó̰ɡ�|0|12|4"}
elseif(answer=="Tcoc")then---------------------�̼���7 Tcoc===13
	ans.rtype=2
	if(USERINFO.Tcoc==13)then 
	ans.count=4
	ans.ask[1]={show="�����,�齨�̻���������ٿ��ǿ��ǰ�."}	
	ans.ask[2]={type="set_int",key="Tcoc",val="14"}
	if(USERINFO.level>=25)then
	ans.ask[3]={type="give",key="coin",show="�õ�ͭ��1000",val="1000"}
	else	
	ans.ask[3]={type="give",key="coin",show="�õ�ͭ��800",val="500"}
	end
	ans.ask[4]={type="update_menu"}
	end

end
return ans
end
