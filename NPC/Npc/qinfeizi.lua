NPCINFO = {
serial="110" ,
base_name="qinfeizi" ,
icon=2550,
NpcMove=2550,
name="帮狱卒",
iconaddr=1 ,
butt="10|10|63" ,
lastsay="窍钩者诛,窍国者王！" ,
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then 
        local level= LuaQuery("level")
	AddTopSayMenuItem("牢房管理","")
	if(LuaQuery("bjail")~= 0 ) then   --bjail：为犯人被抓进帮派地牢的时间 
	AddTopSayMenuItem("犯人越狱","yueyu")
	else
	AddTopSayMenuItem("出牢房","huizhuan")
	end
	 AddTopSayMenuItem("洗礼","Txili")
	AddTopSayMenuItem("聊天","liaotian")
  return 1  

elseif(answer=="liaotian") then
	LuaSay("帮狱卒：先祖大费因助禹治水有功，又助舜训练鸟兽，赐姓嬴。乱世下，这牢笼中，必是藏龙卧虎。")
	
elseif(answer=="yueyu") then
        local dtime=floor(LuaQuery("bjail")/60)
	if(dtime<= 0) then 
	  if(LuaQuery("pk_state")<-19) then
	     LuaSetTask("pk_state",-19)
	     FlushPKState()
	  end
	LuaSay("帮狱卒：洞已挖好！今日救阁下出去，他日飞黄腾达时，当记得在下的绵薄之力，便可。")
	LuaSet("bjail",0)
	ChangeMap("lu_tyj",120,192)
	else
	LuaSay("帮狱卒：英雄，老朽仰慕你很久了，我在墙后挖了个洞供大人逃遁，还有@3"..dtime.."分钟@0就挖好了。")
	LuaSay(""..LuaQueryStr("name").."：好，到时候我再找你，不行的话本大爷就活活吃了你！")
	end       
elseif(answer=="huizhuan") then    
	ChangeMap("lu_tyj",120,192)
	
elseif(answer=="Txili") then
   if(LuaQuery("pk_state")<=-10)  then
    LuaSay("帮狱卒:佛祖会宽恕你的一切罪过,人性本善嘛,我会给大家洗刷罪恶的机会")
    LuaSay("帮狱卒:你可以选择洗刷1点、5点、10点的pk值")
    AddMenuItem("列表","","")
    AddMenuItem("一点","one","")
    AddMenuItem("五点","five","")
    AddMenuItem("十点","ten","")
   else
    LuaSay("帮狱卒:你不需要洗礼,施主可要洁身自好")
   end

    elseif(answer=="one") then
    local level= LuaQuery("level")
    local jinqian=(level*10)
     if(LuaItemCount("coin")>jinqian) then
     LuaAdd("pk_state",1)
     LuaSay("提示:pk值增加1")
     LuaGive("coin",-jinqian,"Txili")
     FlushPKState()
	else
	 LuaSay("帮狱卒:你需要@3"..jinqian.."@0铜币方可洗@31点pk值")
	 end
	

    elseif(answer=="five") then
    local level= LuaQuery("level")
    local jinqian=(level*50)
     if(LuaItemCount("coin")>jinqian) then
     LuaAdd("pk_state",5)
     LuaSay("提示:pk值增加5")
     LuaGive("coin",-jinqian,"Txili")
     FlushPKState()
	else
	 LuaSay("帮狱卒:你需要@3"..jinqian.."@0铜币方可洗@35点pk值")
	 end

    elseif(answer=="ten") then
    local level= LuaQuery("level")
    local jinqian=(level*100)
     if(LuaItemCount("coin")>jinqian) then
     LuaAdd("pk_state",10)
     LuaSay("提示:pk值增加10")
     LuaGive("coin",-jinqian,"Txili")
     FlushPKState()
	 else
	 LuaSay("帮狱卒:你需要@3"..jinqian.."@0铜币方可洗@310点pk值")
	 end
	
	
end
LuaSendMenu()
return 1
end