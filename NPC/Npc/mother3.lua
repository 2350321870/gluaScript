NPCINFO = { 
serial="103" ,
base_name="mother3",
icon=2547,
NpcMove=2547,
name="附魔使者" ,
iconaddr=1 ,
butt="5|5|60" ,
name_color="CEFFCE" ,
lastsay="临兵斗者,皆阵列前行",
LuaType=1,
} 
--加载sys库
--sys = require("sys")
moyuUpExp={160,320,640,1280,2560,5120,10240,20480,40960,81920,163840,327680,655360,1310720,2621440,5242880,10485760,20971520,0}
fmDogj={32,96,160,224,288,352,416,480,544,608,672,736,800,1600,3200,6400,12800,25600}
fmDofy={8,16,24,32,40,48,56,64,72,80,88,96,104,208,416,832,1664,3328}
fmDohp={320,640,960,1280,1600,1920,2240,2560,2880,3200,3520,3840,4160,8320,16640,33280,66560,133120}
fmDomp={280,520,760,1000,1240,1480,1720,1960,2200,2440,2680,2020,3160,6320,12640,25280,50560,101120}
fmDoll={24,48,72,96,120,144,168,192,216,240,264,288,312,624,1248,2496,4992,9984}--力量
fmDomj={24,48,72,96,120,144,168,192,216,240,264,288,312,624,1248,2496,4992,9984}--敏捷
fmDozh={24,48,72,96,120,144,168,192,216,240,264,288,312,624,1248,2496,4992,9984}--智慧
fmsxs={"攻击","防御","MP","HP","力量","敏捷","智慧"}
fmbw={"右手","左手","头盔","衣服","裤子","鞋子","耳环","项链","坐骑","宠物"}
--显示附魔属性操作
function showzlMenu()    
    AddMenuItem("选择[@7"..fmbw[zlposIndex+0].."@0]附魔属性","")
    z1tLv=LuaQueryTask(zlpos.."攻击".."lv")
    AddMenuItem("攻击 @2紫玉+"..z1tLv,"fmDogj")
    z1tLv=LuaQueryTask(zlpos.."防御".."lv")
    AddMenuItem("防御 @2紫玉+"..z1tLv,"fmDofy")
    z1tLv=LuaQueryTask(zlpos.."MP".."lv")
    AddMenuItem("MP @2紫玉+"..z1tLv,"fmDomp")
    z1tLv=LuaQueryTask(zlpos.."HP".."lv")
    AddMenuItem("HP @2紫玉+"..z1tLv,"fmDohp")
    z1tLv=LuaQueryTask(zlpos.."力量".."lv")
    AddMenuItem("力量 @2紫玉+"..z1tLv,"fmDoll")
    z1tLv=LuaQueryTask(zlpos.."敏捷".."lv")
    AddMenuItem("敏捷 @2紫玉+"..z1tLv,"fmDomj")
    z1tLv=LuaQueryTask(zlpos.."智慧".."lv")
    AddMenuItem("智慧 @2紫玉+"..z1tLv,"fmDozh") 
    AddMenuItem("返回","fmDoUpc")    
end

--加载附魔属性
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
                    LuaGiveBuff(tzlpos1..v,loadlv) --添加
                end
            else
                if(LuaCheckBuff(tzlpos1..v.."UP")==0)then
                    LuaGiveBuff(tzlpos1..v.."UP",loadlv-9) --添加10+
                end
            end 
        end 
    end
end
FlushMyInfo(2)--刷新攻防
FlushMyInfo(1)--刷新攻防
FlushMyInfo(3)--刷新攻防
end

--附魔升级降级
function loadfumoUpDown()
    local tlv=LuaQueryTask(zlpos..nowType.."lv")
    local showstr="@2紫玉+"..tlv.." "..nowType
    if(tlv>0)then
        showstr=showstr.."+"..nowValue[tlv].."@0"
    end
    fmexp=LuaQueryTask("fmexp")
    z1tLv=LuaQueryTask(zlpos..nowType.."lv")
    showstr=showstr.." 经验池@7"..fmexp.."@0  升级需"..moyuUpExp[z1tLv+1]..""
    AddMenuItem(showstr,"")
    --local gj=""
    --local gjdown=""
    --if(z1tLv<=17)then
    --    gj="+"..gj..nowValue[z1tLv+1]
    --end
    --if(z1tLv>1)then
    --    gjdown="+"..gjdown..nowValue[z1tLv-1]
    --end
    AddMenuItem("升级","fmDoUp")
    AddMenuItem("降级 [@3需50元宝@0]","fmDoDown")
    AddMenuItem("返回","backfmUpDown")
end

