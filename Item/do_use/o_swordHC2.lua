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
	hc[1]={3,"o_douyu","����",1,"o_longyu","����",1,"e_sword007",21}
	hc[2]={3,"o_douyu","����",1,"o_longyu","����",1,"e_sword008",24}
	hc[3]={3,"o_douyu","����",1,"o_longyu","����",1,"e_sword009",26}
	hc[4]={5,"o_douyu","����",1,"o_longyu","����",1,"e_sword010",30}
	hc[5]={5,"o_douyu","����",1,"o_longyu","����",1,"e_sword011",33}
	hc[6]={5,"o_douyu","����",1,"o_longyu","����",1,"e_sword012",36}
	hc[7]={5,"o_douyu","����",1,"o_longyu","����",1,"e_sword013",39}
	hc[8]={10,"o_douyu","����",3,"o_longyu","����",1,"e_sword014",42}
	hc[9]={10,"o_douyu","����",3,"o_longyu","����",1,"e_sword015",45}
	hc[10]={10,"o_douyu","����",3,"o_longyu","����",1,"e_sword016",48}
	hc[11]={20,"o_douyu","����",5,"o_longyu","����",1,"e_sword017",51}
	hc[12]={20,"o_douyu","����",5,"o_longyu","����",1,"e_sword018",54}
	hc[13]={20,"o_douyu","����",5,"o_longyu","����",1,"e_sword019",57}
	hc[14]={30,"o_douyu","����",7,"o_longyu","����",1,"e_sword020",60}
	hc[15]={30,"o_douyu","����",7,"o_longyu","����",1,"e_sword021",63}
	hc[16]={30,"o_douyu","����",7,"o_longyu","����",1,"e_sword022",66}
	hc[17]={30,"o_douyu","����",7,"o_longyu","����",1,"e_sword023",69}
	hc[18]={40,"o_douyu","����",10,"o_longyu","����",1,"e_sword024",72}
	hc[19]={40,"o_douyu","����",10,"o_longyu","����",1,"e_sword025",75}
	hc[20]={40,"o_douyu","����",10,"o_longyu","����",1,"e_sword026",78}
	hc[21]={50,"o_douyu","����",15,"o_longyu","����",1,"e_sword027",81}
	hc[22]={50,"o_douyu","����",15,"o_longyu","����",1,"e_sword028",84}
	hc[23]={50,"o_douyu","����",15,"o_longyu","����",1,"e_sword029",87}
	hc[24]={60,"o_douyu","����",20,"o_longyu","����",1,"e_sword030",90}
	hc[25]={60,"o_douyu","����",20,"o_longyu","����",1,"e_sword031",93}
	hc[26]={60,"o_douyu","����",20,"o_longyu","����",1,"e_sword032",96}
	---���趷������������id������������������������id�����񡣲���װ������������װ��id������װ���ȼ���

	

	local dy=LuaItemStatusNormalCount("o_douyu")
	local ly=LuaItemStatusNormalCount("o_longyu")
	
	if(LuaFreeBag()>=2)then
		AddMenuItem("�ϳ�˵��","nc_combine o_swordHC2 shuoming","���ϳ��顾�߼���")
		AddMenuItem("�ϳ�ָ��","nc_combine o_swordHC2 zhinan","���ϳ��顾�߼���")
  		local num=1
  		while(num<=26)
  		do
			if(dy>=hc[num][1] and ly>=hc[num][4]) then
			AddMenuItem("Lv"..hc[num][9].."[@7�ɺϳ�@0]","nc_combine o_swordHC2 flag["..num.."]","���ϳ��顾�߼���")
			else
			AddMenuItem("Lv"..hc[num][9].."[@2��Ҫ"..(hc[num][1]).."��"..(hc[num][3]).."����Ҫ"..hc[num][4].."��"..(hc[num][6]).."@0]","nc_combine o_swordHC2 flag["..num.."]","���ϳ��顾�߼���")
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
while(num2<=26)
do
	if(type=="flag["..num2.."]")then
  		if(dy>=hc[num2][1] and ly>=hc[num2][4]) then
  		LuaGive(hc[num2][8],hc[num2][7],R_pz,"swordHC2")
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
