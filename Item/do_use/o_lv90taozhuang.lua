function do_use()
LuaSay("90����װ���޿��ţ�")
--[[ 
	local r=LuaRandom(100)
	if(r==0)  then        
	R_pz=3      ---------�ƽ���1%
	elseif( r>=1 and r<15)  then
	R_pz=2      ---------��װ��14%
	else
	R_pz=1      ---------��װ��85%
	end
	
	hc={}
	hc[1]={1,"o_douyuSP","�߼�����",15,"o_longyu","����",1,"e_falchion151","��"}
	hc[2]={1,"o_douyuSP","�߼�����",15,"o_longyu","����",1,"e_shield151","��"}
	hc[3]={1,"o_douyuSP","�߼�����",15,"o_longyu","����",1,"e_sword151","��"}
	hc[4]={1,"o_douyuSP","�߼�����",15,"o_longyu","����",1,"e_knife151","ذ��"}
	hc[5]={1,"o_douyuSP","�߼�����",15,"o_longyu","����",1,"e_pen151","����"}
	hc[6]={1,"o_douyuSP","�߼�����",15,"o_longyu","����",1,"e_book151","����"}
	hc[7]={1,"o_douyuSP","�߼�����",15,"o_longyu","����",1,"e_head151","ñ��"}
	hc[8]={1,"o_douyuSP","�߼�����",15,"o_longyu","����",1,"e_clothes151","�·�"}
	hc[9]={1,"o_douyuSP","�߼�����",15,"o_longyu","����",1,"e_pants151","����"}
	hc[10]={1,"o_douyuSP","�߼�����",15,"o_longyu","����",1,"e_shoes151","Ь��"}
	hc[11]={1,"o_douyuSP","�߼�����",15,"o_longyu","����",1,"e_earring151","����"}
	hc[12]={1,"o_douyuSP","�߼�����",15,"o_longyu","����",1,"e_necklace151","����"}

	---����߼������������߼�����id���߼�����������������������id�����񡣲���װ������������װ��id������װ���ȼ���

	

	local dy=LuaItemStatusNormalCount("o_douyuSP")
	local ly=LuaItemStatusNormalCount("o_longyu")
	
	if(LuaFreeBag()>=2)then
		AddMenuItem("�ϳ�˵��","nc_combine o_lv40taozhuang shuoming","40����װ�ϳ���")
		AddMenuItem("�ϳ�ָ��","nc_combine o_lv40taozhuang zhinan","40����װ�ϳ���")
  		local num=1
  		while(num<=12)
  		do
			if(dy>=hc[num][1] and ly>=hc[num][4]) then
			AddMenuItem(""..hc[num][9].."[@7�ɺϳ�@0]","nc_combine o_lv40taozhuang flag["..num.."]","40����װ�ϳ���")
			else
			AddMenuItem(""..hc[num][9].."[@2��Ҫ"..(hc[num][1]).."��"..(hc[num][3]).."����Ҫ"..hc[num][4].."��"..(hc[num][6]).."@0]","nc_combine o_lv40taozhuang flag["..num.."]","40����װ�ϳ���")
			end

			num=num+1
		end

		



    else
    LuaSay("�����ռ䲻��2�����������°�����")
    end

  ]] 

LuaOtherSendMenu()
return 0
end

function nc_combine(type)

if(type=="shuoming")then
LuaSay("���Ժϳ�40����װ��װ����Ʒ�ʽϴ����Ϊ��ɫ��һ������Ϊ��ɫ����С����Ϊ�ƽ𣡣��ϳ�ʱ��һ�������㹻�İ����ռ䣬��Ȼ����ɶ�ʧŶ��")
elseif(type=="zhinan")then
LuaSay("ֻҪ�����㹻�Ĳ��ϣ������Ӧ�Ĳ˵����ܺϳ�װ����������ϲ��㣬���Կ�������Ĳ���������Ŀ��")
else
local num2=1
while(num2<=12)
do
	if(type=="flag["..num2.."]")then
  		if(dy>=hc[num2][1] and ly>=hc[num2][4]) then
  		LuaGive(hc[num2][8],hc[num2][7],R_pz,"lv40taozhuang")
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