function delay(second)
    local start = GetCurrentTime()
    while GetCurrentTime() - start < second do
        -- 空循环体
    end
end

function do_talk(answer)
    --加载魔玉属性
    loadfuMo()
if(answer=="ask")then
	havetask =0
    local z1tLv=0
    local zlvalue=0--附魔属性值
    local zlpos=""
    local zlposIndex=""
    local fmexp=0
    local nowValue={}
    local nowType=""
	local havetask0=0	--默认没有
	local havetask1=0	--感叹号
	local havetask2=0	--黄色问号
	--local havetask3=0	--灰色菜单
	local havetask4=0
	local level= LuaQuery("level")    
	local day=GetCurrentDay()	
	AddTopSayMenuItem("@7附魔","")
	AddTopSayMenuItem("[@2魔玉@0]进行附魔","fumo")
	AddTopSayMenuItem("[@7购买@0]获取魔蕴","fumodan")	
	AddTopSayMenuItem("刷新附魔","fumoshuaxin")
	
	--AddTopSayMenuItem("@2四门兜底阵","z4")
	if(LuaQueryStr("country_id")=="100" or LuaQueryStr("country_id")=="101" or LuaQueryStr("country_id")=="102" or LuaQueryStr("country_id")=="103")then
		if(day=="2012-6-28" or day=="2012-6-29" or day=="2012-6-30" or day=="2012-6-31" or day=="2012-7-1" or day=="2012-7-2")then
			AddTopSayMenuItem("@1[热]@0@3充值大反馈","Ac21")
			--AddTopSayMenuItem("@3三箱相送","Ac20")
			AddTopSayMenuItem("@3战火蔓延","Ac22")
		elseif(day=="2012-7-2")then
			AddTopSayMenuItem("@1[热]@0@3充值大反馈","Ac21")
		end
	else
		AddTopSayMenuItem("暂无合区内容","1111")
	end
	--[[if(LuaQueryStr("country_id")=="400" or LuaQueryStr("country_id")=="401" or LuaQueryStr("country_id")=="402")then
		if(LuaQueryTask("Customer")==88)then
			AddTopSayMenuItem("@4装备补偿","Bc_1")
			AddTopSayMenuItem("@4元宝补偿","Bc_2")
			AddTopSayMenuItem("@4物品铜币","Bc_4")
			AddTopSayMenuItem("@4免费转职","Bc_5")
		end
	end]]
		
	
if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(包括了havetask0=1)
	havetask=0
end
------------------------------------------------
if(havetask ==2)then
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==4) then
	AddTopSayMenuItem("聊天","liaotian","4")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else
	AddTopSayMenuItem("聊天","liaotian","0")

end

return 1

---------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("天下四分五裂必要一统天下") 
elseif(answer=="1111")then
	LuaSay("暂无合区内容")
elseif(answer=="backfmUpDown")then
    showzlMenu()
elseif(answer=="fumoshuaxin")then
    loadfuMo()
    LuaSay("刷新成功")
elseif(answer=="fumodan")then
    --AddMenuItem("元宝:20%@2魔蕴丹@0[极],80%@3魔蕴丹@0[大] 铜币:20%@5魔蕴丹@0[小] 80%@7魔蕴丹@0[中]","")
    AddMenuItem("元宝:获得[@2魔蕴丹@0] 铜币:获得[@7魔蕴丹@0] 会员95折优惠","")  
    AddMenuItem("[@2会员@0]购买蕴丹x99[2822元宝]","moyueExpyb10")
    AddMenuItem("[@2会员@0]购买蕴丹x99[565W铜币]","moyueExptb10")
    AddMenuItem("[@2月卡@0]一键吃魔蕴","fumodan1")
    AddMenuItem("购买蕴丹[30元宝]","moyueExpyb")
	AddMenuItem("购买蕴丹[6W铜币]","moyueExptb")
elseif(answer=="fumodan1")then
    if(LuaCheckBuff("565")==1)then
    local fmexpold=LuaQueryTask("fmexp")
    local numbermyd=LuaItemCount("o_moyueExpyb")--吃元宝魔蕴丹  
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
    local numbermydtb=LuaItemCount("o_moyueExptb")--吃铜币魔蕴丹    
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
        LuaSay("成功使用@2魔蕴丹@0x"..numbermyd.."个,@7魔蕴丹@0x"..numbermydtb.."个,共增加经验"..addExp..",经验池:"..(fmexpold+addExp).."!")
    else
        LuaSay("背包无魔蕴丹可用!")
    end    
    else
        LuaSay("附魔使者：你不是月卡会员,不能使用该特权!")
    end
    do_talk("fumodan")
