NPCINFO = {
serial= "28" ,
base_name="shiwei01" ,
icon= 2569,
NpcMove=2569,
name= "������" , 
iconaddr=1, 
butt="10|10|64",
name_color = "CEFFCE" ,
lastsay="��Ҫ���빬��͵ø�Ǯ",
LuaType=1,
}
function do_talk(answer) 
	name=LuaQueryStr("name")
if (answer=="ask") then
		havetask =0 
	AddTopSayMenuItem("@7�����б�","","0")
	if(LuaPartyLevel() > 0 and LuaPartyServer() == 1) then
	  if(LuaQueryTask("T250") <= 1 )  then
	  AddTopSayMenuItem("�����һ�@3��������","T250")
	  elseif(LuaQueryTask("T250")<13)  then
	  AddTopSayMenuItem("���к��б���","kshsbw")
	  elseif(LuaQueryTask("T250") >= 13)  then
	  AddTopSayMenuItem("��ɺ��б���","wchsbw")
	  end
	end
--	if(LuaQueryTask("T1000A") == 0)  then
--	AddTopSayMenuItem("����ͨ��","T1000A")
--	end
	if(LuaPartyLevel() > 0)  then
	AddTopSayMenuItem("�����һ�@3�ƽ�װ��","swdhzb")
	end

if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("����","liaotian","0")
end	 
return 1
elseif(answer=="liaotian") then 
     LuaSay("�����ף����⹬����ſ��������ġ��ҿ���������˼���ɻ��Щ�»������ۿɱ������㹷ǿ������")
	
elseif(answer=="swdhzb") then
	LuaSay("��ʾ���Ժ󿪷ţ������ڴ�")

elseif(answer=="T250") then
	LuaSay("�����ף����������������������ϢϢ��صģ�ֻҪ��ϧ���������������Ϳ���Ϊ���������������ס�")
	if(LuaPartyLevel() > 0 and LuaPartyServer() == 1 and LuaQueryTask("repute") >= 5) then
	LuaSay("�����ף��һ�����������������ֱ�ӻ���������Ҫ�μ����ǵĵ��±��䣬��Ӯ��ʤ�����ܻ���")
	LuaSay("�����ף�����㼯�����¼��������Ľ�ɫ������������ĺ�ë������������ͺڲ����������ū�����¿�Ը�⣿")
	LuaSetTask("T250",1)
	AddMenuItem("@7���б���","")
	AddMenuItem("�μӺ��б���","kshsbw")
	AddMenuItem("��������","")
	UpdateMenu()
	elseif(LuaPartyServer() == 0) then
	LuaSay("�㲻���ڱ������������İ��ɣ����ܽ��жһ���")
	else
	LuaSay("��ĸ�����������5�������ܲμ����ǵı�����")
	end

