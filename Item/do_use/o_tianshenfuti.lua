    zt={}
	zt[1]={"ǿ��ʱ��",555}
	zt[2]={"���ʱ��",556}
	zt[3]={"��Ѫʱ��",557}
	zt[4]={"ħ��ʱ��",558}
	zt[5]={"��׼ʱ��",559}
	zt[6]={"����ʱ��",560}
	zt[7]={"����ʱ��",561}
	---buff���ƣ�buff��ID��

function do_use()

	local a=LuaCheckBuff("555")
	local b=LuaCheckBuff("556")
	local c=LuaCheckBuff("557")
	local d=LuaCheckBuff("558")
	local e=LuaCheckBuff("559")
	local f=LuaCheckBuff("560")
	local g=LuaCheckBuff("561")
if(a==0 and b==0 and c==0 and d==0 and e==0 and f==0 and g==0)then --����ûbuff���ܽ���ѡ��ˢbuff�Ľ���

    if(LuaQueryTask("TSFT_BUFF_id")==0)then
		local r =LuaRandom(7)+1
    	LuaSetTask("TSFT_BUFF_id",r)   --�趨һ���������״̬ID
    	LuaSetTask("TSFT_BUFF_level",0)--��ʼ��״̬Ϊ0��
    end

    local tsft_buff_id = 554+LuaQueryTask("TSFT_BUFF_id")
    local tsft_buff_level = LuaQueryTask("TSFT_BUFF_level")
	local tips="���:@7"
    if(tsft_buff_level<5)then  --5��buff����
		tips="��ǰ:@7"
    	--LuaShowNotify("��ǰ���������״̬Ϊ@3"..tsft_buff_level.."��"..zt[tsft_buff_id-554][1].."@0��")
    end
	
    AddMenuItem("�淨˵��","nc_combine o_tianshenfuti shuoming","������")
	AddMenuItem("�л�״̬ "..tips..zt[tsft_buff_id-554][1]..tsft_buff_level.."��","nc_combine o_tianshenfuti xuanze","������")
	AddMenuItem("ͭ��ˢ��","nc_combine o_tianshenfuti tongbishua","������")
	AddMenuItem("Ԫ��ˢ��","nc_combine o_tianshenfuti yuanbaoshua","������")
--	if(LuaQuery("VIPlv")>=5)then --vip5�����ܴ���
--	AddMenuItem("ˢ������״̬","nc_combine o_tianshenfuti yuanbaosmanji","������")
--	end
	AddMenuItem("��ȡ״̬","nc_combine o_tianshenfuti lingqu","������")
else
 	local tsft_buff_level = "״̬:@3"..LuaQueryTask("TSFT_BUFF_level")
	--local tempTm=10*60-(GetCurrentTime() - LuaQueryTask("tsft_cd"))
	if(a==1)then     --������buffʱ���������ʾ
		dqzt=zt[1][1]
	elseif(b==1)then
		dqzt=zt[2][1]
    elseif(c==1)then
		dqzt=zt[3][1]
    elseif(d==1)then
		dqzt=zt[4][1]
    elseif(e==1)then
		dqzt=zt[5][1]
    elseif(f==1)then
		dqzt=zt[6][1]
    elseif(g==1)then
		dqzt=zt[7][1]
	end
	LuaSay(dqzt..tsft_buff_level.."��@0")
end


LuaOtherSendMenu()
return 0
end


function nc_combine(type)
if(type=="shuoming")then
	LuaSay("���������״̬��״̬�ȼ�Խ�ߣ����õ������Լӳɾ�Խ�ߣ�״̬����10���ӣ�")
	LuaSay("��ȡ״̬֮ǰ������ѡ�񡢲���ˢ������������ĵȼ���")
	LuaSay("��ȡ״̬֮��Ҫ��״̬��ʧ�ˣ��ſ���������ȡ��")