elseif(answer=="moyueExpyb")then--元宝抽魔玉丹   
    if(LuaFreeBag()>=1)then
    if(LuaQueryMoney()>=30)then		
		LuaAddYB(1,-30)
        LuaGive("o_moyueExpyb",1)
	else
        LuaSay("附魔使者：你没有足够的元宝！")  
    end
    do_talk("fumodan")
    else
    LuaSay("附魔使者：至少保留一个背包空间!")
    end
elseif(answer=="moyueExptb")then--铜币抽魔玉丹
    if(LuaFreeBag()>=1)then
    if(LuaItemCount("coin")>=60000)then		
		LuaGive("coin",-60000,"moyueExptb")	
        LuaGive("o_moyueExptb",1)
	else
        LuaSay("附魔使者：你没有足够的铜币！")
    end
    do_talk("fumodan")
    else
        LuaSay("附魔使者：至少保留一个背包空间!")
    end
elseif(answer=="moyueExpyb10")then--元宝抽魔玉丹   
    if(LuaCheckBuff("564")==1 or LuaCheckBuff("565")==1)then
       if(LuaFreeBag()>=1)then
    if(LuaQueryMoney()>=2822)then		
		LuaAddYB(1,-2822)
        LuaGive("o_moyueExpyb",99)
	else
        LuaSay("附魔使者：你没有足够的元宝！")  
    end
    do_talk("fumodan")
    else
        LuaSay("附魔使者：至少保留一个背包空间!")
    end
    else
        LuaSay("附魔使者：你不是会员,不能使用该特权!")
    end

elseif(answer=="moyueExptb10")then--铜币抽魔玉丹
    if(LuaCheckBuff("564")==1 or LuaCheckBuff("565")==1)then
    if(LuaFreeBag()>=10)then
    if(LuaItemCount("coin")>=5650000)then		
		LuaGive("coin",-5650000,"moyueExptb10")	
        LuaGive("o_moyueExptb",99)
	else
        LuaSay("附魔使者：你没有足够的铜币！")
    end
    do_talk("fumodan")
    else
        LuaSay("附魔使者：至少保留一个背包空间!")
    end
    else
        LuaSay("附魔使者：你不是会员,不能使用该特权!")
    end
elseif(answer=="fumo")then
    --LuaGive("o_moyueExp",100)
    fmexp=LuaQueryTask("fmexp")   
    AddMenuItem("@7附魔菜单 经验池"..fmexp.."","") 
    AddMenuItem("武器","fmwq")
    AddMenuItem("防具","fmfj")
    AddMenuItem("饰品骑宠","fmsp")
    if(fmexp>=25000)then
        AddMenuItem("25000经验 换 @1魔玉大礼包@0@2[极]@0*1","huanmydzi") 
    elseif(fmexp>=2000)then
        AddMenuItem("2000经验 换 @2魔蕴丹@0*1","huanmydyb") 
    elseif(fmexp>=500)then
        AddMenuItem("500经验 换 @7魔蕴丹@0*1","huanmydtb")  
    end
elseif(answer=="fmwq")then
    AddMenuItem("@7选择附魔部件 经验池"..fmexp.."","") 
    AddMenuItem("右手 @2","1")
	AddMenuItem("左手 @2","2")
elseif(answer=="fmfj")then
    AddMenuItem("@7选择附魔部件 经验池"..fmexp.."","") 
    AddMenuItem("头盔 @2","3")
	AddMenuItem("衣服 @2","4")
	AddMenuItem("裤子 @2","5")
	AddMenuItem("鞋子 @2","6")
elseif(answer=="fmsp")then
    AddMenuItem("@7选择附魔部件 经验池"..fmexp.."","") 
    AddMenuItem("耳环 @2","7")
	AddMenuItem("项链 @2","8")
    AddMenuItem("坐骑 @2","9")
	AddMenuItem("宠物 @2","10")
elseif(answer=="fmDoUp")then    
    z1tLv=LuaQueryTask(zlpos..nowType.."lv")
    local nextlv=z1tLv+1
    local needExp=moyuUpExp[nextlv]
    if(nextlv>18)then
        loadfumoUpDown()
        LuaSay("已达最高等级!")
    elseif(fmexp<needExp)then
        loadfumoUpDown()
        LuaSay("经验不够!")
    else
        LuaSetTask(zlpos..nowType.."lv",nextlv)
        LuaSetTask("fmexp",fmexp-needExp)
        loadfumoUpDown()
        LuaDeleteBuff(zlpos..nowType)--移除
        LuaDeleteBuff(zlpos..nowType.."UP")--移除 
        --loadfuMo()
        LuaSay("升级成功+"..nextlv)
        if(nextlv>5)then
            LuaNotice("恭喜大佬@1"..LuaQueryStr("name").."@0将[@3"..(fmbw[zlposIndex+0]).."-"..nowType.."@0]附魔到@2紫玉+"..nextlv.."@0")
        end
    end    
    
