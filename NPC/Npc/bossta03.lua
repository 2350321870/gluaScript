 NPCINFO ={
	serial="315" ,
	base_name="bossta03" ,
	icon=2987,
	NpcMove=2987,   
	name="地狱阎罗",
	iconaddr=1 ,
	butt="1|1|85" ,
	name_color="CEFFCE" ,
	LuaType=1,
	class = "wu",--boss的职业，根据此字段调用公式
	LuaType=1,
	isboss = 1,---是BOSS
	level =40,--BOSS等级
	ca = 1,
	sp=1,   --有该字段，装备掉落规则：蓝色95%，金色5%
	addhp = 22680,
	addmp = 2500000,
	addjz=9000,
	addfy = 162,
	addgj = 226,
	move_speed =7,--移动速度
	att_frep = 1000,
	isac=0,--攻击目标，所有人(0)，非boss国家角色(1)，非boss帮派角色(2)，系统赋予的角色目标(3)
	target_type = 0,--1.代表国家 2.代表帮派 3.代表职业 0.表示没有，不做选定目标的判断   ---0所有  3职业  1国家 2帮派  (0 3有用) 
	target = "shen",--表示攻击的职业   -----------主动锁定对象 
	track_range = 100,--方圆100个像素可追到
	attack_range =100,--方圆20个像素可攻击到
	skill_count = 9,--技能种类
	skill_list="122:4 129:4 162:4 164:4 223:4 129:7",
	--122 半月斩   174 裂心神   223 强力弱甲   167 天降神雷  221 五雷轰顶  122 半月斩  174 裂心神   166 妙手回春   122 半月斩   167 天降神雷     
	win_exp = 68200,
	rand = 10000,
	gold_base = 0,  --掉落金钱几率    0%掉钱
	win_money = 2500, --掉金钱数
	item_base = 0,  -----掉装备几率    0%掉装备
	item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
	other_base = 100,  -----材料掉落几率  100%掉材料
 other = "o_present102:10|o_baiyin:1|e_clothes016:10|e_falchion013:20|e_sword015:30|e_pen008:40|e_book007:50|e_shield007:60|e_knife008:70|e_pants016:80|e_earring008:100",
}
function BossAI(bhp,bmp,EnemyID,hp,mp,level)
      if(bhp<20 and LuaQueryVar("ref1") < 10) then
        Attack(EnemyID,6,0)
        LuaSetVar("ref1",10)
	BossLocalMsg("通过我这一关可没那么容易！")
      elseif(bhp<30 and LuaQueryVar("ref1") < 9) then
        Attack(EnemyID,1,0)
        LuaSetVar("ref1",9)

	  elseif(bhp<40 and LuaQueryVar("ref1") < 8) then
		Attack(EnemyID,2,0)
		LuaSetVar("ref1",8)

	  elseif(bhp<50 and LuaQueryVar("ref1") < 7) then
		Attack(EnemyID,3,0)
		LuaSetVar("ref1",7)
					      
	  elseif(bhp<60 and LuaQueryVar("ref1") < 6) then
		Attack(EnemyID,5,0)
		LuaSetVar("ref1",6)
					      
	  elseif(bhp<70 and LuaQueryVar("ref1") < 5) then
		Attack(EnemyID,6,0)
		LuaSetVar("ref1",5)
					      
	  elseif(bhp<80 and LuaQueryVar("ref1") < 4) then
		Attack(EnemyID,2,0)
		LuaSetVar("ref1",4)
					      
	  elseif(bhp<90 and LuaQueryVar("ref1") < 3) then
		Attack(EnemyID,1,0)
		LuaSetVar("ref1",3)
		BossLocalMsg("我投降了！我投降了,没人性啊，都不让投降...")
      elseif(LuaQueryVar("ref1") == 1) then
        Attack(EnemyID,5,1)
        LuaSetVar("ref1",2)
        
      elseif(LuaQueryVar("ref1") < 1) then
        LuaSetVar("ref1",1)
        
      else
        Attack(EnemyID,0,0)                             
                                    
	   end
	   
return 1
end	   
