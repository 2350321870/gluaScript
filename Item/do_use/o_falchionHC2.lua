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
	hc[1]={3,"o_douyu","����",1,"o_longyu","����",1,"e_falchion005",20}
	hc[2]={3,"o_douyu","����",1,"o_longyu","����",1,"e_falchion006",23}
	hc[3]={3,"o_douyu","����",1,"o_longyu","����",1,"e_falchion007",26}
	hc[4]={3,"o_douyu","����",1,"o_longyu","����",1,"e_falchion008",29}
	hc[5]={5,"o_douyu","����",1,"o_longyu","����",1,"e_falchion009",32}
	hc[6]={5,"o_douyu","����",1,"o_longyu","����",1,"e_falchion010",35}
	hc[7]={5,"o_douyu","����",1,"o_longyu","����",1,"e_falchion011",38}
	hc[8]={10,"o_douyu","����",3,"o_longyu","����",1,"e_falchion012",41}
	hc[9]={10,"o_douyu","����",3,"o_longyu","����",1,"e_falchion013",44}
	hc[10]={10,"o_douyu","����",3,"o_longyu","����",1,"e_falchion014",47}
	hc[11]={20,"o_douyu","����",5,"o_longyu","����",1,"e_falchion015",50}
	hc[12]={20,"o_douyu","����",5,"o_longyu","����",1,"e_falchion016",53}
	hc[13]={20,"o_douyu","����",5,"o_longyu","����",1,"e_falchion017",56}
	hc[14]={20,"o_douyu","����",5,"o_longyu","����",1,"e_falchion018",59}
	hc[15]={30,"o_douyu","����",7,"o_longyu","����",1,"e_falchion019",62}
	hc[16]={30,"o_douyu","����",7,"o_longyu","����",1,"e_falchion020",65}
	hc[17]={30,"o_douyu","����",7,"o_longyu","����",1,"e_falchion021",68}
	hc[18]={40,"o_douyu","����",10,"o_longyu","����",1,"e_falchion022",71}
	hc[19]={40,"o_douyu","����",10,"o_longyu","����",1,"e_falchion023",74}
	hc[20]={40,"o_douyu","����",10,"o_longyu","����",1,"e_falchion024",77}
	hc[21]={50,"o_douyu","����",15,"o_longyu","����",1,"e_falchion025",80}
	hc[22]={50,"o_douyu","����",15,"o_longyu","����",1,"e_falchion026",82}
	hc[23]={50,"o_douyu","����",15,"o_longyu","����",1,"e_falchion027",84}
	hc[24]={50,"o_douyu","����",15,"o_longyu","����",1,"e_falchion028",86}
	hc[25]={50,"o_douyu","����",15,"o_longyu","����",1,"e_falchion029",88}
	hc[26]={60,"o_douyu","����",20,"o_longyu","����",1,"e_falchion030",90}
	hc[27]={60,"o_douyu","����",20,"o_longyu","����",1,"e_falchion031",94}
	hc[28]={60,"o_douyu","����",20,"o_longyu","����",1,"e_falchion032",98}
	---���趷������������id������������������������id�����񡣲���װ������������װ��id������װ���ȼ���

	

	local dy=LuaItemStatusNormalCount("o_douyu")
	local ly=LuaItemStatusNormalCount("o_longyu")
	
	if(LuaFreeBag()>=2)then
		AddMenuItem("�ϳ�˵��","nc_combine o_falchionHC2 shuoming","���ϳ��顾�߼���")
		AddMenuItem("�ϳ�ָ��","nc_combine o_falchionHC2 zhinan","���ϳ��顾�߼���")
  		local num=1
  		while(num<=28)
  		do
			if(dy>=hc[num][1] and ly>=hc[num][4]) then
			AddMenuItem("Lv"..hc[num][9].."[@7�ɺϳ�@0]","nc_combine o_falchionHC2 flag["..num.."]","���ϳ��顾�߼���")
			else
			AddMenuItem("Lv"..hc[num][9].."[@2��Ҫ"..(hc[num][1]).."��"..(hc[num][3]).."����Ҫ"..hc[num][4].."��"..(hc[num][6]).."@0]","nc_combine o_falchionHC2 flag["..num.."]","���ϳ��顾�߼���")
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
while(num2<=28)
do
	if(type=="flag["..num2.."]")then
  		if(dy>=hc[num2][1] and ly>=hc[num2][4]) then
  		LuaGive(hc[num2][8],hc[num2][7],R_pz,"falchionHC2")
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