elseif(answer=="fmDoDown")then    
    z1tLv=LuaQueryTask(zlpos..nowType.."lv")
    local lastLv=z1tLv-1
    local getExp=moyuUpExp[z1tLv]
    if(z1tLv<=0)then
        loadfumoUpDown()
        LuaSay("已达最低等级0!")
    elseif(getExp<=0)then
        loadfumoUpDown()
        LuaSay("无法获取经验!")
    else
        if(LuaQueryMoney()>=50)then
            LuaAddYB(1,-50,"fmDoDown")
            LuaSetTask(zlpos..nowType.."lv",lastLv)               
            LuaSetTask("fmexp",fmexp+getExp)        
            loadfumoUpDown()
            LuaDeleteBuff(zlpos..nowType)--移除
            LuaDeleteBuff(zlpos..nowType.."UP")--移除 
        else
            LuaSay("元宝不够降级费用")
        end
    end    
    
elseif(answer=="fmDoUpc")then
    do_talk("fumo")
elseif(answer=="huanmydyb")then--元宝
    fmexp=LuaQueryTask("fmexp")
    local lostexp=2000
    if(fmexp>=lostexp)then
        LuaSetTask("fmexp",fmexp-lostexp)        
        LuaSay("兑换成功")
        LuaGive("o_moyueExpyb",1)
    else
        LuaSay("兑换失败,经验池不足"..lostexp)
    end
    do_talk("fumo")
elseif(answer=="huanmydzi")then--魔玉大礼包
    fmexp=LuaQueryTask("fmexp")
    local lostexp=25000
    if(fmexp>=lostexp)then
        LuaSetTask("fmexp",fmexp-lostexp)        
        LuaSay("兑换成功")
        LuaGive("o_present114",1)
    else
        LuaSay("兑换失败,经验池不足"..lostexp)
    end
    do_talk("fumo")
elseif(answer=="huanmydtb")then--铜币
    fmexp=LuaQueryTask("fmexp")
    local lostexp=500
    if(fmexp>=lostexp)then
        LuaSetTask("fmexp",fmexp-lostexp)
        LuaSay("兑换成功")
        LuaGive("o_moyueExptb",1)
    else
        LuaSay("兑换失败,经验池不足"..lostexp)
    end
    do_talk("fumo")
elseif(answer=="fmDogj")then    
    nowValue=fmDogj
    nowType="攻击"
    loadfumoUpDown()
elseif(answer=="fmDofy")then    
    nowValue=fmDofy
    nowType="防御"
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
    nowType="力量"
    loadfumoUpDown()
elseif(answer=="fmDomj")then
    nowValue=fmDomj
    nowType="敏捷"
    loadfumoUpDown()
elseif(answer=="fmDozh")then
    nowValue=fmDozh
    nowType="智慧"
    loadfumoUpDown()
elseif(answer=="z1sj")then	
	local needC=(z1lv+1)*10
	if(LuaQueryMoney()>=needC)then
		if((z1exp+1)>=100 and (z1lv+1)<=9)then
			LuaSetTask("z1lvexp",0)
			LuaSetTask("z1lv",z1lv+1)
			if(LuaCheckBuff("570")==1)then
				LuaDeleteBuff("570")--移除阵法
			end
			LuaGiveBuff("570",z1lv+1) --添加阵法
			FlushMyInfo(1)--刷新攻防
			LuaAddYB(1,-1*needC)
		elseif((z1lv+1)<=9)then
			LuaSetTask("z1lvexp",z1exp+1)
			LuaAddYB(1,-1*needC)
		else
			LuaSay("当前魔玉已满级")
		end
	else
		LuaSay("元宝不够")
	end
	do_talk("z1")
elseif(answer=="z1sj10")then
	local needC=(z1lv+1)*100
	if(LuaQueryMoney()>=needC)then
		if((z1exp+10)>=100)then
			LuaSetTask("z1lvexp",0)
			LuaSetTask("z1lv",z1lv+1)
            if(LuaCheckBuff("570")==1)then
				LuaDeleteBuff("570")--移除阵法
			end
			LuaGiveBuff("570",z1lv+1) --添加阵法
			FlushMyInfo(1)--刷新攻防
		else
			LuaSetTask("z1lvexp",z1exp+10)
		end
		LuaAddYB(1,-1*needC)
	else
		LuaSay("元宝不够")
	end
	do_talk("z1")	
