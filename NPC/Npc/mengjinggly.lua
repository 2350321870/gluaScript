NPCINFO = {
serial="184" ,
base_name="mengjinggly" ,
icon=2563,
NpcMove=2563,
name="�ξ�ʹ��" ,
iconaddr=1 ,
butt="10|10|63" ,
lastsay="�����淨�������ξ�" ,
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then 
    havetask =0
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7�ξ�ϵͳ","")
	AddTopSayMenuItem("@3�ξ�����","mjgz")
	AddTopSayMenuItem("@3�ξ�֮���ȿ��ˡ����","Tdreamzjkr")
	if((LuaQueryTask("Tsnpc_18")==1 or LuaQueryTask("Tsnpc_18")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2��վС��","Tsnpc_18")
		havetask=2
	end
	if((LuaQueryTask("Tenpc_18")==1 or LuaQueryTask("Tenpc_18")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2ǧ�ﴫ��","Tenpc_18")
		havetask=2
	end
	AddTopSayMenuItem("����","liaotian",""..havetask.."")   
	return 1

elseif(answer=="liaotian") then
	 LuaSay("�ξ�ʹ�ߣ����ྫ���淨�����ξ�ϵͳ��18���Ժ󣬾Ϳ�����ս�ξ���")

elseif(answer=="mjgz") then
	 LuaSay("�ξ�ʹ�ߣ������ξ��󣬽���õ�����ĵȼ�����Ǯ��װ���ȡ��뿪�ξ��󣬻��������������ʵ���ݡ�")
	 LuaSay("�ξ�ʹ�ߣ����ξ��еõ����κζ������뿪�ξ��󣬶�����ʧ�����������ƾ�����ξ��еĳɼ�����ȡ�������")
	if(LuaQuery("level")<18) then
	 LuaSay("@3��ܰ��ʾ���ξ���Ҫ@418������@0����Ҳ��ܽ��룬Ŭ�������ɣ�@!")
	 end
elseif(answer=="Tdreamzjkr")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
		if(GetCurrentDay()~=LuaQueryStrTask("Tdreamzjkrday") ) then
		LuaDelTask("Tdreamzjkr")
		end
	if(LuaQuery("level")>18)then
	if( GetCurrentHour()>=14 and GetCurrentHour()<16)then
	if(LuaQueryTask("Tdreamzjkr")==0) then
	   if(LuaDreamQuery("T"..LuaQueryStr("id").."")==0) then
           LuaSay("�ξ�ʹ�ߣ������Ŀ���ÿ�ն���ج�����ţ����ǿ������ѵ�����ʿͦ��������")
           LuaSay("�ξ�ʹ�ߣ��ξ����������󣬽����½�����ʵ����������Ҫ����ͷ��ʼ����Ŷ��")
           LuaSay("�ξ�ʹ�ߣ����ȳɹ��󣬿��Ի�ø߶�顢��Ǯ������@!")
           AddMenuItem("@7���ȿ���","")
           AddMenuItem("@3����","jieshou")
           AddMenuItem("@3����","fangqi")
    	   else
    	   LuaSetTask("Tdreamzjkr",99)
    	   LuaSetTask("Tdreamzjkrday",GetCurrentDay())
	   LuaDreamDel("T"..LuaQueryStr("id").."") 
     	   LuaSay("��ʾ����ɹ��������˿���")
     	   LuaGive("coin",5000,"Tdreamzjkr")
           LuaAddJx("combat_exp",100000+level^2*400+level*12000,"Tdreamzjkr")
    	   end
    	else
    	LuaSay("�ξ�ʹ�ߣ�������Ѿ�����˸û�����������ɣ�")
    	end
	else
		LuaSay("�ξ�ʹ�ߣ��û�ѽ�����δ��ʼ��ÿ��@114:00~16:00@0���ɲ��룡")
	end
	else
		LuaSay("�ξ�ʹ�ߣ��û��Ҫ�ȼ�����18������Ҳſɲ���Ŷ��")
	end

        elseif(answer=="jieshou") then
		if(LuaQueryTask("T116") == 1) then
		LuaSetTask("T116A",99)
		end
    		if(LuaQueryStr("MobieType") == "S62")then
    			LuaEnterDream("lu_dreamzjkr",909,149,1)
		elseif(LuaQueryStr("MobieType") == "S20")then
			LuaEnterDream("lu_dreamzjkr",909,149,4)
		else
			LuaEnterDream("lu_dreamzjkr",909,149,3)
		end

        elseif(answer=="fangqi") then
            LuaSay("��ʾ�����ȱ����ξ��Ŀ��ˣ�Ӯȡ���Ľ�����")
    		
   

elseif(answer=="Tsnpc_18")then
	if(LuaQueryTask("Tsnpc_18")==1)then
		LuaSay(""..LuaQueryStr("name").."�����Ǵ��˸���ļӼ��ż�������ȥ�ܻ���")
		LuaSay("�ξ�ʹ�ߣ����ȿ���")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_18",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_18")==2)then
		LuaSay("�ξ�ʹ�ߣ����ҿ����ˣ����ȥ�����ɡ�")
	end
elseif(answer=="Tenpc_18")then
	if(LuaQueryTask("Tenpc_18")==1)then
		LuaSay(""..LuaQueryStr("name").."���������£��ż����׶�ʧ�����Ҵ�������˵���ϴ�����һ������ֵ���")
		LuaSay("�ξ�ʹ�ߣ�������˼��ҹ�����Σ���������õĽ���")
		LuaSetTask("Tenpc_18",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_18")==2)then
		LuaSay("�ξ�ʹ�ߣ���ȥ������������Ͱ�")
	end		


end
LuaSendMenu()
return 1
end