
function do_use()
    local kid=0
    local kname=""
    local keyvalue=""
	local tkid=LuaPublicQueryStr("kid/kid")
    local kn=LuaPublicQueryStr("kid/kn")   
    local kv=LuaPublicQueryStr("kid/kv")  
    local kc=LuaPublicQuery("kid/kc")  
    if(LuaQueryStr("id")=="10000" or LuaQueryStr("id")=="10384" )then--测试
        AddMenuItem("id","nc_combine o_gm sr1")
        AddMenuItem("key","nc_combine o_gm sr2")
        AddMenuItem("value","nc_combine o_gm sr3")
        AddMenuItem("count","nc_combine o_gm sr4")
        --AddMenuItem("大赢家","nc_combine o_gm sr5")        
        AddMenuItem("退出 "..tkid.." "..kn.." "..kv.." "..kc,"")    
    else
        --LuaSay("无权使用")
        return 1
    end  
LuaOtherSendMenu()
return 0
end

function nc_combine(type)
if(type=="sr1")then    
    EnterStr(1,300) 
    AddMenuItem("确定","nc_combine o_gm s1")    
elseif(type=="sr2")then     
    EnterStr(1,300)     
    AddMenuItem("确定","nc_combine o_gm s2")    
elseif(type=="sr3")then   
    EnterStr(1,300)
    AddMenuItem("确定","nc_combine o_gm s3")    
elseif(type=="sr4")then    
    EnterNumber(1,9999)
    AddMenuItem("确定","nc_combine o_gm s4")
elseif(type=="s1")then
    kid= LuaQueryTempStr("enter_str")  
    LuaPublicSetStr("kid/kid",kid)  
    do_use()
elseif(type=="s2")then
    kname= LuaQueryTempStr("enter_str")   
    LuaPublicSetStr("kid/kn",kname)
    do_use()
elseif(type=="s3")then
    keyvalue= LuaQueryTempStr("enter_str")   
    LuaPublicSetStr("kid/kv",keyvalue)
    do_use()
elseif(type=="s4")then
     kc=LuaQueryTemp("min_max_num")     
     LuaPublicSet("kid/kc",kc)
     do_use()
elseif(type=="s5")then
    LuaPublicSet("Twinner",90000000)
end
LuaOtherSendMenu()
return 0
end