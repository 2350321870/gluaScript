NPCINFO = { 
serial="103" ,
base_name="mother3",
icon=2547,
NpcMove=2547,
name="��ħʹ��" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="�ٱ�����,������ǰ��",
LuaType=1,
} 
--����sys��
--sys = require("sys")
moyuUpExp={160,320,640,1280,2560,5120,10240,20480,40960,81920,163840,327680,655360,1310720,2621440,5242880,10485760,20971520,0}
fmDogj={32,96,160,224,288,352,416,480,544,608,672,736,800,1600,3200,6400,12800,25600}
fmDofy={8,16,24,32,40,48,56,64,72,80,88,96,104,208,416,832,1664,3328}
fmDohp={320,640,960,1280,1600,1920,2240,2560,2880,3200,3520,3840,4160,8320,16640,33280,66560,133120}
fmDomp={280,520,760,1000,1240,1480,1720,1960,2200,2440,2680,2020,3160,6320,12640,25280,50560,101120}
fmDoll={24,48,72,96,120,144,168,192,216,240,264,288,312,624,1248,2496,4992,9984}--����
fmDomj={24,48,72,96,120,144,168,192,216,240,264,288,312,624,1248,2496,4992,9984}--����
fmDozh={24,48,72,96,120,144,168,192,216,240,264,288,312,624,1248,2496,4992,9984}--�ǻ�
fmsxs={"����","����","MP","HP","����","����","�ǻ�"}
fmbw={"����","����","ͷ��","�·�","����","Ь��","����","����","����","����"}
--��ʾ��ħ���Բ���
function showzlMenu()    
    AddMenuItem("ѡ��[@7"..fmbw[zlposIndex+0].."@0]��ħ����","")
    z1tLv=LuaQueryTask(zlpos.."����".."lv")
    AddMenuItem("���� @2����+"..z1tLv,"fmDogj")
    z1tLv=LuaQueryTask(zlpos.."����".."lv")
    AddMenuItem("���� @2����+"..z1tLv,"fmDofy")
    z1tLv=LuaQueryTask(zlpos.."MP".."lv")
    AddMenuItem("MP @2����+"..z1tLv,"fmDomp")
    z1tLv=LuaQueryTask(zlpos.."HP".."lv")
    AddMenuItem("HP @2����+"..z1tLv,"fmDohp")
    z1tLv=LuaQueryTask(zlpos.."����".."lv")
    AddMenuItem("���� @2����+"..z1tLv,"fmDoll")
    z1tLv=LuaQueryTask(zlpos.."����".."lv")
    AddMenuItem("���� @2����+"..z1tLv,"fmDomj")
    z1tLv=LuaQueryTask(zlpos.."�ǻ�".."lv")
    AddMenuItem("�ǻ� @2����+"..z1tLv,"fmDozh") 
    AddMenuItem("����","fmDoUpc")    
end

--���ظ�ħ����
function loadfuMo()
for i=1,7 
    do
    v=fmsxs[i]    
    for j=1,10
    do
        local tzlpos1="z"..j
        local loadlv=LuaQueryTask(tzlpos1..v.."lv") 
        if(loadlv>0)then
            if(loadlv<=9)then
                if(LuaCheckBuff(tzlpos1..v)==0)then
                    LuaGiveBuff(tzlpos1..v,loadlv) --���
                end
            else
                if(LuaCheckBuff(tzlpos1..v.."UP")==0)then
                    LuaGiveBuff(tzlpos1..v.."UP",loadlv-9) --���10+
                end
            end 
        end 
    end
end
FlushMyInfo(2)--ˢ�¹���
FlushMyInfo(1)--ˢ�¹���
FlushMyInfo(3)--ˢ�¹���
end

--��ħ��������
function loadfumoUpDown()
    local tlv=LuaQueryTask(zlpos..nowType.."lv")
    local showstr="@2����+"..tlv.." "..nowType
    if(tlv>0)then
        showstr=showstr.."+"..nowValue[tlv].."@0"
    end
    fmexp=LuaQueryTask("fmexp")
    z1tLv=LuaQueryTask(zlpos..nowType.."lv")
    showstr=showstr.." �����@7"..fmexp.."@0  ������"..moyuUpExp[z1tLv+1]..""
    AddMenuItem(showstr,"")
    --local gj=""
    --local gjdown=""
    --if(z1tLv<=17)then
    --    gj="+"..gj..nowValue[z1tLv+1]
    --end
    --if(z1tLv>1)then
    --    gjdown="+"..gjdown..nowValue[z1tLv-1]
    --end
    AddMenuItem("����","fmDoUp")
    AddMenuItem("���� [@3��50Ԫ��@0]","fmDoDown")
    AddMenuItem("����","backfmUpDown")
end

function delay(second)
    local start = GetCurrentTime()
    while GetCurrentTime() - start < second do
        -- ��ѭ����
    end
end

function do_talk(answer)
    --����ħ������
    loadfuMo()
