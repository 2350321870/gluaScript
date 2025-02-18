function do_use()
if(TeamCount()==2)  then 
        if(LuaQueryStr("gender")==TeamQueryStr("gender")) then
        local  r=LuaRandom(4)
	 if(r==0) then
         LuaNotice("@3"..TeamQueryStr("name").."@0,@7世俗的眼光，身后的骂名，都阻挡不了我对你的爱@0---@3"..LuaQueryStr("name").."")
	 elseif(r==1) then
         LuaNotice("@3"..TeamQueryStr("name").."@0,@7断背的骂名也阻挡不了我对你的爱@0---@3"..LuaQueryStr("name").."")
         elseif(r==2) then
         LuaNotice("@3"..TeamQueryStr("name").."@0,@7你的魅力，让所有的异性失去了对我的吸引力@0---@3"..LuaQueryStr("name").."")
         elseif(r==3) then
         LuaNotice("@3"..TeamQueryStr("name").."@0,@7你的存在，让春哥也显得黯然失色@0---@3"..LuaQueryStr("name").."")
	 end
        else
        local  r=LuaRandom(6)
	 if(r==0) then
         LuaNotice("@3"..TeamQueryStr("name").."@0,@7你是小船寻找的港湾，小草期待的甘露，我爱你@0。---@3"..LuaQueryStr("name").."")
         elseif(r==1) then
         LuaNotice("@3"..TeamQueryStr("name").."@0,@7你如阳光般洒进了我的世界，我的生命因你而精彩@0。---@3"..LuaQueryStr("name").."")
	 elseif(r==2) then
         LuaNotice("@3"..TeamQueryStr("name").."@0,@7风雨的长途，不知疲倦的奔走，让我们紧紧地拉住手！@0 ---@3"..LuaQueryStr("name").."")
         elseif(r==3) then
         LuaNotice("@3"..TeamQueryStr("name").."@0,@7亲爱的你，请陪我走到海枯石烂，好吗？@0 ---@3"..LuaQueryStr("name").."")
	 elseif(r==4) then
         LuaNotice("@3"..TeamQueryStr("name").."@0,@7你是词，我是谱，你是我心中永远的歌。@0 ---@3"..LuaQueryStr("name").."")
	 elseif(r==5) then
         LuaNotice("@3"..TeamQueryStr("name").."@0,@7于茫茫人海中找到你，分明是我千年前的一段缘@0 ---@3"..LuaQueryStr("name").."")    
	 end
        end  
return 1	
else
LuaShowNotify("该道具需要2人组队才能使用")
end      
end