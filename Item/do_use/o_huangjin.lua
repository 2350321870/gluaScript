function do_use()	
	hc={}
	hc[1]={4,"o_goldpieces","�ƽ���Ƭ",5,"o_mission153","��֦",1,"e_falchion161","@5�ƾ���"}
	hc[2]={4,"o_goldpieces","�ƽ���Ƭ",5,"o_mission153","��֦",1,"e_shield161","@5�ƾ�����"}
	hc[3]={4,"o_goldpieces","�ƽ���Ƭ",5,"o_mission153","��֦",1,"e_sword161","@5�ƾ���"}
	hc[4]={4,"o_goldpieces","�ƽ���Ƭ",5,"o_mission153","��֦",1,"e_knife161","@5�ƾ���"}
	hc[5]={4,"o_goldpieces","�ƽ���Ƭ",5,"o_mission153","��֦",1,"e_fan161","@5�ƾ���"}
	hc[6]={4,"o_goldpieces","�ƽ���Ƭ",5,"o_mission153","��֦",1,"e_book161","@5�ƾ���"}
	hc[7]={2,"o_goldpieces","�ƽ���Ƭ",3,"o_mission153","��֦",1,"e_head161","@5�ƾ���"}
	hc[8]={2,"o_goldpieces","�ƽ���Ƭ",3,"o_mission153","��֦",1,"e_clothes161","@5�ƾ���"}
	hc[9]={2,"o_goldpieces","�ƽ���Ƭ",3,"o_mission153","��֦",1,"e_pants161","@5�ƾ��ּ�"}
	hc[10]={2,"o_goldpieces","�ƽ���Ƭ",3,"o_mission153","��֦",1,"e_shoes161","@5�ƾ�ѥ"}
	hc[11]={3,"o_goldpieces","�ƽ���Ƭ",4,"o_mission153","��֦",1,"e_earring161","@5�ƾ�����"}
	hc[12]={2,"o_goldpieces","�ƽ���Ƭ",3,"o_mission153","��֦",1,"e_necklace161","@5�ƾ�����"}
	---����߼������������߼�����id���߼������������������id���󾫡�����װ������������װ��id������װ���ȼ���
	local goldpieces=LuaItemStatusNormalCount("o_goldpieces")
	local jz=LuaItemStatusNormalCount("o_mission153")
	if(LuaFreeBag()>=2)then
		AddMenuItem("�ϳ�˵��","nc_combine o_huangjin shuoming","�ƽ��ҳ")
		AddMenuItem("�ϳ�ָ��","nc_combine o_huangjin zhinan","�ƽ��ҳ")
  		local num=1
  		while(num<=12)
  		do
			if(goldpieces>=hc[num][1] and jz>=hc[num][4]) then
				AddMenuItem(""..hc[num][9].."[@7�ɺϳ�@0]","nc_combine o_huangjin flag["..num.."]","�ƽ��ҳ")
			else
				AddMenuItem(""..hc[num][9].."[@2��Ҫ"..(hc[num][1]).."��"..(hc[num][3]).."����Ҫ"..hc[num][4].."��"..(hc[num][6]).."@0]","nc_combine o_huangjin flag["..num.."]","�ƽ��ҳ")
			end
			num=num+1
		end
    else
	    LuaSay("�����ռ䲻��2�����������°�����")
    end
LuaOtherSendMenu()
return 0
end

function nc_combine(type)
if(type=="shuoming")then
LuaSay("@3����%100�ϳ����ƽ��������װ�����ϳ�ʱ��һ�������㹻�İ����ռ䣬��Ȼ����ɶ�ʧŶ����Ƭ�̳����ܹ��򵽣�")
elseif(type=="zhinan")then
LuaSay("@3ֻҪ�����㹻�Ĳ��ϣ������Ӧ�Ĳ˵����ܺϳ�װ����������ϲ��㣬���Կ�������Ĳ���������Ŀ�������������")
else
local num2=1
local goldpieces=LuaItemStatusNormalCount("o_goldpieces")
local jz=LuaItemStatusNormalCount("o_mission153")
while(num2<=12)
do
	if(type=="flag["..num2.."]")then
  		if(goldpieces>=hc[num2][1] and jz>=hc[num2][4]) then
			LuaGive(hc[num2][8],hc[num2][7],2,"baiyin")
			DelItem(hc[num2][2],hc[num2][1])
			DelItem(hc[num2][5],hc[num2][4])
			DelItem("o_huangjin",1)
			--do_use()--�ؿ��˵�
		else
			LuaShowNotify("���ϲ���")
		end
	end
	num2=num2+1
end
end
LuaOtherSendMenu()
--return 1
end