elseif(answer=="z1yc")then
	if(LuaCheckBuff("570")==1)then
		LuaDeleteBuff("570")--移除阵法
        LuaGive("o_present"..(106+z1lv),1)
        LuaGive("o_moyueExp",z1exp)
        LuaSetTask("z1lv",0)
        LuaSetTask("z1lvexp",0)
		FlushMyInfo(1)--刷新攻防
		LuaSay("拆卸魔玉成功")
	else
		LuaSay("未附魔攻击")
	end
elseif(answer=="z211")then
	z2lv=LuaQueryTask("z2lv")
	z2exp=LuaQueryTask("z2lvexp")
	if(z2lv<9)then
		AddMenuItem("当前Lv"..z2lv.."@2防↑"..(z2lv*280).." @7exp:100/"..z2exp.."@0 Lv"..(z2lv+1).."@2防↑"..((z2lv+1)*280),"")
		AddMenuItem("训练x1   "..((z2lv+1)*10).."元宝","z2sj")
		AddMenuItem("训练x10 "..((z2lv+1)*100).."元宝","z2sj10")
	else
		AddMenuItem("Lv"..z2lv.." Max @2防↑"..(z2lv*280),"")
	end
	AddMenuItem("关闭阵法","z2yc")

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
		LuaSay("元宝不够")
	end
	do_talk("z2")	
elseif(answer=="Bc_6")then
	local level =LuaQuery("level")
	LuaSay("对于早上活动问题我们表示深深的歉意，所有玩家在【回档补偿】NPC处可以领取1个超级经验卷轴。")
	LuaSay("50以上玩家增加1000W经验40以上玩家增加800W经验40以下玩家增加600W经验")
	if(LuaCheckCreateTime("2012-5-22-1-10-0")>0)then
		if(LuaQueryTask("Bc_6")==0)then
			if(LuaFreeBag()>=1)then
				LuaSay("提示：如果您的等级物品未刷新，请尝试下线再上线即可")
				LuaGive("o_state060j",1,"Bc_6")
				if(level>=50)then
					LuaAddJx("combat_exp",10000000,"Bc_6")
				elseif(level>=40)then
					LuaAddJx("combat_exp",8000000,"Bc_6")
				else
					LuaAddJx("combat_exp",6000000,"Bc_6")
				end
				LuaSetTask("Bc_6",99)
				FlushMyInfo(2)	--刷新人物信息
			else
				LuaSay("提示：你的背包空间不足1格，请先清理背包再来领取哦@!")
			end
		else
			LuaSay("您已经领取过该补偿了")
		end
	else
		LuaSay("此角色是在2012年5月22日1点10分之后创建的，不能领取此项补偿")
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
					LuaGive("e_head153",1,3,"Bc_1")		--善战冠
					LuaGive("e_clothes153",1,3,"Bc_1")	--善战袍
					LuaGive("e_pants153",1,3,"Bc_1")		--善战护腿
					LuaGive("e_shoes153",1,3,"Bc_1")		--善战靴	
					LuaGive("e_earring153",1,3,"Bc_1")	--善战耳坠
					LuaGive("e_necklace153",1,3,"Bc_1")
				elseif(level>=40)then
					
					LuaGive("e_falchion151",1,2,"Bc_1")
					LuaGive("e_shield151",1,2,"Bc_1")
					LuaGive("e_sword151",1,2,"Bc_1")
					LuaGive("e_knife151",1,2,"Bc_1")
					LuaGive("e_book151",1,2,"Bc_1")
					LuaGive("e_pen151",1,2,"Bc_1")
					LuaGive("e_head151",1,2,"Bc_1")		--强者冠
					LuaGive("e_clothes151",1,2,"Bc_1")	--强者袍
					LuaGive("e_pants151",1,2,"Bc_1")		--强者护腿
					LuaGive("e_shoes151",1,2,"Bc_1")		--强者靴	
					LuaGive("e_earring151",1,2,"Bc_1")	--强者耳坠
					LuaGive("e_necklace151",1,2,"Bc_1")
				else
					
					LuaGive("e_falchion166",1,2,"Bc_1")
					LuaGive("e_shield166",1,2,"Bc_1")
					LuaGive("e_sword166",1,2,"Bc_1")
					LuaGive("e_knife166",1,2,"Bc_1")
					
					LuaGive("e_book166",1,2,"Bc_1")
					LuaGive("e_pen166",1,2,"Bc_1")
					
					LuaGive("e_head166",1,2,"Bc_1")		--强者冠
					LuaGive("e_clothes166",1,2,"Bc_1")	--强者袍
					LuaGive("e_pants166",1,2,"Bc_1")		--强者护腿
					LuaGive("e_shoes166",1,2,"Bc_1")		--强者靴	
					LuaGive("e_earring166",1,2,"Bc_1")	--强者耳坠
					LuaGive("e_necklace166",1,2,"Bc_1")
				end
				LuaSetTask("Bc_1",99)
				if(LuaQueryTask("Bc_1")==99 and  LuaQueryTask("Bc_2")==99 and  LuaQueryTask("Bc_4")==99 and  LuaQueryTask("Bc_5")==99)then
					LuaSetTask("Customer",99)
					UpdateMenu()
				end
			else
				LuaSay("提示：你的背包空间不足11格，请先清理背包再来领取哦@!")
			end
		else
			LuaSay("您的补偿已经领取过了，给您带来的不便表示深深的歉意")
		end
	else
		LuaSay("此角色是在2012年5月21日20点30分之后创建的，不能领取此项补偿")
	end
