NPCINFO = {
name="ҡǮ��",
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
local cjtimes=600     --�ɼ����
if(LuaPublicQuery(""..map.."/"..num.."/cbq")<1)then                     
LuaSay("���ǵ�"..num.."��أ��˿����سа���Ϊ0����NPC�����³а���ʩ�ʺ���ܲɼ���")
else 
   if(LuaQueryTempStr("online")==LuaQueryStr("country_id"))then                               
       if(LuaPublicQueryStr(""..map.."/"..num.."/winid")==LuaQueryStr("name"))then            
	                                                                            -- ���˵�ֲ��
	  if(GetCurrentTime()- LuaPublicQuery(""..map.."/"..num.."/time")<cjtimes)then
	   local Tcjtimes=floor((GetCurrentTime()- LuaPublicQuery(""..map.."/"..num.."/time"))/60) 
	     LuaShowNotify("����"..Tcjtimes.."����ǰ�ű��ɼ�������10���Ӳ��ܲɼ���")
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
		    LuaSay("��ֲ�ﾭ��ֵΪ0,�ɼ�����ʲô�����ˣ�����Ҫʩ�ʲ��ܻ�ø��߽�����ʩ��Խ�࣬����Խ�ߣ����Ͽɵ�NPC���ﹺ��")
		 end
                
	       else
	       LuaShowNotify("�������ûҡ��Ǯ��ֻ��һЩ���飡")
	       LuaAddJx("combat_exp",floor(level/5-1)*1000,"Tcj")
	       end
              
            end
	  
       else  
          LuaSay("������"..LuaPublicQueryStr(""..map.."/"..num.."/winid").."\n�ɳ��ȣ�"..LuaPublicQuery(""..map.."/"..num.."/exp").."\n�а���:"..LuaPublicQuery(""..map.."/"..num.."/cbq").."\n������"..LuaPublicQuery(""..map.."/"..num.."/bh").."")
	  LuaSay("��ֲ�ﲻ�����㣬���ܲɼ����ɷŶ�ҩ�������ĳа��ڣ�Ȼ���Լ��а���")        
       end
    else 
                                                                     --("�����")  
          if(GetCurrentTime()- LuaPublicQuery(""..map.."/"..num.."/time")<cjtimes)then
           LuaShowNotify("����ֲ��ձ��ɹ���ÿ10����ժһ�Σ�")
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
		    LuaSay("��ֲ�ﾭ��ֵΪ0,�ɼ�����ʲô�����ˣ�")
		 end
		
	       else
	         if(LuaPublicQuery(""..map.."/"..num.."/bh")==1 and r==0)then
		   LocalMsg("߾�������"..LuaQueryStr("name").."͵��ʱ��ũ����������ץס��Ť�ͽ��˾���,���ǲ��Ұ���")
		   ChangeMap("lu_dilao")
		 else
	         LuaShowNotify("�������ʲô��û�вɵ���")
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


 