elseif(answer=="kshsbw") then
	local x=LuaRandom(4)
		if(x == 0) then
		xname = "��ë��"
		elseif(x == 1) then
		xname = "������"
		elseif(x == 2) then
		xname = "����ū"
		elseif(x == 3) then
		xname = "�����"
		end
	    local rn=LuaRandom(3)
		if(rn == 1) then
			local pn=xname
			local nn=name
		else
			local pn=name
			local nn=xname
		end
	if(LuaQueryTask("T250") == 1) then
	LuaPartyMsg("���б��䲥��Ա����λ���ڣ����ǻ�ӭ������λ����ѡ��@3"..name.."@0�����������ս�Ĵ��գ�",0)
	LuaSetTask("T250",6)
	end
	 local r=LuaRandom(6)
	 if(r == 0) then
	   LuaSay("���б��䲥��Ա��������@3"..pn.."@0��@3"..nn.."@0����֮�ʣ�����һ����ȭ���������۰���")
	 elseif(r == 1) then
	   LuaSay("���б��䲥��Ա��wo����@3"..pn.."@0߯���ˣ���@3"..nn.."@0һ��[����ժ��]����ѽ������������")
	 elseif(r == 2) then
	   LuaSay("���б��䲥��Ա�����䣬@3"..pn.."@0��@3"..nn.."@0����֮�ʣ�����һ����ȭ���������۰���")
	 elseif(r == 3) then
	   LuaSay("���б��䲥��Ա�����̣�ʵ����̫�����ˣ�@3"..pn.."@0����һ����ɽ��Ӱ�ţ�@3"..nn.."@0���ˤ�£�")
	 elseif(r == 4 or r == 5) then
	   LuaSay("���б��䲥��Ա����û�и��@3"..pn.."@0ʹ����ʧ���ѾõĻ���ƯƯȭ����@3"..nn.."@0����ͷ�������ˣ�")
	 end
	if(LuaQueryTask("T250") >= 3 and LuaQueryTask("T250") < 12) then
		if(rn == 1) then
			LuaAddTask("T250",-1)
			LuaSay("�����ף���Ŀǰ�ı����ɼ��ǻ���"..(LuaQueryTask("T250")-6).."�㡣")
		else
			LuaAddTask("T250",1)
			LuaSay("�����ף���Ŀǰ�ı����ɼ��ǻ���"..(LuaQueryTask("T250")-6).."�㡣�ﵽ6�㼴�ɻ��5����������һ����������Ļ��ᡣ")
		end
	elseif(LuaQueryTask("T250") == 2) then
	LuaSay("�����ף��ܱ�Ǹ����Ŀǰ�ı����ɼ��ǻ����Ѿ���-4�㣬����ͷ�����ɡ�")
	LuaSetTask("T250",0)
	elseif(LuaQueryTask("T250") == 12) then
	LuaSay("���б��䲥��Ա��"..name.."���ڼ������Լ��ľ��С�����һ���������Ĵ����������������Ż�¶�����ʤ���ˣ�")
	LuaPartyMsg(""..name.."����лCCTV��MTV�ܸ����������������չʾ�ҵľ��У���л�װ��İ����ͳ�Ա�Ƕ��ҵİ����Ұ����ǣ�",0)
	LuaAddTask("T250",1)
	end
	UpdateMenu()
	
elseif(answer=="wchsbw") then
       if(LuaQueryTask("T250") > 12) then
		LuaPartyMsg("�����ף�"..name.."�ں��б���������һ���ģ��Ը�������5��Ϊ����Ϊ���ɴ�����1��Ĺ��ף�",0)
		LuaSay("�����ף���ϲ���ں��б���������һ���ģ��Ը�������5��Ϊ����Ϊ���ɴ�����1��Ĺ��ף�")
		LuaSetTask("T250",0)
		if(LuaQueryTask("T250")==0) then
		LuaAdd("repute",-5)
		LuaPartyRepute(1,"�һ�")
		end
	    UpdateMenu()
	   end
	   
elseif(answer=="T1000A") then
    if(LuaQueryTask("T1000A") ==0) then
	LuaSay(""..name.."����λ��ү��������Ҫ���빬��ʥ�������и����㣡")
	LuaSay("�����ף�����û�з��գ��������ֵܷ��࣬��ôҲ����˼��˼�ɣ�")
	AddMenuItem("����200ͭ��","YES","")
	AddMenuItem("��¸20000ͭ��","NO","")
    end
    
elseif(answer=="YES") then
        if(LuaItemCount("coin") >= 200  ) then
		LuaGive("coin",-200,"T1000A")    
		LuaSetTask("T1000A",1)
		LuaSay("�����ף��ֵܣ����Ƕ���صģ��԰ɣ��Ǻǣ��㶮�ͺð���")
		UpdateMenu()
	    else
		LuaSay(""..name.."������������Я��ͭ�Ҳ���@3200@0�������ˡ�")
	    end
	    
elseif(answer=="NO") then
	if(LuaItemCount("coin") >= 20000  ) then
		LuaGive("coin",-20000,"T1000A")    
		LuaSetTask("T1000A",99)
		LuaSetTask("T1000B",99)
		LuaSay(""..name.."��СС��˼�����ɾ��⣬������������ֵ��Ժ����и����㣡")
		LuaSay("�����ף���ѽ�����³��ֲ��������վ��ǳ���֮��ֵ�����Ϊ��Ľ�����Ժ���빬���Ϊ�Ѹ����ˣ�")
		UpdateMenu()
	else
		LuaSay(""..name.."������������Я��ͭ�Ҳ���@320000@0�������ˡ�")
	end
	
	
end 
LuaSendMenu()
return 1
end 