elseif(type=="xuanze")then
AddMenuItem("ǿ��ʱ��","nc_combine o_tianshenfuti shike01","�л�������״̬���Ứ��2Ԫ��")
AddMenuItem("���ʱ��","nc_combine o_tianshenfuti shike02","�л�������״̬���Ứ��2Ԫ��")
AddMenuItem("��Ѫʱ��","nc_combine o_tianshenfuti shike03","�л�������״̬���Ứ��2Ԫ��")
AddMenuItem("ħ��ʱ��","nc_combine o_tianshenfuti shike04","�л�������״̬���Ứ��2Ԫ��")
AddMenuItem("��׼ʱ��","nc_combine o_tianshenfuti shike05","�л�������״̬���Ứ��2Ԫ��")
AddMenuItem("����ʱ��","nc_combine o_tianshenfuti shike06","�л�������״̬���Ứ��2Ԫ��")
AddMenuItem("����ʱ��","nc_combine o_tianshenfuti shike07","�л�������״̬���Ứ��2Ԫ��")
elseif(type=="shike01")then
    if(LuaQueryMoney()>=2) then
        LuaAddYB(1,-2,"��ħ����ˢ��")--ÿ�ο�Ԫ������δ�к�������ʱ���Ϻ�������
        LuaSetTask("TSFT_BUFF_id",1)
        do_use()--�ؿ��˵�
    else
        LuaShowNotify("��Ҫ@32Ԫ��@0�����л��������״̬���࣡")
    end
elseif(type=="shike02")then
    if(LuaQueryMoney()>=2) then
        LuaAddYB(1,-2)--ÿ�ο�Ԫ������δ�к�������ʱ���Ϻ�������
        LuaSetTask("TSFT_BUFF_id",2)
        do_use()--�ؿ��˵�
    else
        LuaShowNotify("��Ҫ@32Ԫ��@0�����л��������״̬���࣡")
    end
elseif(type=="shike03")then
    if(LuaQueryMoney()>=2) then
        LuaAddYB(1,-2)--ÿ�ο�Ԫ������δ�к�������ʱ���Ϻ�������
        LuaSetTask("TSFT_BUFF_id",3)
        do_use()--�ؿ��˵�
    else
        LuaShowNotify("��Ҫ@32Ԫ��@0�����л��������״̬���࣡")
    end
elseif(type=="shike04")then
    if(LuaQueryMoney()>=2) then
        LuaAddYB(1,-2)--ÿ�ο�Ԫ������δ�к�������ʱ���Ϻ�������
        LuaSetTask("TSFT_BUFF_id",4)
        do_use()--�ؿ��˵�
    else
        LuaShowNotify("��Ҫ@32Ԫ��@0�����л��������״̬���࣡")
    end
elseif(type=="shike05")then
    if(LuaQueryMoney()>=2) then
        LuaAddYB(1,-2)--ÿ�ο�Ԫ������δ�к�������ʱ���Ϻ�������
        LuaSetTask("TSFT_BUFF_id",5)
        do_use()--�ؿ��˵�
    else
        LuaShowNotify("��Ҫ@32Ԫ��@0�����л��������״̬���࣡")
    end
elseif(type=="shike06")then
    if(LuaQueryMoney()>=2) then
        LuaAddYB(1,-2)--ÿ�ο�Ԫ������δ�к�������ʱ���Ϻ�������
        LuaSetTask("TSFT_BUFF_id",6)
        do_use()--�ؿ��˵�
    else
        LuaShowNotify("��Ҫ@32Ԫ��@0�����л��������״̬���࣡")
    end
elseif(type=="shike07")then
    if(LuaQueryMoney()>=2) then
        LuaAddYB(1,-2)--ÿ�ο�Ԫ������δ�к�������ʱ���Ϻ�������
        LuaSetTask("TSFT_BUFF_id",7)
        do_use()--�ؿ��˵�
    else
        LuaShowNotify("��Ҫ@32Ԫ��@0�����л��������״̬���࣡")
    end

elseif(type=="tongbishua")then ---ͭ��ˢ������ȼ�
    local level= LuaQuery("level")
    if(LuaItemCount("coin")>=level*1000) then
        local r =LuaRandom(100)
        if(LuaQueryTask("TSFT_BUFF_level")==0)then
            LuaGive("coin",-1*level*1000,"TSFT")
        	LuaSetTask("TSFT_BUFF_level",1)
        elseif(LuaQueryTask("TSFT_BUFF_level")==1 and r<60)then
            LuaGive("coin",-1*level*1000,"TSFT")
        	LuaSetTask("TSFT_BUFF_level",2)
        elseif(LuaQueryTask("TSFT_BUFF_level")==2 and r<40)then
            LuaGive("coin",-1*level*1000,"TSFT")
        	LuaSetTask("TSFT_BUFF_level",3)
        elseif(LuaQueryTask("TSFT_BUFF_level")==3 and r<20)then
            LuaGive("coin",-1*level*1000,"TSFT")
        	LuaSetTask("TSFT_BUFF_level",4)
        elseif(LuaQueryTask("TSFT_BUFF_level")==4 and r<10)then
            LuaGive("coin",-1*level*1000,"TSFT")
        	LuaSetTask("TSFT_BUFF_level",5)
        elseif(LuaQueryTask("TSFT_BUFF_level")==5)then
            LuaShowNotify("�㵱ǰ�������Ѿ�����5�����ﵽ��ߣ�")
		else
		    LuaGive("coin",-1*level*1000,"TSFT")
		end
		do_use()--�ؿ��˵�
    else
        LuaShowNotify("��Ҫ@3"..(level*1000).."ͭ��@0����ˢ��������ĵȼ���")
    end
