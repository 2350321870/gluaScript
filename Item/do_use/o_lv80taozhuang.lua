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
	hc[1]={5,"o_douyuSP","�߼�����",3,"o_longyuSP","�߼�����",1,"e_falchion163","��"}
	hc[2]={5,"o_douyuSP","�߼�����",3,"o_longyuSP","�߼�����",1,"e_shield163","��"}
	hc[3]={5,"o_douyuSP","�߼�����",3,"o_longyuSP","�߼�����",1,"e_sword163","��"}
	hc[4]={5,"o_douyuSP","�߼�����",3,"o_longyuSP","�߼�����",1,"e_knife163","ذ��"}
	hc[5]={5,"o_douyuSP","�߼�����",3,"o_longyuSP","�߼�����",1,"e_fan163","����"}
	hc[6]={5,"o_douyuSP","�߼�����",3,"o_longyuSP","�߼�����",1,"e_book163","����"}
	hc[7]={5,"o_douyuSP","�߼�����",3,"o_longyuSP","�߼�����",1,"e_head163","ñ��"}
	hc[8]={5,"o_douyuSP","�߼�����",3,"o_longyuSP","�߼�����",1,"e_clothes163","�·�"}
	hc[9]={5,"o_douyuSP","�߼�����",3,"o_longyuSP","�߼�����",1,"e_pants163","����"}
	hc[10]={5,"o_douyuSP","�߼�����",3,"o_longyuSP","�߼�����",1,"e_shoes163","Ь��"}
	hc[11]={5,"o_douyuSP","�߼�����",3,"o_longyuSP","�߼�����",1,"e_earring163","����"}
	hc[12]={5,"o_douyuSP","�߼�����",3,"o_longyuSP","�߼�����",1,"e_necklace163","����"}

	---����߼������������߼�����id���߼���������߼������������߼�����id���߼����񡣲���װ������������װ��id������װ���ȼ���

	

	local dy=LuaItemStatusNormalCount("o_douyuSP")
	local ly=LuaItemStatusNormalCount("o_longyuSP")
	
	if(LuaFreeBag()>=2)then
		AddMenuItem("�ϳ�˵��","nc_combine o_lv80taozhuang shuoming","80��������װ�ϳ���")
		AddMenuItem("�ϳ�ָ��","nc_combine o_lv80taozhuang zhinan","80��������װ�ϳ���")
  		local num=1
  		while(num<=12)
  		do
			if(dy>=hc[num][1] and ly>=hc[num][4]) then
			AddMenuItem(""..hc[num][9].."[@7�ɺϳ�@0]","nc_combine o_lv80taozhuang flag["..num.."]","80��������װ�ϳ���")
			else
			AddMenuItem(""..hc[num][9].."[@2��Ҫ"..(hc[num][1]).."��"..(hc[num][3]).."����Ҫ"..hc[num][4].."��"..(hc[num][6]).."@0]","nc_combine o_lv80taozhuang flag["..num.."]","80��������װ�ϳ���")
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
LuaSay("���Ժϳ�80��������װ��װ����Ʒ�ʽϴ����Ϊ��ɫ��һ������Ϊ��ɫ����С����Ϊ�ƽ𣡣��ϳ�ʱ��һ�������㹻�İ����ռ䣬��Ȼ����ɶ�ʧŶ��")
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
  		LuaGive(hc[num2][8],hc[num2][7],R_pz,"lv80taozhuang")
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
