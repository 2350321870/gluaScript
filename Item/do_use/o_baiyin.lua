function do_use()	
	hc={}
	hc[1]={3,"o_silverpieces","������Ƭ",5,"o_mission145","��",1,"e_falchion154","@5��ɷն"}
	hc[2]={3,"o_silverpieces","������Ƭ",5,"o_mission145","��",1,"e_shield154","@5��ɷ�ػ�"}
	hc[3]={3,"o_silverpieces","������Ƭ",5,"o_mission145","��",1,"e_sword154","@5��ɷ��"}
	hc[4]={3,"o_silverpieces","������Ƭ",5,"o_mission145","��",1,"e_knife154","@5��ɷ��"}
	hc[5]={3,"o_silverpieces","������Ƭ",5,"o_mission145","��",1,"e_pen154","@5��ɷ��"}
	hc[6]={3,"o_silverpieces","������Ƭ",5,"o_mission145","��",1,"e_book154","@5��ɷ��"}
	hc[7]={2,"o_silverpieces","������Ƭ",3,"o_mission145","��",1,"e_head154","@5��ɷ��"}
	hc[8]={2,"o_silverpieces","������Ƭ",3,"o_mission145","��",1,"e_clothes154","@5��ɷ��"}
	hc[9]={2,"o_silverpieces","������Ƭ",3,"o_mission145","��",1,"e_pants154","@5��ɷ�ּ�"}
	hc[10]={2,"o_silverpieces","������Ƭ",3,"o_mission145","��",1,"e_shoes154","@5��ɷѥ"}
	hc[11]={2,"o_silverpieces","������Ƭ",4,"o_mission145","��",1,"e_earring154","@5��ɷ��׹"}
	hc[12]={2,"o_silverpieces","������Ƭ",3,"o_mission145","��",1,"e_necklace154","@5��ɷ����"}
	---����߼������������߼�����id���߼������������������id���󾫡�����װ������������װ��id������װ���ȼ���
	local silverpieces=LuaItemStatusNormalCount("o_silverpieces")
	local kj=LuaItemStatusNormalCount("o_mission145")
	if(LuaFreeBag()>=2)then
		AddMenuItem("�ϳ�˵��","nc_combine o_baiyin shuoming","������ҳ")
		AddMenuItem("�ϳ�ָ��","nc_combine o_baiyin zhinan","������ҳ")
  		local num=1
  		while(num<=12)
  		do
			if(silverpieces>=hc[num][1] and kj>=hc[num][4]) then
				AddMenuItem(""..hc[num][9].."[@7�ɺϳ�@0]","nc_combine o_baiyin flag["..num.."]","������ҳ")
			else
				AddMenuItem(""..hc[num][9].."[@2��Ҫ"..(hc[num][1]).."��"..(hc[num][3]).."����Ҫ"..hc[num][4].."��"..(hc[num][6]).."@0]","nc_combine o_baiyin flag["..num.."]","������ҳ")
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
LuaSay("����%100�ϳ����������������װ�����ϳ�ʱ��һ�������㹻�İ����ռ䣬��Ȼ����ɶ�ʧŶ����Ƭ�̳����ܹ��򵽣�")
elseif(type=="zhinan")then
LuaSay("ֻҪ�����㹻�Ĳ��ϣ������Ӧ�Ĳ˵����ܺϳ�װ����������ϲ��㣬���Կ�������Ĳ���������Ŀ,�����������")
else
local num2=1
local silverpieces=LuaItemStatusNormalCount("o_silverpieces")
local kj=LuaItemStatusNormalCount("o_mission145")
while(num2<=12)
do
	if(type=="flag["..num2.."]")then
  		if(silverpieces>=hc[num2][1] and kj>=hc[num2][4]) then
			LuaGive(hc[num2][8],hc[num2][7],2,"baiyin")
			DelItem(hc[num2][2],hc[num2][1])
			DelItem(hc[num2][5],hc[num2][4])
			DelItem("o_baiyin",1)
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