elseif(answer=="Bc_2")then
	if(LuaCheckCreateTime("2012-5-21-20-30-0")>0)then
		if(LuaQueryTask("Bc_2")==0)then
			local a = LuaQueryCost()
			LuaSay("首先我们对本次故障给您带来的不便表示深深的歉意，我们将对您之前所消费的元宝全额返还！")
			LuaSay("之前您已经消费了"..a.."元宝，我们全额返还给你"..a.."元宝，请注意查收")
			if(a==0)then
				LuaSay("获得系统赠送金币500")
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
			LuaSay("您的补偿已经领取过了，给您带来的不便表示深深的歉意")
		end
	else
		LuaSay("此角色是在2012年5月21日20点30分之后创建的，不能领取此项补偿")
	end
elseif(answer=="Bc_3")then
	if(LuaCheckCreateTime("2012-5-21-20-30-0")>0)then
		if(LuaQueryTask("Bc_3")==0)then
			LuaGive("coin",10000,"Bc_3")
			LuaSetTask("Bc_3",99)
		else
			LuaSay("您的补偿已经领取过了，给您带来的不便表示深深的歉意")
		end
	else
		LuaSay("此角色是在2012年5月21日20点30分之后创建的，不能领取此项补偿")
	end
elseif(answer=="Bc_4")then
	if(LuaCheckCreateTime("2012-5-21-20-30-0")>0)then
		if(LuaQueryTask("Bc_4")==0)then
			if(LuaFreeBag()>=4)then
				LuaSay("得到补偿物品，这其中包括叛国铜币1W铜币")
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
				LuaSay("提示：你的背包空间不足4格，请先清理背包再来领取哦@!")
			end
		else
			LuaSay("您的补偿已经领取过了，给您带来的不便表示深深的歉意")
		end
	else
		LuaSay("此角色是在2012年5月21日20点30分之后创建的，不能领取此项补偿")
	end
elseif(answer=="Bc_5")then
	if(LuaCheckCreateTime("2012-5-21-20-30-0")>0)then
		LuaSay("每个角色都可以免费转职3次")
		if(LuaQueryTask("Bc_5")<=3)then
			if(EquipInfo(1)=="" and EquipInfo(2)=="") then
				AddMenuItem("@7转职","")
				if(LuaQueryStr("class")~="wu") then
				AddMenuItem("转职为侠客","xiage_ag","") 
				end
				if(LuaQueryStr("class")~="xian") then
				AddMenuItem("转职为谋士","moushi_ag","")
				end
				if(LuaQueryStr("class")~="shen") then
				AddMenuItem("转职为战士","zhanshi_ag","")
				end
				
			else
			LuaSay("回档补偿：很抱歉！您必须@3将您的主手武器和副手武器都卸下后@0才能进行转职。")
			end
		else
			LuaSay("该角色已经转职过3次了")
		end
	else
		LuaSay("此角色是在2012年5月21日20点30分之后创建的，不能领取此项补偿")
	end
		
elseif(answer=="xiage_ag" and LuaQueryStr("class")~="wu") then
	local level=LuaQuery("level")
	local quan_number=2^(floor(level/10)-1)
	LuaSet("class","wu")
	ResetSkill()		--重置技能树
	DelItem("o_changeclass1y",quan_number)
	FlushMyInfo(2)	--刷新人物信息
	LuaLogRecord("职业","10","职业","选择",3) --10级 选择职业 0无职业 1战 2谋士 3侠客
	LuaSay("提示：你成功的转职成为了侠客。")
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
	LuaLogRecord("职业","10","职业","选择",2)
	LuaSay("提示：你成功的转职成为了谋士。")
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
	LuaLogRecord("职业","10","职业","选择",1)
	LuaSay("提示：你成功的转职成为了战士。")
	LuaAddTask("Bc_5",1)
	if(LuaQueryTask("Bc_5")>3)then
		LuaSetTask("Bc_5",99)
		if(LuaQueryTask("Bc_1")==99 and  LuaQueryTask("Bc_2")==99 and   LuaQueryTask("Bc_4")==99 and  LuaQueryTask("Bc_5")==99)then
			LuaSetTask("Customer",99)
			UpdateMenu()
		end
	end

