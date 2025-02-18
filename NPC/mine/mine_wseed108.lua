NPCINFO = {
name="摇钱树",
butt="0|0|42",
isboss = 2, 
serial= "979",
icon= 10524,
NpcMove= 10524, 
iconaddr= 1,
maxnum= 1,
booty= "o_material_38",
getrate= 100,
bootyrate="100",
gettime= 3,
getlevel= 1,
candig=1,
act=1,
ondig=1,
}
function OnDig()
local map=MapName()
local num=getnum()
local level=LuaQuery("level")
local cjtimes=600     --采集间隔
if(LuaPublicQuery(""..map.."/"..num.."/cbq")<1)then                     
LuaSay("这是第"..num.."块地，此块土地承包期为0，到NPC处重新承包或施肥后才能采集！")
else 
   if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then                               
       if(LuaPublicQueryStr(""..map.."/"..num.."/winid")==LuaQueryStr("name"))then            
	                                                                            -- 本人的植物
	  if(GetCurrentTime()- LuaPublicQuery(""..map.."/"..num.."/time")<cjtimes)then
	   local Tcjtimes=floor((GetCurrentTime()- LuaPublicQuery(""..map.."/"..num.."/time"))/60) 
	     LuaShowNotify("此物"..Tcjtimes.."分钟前才被采集，大于10分钟才能采集。")
          else
	      LuaPublicSet(""..map.."/"..num.."/time",GetCurrentTime())
	        local r=LuaRandom(3)
	       if(r==2)then
                if(LuaPublicQuery(""..map.."/"..num.."/exp")>0)then
		    local m=floor(LuaPublicQuery(""..map.."/"..num.."/exp")/2)
		    LuaGive("coin",LuaPublicQuery(""..map.."/"..num.."/exp"),"Tcj")
                    LuaAddJx("combat_exp",floor(level/5-1)*1000,"Tcj") 
		    LuaPublicAdd(""..map.."/"..num.."/exp",-m)
		 else
		    LuaSay("该植物经验值为0,采集不出什么东西了！你需要施肥才能获得更高奖励，施肥越多，奖励越高！肥料可到NPC那里购买！")
		 end
                
	       else
	       LuaShowNotify("你运气差，没摇到钱！只得一些经验！")
	       LuaAddJx("combat_exp",floor(level/5-1)*1000,"Tcj")
	       end
              
            end
	  
       else  
          LuaSay("归属："..LuaPublicQueryStr(""..map.."/"..num.."/winid").."\n成长度："..LuaPublicQuery(""..map.."/"..num.."/exp").."\n承包期:"..LuaPublicQuery(""..map.."/"..num.."/cbq").."\n保安："..LuaPublicQuery(""..map.."/"..num.."/bh").."")
	  LuaSay("该植物不属于你，不能采集，可放毒药降低他的承包期，然后自己承包！")        
       end
    else 
                                                                     --("外国人")  
          if(GetCurrentTime()- LuaPublicQuery(""..map.."/"..num.."/time")<cjtimes)then
           LuaShowNotify("此株植物刚被采过，每10分钟摘一次！")
          else
            --  LuaSet("Tcjtime",GetCurrentMinute())
	      LuaPublicSet(""..map.."/"..num.."/time",GetCurrentTime())
	        local r=LuaRandom(3)
	       if(r==2)then
                 if(LuaPublicQuery(""..map.."/"..num.."/exp")>0)then
                   local m=floor(LuaPublicQuery(""..map.."/"..num.."/exp")/2)
		    LuaGive("coin",LuaPublicQuery(""..map.."/"..num.."/exp"),"Tcj")
                    LuaAddJx("combat_exp",floor(level/5-1)*1000,"Tcj") 
		    LuaPublicAdd(""..map.."/"..num.."/exp",-m)
		 else
		    LuaSay("该植物经验值为0,采集不出什么东西了！")
		 end
		
	       else
	         if(LuaPublicQuery(""..map.."/"..num.."/bh")==1 and r==0)then
		   LocalMsg("呔！外国人"..LuaQueryStr("name").."偷采时被农场保安当场抓住并扭送进了局子,真是不幸啊！")
		   ChangeMap("lu_dilao")
		 else
	         LuaShowNotify("你运气差，什么都没有采到！")
	         end
	       end
              
            end
     end
end
LuaOtherSendMenu()
return 1
end

function getnum()
    local x=LuaQueryTemp("posx")
    local y=LuaQueryTemp("posy")
   local n=floor (x/255)
   if(y<232)then
   n=n+1
   else
   n=n+11
   end
  return n
end


 