if(answer=="ask")then
	havetask =0
    local z1tLv=0
    local zlvalue=0--��ħ����ֵ
    local zlpos=""
    local zlposIndex=""
    local fmexp=0
    local nowValue={}
    local nowType=""
	local havetask0=0	--Ĭ��û��
	local havetask1=0	--��̾��
	local havetask2=0	--��ɫ�ʺ�
	--local havetask3=0	--��ɫ�˵�
	local havetask4=0
	local level= LuaQuery("level")    
	local day=GetCurrentDay()	
	AddTopSayMenuItem("@7��ħ","")
	AddTopSayMenuItem("[@2ħ��@0]���и�ħ","fumo")
	AddTopSayMenuItem("[@7����@0]��ȡħ��","fumodan")	
	AddTopSayMenuItem("ˢ�¸�ħ","fumoshuaxin")
	
	--AddTopSayMenuItem("@2���Ŷ�����","z4")
	if(LuaQueryStr("country_id")=="100" or LuaQueryStr("country_id")=="101" or LuaQueryStr("country_id")=="102" or LuaQueryStr("country_id")=="103")then
		if(day=="2012-6-28" or day=="2012-6-29" or day=="2012-6-30" or day=="2012-6-31" or day=="2012-7-1" or day=="2012-7-2")then
			AddTopSayMenuItem("@1[��]@0@3��ֵ����","Ac21")
			--AddTopSayMenuItem("@3��������","Ac20")
			AddTopSayMenuItem("@3ս������","Ac22")
		elseif(day=="2012-7-2")then
			AddTopSayMenuItem("@1[��]@0@3��ֵ����","Ac21")
		end
	else
		AddTopSayMenuItem("���޺�������","1111")
	end
	--[[if(LuaQueryStr("country_id")=="400" or LuaQueryStr("country_id")=="401" or LuaQueryStr("country_id")=="402")then
		if(LuaQueryTask("Customer")==88)then
			AddTopSayMenuItem("@4װ������","Bc_1")
			AddTopSayMenuItem("@4Ԫ������","Bc_2")
			AddTopSayMenuItem("@4��Ʒͭ��","Bc_4")
			AddTopSayMenuItem("@4���תְ","Bc_5")
		end
	end]]
		
	
if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(������havetask0=1)
	havetask=0
end
------------------------------------------------
if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==4) then
	AddTopSayMenuItem("����","liaotian","4")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("����","liaotian","0")

end

return 1

---------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("�����ķ����ѱ�Ҫһͳ����") 
elseif(answer=="1111")then
	LuaSay("���޺�������")
elseif(answer=="backfmUpDown")then
    showzlMenu()
elseif(answer=="fumoshuaxin")then
    loadfuMo()
    LuaSay("ˢ�³ɹ�")
elseif(answer=="fumodan")then
    --AddMenuItem("Ԫ��:20%@2ħ�̵�@0[��],80%@3ħ�̵�@0[��] ͭ��:20%@5ħ�̵�@0[С] 80%@7ħ�̵�@0[��]","")
    AddMenuItem("Ԫ��:���[@2ħ�̵�@0] ͭ��:���[@7ħ�̵�@0] ��Ա95���Ż�","")  
    AddMenuItem("[@2��Ա@0]�����̵�x99[2822Ԫ��]","moyueExpyb10")
    AddMenuItem("[@2��Ա@0]�����̵�x99[565Wͭ��]","moyueExptb10")
    AddMenuItem("[@2�¿�@0]һ����ħ��","fumodan1")
    AddMenuItem("�����̵�[30Ԫ��]","moyueExpyb")
	AddMenuItem("�����̵�[6Wͭ��]","moyueExptb")
elseif(answer=="fumodan1")then
    if(LuaCheckBuff("565")==1)then
    local fmexpold=LuaQueryTask("fmexp")
    local numbermyd=LuaItemCount("o_moyueExpyb")--��Ԫ��ħ�̵�  
    local addExp=0
    for i=1,numbermyd do
        
        local getexp=600
        local yb= LuaRandom(100)
        if(yb<=5)then
            getexp=2000
        elseif(yb<=15)then
            getexp=1100
        elseif(yb<=30)then
            getexp=900
        end
        addExp=addExp+getexp   
        
    end
    DelItem("o_moyueExpyb",numbermyd)
    local numbermydtb=LuaItemCount("o_moyueExptb")--��ͭ��ħ�̵�    
    for i=1,numbermydtb do
        local getexp=100
        local yb= LuaRandom(100)
        if(yb<=3)then
            getexp=500
        elseif(yb<=7)then
            getexp=300
        end
        addExp=addExp+getexp
    end
    DelItem("o_moyueExptb",numbermydtb)
    LuaSetTask("fmexp",fmexpold+addExp)  
    if(addExp>0)then
        LuaSay("�ɹ�ʹ��@2ħ�̵�@0x"..numbermyd.."��,@7ħ�̵�@0x"..numbermydtb.."��,�����Ӿ���"..addExp..",�����:"..(fmexpold+addExp).."!")
    else
        LuaSay("������ħ�̵�����!")
    end    
    else
        LuaSay("��ħʹ�ߣ��㲻���¿���Ա,����ʹ�ø���Ȩ!")
    end
    do_talk("fumodan")
elseif(answer=="moyueExpyb")then--Ԫ����ħ��   
    if(LuaFreeBag()>=1)then
    if(LuaQueryMoney()>=30)then		
		LuaAddYB(1,-30)
        LuaGive("o_moyueExpyb",1)
	else
        LuaSay("��ħʹ�ߣ���û���㹻��Ԫ����")  
    end
    do_talk("fumodan")
    else
    LuaSay("��ħʹ�ߣ����ٱ���һ�������ռ�!")
    end
elseif(answer=="moyueExptb")then--ͭ�ҳ�ħ��
    if(LuaFreeBag()>=1)then
    if(LuaItemCount("coin")>=60000)then		
		LuaGive("coin",-60000,"moyueExptb")	
        LuaGive("o_moyueExptb",1)
	else
        LuaSay("��ħʹ�ߣ���û���㹻��ͭ�ң�")
    end
    do_talk("fumodan")
    else
        LuaSay("��ħʹ�ߣ����ٱ���һ�������ռ�!")
    end