elseif(type=="yuanbaoshua")then  ----Ԫ��ˢ������ȼ�
    local level= LuaQuery("level")
    if(LuaQueryMoney()>=2) then
        local r =LuaRandom(100)
        if(LuaQueryTask("TSFT_BUFF_level")==0)then
            LuaAddYB(1,-2)--ÿ�ο�Ԫ������δ�к�������ʱ���Ϻ�������
        	LuaSetTask("TSFT_BUFF_level",1)
        elseif(LuaQueryTask("TSFT_BUFF_level")==1 and r<80)then
            LuaAddYB(1,-2)--ÿ�ο�Ԫ������δ�к�������ʱ���Ϻ�������
        	LuaSetTask("TSFT_BUFF_level",2)
        elseif(LuaQueryTask("TSFT_BUFF_level")==2 and r<90)then
            LuaAddYB(1,-2)--ÿ�ο�Ԫ������δ�к�������ʱ���Ϻ�������
        	LuaSetTask("TSFT_BUFF_level",3)
        elseif(LuaQueryTask("TSFT_BUFF_level")==3 and r<40)then
            LuaAddYB(1,-2)--ÿ�ο�Ԫ������δ�к�������ʱ���Ϻ�������
        	LuaSetTask("TSFT_BUFF_level",4)
        elseif(LuaQueryTask("TSFT_BUFF_level")==4 and r<30)then
            LuaAddYB(1,-2)--ÿ�ο�Ԫ������δ�к�������ʱ���Ϻ�������
        	LuaSetTask("TSFT_BUFF_level",5)
        elseif(LuaQueryTask("TSFT_BUFF_level")==5)then
            LuaShowNotify("�㵱ǰ�������Ѿ�����5�����ﵽ��ߣ�")
		else
      		LuaAddYB(1,-2)--ÿ�ο�Ԫ������δ�к�������ʱ���Ϻ�������
		end
		LuaSay("ˢ�³ɹ�,ʧȥ2Ԫ��")
		do_use()--�ؿ��˵�
    else
        LuaShowNotify("��Ҫ@32Ԫ��@0����ˢ��������ĵȼ���")
    end
elseif(type=="yuanbaomanji")then
	if(LuaQuery("VIPlv")>=5 and LuaQueryMoney()>=30)then
     	LuaAddYB(1,-30)--ÿ�ο�Ԫ������δ�к�������ʱ���Ϻ�������
        LuaSetTask("TSFT_BUFF_level",5)
	else
	    LuaShowNotify("��Ҫ@330Ԫ��@0���ܽ�������ĵȼ�������5����")
	end
elseif(type=="lingqu")then
 	local tsft_buff_id = 554+LuaQueryTask("TSFT_BUFF_id")
    local tsft_buff_level = LuaQueryTask("TSFT_BUFF_level")

	if(tsft_buff_level ~= 0)then
		LuaGiveBuff(tsft_buff_id,tsft_buff_level)
		LuaShowNotify("��ȡ��@3"..tsft_buff_level.."��"..zt[tsft_buff_id-554][1].."@0��")
		FlushMyInfo("1")      ---ˢ����������
		FlushMyInfo("4")     ---ˢ�������ƶ��ٶ�
	    LuaSetTask("TSFT_BUFF_id",0)   --��ȡ���趨״̬idΪ0����˼�ǿյ�
		LuaSetTask("tsft_cd",GetCurrentTime()) --��¼��ȡʱ��		
	    do_use()--�ؿ��˵�
	else
	    LuaShowNotify("���������״̬����0�����޷���ȡ����ͨ��ͭ��@3ͭ��ˢ�»�Ԫ��ˢ��@0��������1�����ϣ�")
	end

end




LuaOtherSendMenu()
--return 1
end