elseif(answer=="Ac20")then --宝箱1个、白银宝箱1个、黄金宝箱1个
	if(LuaCheckCreateTime("2012-5-24-9-0-0")>0)then
		LuaSay("为了庆祝《统一OL》合区成功，特此我们推出三箱相送活动！")
		LuaSay("合区的玩家活动期间每天可在建康城NPC合区使者领取宝箱1个、白银宝箱1个、黄金宝箱1个")
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
				LuaSay("请保持三个背包")
			end
		else
			LuaSay("合区使者：大侠你今日已经领取过了合区三箱奖励了哦@!")
		end
	else
		LuaSay("合区补偿活动只限于在合区之前的角色领取，敬请谅解！此角色为新建角色！")
	end
elseif(answer=="Ac21")then--充值
		local day=GetCurrentDay()
		local type = 1
		if(day=="2012-6-28")then
			local a = LuaRechargeQueryCount(39,"Tcz201201061")
			local b=floor(a*0.5)
			LuaSay("《统一OL》合区成功，冲得越多送的越多！")
			if(a>=1000)then
				LuaSay("温馨提示：您昨日充值了"..a.."元宝，获获得"..b.."元宝的系统反冲奖励")
				LuaAddYB(type,b)
				LuaRechargeDel(39,a)
			else
				LuaSay("@5温馨提示：昨日您充值不足1000元宝或者已经领取过该奖励了,只要充值达到1000元宝，次日将会获得50%元宝的大额返还")
			end
		elseif(day=="2012-6-29")then
			--[[local a = LuaRechargeQueryCount(40,"Tcz201201062")
			local b=floor(a*0.5)
			LuaSay("《统一OL》合区成功，冲得越多送的越多！")
			if(a>=1000)then
				LuaSay("温馨提示：您昨日充值了"..a.."元宝，获获得"..b.."元宝的系统反冲奖励")
				LuaAddYB(type,b)
				LuaRechargeDel(40,a)
			else
				LuaSay("@5温馨提示：昨日您充值不足1000元宝或者已经领取过该奖励了,只要充值达到1000元宝，次日将会获得50%元宝的大额返还")
			end]]
			LuaSay("只要今日充值达到1000元宝以上，明天就能领取50%的大额反冲哦")
		elseif(day=="2012-6-30")then
			local a = LuaRechargeQueryCount(41,"Tcz201201063")
			local b=floor(a*0.5)
			LuaSay("《统一OL》合区成功，冲得越多送的越多！")
			if(a>=1000)then
				LuaSay("温馨提示：您昨日充值了"..a.."元宝，获获得"..b.."元宝的系统反冲奖励")
				LuaAddYB(type,b)
				LuaRechargeDel(41,a)
			else
				LuaSay("@5温馨提示：昨日您充值不足1000元宝或者已经领取过该奖励了,只要充值达到1000元宝，次日将会获得50%元宝的大额返还")
			end
		elseif(day=="2012-6-31")then
			local a = LuaRechargeQueryCount(42,"Tcz201201064")
			local b=floor(a*0.5)
			LuaSay("《统一OL》合区成功，冲得越多送的越多！")
			if(a>=1000)then
				LuaSay("温馨提示：您昨日充值了"..a.."元宝，获获得"..b.."元宝的系统反冲奖励")
				LuaAddYB(type,b)
				LuaRechargeDel(42,a)
			else
				LuaSay("@5温馨提示：昨日您充值不足1000元宝或者已经领取过该奖励了,只要充值达到1000元宝，次日将会获得50%元宝的大额返还")
			end
		elseif(day=="2012-7-1")then
			local a = LuaRechargeQueryCount(43,"Tcz201201065")
			local b=floor(a*0.5)
			LuaSay("《统一OL》合区成功，冲得越多送的越多！")
			if(a>=1000)then
				LuaSay("温馨提示：您昨日充值了"..a.."元宝，获获得"..b.."元宝的系统反冲奖励")
				LuaAddYB(type,b)
				LuaRechargeDel(43,a)
			else
				LuaSay("@5温馨提示：昨日您充值不足1000元宝或者已经领取过该奖励了,只要充值达到1000元宝，次日将会获得50%元宝的大额返还")
			end
		elseif(day=="2012-7-2")then
			local a = LuaRechargeQueryCount(44,"Tcz201201066")
			local b=floor(a*0.5)

			local c = LuaRechargeQueryCount(42,"Tcz201201064")
			local d=floor(c*0.5)

			if(a>0)then
				LuaSay("《统一OL》合区成功，冲得越多送的越多！")
				if(a>=1000)then
					LuaSay("温馨提示：您昨日充值了"..a.."元宝，获获得"..b.."元宝的系统反冲奖励")
					LuaAddYB(type,b)
					LuaRechargeDel(44,a)
				else
					LuaSay("@5温馨提示：昨日您充值不足1000元宝或者已经领取过该奖励了,只要充值达到1000元宝，次日将会获得50%元宝的大额返还")
				end
			else
				LuaSay("《统一OL》合区成功，冲得越多送的越多！")
				if(c>=1000)then
					LuaSay("温馨提示：您6月30日充值了"..c.."元宝，获获得"..d.."元宝的系统反冲奖励")
					LuaAddYB(type,d)
					LuaRechargeDel(42,c)
				else
					LuaSay("@5温馨提示：6月30日您充值不足1000元宝或者已经领取过该奖励了,只要充值达到1000元宝，次日将会获得50%元宝的大额返还")
				end
			end

			
			
			
		else
			LuaSay("活动时间已过")
		end

			

