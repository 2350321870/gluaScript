function do_use()
task={}
task[279]={279,"桃源径","lu_tyj","Tmap_1","","color",1}
task[280]={280,"桃源村","lu_tyc","Tmap_2","","color",1}
task[281]={281,"迷雾之林","lu_mwzl","Tmap_3","","color",1}
task[282]={282,"巨石洞","lu_jsd","Tmap_4","","color",1}
task[283]={283,"建康南郊","lu_jknj","Tmap_5","","color",1}
task[284]={284,"建康东郊","lu_jkdj","Tmap_6","","color",1}
task[285]={285,"五斗山","lu_wds","Tmap_7","","color",1}
task[286]={286,"山寨","lu_sz","Tmap_8","","color",1}
task[287]={287,"山寨地牢","lu_szdl","Tmap_9","","color",1}
task[288]={288,"北府军营","lu_bfjy","Tmap_10","","color",1}
task[289]={289,"军营前哨","lu_jyqs","Tmap_11","","color",1}
task[290]={290,"淝水之滨","lu_fszb","Tmap_12","","color",1}
task[291]={291,"淝水对岸","lu_fsda","Tmap_13","","color",1}
task[292]={292,"淝水河底","lu_fshd","Tmap_14","","color",1}
task[293]={293,"洛阳郊外","lu_lyjw","Tmap_15","","color",1}
task[294]={294,"渭水之滨","lu_wszb","Tmap_16","","color",1}
task[295]={295,"西蜀竹林","lu_xszl","Tmap_17","","color",1}
task[296]={296,"食人谷","lu_srg","Tmap_18","","color",1}
task[297]={297,"白骨洞","lu_bgd","Tmap_19","","color",1}
task[298]={298,"洛城废墟","lu_jgd","Tmap_20","","color",1}
task[299]={299,"陷落关口","lu_fqcl","Tmap_21","","color",1}
task[300]={300,"太行古径","lu_thgj","Tmap_22","","color",1}
task[301]={301,"太行山谷","lu_thsg","Tmap_23","","color",1}
task[302]={302,"参合坡","lu_chp","Tmap_24","","color",1}
task[303]={303,"燕王陵","lu_ywl","Tmap_25","","color",1}
task[304]={304,"地下陵墓","lu_dxlm","Tmap_26","","color",1}
task[305]={305,"地下陵穴","lu_dxlx","Tmap_27","","color",1}
task[306]={306,"关外","lu_clc","Tmap_28","","color",1}
task[307]={307,"云中郊外","lu_yzjw","Tmap_29","","color",1}
task[308]={308,"古战场","lu_gzc","Tmap_30","","color",1}
task[309]={309,"契丹部落","lu_qdbl","Tmap_31","","color",1}
task[310]={310,"漠北大荒","lu_mbdh","Tmap_32","","color",1}
task[311]={311,"沙漠绿洲","lu_smlz","Tmap_33","","color",1}
task[312]={312,"沙漠迷宫","lu_smmg","Tmap_34","","color",1}
task[313]={313,"柔然领地","lu_rrld","Tmap_35","","color",1}
task[314]={314,"极西走廊","lu_jxzl","Tmap_36","","color",1}
task[315]={315,"匈奴王庭","lu_xnwt","Tmap_37","","color",1}
task[316]={316,"巫魂山","lu_whs","Tmap_38","","color",1}
task[317]={317,"魍魉塔一层","lu_wltyc","Tmap_39","","color",1}
task[318]={318,"魍魉塔二层","lu_wltec","Tmap_40","","color",1}
task[319]={319,"魔王殿","lu_mwd","Tmap_41","","color",1}
	local a=LuaQueryTask("task1type5col")
		if(LuaQueryTask(task[a][4])==1 or LuaQueryTask(task[a][4])==2)then
			if(MapName()==task[a][3])then
				LuaSay("提示：已经通知到当地的群众了，你可以回去交差了")
				LuaSetTask(task[a][4],2)
				LuaOtherSendMenu()
				return 1
			else
				LuaSay("提示：你需要去的地方是"..task[a][2].."")
				LuaOtherSendMenu()
			end
		else
			return 0
		end
end