elseif(answer=="moyueExpyb10")then--Ԫ����ħ��   
    if(LuaCheckBuff("564")==1 or LuaCheckBuff("565")==1)then
       if(LuaFreeBag()>=1)then
    if(LuaQueryMoney()>=2822)then		
		LuaAddYB(1,-2822)
        LuaGive("o_moyueExpyb",99)
	else
        LuaSay("��ħʹ�ߣ���û���㹻��Ԫ����")  
    end
    do_talk("fumodan")
    else
        LuaSay("��ħʹ�ߣ����ٱ���һ�������ռ�!")
    end
    else
        LuaSay("��ħʹ�ߣ��㲻�ǻ�Ա,����ʹ�ø���Ȩ!")
    end

elseif(answer=="moyueExptb10")then--ͭ�ҳ�ħ��
    if(LuaCheckBuff("564")==1 or LuaCheckBuff("565")==1)then
    if(LuaFreeBag()>=10)then
    if(LuaItemCount("coin")>=5650000)then		
		LuaGive("coin",-5650000,"moyueExptb10")	
        LuaGive("o_moyueExptb",99)
	else
        LuaSay("��ħʹ�ߣ���û���㹻��ͭ�ң�")
    end
    do_talk("fumodan")
    else
        LuaSay("��ħʹ�ߣ����ٱ���һ�������ռ�!")
    end
    else
        LuaSay("��ħʹ�ߣ��㲻�ǻ�Ա,����ʹ�ø���Ȩ!")
    end
elseif(answer=="fumo")then
    --LuaGive("o_moyueExp",100)
    fmexp=LuaQueryTask("fmexp")   
    AddMenuItem("@7��ħ�˵� �����"..fmexp.."","") 
    AddMenuItem("����","fmwq")
    AddMenuItem("����","fmfj")
    AddMenuItem("��Ʒ���","fmsp")
    if(fmexp>=25000)then
        AddMenuItem("25000���� �� @1ħ������@0@2[��]@0*1","huanmydzi") 
    elseif(fmexp>=2000)then
        AddMenuItem("2000���� �� @2ħ�̵�@0*1","huanmydyb") 
    elseif(fmexp>=500)then
        AddMenuItem("500���� �� @7ħ�̵�@0*1","huanmydtb")  
    end
elseif(answer=="fmwq")then
    AddMenuItem("@7ѡ��ħ���� �����"..fmexp.."","") 
    AddMenuItem("���� @2","1")
	AddMenuItem("���� @2","2")
elseif(answer=="fmfj")then
    AddMenuItem("@7ѡ��ħ���� �����"..fmexp.."","") 
    AddMenuItem("ͷ�� @2","3")
	AddMenuItem("�·� @2","4")
	AddMenuItem("���� @2","5")
	AddMenuItem("Ь�� @2","6")
elseif(answer=="fmsp")then
    AddMenuItem("@7ѡ��ħ���� �����"..fmexp.."","") 
    AddMenuItem("���� @2","7")
	AddMenuItem("���� @2","8")
    AddMenuItem("���� @2","9")
	AddMenuItem("���� @2","10")
elseif(answer=="fmDoUp")then    
    z1tLv=LuaQueryTask(zlpos..nowType.."lv")
    local nextlv=z1tLv+1
    local needExp=moyuUpExp[nextlv]
    if(nextlv>18)then
        loadfumoUpDown()
        LuaSay("�Ѵ���ߵȼ�!")
    elseif(fmexp<needExp)then
        loadfumoUpDown()
        LuaSay("���鲻��!")
    else
        LuaSetTask(zlpos..nowType.."lv",nextlv)
        LuaSetTask("fmexp",fmexp-needExp)
        loadfumoUpDown()
        LuaDeleteBuff(zlpos..nowType)--�Ƴ�
        LuaDeleteBuff(zlpos..nowType.."UP")--�Ƴ� 
        --loadfuMo()
        LuaSay("�����ɹ�+"..nextlv)
        if(nextlv>5)then
            LuaNotice("��ϲ����@1"..LuaQueryStr("name").."@0��[@3"..(fmbw[zlposIndex+0]).."-"..nowType.."@0]��ħ��@2����+"..nextlv.."@0")
        end
    end    
    
elseif(answer=="fmDoDown")then    
    z1tLv=LuaQueryTask(zlpos..nowType.."lv")
    local lastLv=z1tLv-1
    local getExp=moyuUpExp[z1tLv]
    if(z1tLv<=0)then
        loadfumoUpDown()
        LuaSay("�Ѵ���͵ȼ�0!")
    elseif(getExp<=0)then
        loadfumoUpDown()
        LuaSay("�޷���ȡ����!")
    else
        if(LuaQueryMoney()>=50)then
            LuaAddYB(1,-50,"fmDoDown")
            LuaSetTask(zlpos..nowType.."lv",lastLv)               
            LuaSetTask("fmexp",fmexp+getExp)        
            loadfumoUpDown()
            LuaDeleteBuff(zlpos..nowType)--�Ƴ�
            LuaDeleteBuff(zlpos..nowType.."UP")--�Ƴ� 
        else
            LuaSay("Ԫ��������������")
        end
    end    
    
elseif(answer=="fmDoUpc")then
    do_talk("fumo")
elseif(answer=="huanmydyb")then--Ԫ��
    fmexp=LuaQueryTask("fmexp")
    local lostexp=2000
    if(fmexp>=lostexp)then
        LuaSetTask("fmexp",fmexp-lostexp)        
        LuaSay("�һ��ɹ�")
        LuaGive("o_moyueExpyb",1)
    else
        LuaSay("�һ�ʧ��,����ز���"..lostexp)
    end
    do_talk("fumo")