elseif(answer=="Ac22")then
--1、双攻攻防，当日无限领取，不可叠加效果
--2、还魂丹*2、御龙丹*2
	if(LuaCheckCreateTime("2012-6-29-0-0-0")>0)then
		AddMenuItem("@7战火蔓延","")
		AddMenuItem("@5点燃战火","Ac22_1")
		AddMenuItem("@5战火物资","Ac22_2")
	else
		LuaSay("此角色是在2012年6月29日0时0分0秒之后创建不能参加此活动")
	end
	elseif(answer=="Ac22_1")then
		LuaSay("战火不断，没有更强的能力怎么能在乱世中照顾好自己，就让我来赐予你一小时的@2双倍攻击@0和@2双倍防御@0吧，注意时间是不能叠加的哦")
		LuaSay(".....")
		LuaSay("...")
		LuaSay(".")
		LuaSay("恭喜您已经获得持续一小时的@2双倍攻击@0和@2双倍防御@0状态")
		LuaGiveBuff("450",1)
		LuaGiveBuff("453",1)
	elseif(answer=="Ac22_2")then
		LuaSay("活动期间您可以到我这里来领取@2强化石@0两颗、@2六级单一材料包@0一个哦，让您变的更强大@!")	
		--if(GetCurrentDay()~=LuaQueryStrTask("Ac22_2day")) then
			--LuaSetTask("Ac22_2",0)
		--end
		if(LuaQueryStr("country_id")=="100" or LuaQueryStr("country_id")=="101")then
			if(LuaQueryTask("Ac22_2")==0)then
				if(LuaQuery("level")>=30)then
					if(LuaFreeBag()>=2)then
						LuaSay("合区使者：今日目测大侠满脸红光，头顶祥云，必是招财进宝之日！")
						LuaGive("o_ybsc002j",2,"Ac22_2")
						LuaGive("o_present032",1,"Ac22_2")
						LuaSetTask("Ac22_2",99)
						LuaSetTask("Ac22_2day",GetCurrentDay())
					else
						LuaSay("提示：你的背包空间不足2格，请先清理背包再来领取哦@!")
					end
				else
					LuaSay("30级以上的用户才可以领取次奖励哦")
				end
			else
				LuaSay("合区使者：大侠你已经领取过了强化石、六级材料包@!")
			end
		else
			if(LuaQueryTask("Ac22_3")==0)then
				if(LuaQuery("level")>=30)then
					if(LuaFreeBag()>=2)then
						LuaSay("合区使者：今日目测大侠满脸红光，头顶祥云，必是招财进宝之日！")
						LuaGive("o_ybsc002j",2,"Ac22_2")
						LuaGive("o_present032",1,"Ac22_2")
						LuaSetTask("Ac22_3",99)
						LuaSetTask("Ac22_2day",GetCurrentDay())
					else
						LuaSay("提示：你的背包空间不足2格，请先清理背包再来领取哦@!")
					end
				else
					LuaSay("30级以上的用户才可以领取次奖励哦")
				end
			else
				LuaSay("合区使者：大侠你已经领取过了强化石、六级材料包@!")
			end
		end
else  
    --附魔部件赋值
    zlposIndex=answer
    zlpos="z"..answer
    showzlMenu()
end
LuaSendMenu()
return 1
end 

