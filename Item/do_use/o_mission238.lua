function do_use()
if(LuaFreeBag()<2)then	LuaShowNotify("请至少保有@22@0格背包空间")	return 0 end
LuaGive("o_seed042",2,"Tzhizuoyb")
r=LuaRandom(14)			 
if(r==1 or r==2 or r==3 or r==4 or r==0 or r==8 or r==11)then   		--花好月圆
LuaGive("o_mission222",1,"Tzhizuoyb")                      
elseif(r==5 or r==6 or r==10 or r==12)then		--如意翠月
LuaGive("o_mission223",1,"Tzhizuoyb")                      
elseif(r==7 or r==13)then		--众心拱月
LuaGive("o_mission224",1,"Tzhizuoyb")                 
elseif(r==9)then
LuaGive("o_mission225",1,"Tzhizuoyb")				--黄金至尊
end
LuaOtherSendMenu()
return 1
end