elseif(answer=="huanmydzi")then--ħ������
    fmexp=LuaQueryTask("fmexp")
    local lostexp=25000
    if(fmexp>=lostexp)then
        LuaSetTask("fmexp",fmexp-lostexp)        
        LuaSay("�һ��ɹ�")
        LuaGive("o_present114",1)
    else
        LuaSay("�һ�ʧ��,����ز���"..lostexp)
    end
    do_talk("fumo")
elseif(answer=="huanmydtb")then--ͭ��
    fmexp=LuaQueryTask("fmexp")
    local lostexp=500
    if(fmexp>=lostexp)then
        LuaSetTask("fmexp",fmexp-lostexp)
        LuaSay("�һ��ɹ�")
        LuaGive("o_moyueExptb",1)
    else
        LuaSay("�һ�ʧ��,����ز���"..lostexp)
    end
    do_talk("fumo")
elseif(answer=="fmDogj")then    
    nowValue=fmDogj
    nowType="����"
    loadfumoUpDown()
elseif(answer=="fmDofy")then    
    nowValue=fmDofy
    nowType="����"
    loadfumoUpDown()
elseif(answer=="fmDomp")then    
    nowValue=fmDomp
    nowType="MP"
    loadfumoUpDown()
elseif(answer=="fmDohp")then
    nowValue=fmDohp
    nowType="HP"
    loadfumoUpDown()
elseif(answer=="fmDoll")then
    nowValue=fmDoll
    nowType="����"
    loadfumoUpDown()
elseif(answer=="fmDomj")then
    nowValue=fmDomj
    nowType="����"
    loadfumoUpDown()
elseif(answer=="fmDozh")then
    nowValue=fmDozh
    nowType="�ǻ�"
    loadfumoUpDown()
elseif(answer=="z1sj")then	
	local needC=(z1lv+1)*10
	if(LuaQueryMoney()>=needC)then
		if((z1exp+1)>=100 and (z1lv+1)<=9)then
			LuaSetTask("z1lvexp",0)
			LuaSetTask("z1lv",z1lv+1)
			if(LuaCheckBuff("570")==1)then
				LuaDeleteBuff("570")--�Ƴ���
			end
			LuaGiveBuff("570",z1lv+1) --�����
			FlushMyInfo(1)--ˢ�¹���
			LuaAddYB(1,-1*needC)
		elseif((z1lv+1)<=9)then
			LuaSetTask("z1lvexp",z1exp+1)
			LuaAddYB(1,-1*needC)
		else
			LuaSay("��ǰħ��������")
		end
	else
		LuaSay("Ԫ������")
	end
	do_talk("z1")
elseif(answer=="z1sj10")then
	local needC=(z1lv+1)*100
	if(LuaQueryMoney()>=needC)then
		if((z1exp+10)>=100)then
			LuaSetTask("z1lvexp",0)
			LuaSetTask("z1lv",z1lv+1)
            if(LuaCheckBuff("570")==1)then
				LuaDeleteBuff("570")--�Ƴ���
			end
			LuaGiveBuff("570",z1lv+1) --�����
			FlushMyInfo(1)--ˢ�¹���
		else
			LuaSetTask("z1lvexp",z1exp+10)
		end
		LuaAddYB(1,-1*needC)
	else
		LuaSay("Ԫ������")
	end
	do_talk("z1")	
elseif(answer=="z1yc")then
	if(LuaCheckBuff("570")==1)then
		LuaDeleteBuff("570")--�Ƴ���
        LuaGive("o_present"..(106+z1lv),1)
        LuaGive("o_moyueExp",z1exp)
        LuaSetTask("z1lv",0)
        LuaSetTask("z1lvexp",0)
		FlushMyInfo(1)--ˢ�¹���
		LuaSay("��жħ��ɹ�")
	else
		LuaSay("δ��ħ����")
	end
elseif(answer=="z211")then
	z2lv=LuaQueryTask("z2lv")
	z2exp=LuaQueryTask("z2lvexp")
	if(z2lv<9)then
		AddMenuItem("��ǰLv"..z2lv.."@2����"..(z2lv*280).." @7exp:100/"..z2exp.."@0 Lv"..(z2lv+1).."@2����"..((z2lv+1)*280),"")
		AddMenuItem("ѵ��x1   "..((z2lv+1)*10).."Ԫ��","z2sj")
		AddMenuItem("ѵ��x10 "..((z2lv+1)*100).."Ԫ��","z2sj10")
	else
		AddMenuItem("Lv"..z2lv.." Max @2����"..(z2lv*280),"")
	end
	AddMenuItem("�ر���","z2yc")

elseif(answer=="z2sj10")then
	local needC=(z2lv+1)*100
	if(LuaQueryMoney()>=needC)then
		if((z2exp+10)>=100)then
		LuaSetTask("z2lvexp",0)
		LuaSetTask("z2lv",z2lv+1)
		else
		LuaSetTask("z2lvexp",z2exp+10)
		end
		LuaAddYB(1,-1*needC)
	else
		LuaSay("Ԫ������")
	end
	do_talk("z2")	
elseif(answer=="Bc_6")then
	local level =LuaQuery("level")
	LuaSay("�������ϻ�������Ǳ�ʾ�����Ǹ�⣬��������ڡ��ص�������NPC��������ȡ1������������ᡣ")
	LuaSay("50�����������1000W����40�����������800W����40�����������600W����")
	if(LuaCheckCreateTime("2012-5-22-1-10-0")>0)then
		if(LuaQueryTask("Bc_6")==0)then
			if(LuaFreeBag()>=1)then
				LuaSay("��ʾ��������ĵȼ���Ʒδˢ�£��볢�����������߼���")
				LuaGive("o_state060j",1,"Bc_6")
				if(level>=50)then
					LuaAddJx("combat_exp",10000000,"Bc_6")
				elseif(level>=40)then
					LuaAddJx("combat_exp",8000000,"Bc_6")
				else
					LuaAddJx("combat_exp",6000000,"Bc_6")
				end
				LuaSetTask("Bc_6",99)
				FlushMyInfo(2)	--ˢ��������Ϣ
			else
				LuaSay("��ʾ����ı����ռ䲻��1������������������ȡŶ@!")
			end
		else
			LuaSay("���Ѿ���ȡ���ò�����")
		end
	else
		LuaSay("�˽�ɫ����2012��5��22��1��10��֮�󴴽��ģ�������ȡ�����")
	end
	
