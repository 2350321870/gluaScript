function do_use()
	local r=LuaRandom(100)
 	if(r==0)  then
	R_pz=3      ---------�ƽ���1%
	elseif( r>=1 and r<15)  then
	R_pz=2      ---------��װ��14%
	else
	R_pz=1      ---------��װ��85%
	end

	hc={}
	hc[1]={4,"o_douyuSP","�߼�����",2,"o_longyuSP","�߼�����",1,"e_falchion158","��"}
	hc[2]={4,"o_douyuSP","�߼�����",2,"o_longyuSP","�߼�����",1,"e_shield158","��"}
	hc[3]={4,"o_douyuSP","�߼�����",2,"o_longyuSP","�߼�����",1,"e_sword158","��"}
	hc[4]={4,"o_douyuSP","�߼�����",2,"o_longyuSP","�߼�����",1,"e_knife158","ذ��"}
	hc[5]={4,"o_douyuSP","�߼�����",2,"o_longyuSP","�߼�����",1,"e_fan158","����"}
	hc[6]={4,"o_douyuSP","�߼�����",2,"o_longyuSP","�߼�����",1,"e_book158","����"}
	hc[7]={4,"o_douyuSP","�߼�����",2,"o_longyuSP","�߼�����",1,"e_head158","ñ��"}
	hc[8]={4,"o_douyuSP","�߼�����",2,"o_longyuSP","�߼�����",1,"e_clothes158","�·�"}
	hc[9]={4,"o_douyuSP","�߼�����",2,"o_longyuSP","�߼�����",1,"e_pants158","����"}
	hc[10]={4,"o_douyuSP","�߼�����",2,"o_longyuSP","�߼�����",1,"e_shoes158","Ь��"}
	hc[11]={4,"o_douyuSP","�߼�����",2,"o_longyuSP","�߼�����",1,"e_earring158","����"}
	hc[12]={4,"o_douyuSP","�߼�����",2,"o_longyuSP","�߼�����",1,"e_necklace158","����"}

	---����߼������������߼�����id���߼���������߼������������߼�����id���߼����񡣲���װ������������װ��id������װ���ȼ���

	

	local dy=LuaItemStatusNormalCount("o_douyuSP")
	local ly=LuaItemStatusNormalCount("o_longyuSP")
	
	if(LuaFreeBag()>=2)then
		AddMenuItem("�ϳ�˵��","nc_combine o_lv70taozhuang shuoming","70��������װ�ϳ���")
		AddMenuItem("�ϳ�ָ��","nc_combine o_lv70taozhuang zhinan","70��������װ�ϳ���")
  		local num=1
  		while(num<=12)
  		do
			if(dy>=hc[num][1] and ly>=hc[num][4]) then
			AddMenuItem(""..hc[num][9].."[@7�ɺϳ�@0]","nc_combine o_lv70taozhuang flag["..num.."]","70��������װ�ϳ���")
			else
			AddMenuItem(""..hc[num][9].."[@2��Ҫ"..(hc[num][1]).."��"..(hc[num][3]).."����Ҫ"..hc[num][4].."��"..(hc[num][6]).."@0]","nc_combine o_lv70taozhuang flag["..num.."]","70��������װ�ϳ���")
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
LuaSay("���Ժϳ�70��������װ��װ����Ʒ�ʽϴ����Ϊ��ɫ��һ������Ϊ��ɫ����С����Ϊ�ƽ𣡣��ϳ�ʱ��һ�������㹻�İ����ռ䣬��Ȼ����ɶ�ʧŶ��")
elseif(type=="zhinan")then
LuaSay("ֻҪ�����㹻�Ĳ��ϣ������Ӧ�Ĳ˵����ܺϳ�װ����������ϲ��㣬���Կ�������Ĳ���������Ŀ��")
else
local num2=1
local dy=LuaItemStatusNormalCount("o_douyuSP")
local ly=LuaItemStatusNormalCount("o_longyuSP")
while(num2<=12)
do
	if(type=="flag["..num2.."]")then
  		if(dy>=hc[num2][1] and ly>=hc[num2][4]) then
  		LuaGive(hc[num2][8],hc[num2][7],R_pz,"lv70taozhuang")
		DelItem(hc[num2][2],hc[num2][1])
		DelItem(hc[num2][5],hc[num2][4])
  	  	do_use()--�ؿ��˵�
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
