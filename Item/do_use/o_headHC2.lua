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
	hc[1]={3,"o_douyu","����",1,"o_longyu","����",1,"e_head008",22}
	hc[2]={3,"o_douyu","����",1,"o_longyu","����",1,"e_head009",25}
	hc[3]={3,"o_douyu","����",1,"o_longyu","����",1,"e_head010",28}
	hc[4]={5,"o_douyu","����",1,"o_longyu","����",1,"e_head011",31}
	hc[5]={5,"o_douyu","����",1,"o_longyu","����",1,"e_head012",34}
	hc[6]={5,"o_douyu","����",1,"o_longyu","����",1,"e_head013",37}
	hc[7]={10,"o_douyu","����",3,"o_longyu","����",1,"e_head014",40}
	hc[8]={10,"o_douyu","����",3,"o_longyu","����",1,"e_head015",43}
	hc[9]={10,"o_douyu","����",3,"o_longyu","����",1,"e_head016",46}
	hc[10]={10,"o_douyu","����",3,"o_longyu","����",1,"e_head017",49}
	hc[11]={20,"o_douyu","����",5,"o_longyu","����",1,"e_head018",52}
	hc[12]={20,"o_douyu","����",5,"o_longyu","����",1,"e_head019",55}
	hc[13]={20,"o_douyu","����",5,"o_longyu","����",1,"e_head020",58}
	hc[14]={30,"o_douyu","����",7,"o_longyu","����",1,"e_head021",61}
	hc[15]={30,"o_douyu","����",7,"o_longyu","����",1,"e_head022",64}
	hc[16]={30,"o_douyu","����",7,"o_longyu","����",1,"e_head023",67}
	hc[17]={40,"o_douyu","����",10,"o_longyu","����",1,"e_head024",70}
	hc[18]={40,"o_douyu","����",10,"o_longyu","����",1,"e_head025",73}
	hc[19]={40,"o_douyu","����",10,"o_longyu","����",1,"e_head026",76}
	hc[20]={40,"o_douyu","����",10,"o_longyu","����",1,"e_head027",79}
	hc[21]={50,"o_douyu","����",15,"o_longyu","����",1,"e_head028",82}
	hc[22]={50,"o_douyu","����",15,"o_longyu","����",1,"e_head029",85}
	hc[23]={50,"o_douyu","����",15,"o_longyu","����",1,"e_head030",88}
	hc[24]={60,"o_douyu","����",20,"o_longyu","����",1,"e_head031",91}
	hc[25]={60,"o_douyu","����",20,"o_longyu","����",1,"e_head032",94}
	---���趷������������id������������������������id�����񡣲���װ������������װ��id������װ���ȼ���

	

	local dy=LuaItemStatusNormalCount("o_douyu")
	local ly=LuaItemStatusNormalCount("o_longyu")
	
	if(LuaFreeBag()>=2)then
		AddMenuItem("�ϳ�˵��","nc_combine o_headHC2 shuoming","ñ�Ӻϳ��顾�߼���")
		AddMenuItem("�ϳ�ָ��","nc_combine o_headHC2 zhinan","ñ�Ӻϳ��顾�߼���")
  		local num=1
  		while(num<=25)
  		do
			if(dy>=hc[num][1] and ly>=hc[num][4]) then
			AddMenuItem("Lv"..hc[num][9].."[@7�ɺϳ�@0]","nc_combine o_headHC2 flag["..num.."]","ñ�Ӻϳ��顾�߼���")
			else
			AddMenuItem("Lv"..hc[num][9].."[@2��Ҫ"..(hc[num][1]).."��"..(hc[num][3]).."����Ҫ"..hc[num][4].."��"..(hc[num][6]).."@0]","nc_combine o_headHC2 flag["..num.."]","ñ�Ӻϳ��顾�߼���")
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
while(num2<=25)
do
	if(type=="flag["..num2.."]")then
  		if(dy>=hc[num2][1] and ly>=hc[num2][4]) then
  		LuaGive(hc[num2][8],hc[num2][7],R_pz,"headHC2")
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
