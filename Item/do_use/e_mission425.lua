function do_use()
task={}
task[279]={279,"��Դ��","lu_tyj","Tmap_1","","color",1}
task[280]={280,"��Դ��","lu_tyc","Tmap_2","","color",1}
task[281]={281,"����֮��","lu_mwzl","Tmap_3","","color",1}
task[282]={282,"��ʯ��","lu_jsd","Tmap_4","","color",1}
task[283]={283,"�����Ͻ�","lu_jknj","Tmap_5","","color",1}
task[284]={284,"��������","lu_jkdj","Tmap_6","","color",1}
task[285]={285,"�嶷ɽ","lu_wds","Tmap_7","","color",1}
task[286]={286,"ɽկ","lu_sz","Tmap_8","","color",1}
task[287]={287,"ɽկ����","lu_szdl","Tmap_9","","color",1}
task[288]={288,"������Ӫ","lu_bfjy","Tmap_10","","color",1}
task[289]={289,"��Ӫǰ��","lu_jyqs","Tmap_11","","color",1}
task[290]={290,"��ˮ֮��","lu_fszb","Tmap_12","","color",1}
task[291]={291,"��ˮ�԰�","lu_fsda","Tmap_13","","color",1}
task[292]={292,"��ˮ�ӵ�","lu_fshd","Tmap_14","","color",1}
task[293]={293,"��������","lu_lyjw","Tmap_15","","color",1}
task[294]={294,"μˮ֮��","lu_wszb","Tmap_16","","color",1}
task[295]={295,"��������","lu_xszl","Tmap_17","","color",1}
task[296]={296,"ʳ�˹�","lu_srg","Tmap_18","","color",1}
task[297]={297,"�׹Ƕ�","lu_bgd","Tmap_19","","color",1}
task[298]={298,"��Ƿ���","lu_jgd","Tmap_20","","color",1}
task[299]={299,"����ؿ�","lu_fqcl","Tmap_21","","color",1}
task[300]={300,"̫�йž�","lu_thgj","Tmap_22","","color",1}
task[301]={301,"̫��ɽ��","lu_thsg","Tmap_23","","color",1}
task[302]={302,"�κ���","lu_chp","Tmap_24","","color",1}
task[303]={303,"������","lu_ywl","Tmap_25","","color",1}
task[304]={304,"������Ĺ","lu_dxlm","Tmap_26","","color",1}
task[305]={305,"������Ѩ","lu_dxlx","Tmap_27","","color",1}
task[306]={306,"����","lu_clc","Tmap_28","","color",1}
task[307]={307,"���н���","lu_yzjw","Tmap_29","","color",1}
task[308]={308,"��ս��","lu_gzc","Tmap_30","","color",1}
task[309]={309,"��������","lu_qdbl","Tmap_31","","color",1}
task[310]={310,"Į�����","lu_mbdh","Tmap_32","","color",1}
task[311]={311,"ɳĮ����","lu_smlz","Tmap_33","","color",1}
task[312]={312,"ɳĮ�Թ�","lu_smmg","Tmap_34","","color",1}
task[313]={313,"��Ȼ���","lu_rrld","Tmap_35","","color",1}
task[314]={314,"��������","lu_jxzl","Tmap_36","","color",1}
task[315]={315,"��ū��ͥ","lu_xnwt","Tmap_37","","color",1}
task[316]={316,"�׻�ɽ","lu_whs","Tmap_38","","color",1}
task[317]={317,"������һ��","lu_wltyc","Tmap_39","","color",1}
task[318]={318,"����������","lu_wltec","Tmap_40","","color",1}
task[319]={319,"ħ����","lu_mwd","Tmap_41","","color",1}
	local a=LuaQueryTask("task1type5col")
		if(LuaQueryTask(task[a][4])==1 or LuaQueryTask(task[a][4])==2)then
			if(MapName()==task[a][3])then
				LuaSay("��ʾ���Ѿ�֪ͨ�����ص�Ⱥ���ˣ�����Ի�ȥ������")
				LuaSetTask(task[a][4],2)
				LuaOtherSendMenu()
				return 1
			else
				LuaSay("��ʾ������Ҫȥ�ĵط���"..task[a][2].."")
				LuaOtherSendMenu()
			end
		else
			return 0
		end
end