elseif(answer=="Bc_1")then
	if(LuaCheckCreateTime("2012-5-21-20-30-0")>0)then
		if(LuaQueryTask("Bc_1")==0)then
			if(LuaFreeBag()>=12)then
				if(level>=50)then
					LuaGive("e_falchion153",1,3,"Bc_1")
					LuaGive("e_shield153",1,3,"Bc_1")
					LuaGive("e_sword153",1,3,"Bc_1")
					LuaGive("e_knife153",1,3,"Bc_1")
					LuaGive("e_book153",1,3,"Bc_1")
					LuaGive("e_pen153",1,3,"Bc_1")
					LuaGive("e_head153",1,3,"Bc_1")		--��ս��
					LuaGive("e_clothes153",1,3,"Bc_1")	--��ս��
					LuaGive("e_pants153",1,3,"Bc_1")		--��ս����
					LuaGive("e_shoes153",1,3,"Bc_1")		--��սѥ	
					LuaGive("e_earring153",1,3,"Bc_1")	--��ս��׹
					LuaGive("e_necklace153",1,3,"Bc_1")
				elseif(level>=40)then
					
					LuaGive("e_falchion151",1,2,"Bc_1")
					LuaGive("e_shield151",1,2,"Bc_1")
					LuaGive("e_sword151",1,2,"Bc_1")
					LuaGive("e_knife151",1,2,"Bc_1")
					LuaGive("e_book151",1,2,"Bc_1")
					LuaGive("e_pen151",1,2,"Bc_1")
					LuaGive("e_head151",1,2,"Bc_1")		--ǿ�߹�
					LuaGive("e_clothes151",1,2,"Bc_1")	--ǿ����
					LuaGive("e_pants151",1,2,"Bc_1")		--ǿ�߻���
					LuaGive("e_shoes151",1,2,"Bc_1")		--ǿ��ѥ	
					LuaGive("e_earring151",1,2,"Bc_1")	--ǿ�߶�׹
					LuaGive("e_necklace151",1,2,"Bc_1")
				else
					
					LuaGive("e_falchion166",1,2,"Bc_1")
					LuaGive("e_shield166",1,2,"Bc_1")
					LuaGive("e_sword166",1,2,"Bc_1")
					LuaGive("e_knife166",1,2,"Bc_1")
					
					LuaGive("e_book166",1,2,"Bc_1")
					LuaGive("e_pen166",1,2,"Bc_1")
					
					LuaGive("e_head166",1,2,"Bc_1")		--ǿ�߹�
					LuaGive("e_clothes166",1,2,"Bc_1")	--ǿ����
					LuaGive("e_pants166",1,2,"Bc_1")		--ǿ�߻���
					LuaGive("e_shoes166",1,2,"Bc_1")		--ǿ��ѥ	
					LuaGive("e_earring166",1,2,"Bc_1")	--ǿ�߶�׹
					LuaGive("e_necklace166",1,2,"Bc_1")
				end
				LuaSetTask("Bc_1",99)
				if(LuaQueryTask("Bc_1")==99 and  LuaQueryTask("Bc_2")==99 and  LuaQueryTask("Bc_4")==99 and  LuaQueryTask("Bc_5")==99)then
					LuaSetTask("Customer",99)
					UpdateMenu()
				end
			else
				LuaSay("��ʾ����ı����ռ䲻��11������������������ȡŶ@!")
			end
		else
			LuaSay("���Ĳ����Ѿ���ȡ���ˣ����������Ĳ����ʾ�����Ǹ��")
		end
	else
		LuaSay("�˽�ɫ����2012��5��21��20��30��֮�󴴽��ģ�������ȡ�����")
	end
elseif(answer=="Bc_2")then
	if(LuaCheckCreateTime("2012-5-21-20-30-0")>0)then
		if(LuaQueryTask("Bc_2")==0)then
			local a = LuaQueryCost()
			LuaSay("�������ǶԱ��ι��ϸ��������Ĳ����ʾ�����Ǹ�⣬���ǽ�����֮ǰ�����ѵ�Ԫ��ȫ�����")
			LuaSay("֮ǰ���Ѿ�������"..a.."Ԫ��������ȫ�������"..a.."Ԫ������ע�����")
			if(a==0)then
				LuaSay("���ϵͳ���ͽ��500")
				LuaAddYB(2,500)
			else
				LuaAddYB(1,a)
			end
			LuaSetTask("Bc_2",99)
			if(LuaQueryTask("Bc_1")==99 and  LuaQueryTask("Bc_2")==99 and  LuaQueryTask("Bc_4")==99 and  LuaQueryTask("Bc_5")==99)then
				LuaSetTask("Customer",99)
				UpdateMenu()
			end
		else
			LuaSay("���Ĳ����Ѿ���ȡ���ˣ����������Ĳ����ʾ�����Ǹ��")
		end
	else
		LuaSay("�˽�ɫ����2012��5��21��20��30��֮�󴴽��ģ�������ȡ�����")
	end
