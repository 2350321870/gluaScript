function do_use()
local r =LuaRandom(100)
    if(r==0)  then
        if(LuaRandom(20)==0)  then
		R_pz=3      ---------�ƽ���0.05%
		else
		R_pz=1
		end
	elseif( r>=1 and r<11)  then
	R_pz=2      ---------��װ��10%
	else
	R_pz=1      ---------��װ��89.95
	end
	
	hc={}
	hc[1]={3,"o_douyu","����",0,"o_longyu","����",1,"e_knife004",24}
	hc[2]={5,"o_douyu","����",0,"o_longyu","����",1,"e_knife005",30}
	hc[3]={5,"o_douyu","����",0,"o_longyu","����",1,"e_knife006",36}
	hc[4]={10,"o_douyu","����",0,"o_longyu","����",1,"e_knife007",42}
	hc[5]={10,"o_douyu","����",0,"o_longyu","����",1,"e_knife008",48}
	hc[6]={20,"o_douyu","����",0,"o_longyu","����",1,"e_knife009",54}
	hc[7]={30,"o_douyu","����",0,"o_longyu","����",1,"e_knife010",60}
	hc[8]={30,"o_douyu","����",0,"o_longyu","����",1,"e_knife011",66}
	hc[9]={40,"o_douyu","����",0,"o_longyu","����",1,"e_knife012",72}
	hc[10]={40,"o_douyu","����",0,"o_longyu","����",1,"e_knife013",78}
	hc[11]={50,"o_douyu","����",0,"o_longyu","����",1,"e_knife014",84}
	hc[12]={60,"o_douyu","����",0,"o_longyu","����",1,"e_knife015",90}
	hc[13]={60,"o_douyu","����",0,"o_longyu","����",1,"e_knife016",96}

	---���趷������������id������������������������id�����񡣲���װ������������װ��id������װ���ȼ���

	

	local dy=LuaItemStatusNormalCount("o_douyu")
	local ly=LuaItemStatusNormalCount("o_longyu")
	
	if(LuaFreeBag()>=2)then
		AddMenuItem("�ϳ�˵��","nc_combine o_knifeHC shuoming","ذ�׺ϳ��顾��ͨ��")
		AddMenuItem("�ϳ�ָ��","nc_combine o_knifeHC zhinan","ذ�׺ϳ��顾��ͨ��")
  		local num=1
  		while(num<=13)
  		do
			if(dy>=hc[num][1] and ly>=hc[num][4]) then
			AddMenuItem("Lv"..hc[num][9].."[@7�ɺϳ�@0]","nc_combine o_knifeHC flag["..num.."]","ذ�׺ϳ��顾��ͨ��")
			else
			AddMenuItem("Lv"..hc[num][9].."[@2��Ҫ"..(hc[num][1]).."��"..(hc[num][3]).."����Ҫ"..hc[num][4].."��"..(hc[num][6]).."@0]","nc_combine o_knifeHC flag["..num.."]","ذ�׺ϳ��顾��ͨ��")
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
LuaSay("���Ժϳ�20�����ϵ�װ����װ����Ʒ�ʽϴ����Ϊ��ɫ��һ������Ϊ��ɫ���ǳ�С�ĸ���Ϊ�ƽ𣡺ϳ�ʱ��һ�������㹻�İ����ռ䣬��Ȼ����ɶ�ʧŶ��")
elseif(type=="zhinan")then
LuaSay("ֻҪ�����㹻�Ĳ��ϣ������Ӧ�Ĳ˵����ܺϳ�װ����������ϲ��㣬���Կ�������Ĳ���������Ŀ��")
else
local num2=1
local dy=LuaItemStatusNormalCount("o_douyu")
local ly=LuaItemStatusNormalCount("o_longyu")
while(num2<=13)
do
	if(type=="flag["..num2.."]")then
  		if(dy>=hc[num2][1] and ly>=hc[num2][4]) then
  		LuaGive(hc[num2][8],hc[num2][7],R_pz,"knifeHC")
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
