function do_use()
local r =LuaRandom(100)
	if(r==0)  then        
	R_pz=3      ---------�ƽ���1%
	elseif( r>=1 and r<15)  then
	R_pz=2      ---------��װ��14%
	else
	R_pz=1      ---------��װ��85%
	end
	
	hc={}
	hc[1]={3,"o_douyu","����",1,"o_longyu","����",1,"e_earring004",21}
	hc[2]={3,"o_douyu","����",1,"o_longyu","����",1,"e_earring005",27}
	hc[3]={5,"o_douyu","����",1,"o_longyu","����",1,"e_earring006",33}
	hc[4]={5,"o_douyu","����",1,"o_longyu","����",1,"e_earring007",39}
	hc[5]={10,"o_douyu","����",3,"o_longyu","����",1,"e_earring008",45}
	hc[6]={20,"o_douyu","����",5,"o_longyu","����",1,"e_earring009",51}
	hc[7]={20,"o_douyu","����",5,"o_longyu","����",1,"e_earring010",57}
	hc[8]={30,"o_douyu","����",7,"o_longyu","����",1,"e_earring011",63}
	hc[9]={30,"o_douyu","����",7,"o_longyu","����",1,"e_earring012",69}
	hc[10]={40,"o_douyu","����",10,"o_longyu","����",1,"e_earring013",75}
	hc[11]={50,"o_douyu","����",15,"o_longyu","����",1,"e_earring014",80}

	---���趷������������id������������������������id�����񡣲���װ������������װ��id������װ���ȼ���

	

	local dy=LuaItemStatusNormalCount("o_douyu")
	local ly=LuaItemStatusNormalCount("o_longyu")
	
	if(LuaFreeBag()>=2)then
		AddMenuItem("�ϳ�˵��","nc_combine o_earringHC2 shuoming","�����ϳ��顾�߼���")
		AddMenuItem("�ϳ�ָ��","nc_combine o_earringHC2 zhinan","�����ϳ��顾�߼���")
  		local num=1
  		while(num<=11)
  		do
			if(dy>=hc[num][1] and ly>=hc[num][4]) then
			AddMenuItem("Lv"..hc[num][9].."[@7�ɺϳ�@0]","nc_combine o_earringHC2 flag["..num.."]","�����ϳ��顾�߼���")
			else
			AddMenuItem("Lv"..hc[num][9].."[@2��Ҫ"..(hc[num][1]).."��"..(hc[num][3]).."����Ҫ"..hc[num][4].."��"..(hc[num][6]).."@0]","nc_combine o_earringHC2 flag["..num.."]","�����ϳ��顾�߼���")
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
LuaSay("���Ժϳ�20�����ϵ�װ����װ����Ʒ�ʽϴ����Ϊ��ɫ��һ������Ϊ��ɫ����С����Ϊ�ƽ𣡣��ϳ�ʱ��һ�������㹻�İ����ռ䣬��Ȼ����ɶ�ʧŶ��")
elseif(type=="zhinan")then
LuaSay("ֻҪ�����㹻�Ĳ��ϣ������Ӧ�Ĳ˵����ܺϳ�װ����������ϲ��㣬���Կ�������Ĳ���������Ŀ��")
else
local num2=1
local dy=LuaItemStatusNormalCount("o_douyu")
local ly=LuaItemStatusNormalCount("o_longyu")
while(num2<=11)
do
	if(type=="flag["..num2.."]")then
  		if(dy>=hc[num2][1] and ly>=hc[num2][4]) then
  		LuaGive(hc[num2][8],hc[num2][7],R_pz,"earringHC2")
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