elseif(answer=="Bc_3")then
	if(LuaCheckCreateTime("2012-5-21-20-30-0")>0)then
		if(LuaQueryTask("Bc_3")==0)then
			LuaGive("coin",10000,"Bc_3")
			LuaSetTask("Bc_3",99)
		else
			LuaSay("���Ĳ����Ѿ���ȡ���ˣ����������Ĳ����ʾ�����Ǹ��")
		end
	else
		LuaSay("�˽�ɫ����2012��5��21��20��30��֮�󴴽��ģ�������ȡ�����")
	end
elseif(answer=="Bc_4")then
	if(LuaCheckCreateTime("2012-5-21-20-30-0")>0)then
		if(LuaQueryTask("Bc_4")==0)then
			if(LuaFreeBag()>=4)then
				LuaSay("�õ�������Ʒ�������а����ѹ�ͭ��1Wͭ��")
				LuaGive("o_state061j",3,"Bc_4")
				LuaGive("o_gendery",3,"Bc_4")
				if(level>=50)then
					LuaGive("o_present031",10,"Bc_4")
					LuaGive("o_ybsc002j",50,"Bc_4")
					LuaGive("coin",400000,"Bc_4")
					LuaGive("coin",10000,"Bc_4")
				elseif(level>=40)then
					LuaGive("o_present031",6,"Bc_4")
					LuaGive("o_ybsc002j",40,"Bc_4")
					LuaGive("coin",300000,"Bc_4")
					LuaGive("coin",10000,"Bc_4")
				elseif(level>=30)then
					LuaGive("o_present031",4,"Bc_4")
					LuaGive("o_ybsc002j",20,"Bc_4")
					LuaGive("coin",200000,"Bc_4")
					LuaGive("coin",10000,"Bc_4")
				end
				LuaSetTask("Bc_4",99)
				if(LuaQueryTask("Bc_1")==99 and  LuaQueryTask("Bc_2")==99  and  LuaQueryTask("Bc_4")==99 and  LuaQueryTask("Bc_5")==99)then
					LuaSetTask("Customer",99)
					UpdateMenu()
				end
			else
				LuaSay("��ʾ����ı����ռ䲻��4������������������ȡŶ@!")
			end
		else
			LuaSay("���Ĳ����Ѿ���ȡ���ˣ����������Ĳ����ʾ�����Ǹ��")
		end
	else
		LuaSay("�˽�ɫ����2012��5��21��20��30��֮�󴴽��ģ�������ȡ�����")
	end
elseif(answer=="Bc_5")then
	if(LuaCheckCreateTime("2012-5-21-20-30-0")>0)then
		LuaSay("ÿ����ɫ���������תְ3��")
		if(LuaQueryTask("Bc_5")<=3)then
			if(EquipInfo(1)=="" and EquipInfo(2)=="") then
				AddMenuItem("@7תְ","")
				if(LuaQueryStr("class")~="wu") then
				AddMenuItem("תְΪ����","xiage_ag","") 
				end
				if(LuaQueryStr("class")~="xian") then
				AddMenuItem("תְΪıʿ","moushi_ag","")
				end
				if(LuaQueryStr("class")~="shen") then
				AddMenuItem("תְΪսʿ","zhanshi_ag","")
				end
				
			else
			LuaSay("�ص��������ܱ�Ǹ��������@3���������������͸���������ж�º�@0���ܽ���תְ��")
			end
		else
			LuaSay("�ý�ɫ�Ѿ�תְ��3����")
		end
	else
		LuaSay("�˽�ɫ����2012��5��21��20��30��֮�󴴽��ģ�������ȡ�����")
	end
		
elseif(answer=="xiage_ag" and LuaQueryStr("class")~="wu") then
	local level=LuaQuery("level")
	local quan_number=2^(floor(level/10)-1)
	LuaSet("class","wu")
	ResetSkill()		--���ü�����
	DelItem("o_changeclass1y",quan_number)
	FlushMyInfo(2)	--ˢ��������Ϣ
	LuaLogRecord("ְҵ","10","ְҵ","ѡ��",3) --10�� ѡ��ְҵ 0��ְҵ 1ս 2ıʿ 3����
	LuaSay("��ʾ����ɹ���תְ��Ϊ�����͡�")
	LuaAddTask("Bc_5",1)
	if(LuaQueryTask("Bc_5")>3)then
		LuaSetTask("Bc_5",99)
		if(LuaQueryTask("Bc_1")==99 and  LuaQueryTask("Bc_2")==99 and  LuaQueryTask("Bc_4")==99 and  LuaQueryTask("Bc_5")==99)then
			LuaSetTask("Customer",99)
			UpdateMenu()
		end
	end

elseif(answer=="moushi_ag" and LuaQueryStr("class")~="xian") then
	local level=LuaQuery("level")
	local quan_number=2^(floor(level/10)-1)
        LuaSet("class","xian")
	ResetSkill()
	DelItem("o_changeclass1y",quan_number)
	FlushMyInfo(2)
	LuaLogRecord("ְҵ","10","ְҵ","ѡ��",2)
	LuaSay("��ʾ����ɹ���תְ��Ϊ��ıʿ��")
	LuaAddTask("Bc_5",1)
	if(LuaQueryTask("Bc_5")>3)then
		LuaSetTask("Bc_5",99)
		if(LuaQueryTask("Bc_1")==99 and  LuaQueryTask("Bc_2")==99 and  LuaQueryTask("Bc_4")==99 and  LuaQueryTask("Bc_5")==99)then
			LuaSetTask("Customer",99)
			UpdateMenu()
		end
	end
