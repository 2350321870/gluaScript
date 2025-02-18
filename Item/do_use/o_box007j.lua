function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@21@0格背包空间")	return 0 end
    if(LuaQueryTask("Ac_49")==1)then
        local r=LuaRandom(100)
        if(r>=0 and r<70)then
        LuaAddJx("combat_exp",10000,"Ac_49")
        elseif(r>=70 and r<90)then
        LuaGive("coin",10000,"Ac_49")----铜币
        elseif(r>=90 and r<95)then
        LuaGive("o_state005j",1,"Ac_49")------小暴击丸
        elseif(r>=95 and r<98)then
        LuaGive("o_state031j",1,"Ac_49")------多倍贪婪金1小时
        elseif(r==98 or r==99)then
        LuaGive("o_ybsc002j",1,"Ac_49")------强化石
        end    
		LuaSetTask("Ac_49",2)
		LuaSay("你已经获得了开启宝鼎第一次奖励，只要累计在线81分钟就能开启第二次！")
    elseif(LuaQueryTask("Ac_49")==2)then
        if(LuaQuery("onlinetime")>=4860)then
            local r=LuaRandom(100)
        	if(r>=0 and r<33)then
        	LuaAddJx("combat_exp",20000,"Ac_49")
        	elseif(r>=33 and r<66)then
        	LuaGive("coin",20000,"Ac_49")----铜币
        	elseif(r>=66 and r<86)then
         	LuaGive("o_ybsc002j",1,"Ac_49")------强化石
        	elseif(r>=86 and r<95)then
        	LuaSay("恭喜你获得10金币！")
        	LuaAddYB(2,10)------10个金币
        	elseif(r>=95 and r<98)then
        	    local zq=LuaRandom(8)
        	    if(zq==0)then
        		LuaGive("e_horse011",1,"Ac_49")------+1坐骑
        		elseif(zq==1)then
        		LuaGive("e_horse021",1,"Ac_49")------+1坐骑
                elseif(zq==2)then
        		LuaGive("e_horse031",1,"Ac_49")------+1坐骑
        		elseif(zq==3)then
        		LuaGive("e_horse041",1,"Ac_49")------+1坐骑
        		elseif(zq==4)then
        		LuaGive("e_horse051",1,"Ac_49")------+1坐骑
        		elseif(zq==5)then
        		LuaGive("e_horse061",1,"Ac_49")------+1坐骑
        		elseif(zq==6)then
        		LuaGive("e_horse071",1,"Ac_49")------+1坐骑
        		elseif(zq==7)then
        		LuaGive("e_horse081",1,"Ac_49")------+1坐骑
				elseif(zq==8)then
        		LuaGive("e_horse091",1,"Ac_49")------+1坐骑
        		end
        	elseif(r==98 or r==99)then
         		local cw=LuaRandom(4)
        	    if(cw==0)then
        		LuaGive("e_pet05",1,"Ac_49")------+1宠物
        		elseif(cw==1)then
        		LuaGive("e_pet06",1,"Ac_49")------+1宠物
                elseif(cw==2)then
        		LuaGive("e_pet07",1,"Ac_49")------+1宠物
        		elseif(cw==3)then
        		LuaGive("e_pet08",1,"Ac_49")------+1宠物
        		end
        	end
			LuaSetTask("Ac_49",99)
			LuaOtherSendMenu()
			return 1
        else
        	local  a=LuaQuery("onlinetime")
        	local  min=floor(a/60)
        	local  sec=a-min*60
        	LuaSay("你的在线时间为"..min.."分"..sec.."秒，不足九九八十一分钟！")
        end
    end

LuaOtherSendMenu()
return 0
end
