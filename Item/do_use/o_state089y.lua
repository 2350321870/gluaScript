function do_use()
if(TeamCount()==2)  then 
        if(LuaQueryStr("gender")==TeamQueryStr("gender")) then
        local  r=LuaRandom(4)
	 if(r==0) then
         LuaNotice("@3"..TeamQueryStr("name").."@0,@7���׵��۹⣬�������������赲�����Ҷ���İ�@0---@3"..LuaQueryStr("name").."")
	 elseif(r==1) then
         LuaNotice("@3"..TeamQueryStr("name").."@0,@7�ϱ�������Ҳ�赲�����Ҷ���İ�@0---@3"..LuaQueryStr("name").."")
         elseif(r==2) then
         LuaNotice("@3"..TeamQueryStr("name").."@0,@7��������������е�����ʧȥ�˶��ҵ�������@0---@3"..LuaQueryStr("name").."")
         elseif(r==3) then
         LuaNotice("@3"..TeamQueryStr("name").."@0,@7��Ĵ��ڣ��ô���Ҳ�Ե���Ȼʧɫ@0---@3"..LuaQueryStr("name").."")
	 end
        else
        local  r=LuaRandom(6)
	 if(r==0) then
         LuaNotice("@3"..TeamQueryStr("name").."@0,@7����С��Ѱ�ҵĸ��壬С���ڴ��ĸ�¶���Ұ���@0��---@3"..LuaQueryStr("name").."")
         elseif(r==1) then
         LuaNotice("@3"..TeamQueryStr("name").."@0,@7����������������ҵ����磬�ҵ��������������@0��---@3"..LuaQueryStr("name").."")
	 elseif(r==2) then
         LuaNotice("@3"..TeamQueryStr("name").."@0,@7����ĳ�;����֪ƣ��ı��ߣ������ǽ�������ס�֣�@0 ---@3"..LuaQueryStr("name").."")
         elseif(r==3) then
         LuaNotice("@3"..TeamQueryStr("name").."@0,@7�װ����㣬�������ߵ�����ʯ�ã�����@0 ---@3"..LuaQueryStr("name").."")
	 elseif(r==4) then
         LuaNotice("@3"..TeamQueryStr("name").."@0,@7���Ǵʣ������ף�������������Զ�ĸ衣@0 ---@3"..LuaQueryStr("name").."")
	 elseif(r==5) then
         LuaNotice("@3"..TeamQueryStr("name").."@0,@7��ãã�˺����ҵ��㣬��������ǧ��ǰ��һ��Ե@0 ---@3"..LuaQueryStr("name").."")    
	 end
        end  
return 1	
else
LuaShowNotify("�õ�����Ҫ2����Ӳ���ʹ��")
end      
end