elseif(answer=="zhanshi_ag" and LuaQueryStr("class")~="shen") then
	local level=LuaQuery("level")
	local quan_number=2^(floor(level/10)-1)
        LuaSet("class","shen")
	ResetSkill()
	DelItem("o_changeclass1y",quan_number)
	FlushMyInfo(2)
	LuaLogRecord("ְҵ","10","ְҵ","ѡ��",1)
	LuaSay("��ʾ����ɹ���תְ��Ϊ��սʿ��")
	LuaAddTask("Bc_5",1)
	if(LuaQueryTask("Bc_5")>3)then
		LuaSetTask("Bc_5",99)
		if(LuaQueryTask("Bc_1")==99 and  LuaQueryTask("Bc_2")==99 and   LuaQueryTask("Bc_4")==99 and  LuaQueryTask("Bc_5")==99)then
			LuaSetTask("Customer",99)
			UpdateMenu()
		end
	end

elseif(answer=="Ac20")then --����1������������1�����ƽ���1��
	if(LuaCheckCreateTime("2012-5-24-9-0-0")>0)then
		LuaSay("Ϊ����ף��ͳһOL�������ɹ����ش������Ƴ��������ͻ��")
		LuaSay("��������һ�ڼ�ÿ����ڽ�����NPC����ʹ����ȡ����1������������1�����ƽ���1��")
		if(GetCurrentDay()~=LuaQueryStrTask("Ac20day")) then
			LuaSetTask("Ac20",0)
		end
		if(LuaQueryTask("Ac20")==0)then
			if(LuaFreeBag()>=3)then
				LuaGive("o_box001j",1,"Ac18")
				LuaGive("o_box004j",1,"Ac18")
				LuaGive("o_box005j",1,"Ac18")
				LuaSetTask("Ac20",99)
				LuaSetTask("Ac20day",GetCurrentDay())
			else
				LuaSay("�뱣����������")
			end
		else
			LuaSay("����ʹ�ߣ�����������Ѿ���ȡ���˺������佱����Ŷ@!")
		end
	else
		LuaSay("���������ֻ�����ں���֮ǰ�Ľ�ɫ��ȡ�������½⣡�˽�ɫΪ�½���ɫ��")
	end
elseif(answer=="Ac21")then--��ֵ
		local day=GetCurrentDay()
		local type = 1
		if(day=="2012-6-28")then
			local a = LuaRechargeQueryCount(39,"Tcz201201061")
			local b=floor(a*0.5)
			LuaSay("��ͳһOL�������ɹ������Խ���͵�Խ�࣡")
			if(a>=1000)then
				LuaSay("��ܰ��ʾ�������ճ�ֵ��"..a.."Ԫ��������"..b.."Ԫ����ϵͳ���影��")
				LuaAddYB(type,b)
				LuaRechargeDel(39,a)
			else
				LuaSay("@5��ܰ��ʾ����������ֵ����1000Ԫ�������Ѿ���ȡ���ý�����,ֻҪ��ֵ�ﵽ1000Ԫ�������ս�����50%Ԫ���Ĵ���")
			end
		elseif(day=="2012-6-29")then
			--[[local a = LuaRechargeQueryCount(40,"Tcz201201062")
			local b=floor(a*0.5)
			LuaSay("��ͳһOL�������ɹ������Խ���͵�Խ�࣡")
			if(a>=1000)then
				LuaSay("��ܰ��ʾ�������ճ�ֵ��"..a.."Ԫ��������"..b.."Ԫ����ϵͳ���影��")
				LuaAddYB(type,b)
				LuaRechargeDel(40,a)
			else
				LuaSay("@5��ܰ��ʾ����������ֵ����1000Ԫ�������Ѿ���ȡ���ý�����,ֻҪ��ֵ�ﵽ1000Ԫ�������ս�����50%Ԫ���Ĵ���")
			end]]
			LuaSay("ֻҪ���ճ�ֵ�ﵽ1000Ԫ�����ϣ����������ȡ50%�Ĵ���Ŷ")
		elseif(day=="2012-6-30")then
			local a = LuaRechargeQueryCount(41,"Tcz201201063")
			local b=floor(a*0.5)
			LuaSay("��ͳһOL�������ɹ������Խ���͵�Խ�࣡")
			if(a>=1000)then
				LuaSay("��ܰ��ʾ�������ճ�ֵ��"..a.."Ԫ��������"..b.."Ԫ����ϵͳ���影��")
				LuaAddYB(type,b)
				LuaRechargeDel(41,a)
			else
				LuaSay("@5��ܰ��ʾ����������ֵ����1000Ԫ�������Ѿ���ȡ���ý�����,ֻҪ��ֵ�ﵽ1000Ԫ�������ս�����50%Ԫ���Ĵ���")
			end
		elseif(day=="2012-6-31")then
			local a = LuaRechargeQueryCount(42,"Tcz201201064")
			local b=floor(a*0.5)
			LuaSay("��ͳһOL�������ɹ������Խ���͵�Խ�࣡")
			if(a>=1000)then
				LuaSay("��ܰ��ʾ�������ճ�ֵ��"..a.."Ԫ��������"..b.."Ԫ����ϵͳ���影��")
				LuaAddYB(type,b)
				LuaRechargeDel(42,a)
			else
				LuaSay("@5��ܰ��ʾ����������ֵ����1000Ԫ�������Ѿ���ȡ���ý�����,ֻҪ��ֵ�ﵽ1000Ԫ�������ս�����50%Ԫ���Ĵ���")
			end
		elseif(day=="2012-7-1")then
			local a = LuaRechargeQueryCount(43,"Tcz201201065")
			local b=floor(a*0.5)
			LuaSay("��ͳһOL�������ɹ������Խ���͵�Խ�࣡")
			if(a>=1000)then
				LuaSay("��ܰ��ʾ�������ճ�ֵ��"..a.."Ԫ��������"..b.."Ԫ����ϵͳ���影��")
				LuaAddYB(type,b)
				LuaRechargeDel(43,a)
			else
				LuaSay("@5��ܰ��ʾ����������ֵ����1000Ԫ�������Ѿ���ȡ���ý�����,ֻҪ��ֵ�ﵽ1000Ԫ�������ս�����50%Ԫ���Ĵ���")
			end
		elseif(day=="2012-7-2")then
			local a = LuaRechargeQueryCount(44,"Tcz201201066")
			local b=floor(a*0.5)

			local c = LuaRechargeQueryCount(42,"Tcz201201064")
			local d=floor(c*0.5)

			if(a>0)then
				LuaSay("��ͳһOL�������ɹ������Խ���͵�Խ�࣡")
				if(a>=1000)then
					LuaSay("��ܰ��ʾ�������ճ�ֵ��"..a.."Ԫ��������"..b.."Ԫ����ϵͳ���影��")
					LuaAddYB(type,b)
					LuaRechargeDel(44,a)
				else
					LuaSay("@5��ܰ��ʾ����������ֵ����1000Ԫ�������Ѿ���ȡ���ý�����,ֻҪ��ֵ�ﵽ1000Ԫ�������ս�����50%Ԫ���Ĵ���")
				end
			else
				LuaSay("��ͳһOL�������ɹ������Խ���͵�Խ�࣡")
				if(c>=1000)then
					LuaSay("��ܰ��ʾ����6��30�ճ�ֵ��"..c.."Ԫ��������"..d.."Ԫ����ϵͳ���影��")
					LuaAddYB(type,d)
					LuaRechargeDel(42,c)
				else
					LuaSay("@5��ܰ��ʾ��6��30������ֵ����1000Ԫ�������Ѿ���ȡ���ý�����,ֻҪ��ֵ�ﵽ1000Ԫ�������ս�����50%Ԫ���Ĵ���")
				end
			end

			
			
			
		else
			LuaSay("�ʱ���ѹ�")
		end

			

