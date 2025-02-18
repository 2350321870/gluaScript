    zt={}
	zt[1]={"强力时刻",555}
	zt[2]={"金刚时刻",556}
	zt[3]={"热血时刻",557}
	zt[4]={"魔力时刻",558}
	zt[5]={"精准时刻",559}
	zt[6]={"闪避时刻",560}
	zt[7]={"急速时刻",561}
	---buff名称，buff的ID，

function do_use()

	local a=LuaCheckBuff("555")
	local b=LuaCheckBuff("556")
	local c=LuaCheckBuff("557")
	local d=LuaCheckBuff("558")
	local e=LuaCheckBuff("559")
	local f=LuaCheckBuff("560")
	local g=LuaCheckBuff("561")
if(a==0 and b==0 and c==0 and d==0 and e==0 and f==0 and g==0)then --身上没buff才能进入选择、刷buff的界面

    if(LuaQueryTask("TSFT_BUFF_id")==0)then
		local r =LuaRandom(7)+1
    	LuaSetTask("TSFT_BUFF_id",r)   --设定一个随机给的状态ID
    	LuaSetTask("TSFT_BUFF_level",0)--初始化状态为0级
    end

    local tsft_buff_id = 554+LuaQueryTask("TSFT_BUFF_id")
    local tsft_buff_level = LuaQueryTask("TSFT_BUFF_level")
	local tips="最高:@7"
    if(tsft_buff_level<5)then  --5级buff提醒
		tips="当前:@7"
    	--LuaShowNotify("当前你的天神附体状态为@3"..tsft_buff_level.."级"..zt[tsft_buff_id-554][1].."@0！")
    end
	
    AddMenuItem("玩法说明","nc_combine o_tianshenfuti shuoming","天神附体")
	AddMenuItem("切换状态 "..tips..zt[tsft_buff_id-554][1]..tsft_buff_level.."级","nc_combine o_tianshenfuti xuanze","天神附体")
	AddMenuItem("铜币刷新","nc_combine o_tianshenfuti tongbishua","天神附体")
	AddMenuItem("元宝刷新","nc_combine o_tianshenfuti yuanbaoshua","天神附体")
--	if(LuaQuery("VIPlv")>=5)then --vip5级享受待遇
--	AddMenuItem("刷到顶级状态","nc_combine o_tianshenfuti yuanbaosmanji","天神附体")
--	end
	AddMenuItem("领取状态","nc_combine o_tianshenfuti lingqu","天神附体")
else
 	local tsft_buff_level = "状态:@3"..LuaQueryTask("TSFT_BUFF_level")
	--local tempTm=10*60-(GetCurrentTime() - LuaQueryTask("tsft_cd"))
	if(a==1)then     --身上有buff时，给予的提示
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
	LuaSay(dqzt..tsft_buff_level.."级@0")
end


LuaOtherSendMenu()
return 0
end


function nc_combine(type)
if(type=="shuoming")then
	LuaSay("获得天神附体状态后，状态等级越高，所得到的属性加成就越高！状态持续10分钟！")
	LuaSay("领取状态之前，可以选择、并且刷新提升天神附体的等级！")
	LuaSay("领取状态之后，要等状态消失了，才可以重新领取！")
elseif(type=="xuanze")then
AddMenuItem("强力时刻","nc_combine o_tianshenfuti shike01","切换天神附体状态将会花费2元宝")
AddMenuItem("金刚时刻","nc_combine o_tianshenfuti shike02","切换天神附体状态将会花费2元宝")
AddMenuItem("热血时刻","nc_combine o_tianshenfuti shike03","切换天神附体状态将会花费2元宝")
AddMenuItem("魔力时刻","nc_combine o_tianshenfuti shike04","切换天神附体状态将会花费2元宝")
AddMenuItem("精准时刻","nc_combine o_tianshenfuti shike05","切换天神附体状态将会花费2元宝")
AddMenuItem("闪避时刻","nc_combine o_tianshenfuti shike06","切换天神附体状态将会花费2元宝")
AddMenuItem("急速时刻","nc_combine o_tianshenfuti shike07","切换天神附体状态将会花费2元宝")
elseif(type=="shike01")then
    if(LuaQueryMoney()>=2) then
        LuaAddYB(1,-2,"天魔附体刷新")--每次扣元宝，尚未有函数，暂时用老函数代替
        LuaSetTask("TSFT_BUFF_id",1)
        do_use()--重开菜单
    else
        LuaShowNotify("需要@32元宝@0才能切换天神附体的状态种类！")
    end
elseif(type=="shike02")then
    if(LuaQueryMoney()>=2) then
        LuaAddYB(1,-2)--每次扣元宝，尚未有函数，暂时用老函数代替
        LuaSetTask("TSFT_BUFF_id",2)
        do_use()--重开菜单
    else
        LuaShowNotify("需要@32元宝@0才能切换天神附体的状态种类！")
    end
elseif(type=="shike03")then
    if(LuaQueryMoney()>=2) then
        LuaAddYB(1,-2)--每次扣元宝，尚未有函数，暂时用老函数代替
        LuaSetTask("TSFT_BUFF_id",3)
        do_use()--重开菜单
    else
        LuaShowNotify("需要@32元宝@0才能切换天神附体的状态种类！")
    end
