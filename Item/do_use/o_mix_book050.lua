function do_use()

AddMenuItem("合成正骨丸","nc_combine o_mix_book050 a","合成")  



LuaSendMenu()
LuaShowNotify("正骨丸合成",1)
return 0
end

function nc_combine(type)

if (type=="a")then
 if (LuaItemCount("o_mission070")==0) then
	DelItem("o_mission071",5)   
    DelItem("o_mission058",5)   
	LuaGive("o_mission070",1)
	LuaShowNotify("成功合成正骨丸。")
	return 1
  else
   LuaShowNotify("不可再继续合成")
  end
end

end