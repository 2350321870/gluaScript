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
	hc[1]={2,"o_douyuSP","�߼�����",40,"o_longyu","����",1,"e_falchion152","��"}
	hc[2]={2,"o_douyuSP","�߼�����",40,"o_longyu","����",1,"e_shield152","��"}
	hc[3]={2,"o_douyuSP","�߼�����",40,"o_longyu","����",1,"e_sword152","��"}
	hc[4]={2,"o_douyuSP","�߼�����",40,"o_longyu","����",1,"e_knife152","ذ��"}
	hc[5]={2,"o_douyuSP","�߼�����",40,"o_longyu","����",1,"e_pen152","����"}
	hc[6]={2,"o_douyuSP","�߼�����",40,"o_longyu","����",1,"e_book152","����"}
	hc[7]={2,"o_douyuSP","�߼�����",40,"o_longyu","����",1,"e_head152","ñ��"}
	hc[8]={2,"o_douyuSP","�߼�����",40,"o_longyu","����",1,"e_clothes152","�·�"}
	hc[9]={2,"o_douyuSP","�߼�����",40,"o_longyu","����",1,"e_pants152","����"}
	hc[10]={2,"o_douyuSP","�߼�����",40,"o_longyu","����",1,"e_shoes152","Ь��"}
	hc[11]={2,"o_douyuSP","�߼�����",40,"o_longyu","����",1,"e_earring152","����"}
	hc[12]={2,"o_douyuSP","�߼�����",40,"o_longyu","����",1,"e_necklace152","����"}

	---����߼������������߼�����id���߼�����������������������id�����񡣲���װ������������װ��id������װ���ȼ���

	

	local dy=LuaItemStatusNormalCount("o_douyuSP")
	local ly=LuaItemStatusNormalCount("o_longyu")
	
	if(LuaFreeBag()>=2)then
		AddMenuItem("�ϳ�˵��","nc_combine o_lv50taozhuang shuoming","50��������װ�ϳ���")
		AddMenuItem("�ϳ�ָ��","nc_combine o_lv50taozhuang zhinan","50��������װ�ϳ���")
  		local num=1
  		while(num<=12)
  		do
			if(dy>=hc[num][1] and ly>=hc[num][4]) then
			AddMenuItem(""..hc[num][9].."[@7�ɺϳ�@0]","nc_combine o_lv50taozhuang flag["..num.."]","50��������װ�ϳ���")
			else
			AddMenuItem(""..hc[num][9].."[@2��Ҫ"..(hc[num][1]).."��"..(hc[num][3]).."����Ҫ"..hc[num][4].."��"..(hc[num][6]).."@0]","nc_combine o_lv50taozhuang flag["..num.."]","50��������װ�ϳ���")
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
LuaSay("���Ժϳ�50��������װ��װ����Ʒ�ʽϴ����Ϊ��ɫ��һ������Ϊ��ɫ����С����Ϊ�ƽ𣡣��ϳ�ʱ��һ�������㹻�İ����ռ䣬��Ȼ����ɶ�ʧŶ��")
elseif(type=="zhinan")then
LuaSay("ֻҪ�����㹻�Ĳ��ϣ������Ӧ�Ĳ˵����ܺϳ�װ����������ϲ��㣬���Կ�������Ĳ���������Ŀ��")
else
local num2=1
local dy=LuaItemStatusNormalCount("o_douyuSP")
local ly=LuaItemStatusNormalCount("o_longyu")
while(num2<=12)
do
	if(type=="flag["..num2.."]")then
  		if(dy>=hc[num2][1] and ly>=hc[num2][4]) then
  		LuaGive(hc[num2][8],hc[num2][7],R_pz,"lv50taozhuang")
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