elseif(type=="shike04")then
    if(LuaQueryMoney()>=2) then
        LuaAddYB(1,-2)--每次扣元宝，尚未有函数，暂时用老函数代替
        LuaSetTask("TSFT_BUFF_id",4)
        do_use()--重开菜单
    else
        LuaShowNotify("需要@32元宝@0才能切换天神附体的状态种类！")
    end
elseif(type=="shike05")then
    if(LuaQueryMoney()>=2) then
        LuaAddYB(1,-2)--每次扣元宝，尚未有函数，暂时用老函数代替
        LuaSetTask("TSFT_BUFF_id",5)
        do_use()--重开菜单
    else
        LuaShowNotify("需要@32元宝@0才能切换天神附体的状态种类！")
    end
elseif(type=="shike06")then
    if(LuaQueryMoney()>=2) then
        LuaAddYB(1,-2)--每次扣元宝，尚未有函数，暂时用老函数代替
        LuaSetTask("TSFT_BUFF_id",6)
        do_use()--重开菜单
    else
        LuaShowNotify("需要@32元宝@0才能切换天神附体的状态种类！")
    end
elseif(type=="shike07")then
    if(LuaQueryMoney()>=2) then
        LuaAddYB(1,-2)--每次扣元宝，尚未有函数，暂时用老函数代替
        LuaSetTask("TSFT_BUFF_id",7)
        do_use()--重开菜单
    else
        LuaShowNotify("需要@32元宝@0才能切换天神附体的状态种类！")
    end

elseif(type=="tongbishua")then ---铜币刷天神附体等级
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
            LuaShowNotify("你当前天神附体已经升到5级，达到最高！")
		else
		    LuaGive("coin",-1*level*1000,"TSFT")
		end
		do_use()--重开菜单
    else
        LuaShowNotify("需要@3"..(level*1000).."铜币@0才能刷新天神附体的等级！")
    end
elseif(type=="yuanbaoshua")then  ----元宝刷天神附体等级
    local level= LuaQuery("level")
    if(LuaQueryMoney()>=2) then
        local r =LuaRandom(100)
        if(LuaQueryTask("TSFT_BUFF_level")==0)then
            LuaAddYB(1,-2)--每次扣元宝，尚未有函数，暂时用老函数代替
        	LuaSetTask("TSFT_BUFF_level",1)
        elseif(LuaQueryTask("TSFT_BUFF_level")==1 and r<80)then
            LuaAddYB(1,-2)--每次扣元宝，尚未有函数，暂时用老函数代替
        	LuaSetTask("TSFT_BUFF_level",2)
        elseif(LuaQueryTask("TSFT_BUFF_level")==2 and r<90)then
            LuaAddYB(1,-2)--每次扣元宝，尚未有函数，暂时用老函数代替
        	LuaSetTask("TSFT_BUFF_level",3)
        elseif(LuaQueryTask("TSFT_BUFF_level")==3 and r<40)then
            LuaAddYB(1,-2)--每次扣元宝，尚未有函数，暂时用老函数代替
        	LuaSetTask("TSFT_BUFF_level",4)
        elseif(LuaQueryTask("TSFT_BUFF_level")==4 and r<30)then
            LuaAddYB(1,-2)--每次扣元宝，尚未有函数，暂时用老函数代替
        	LuaSetTask("TSFT_BUFF_level",5)
        elseif(LuaQueryTask("TSFT_BUFF_level")==5)then
            LuaShowNotify("你当前天神附体已经升到5级，达到最高！")
		else
      		LuaAddYB(1,-2)--每次扣元宝，尚未有函数，暂时用老函数代替
		end
		LuaSay("刷新成功,失去2元宝")
		do_use()--重开菜单
    else
        LuaShowNotify("需要@32元宝@0才能刷新天神附体的等级！")
    end
elseif(type=="yuanbaomanji")then
	if(LuaQuery("VIPlv")>=5 and LuaQueryMoney()>=30)then
     	LuaAddYB(1,-30)--每次扣元宝，尚未有函数，暂时用老函数代替
        LuaSetTask("TSFT_BUFF_level",5)
	else
	    LuaShowNotify("需要@330元宝@0才能将天神附体的等级提升到5级！")
	end
elseif(type=="lingqu")then
 	local tsft_buff_id = 554+LuaQueryTask("TSFT_BUFF_id")
    local tsft_buff_level = LuaQueryTask("TSFT_BUFF_level")

	if(tsft_buff_level ~= 0)then
		LuaGiveBuff(tsft_buff_id,tsft_buff_level)
		LuaShowNotify("领取了@3"..tsft_buff_level.."级"..zt[tsft_buff_id-554][1].."@0！")
		FlushMyInfo("1")      ---刷新人物属性
		FlushMyInfo("4")     ---刷新人物移动速度
	    LuaSetTask("TSFT_BUFF_id",0)   --领取后设定状态id为0，意思是空的
		LuaSetTask("tsft_cd",GetCurrentTime()) --记录领取时间		
	    do_use()--重开菜单
	else
	    LuaShowNotify("你的天神附体状态还是0级，无法领取，请通过铜币@3铜币刷新或元宝刷新@0至少提升1级以上！")
	end

end




LuaOtherSendMenu()
--return 1
end