elseif(answer=="Ac22")then
--1��˫������������������ȡ�����ɵ���Ч��
--2�����굤*2��������*2
	if(LuaCheckCreateTime("2012-6-29-0-0-0")>0)then
		AddMenuItem("@7ս������","")
		AddMenuItem("@5��ȼս��","Ac22_1")
		AddMenuItem("@5ս������","Ac22_2")
	else
		LuaSay("�˽�ɫ����2012��6��29��0ʱ0��0��֮�󴴽����ܲμӴ˻")
	end
	elseif(answer=="Ac22_1")then
		LuaSay("ս�𲻶ϣ�û�и�ǿ��������ô�����������չ˺��Լ�����������������һСʱ��@2˫������@0��@2˫������@0�ɣ�ע��ʱ���ǲ��ܵ��ӵ�Ŷ")
		LuaSay(".....")
		LuaSay("...")
		LuaSay(".")
		LuaSay("��ϲ���Ѿ���ó���һСʱ��@2˫������@0��@2˫������@0״̬")
		LuaGiveBuff("450",1)
		LuaGiveBuff("453",1)
	elseif(answer=="Ac22_2")then
		LuaSay("��ڼ������Ե�����������ȡ@2ǿ��ʯ@0���š�@2������һ���ϰ�@0һ��Ŷ��������ĸ�ǿ��@!")	
		--if(GetCurrentDay()~=LuaQueryStrTask("Ac22_2day")) then
			--LuaSetTask("Ac22_2",0)
		--end
		if(LuaQueryStr("country_id")=="100" or LuaQueryStr("country_id")=="101")then
			if(LuaQueryTask("Ac22_2")==0)then
				if(LuaQuery("level")>=30)then
					if(LuaFreeBag()>=2)then
						LuaSay("����ʹ�ߣ�����Ŀ�����������⣬ͷ�����ƣ������вƽ���֮�գ�")
						LuaGive("o_ybsc002j",2,"Ac22_2")
						LuaGive("o_present032",1,"Ac22_2")
						LuaSetTask("Ac22_2",99)
						LuaSetTask("Ac22_2day",GetCurrentDay())
					else
						LuaSay("��ʾ����ı����ռ䲻��2������������������ȡŶ@!")
					end
				else
					LuaSay("30�����ϵ��û��ſ�����ȡ�ν���Ŷ")
				end
			else
				LuaSay("����ʹ�ߣ��������Ѿ���ȡ����ǿ��ʯ���������ϰ�@!")
			end
		else
			if(LuaQueryTask("Ac22_3")==0)then
				if(LuaQuery("level")>=30)then
					if(LuaFreeBag()>=2)then
						LuaSay("����ʹ�ߣ�����Ŀ�����������⣬ͷ�����ƣ������вƽ���֮�գ�")
						LuaGive("o_ybsc002j",2,"Ac22_2")
						LuaGive("o_present032",1,"Ac22_2")
						LuaSetTask("Ac22_3",99)
						LuaSetTask("Ac22_2day",GetCurrentDay())
					else
						LuaSay("��ʾ����ı����ռ䲻��2������������������ȡŶ@!")
					end
				else
					LuaSay("30�����ϵ��û��ſ�����ȡ�ν���Ŷ")
				end
			else
				LuaSay("����ʹ�ߣ��������Ѿ���ȡ����ǿ��ʯ���������ϰ�@!")
			end
		end
else  
    --��ħ������ֵ
    zlposIndex=answer
    zlpos="z"..answer
    showzlMenu()
end
LuaSendMenu()
return 1
end 

