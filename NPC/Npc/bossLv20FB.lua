NPCINFO = {		
serial="304" ,
base_name="bossLv20FB" ,
icon=2757,
NpcMove=2757,
name="姚襄" ,
iconaddr=1 ,
butt="1|1|85" ,
name_color="CEFFCE" ,
LuaType=1,
class = "shen",
addhp = 30000,
addmp = 2500000,
addjz=9000,
addfy=50,
addgj=90,
isboss = 1,
level = 28,
ca = 1,
sp=1,  --有该字段，装备掉落规则：绿67%，蓝30%，黄3%；没有sp字段，绿89%，蓝10%，黄1%
move_speed = 5,
att_frep = 3000,
target_type = 3,
target = "wu",
track_range = 100,
attack_range = 35,
skill_count = 5,
skill_list="122:2 129:2 221:1 222:1 223:1",----122：半月斩  129：爆裂之剑 221：五雷轰顶 222：倾国银弹波  223:强力弱甲
win_exp = 50000,
rand = 10000,
gold_base = 0,
win_money = 7500,
item_base = 0,
item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
other_base = 100,
--装备掉落：25~30 
other = "e_clothes010:10|e_falchion008:20|e_sword010:30|e_fan004:40|e_book003:50|e_shield003:60|e_knife005:70|e_pants010:80|e_earring003:100",
}

--boss特色：

function BossAI(bhp,bmp,EnemyID,hp,mp,level)
      if(bhp>=60)then
            
            
			 
		 	if(LuaQueryVar("ref1") ==0) then
               Attack(EnemyID,0,0)
               LuaSetVar("ref1",1)
            elseif(LuaQueryVar("ref1") ==1) then
               Attack(EnemyID,0,0)
               LuaSetVar("ref1",2)
            elseif(LuaQueryVar("ref1") ==2) then
               Attack(EnemyID,0,0)
               LuaSetVar("ref1",3)
   			elseif(LuaQueryVar("ref1") ==3) then
              	if(LuaItemCountEnemy(EnemyID,"coin") >= 0 and LuaItemCountEnemy(EnemyID,"coin") <500)then
					BossLocalMsg(""..LuaQueryStrEnemy(EnemyID,"name").."身上区区五百铜币都没有！真是比我还穷！")
					Attack(EnemyID,5,0)
				elseif(LuaItemCountEnemy(EnemyID,"coin") >=500 and LuaItemCountEnemy(EnemyID,"coin") < 50000)then
					BossLocalMsg(""..LuaQueryStrEnemy(EnemyID,"name").."身上有不少铜币，别以为藏在包裹里我不知道！我偷你1铜币！")
					LuaDelItemEnemy(EnemyID,"coin",1)
					Attack(EnemyID,4,0)
				elseif(LuaItemCountEnemy(EnemyID,"coin") >= 50000)then
					BossLocalMsg(""..LuaQueryStrEnemy(EnemyID,"name").."身上居然有五万多铜币，真有钱，我偷你10铜币！")
					LuaDelItemEnemy(EnemyID,"coin",10)
					Attack(EnemyID,3,0)
				end
                LuaSetVar("ref1",0)
			end
			
  --------------------------第二阶段
         elseif(bhp>=20 and bhp<60) then
         
         	if(bhp<50 and LuaQueryVar("flag1")==0)then
			BossLocalMsg("啊！真厉害，我只剩下半条命了！！") ------提示玩家boss已经被打的半血了，同时处于第二阶段 
			LuaSetVar("flag1",1)
			end   

			if(LuaQueryVar("ref2") ==0) then
               Attack(EnemyID,0,0)
               LuaSetVar("ref2",1)
            elseif(LuaQueryVar("ref2") ==1) then
               Attack(EnemyID,1,0)
               LuaSetVar("ref2",2)
            elseif(LuaQueryVar("ref2") ==2) then
               Attack(EnemyID,0,0)
               if(LuaQueryEnemy(EnemyID,"hp")<=500)  then
			   BossLocalMsg(""..LuaQueryStrEnemy(EnemyID,"name").."你还不加血，难道比我还想死？") ------提示玩家加血
			   end
               LuaSetVar("ref2",3)
            elseif(LuaQueryVar("ref2") ==3) then
               Attack(EnemyID,0,0)
               if(LuaQueryEnemy(EnemyID,"mp")<=300)   then
			   BossLocalMsg(""..LuaQueryStrEnemy(EnemyID,"name").."你打我啊！你打我啊！没魔不能放技能，我看你怎么打我！哈哈!") ------提示玩家加蓝
			   end
               LuaSetVar("ref2",4)
            elseif(LuaQueryVar("ref2") ==4) then
               Attack(EnemyID,2,0)
               LuaSetVar("ref2",0)
			end

			if(bhp<20 and LuaQueryVar("flag2")==0)then
			BossLocalMsg("啊！好厉害，我快撑不住了！") ------提示玩家boss进入第三阶段
			LuaSetVar("flag2",1)
			end
  -------------------------------------第三阶段
    elseif(bhp<20 ) then
        if(LuaQueryVar("ref3") ==0) then
               Attack(EnemyID,0,0)
               LuaSetVar("ref3",1)
            elseif(LuaQueryVar("ref3") ==1) then
               Attack(EnemyID,1,0)
               LuaSetVar("ref3",2)
            elseif(LuaQueryVar("ref3") ==2) then
               Attack(EnemyID,2,0)
               LuaSetVar("ref3",3)
            elseif(LuaQueryVar("ref3") ==3) then
               Attack(EnemyID,5,0)
               BossLocalMsg(""..LuaQueryStrEnemy(EnemyID,"name").."你要是不会驱散负面效果，看我怎么轻松的扁你！") ------提示玩家驱散buff
               LuaSetVar("ref3",0)
			end

	
	end 

	   
return 1
end	   