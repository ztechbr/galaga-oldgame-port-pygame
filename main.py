"""Galaga research port. Behavioral recreation, native ROM 2bpp sprite arrays.
Not an instruction/cycle-accurate emulator. Detailed provenance in docs.
"""
from __future__ import annotations
import argparse, json, math, random
from dataclasses import dataclass
from pathlib import Path
import pygame

ROOT=Path(__file__).resolve().parent
WIDTH,HEIGHT=224,288
FPS=60
DT=1/FPS

@dataclass
class Shot:
    x:float
    y:float
    vx:float=0
    vy:float=-4.2
    enemy:bool=False

@dataclass
class Enemy:
    row:int
    col:int
    kind:int
    x:float
    y:float
    slot_x:float
    slot_y:float
    hp:int=1
    mode:str='enter'
    timer:int=0
    loop:float=0
    start_x:float=0
    start_y:float=0
    captured:bool=False
    frame:int=0

class PixelBank:
    """ROM 2bpp pixel arrays -> surfaces with lookup PROM and 32-entry palette.
    Integer-only: source pixel is never antialiased or smoothed.
    """
    def __init__(self, assets):
        self.sprites=assets['sprites'];self.chars=assets['chars']
        self.palette=assets['palette'];self.slut=assets['sprite_lookup'];self.clut=assets['char_lookup']
        self.cache={};self.ccache={}
    def _build(self, pattern, bank, lookup, group):
        surf=pygame.Surface((len(pattern[0]),len(pattern)), pygame.SRCALPHA,32)
        for y,row in enumerate(pattern):
            for x,pix in enumerate(row):
                if pix==0:continue
                # Four colors per group. Lookup table is 4-bit encoded palette index.
                lookup_index=((group&63)*4+pix)&255
                idx=lookup[lookup_index]&31
                surf.set_at((x,y),(*self.palette[idx],255))
        return surf
    def sprite(self, n:int, group:int=0):
        key=(n%len(self.sprites),group&63)
        if key not in self.cache:self.cache[key]=self._build(self.sprites[key[0]],'sprite',self.slut,key[1])
        return self.cache[key]
    def char(self,n:int,group:int=0):
        key=(n%len(self.chars),group&63)
        if key not in self.ccache:self.ccache[key]=self._build(self.chars[key[0]],'char',self.clut,key[1])
        return self.ccache[key]

class Audio:
    """Synthetic 3-voice arcade-style audio; not original Namco 54xx emulation."""
    def __init__(self):
        self.ok=pygame.mixer.get_init() is not None
        self.effects={}
        if self.ok:
            import array
            rate=22050
            for name,duration,base,decay in [('shoot',.08,660,6),('hit',.16,210,12),('death',.55,130,4),('capture',.75,350,3),('stage',.4,440,2)]:
                samples=array.array('h')
                for i in range(int(rate*duration)):
                    t=i/rate;f=base*(1-.63*t/duration)
                    phase=2*math.pi*(base*t-.315*base*t*t/duration)
                    wave=(1 if math.sin(phase)>0 else -1)*.65+math.sin(phase*.5)*.25
                    samples.append(int(9500*wave*math.exp(-decay*t/duration)))
                self.effects[name]=pygame.mixer.Sound(buffer=samples.tobytes())
    def play(self,name):
        if self.ok and name in self.effects:self.effects[name].play()

class Game:
    def __init__(self,bank,audio,seed=1981):
        self.bank=bank;self.audio=audio;self.rng=random.Random(seed)
        self.stars=[(self.rng.randrange(WIDTH),self.rng.randrange(HEIGHT),self.rng.randrange(1,4)) for _ in range(85)]
        self.font=pygame.font.Font(None,14)
        self.scale=3
        self.hiscore=20000
        self.state='attract'
        self.frame=0
        self.init_game()
        self.state='attract'
    def init_game(self):
        self.score=0;self.lives=3;self.stage=1;self.player_x=104.;self.player_y=255
        self.player_shots=[];self.enemy_shots=[];self.player_cooldown=0;self.invincible=100
        self.captive=False;self.dual=False;self.capture_progress=0;self.boss_carry=False
        self.stage_timer=0;self.dive_cooldown=110;self.dead_ticks=0;self.flash=0
        self.shots_fired=0;self.hits=0;self.enemies=[];self.start_wave()
        self.state='playing'
    def start_wave(self):
        self.enemies=[];self.stage_timer=0;self.dive_cooldown=120
        # 4 boss, 16 butterfly, 20 bee style formation; periodic entrance drift
        for row in range(5):
            count=4 if row==0 else 8 if row in (1,2) else 10
            for col in range(count):
                slot_x=WIDTH/2+(col-(count-1)/2)*19-8
                slot_y=45+row*23
                kind=2 if row==0 else 1 if row<3 else 0
                stagger=(row*19+col*5)
                self.enemies.append(Enemy(row,col,kind,WIDTH/2-8,-25-stagger,slot_x,slot_y,2 if kind==2 else 1,timer=-stagger))
        self.audio.play('stage')
    def player_rects(self):
        return [pygame.Rect(round(self.player_x),self.player_y,16,16)] + ([pygame.Rect(round(self.player_x+15),self.player_y,16,16)] if self.dual else [])
    def shoot(self):
        if self.player_cooldown>0 or self.dead_ticks>0:return
        for x in ([self.player_x+8,self.player_x+23] if self.dual else [self.player_x+8]):
            self.player_shots.append(Shot(x,self.player_y-3))
            self.shots_fired+=1
        self.audio.play('shoot');self.player_cooldown=11
    def hit_player(self):
        if self.invincible>0 or self.dead_ticks>0:return
        if self.dual:self.dual=False;self.invincible=130;self.audio.play('death');return
        self.lives-=1;self.audio.play('death');self.dead_ticks=90;self.invincible=180
        self.enemy_shots.clear()
        if self.lives<1:self.state='gameover'
    def update(self,keys):
        self.frame+=1
        if self.state!='playing':return
        self.stage_timer+=1
        if self.dead_ticks>0:self.dead_ticks-=1
        if self.invincible>0:self.invincible-=1
        self.player_cooldown=max(0,self.player_cooldown-1)
        if self.dead_ticks==0:
            direction=int(bool(keys[pygame.K_RIGHT] or keys[pygame.K_d]))-int(bool(keys[pygame.K_LEFT] or keys[pygame.K_a]))
            self.player_x=max(5,min(WIDTH-22-(15 if self.dual else 0),self.player_x+direction*2.65))
            if keys[pygame.K_SPACE] or keys[pygame.K_z]:self.shoot()
        if self.captive:
            self.capture_progress-=1
            if self.capture_progress<=0:
                self.captive=False;self.hit_player()
        for b in self.player_shots[:]:
            b.x+=b.vx;b.y+=b.vy
            if b.y<-8:self.player_shots.remove(b);continue
            for e in self.enemies[:]:
                if abs(b.x-e.x-8)<9 and abs(b.y-e.y-8)<10:
                    if b in self.player_shots:self.player_shots.remove(b)
                    e.hp-=1;self.hits+=1;self.audio.play('hit')
                    if e.hp<=0:
                        if e.captured:self.dual=True;self.captive=False;self.score+=1000
                        self.score+= (150 if e.kind==2 else 80 if e.kind==1 else 50)*(2 if e.mode in ('dive','tractor','return') else 1)
                        self.enemies.remove(e)
                    break
        for e in self.enemies:
            e.timer+=1
            if e.mode=='enter':
                if e.timer<0:continue
                p=min(1,e.timer/90)
                e.x=WIDTH/2-8+math.sin(p*math.pi*2+e.col*.2)*44*(1-p)+ (e.slot_x-(WIDTH/2-8))*p
                e.y=-12+(e.slot_y+12)*(p*p*(3-2*p))
                if p>=1:e.mode='formation'
            elif e.mode=='formation':
                e.x=e.slot_x+math.sin(self.frame*.025)*5;e.y=e.slot_y+math.sin(self.frame*.025)*2
            elif e.mode in ('dive','tractor'):
                e.loop+=.027
                p=e.loop
                e.x=e.start_x+math.sin(p*4+e.col*.2)*52+math.sin(p*1.3)*13
                e.y=e.start_y+min(330,p*114)
                if e.mode=='tractor' and .75<p<1.95:
                    e.y=min(e.y,178)
                    if abs(self.player_x+8-e.x-8)<16 and self.dead_ticks==0 and self.invincible==0 and not self.dual:
                        self.captive=True;self.capture_progress=50
                if e.y>HEIGHT+20:
                    e.mode='return';e.loop=0;e.x=e.slot_x;e.y=-24
            elif e.mode=='return':
                e.y+=2.5;e.x+=(e.slot_x-e.x)*.08
                if e.y>=e.slot_y:e.mode='formation';e.y=e.slot_y
            if e.mode in ('dive','tractor') and self.stage_timer%42==0 and self.rng.random()<.23:
                vx=max(-1.7,min(1.7,(self.player_x-e.x)/90))
                self.enemy_shots.append(Shot(e.x+8,e.y+12,vx,2.5+self.stage*.06,True))
            if self.invincible==0 and self.dead_ticks==0:
                er=pygame.Rect(round(e.x+2),round(e.y+2),12,12)
                if any(er.colliderect(pr) for pr in self.player_rects()):self.hit_player()
        self.dive_cooldown-=1
        if self.dive_cooldown<0:
            viable=[e for e in self.enemies if e.mode=='formation']
            if viable:
                chosen=self.rng.choice(viable)
                chosen.mode='tractor' if chosen.kind==2 and self.stage>1 and self.rng.random()<.22 else 'dive'
                chosen.loop=0;chosen.start_x=chosen.x;chosen.start_y=chosen.y
            self.dive_cooldown=max(36,105-self.stage*5)
        for b in self.enemy_shots[:]:
            b.x+=b.vx;b.y+=b.vy
            if b.y>HEIGHT or b.x<0 or b.x>WIDTH:self.enemy_shots.remove(b);continue
            if self.invincible==0 and self.dead_ticks==0 and any(p.collidepoint(b.x,b.y) for p in self.player_rects()):
                self.enemy_shots.remove(b);self.hit_player()
        if not self.enemies:
            self.stage+=1;self.enemy_shots.clear();self.start_wave()
    def txt(self,d,s,x,y,c=(245,245,245)):
        d.blit(self.font.render(s,False,c),(x,y))
    def draw(self,d):
        d.fill((0,0,0))
        for x,y,depth in self.stars:
            k=(self.frame//(11-depth*2)) if self.state=='playing' else self.frame//20
            d.set_at((x,(y+k)%HEIGHT),[(70,70,115),(110,110,160),(180,180,230)][depth-1])
        self.txt(d,'1UP',10,5,(242,61,65));self.txt(d,f'{self.score:06}',10,17)
        self.txt(d,'HIGH SCORE',83,5,(242,61,65));self.txt(d,f'{max(self.hiscore,self.score):06}',99,17)
        if self.state=='attract':
            self.txt(d,'GALAGA',84,95,(240,70,85));self.txt(d,'1: START',78,128);self.txt(d,'ARROWS MOVE',69,151)
            self.txt(d,'SPACE FIRE',72,166);self.txt(d,'T: SPRITE ATLAS',55,181,(180,180,200));return
        for e in self.enemies:
            if e.mode=='enter' and e.timer<0:continue
            # Identifiers in ROM are not documented object semantic labels:
            # selected empirically and can be inspected with atlas (T).
            base={0:0x06,1:0x0e,2:0x18}[e.kind]
            frame=(self.frame//18+e.col)%2
            sid=(base+frame)&127
            group={0:1,1:4,2:6}[e.kind]
            d.blit(self.bank.sprite(sid,group),(round(e.x),round(e.y)))
            if e.mode=='tractor' and .75<e.loop<1.95:
                for j in range(6):
                    width=7+j*3
                    yy=int(e.y+16+j*11)
                    if 0<=yy<HEIGHT:pygame.draw.line(d,(40,75+min(j*23,160),200),(e.x+8-width,yy),(e.x+8+width,yy),1)
        for b in self.player_shots:pygame.draw.rect(d,(246,230,140),(int(b.x),int(b.y),2,7))
        for b in self.enemy_shots:pygame.draw.rect(d,(235,95,100),(int(b.x),int(b.y),2,5))
        if self.dead_ticks==0 and (self.invincible==0 or self.frame%8<4):
            d.blit(self.bank.sprite(0x00,0),(round(self.player_x),self.player_y))
            if self.dual:d.blit(self.bank.sprite(0x00,0),(round(self.player_x+15),self.player_y))
        for i in range(max(0,self.lives-1)):
            d.blit(self.bank.sprite(0x00,0),(7+i*18,271))
        self.txt(d,f'{self.stage}',194,274,(240,210,110))
        if self.state=='gameover':
            self.txt(d,'GAME OVER',77,142,(255,65,65));self.txt(d,'ENTER TO RESTART',52,161)

class Atlas:
    def __init__(self,bank):self.bank=bank;self.page=0;self.kind='sprite';self.group=0
    def draw(self,d):
        d.fill((5,5,15));font=pygame.font.Font(None,16)
        d.blit(font.render(f'ROM {self.kind.upper()} PAGE {self.page+1} BANK {self.group}',False,(255,255,255)),(5,4))
        arr=self.bank.sprites if self.kind=='sprite' else self.bank.chars
        ncols=8;step=27
        for r in range(9):
            for c in range(ncols):
                n=self.page*72+r*ncols+c
                if n>=len(arr):continue
                img=self.bank.sprite(n,self.group) if self.kind=='sprite' else self.bank.char(n,self.group)
                d.blit(img,(c*28+6,r*28+21))
                d.blit(pygame.font.Font(None,11).render(f'{n:02X}',False,(180,180,180)),(c*28+7,r*28+39))
        d.blit(pygame.font.Font(None,12).render('PGUP/DN: PAGE  C: CHARS  [ ]: COLOR  T: BACK',False,(180,180,200)),(3,277))

def main():
    parser=argparse.ArgumentParser()
    parser.add_argument('--scale',type=int,default=3)
    parser.add_argument('--atlas',action='store_true')
    parser.add_argument('--no-audio',action='store_true')
    args=parser.parse_args()
    if args.scale<1 or args.scale>6:parser.error('--scale must be 1..6')
    pygame.init()
    if not args.no_audio:
        try:pygame.mixer.init(frequency=22050,size=-16,channels=1)
        except pygame.error:pass
    pygame.display.set_caption('Galaga 1981 - ROM 2bpp / academic behavioral port')
    screen=pygame.display.set_mode((WIDTH*args.scale,HEIGHT*args.scale))
    canvas=pygame.Surface((WIDTH,HEIGHT))
    bank=PixelBank(json.loads((ROOT/'assets'/'rom_graphics.json').read_text()))
    game=Game(bank,Audio());atlas=Atlas(bank);show_atlas=args.atlas
    clock=pygame.time.Clock();running=True
    while running:
        for ev in pygame.event.get():
            if ev.type==pygame.QUIT:running=False
            if ev.type==pygame.KEYDOWN:
                if ev.key==pygame.K_ESCAPE:running=False
                if ev.key==pygame.K_t:show_atlas=not show_atlas
                if show_atlas:
                    if ev.key==pygame.K_PAGEUP:atlas.page=max(0,atlas.page-1)
                    if ev.key==pygame.K_PAGEDOWN:atlas.page=min(3 if atlas.kind=='char' else 1,atlas.page+1)
                    if ev.key==pygame.K_c:atlas.kind='char' if atlas.kind=='sprite' else 'sprite';atlas.page=0
                    if ev.key==pygame.K_LEFTBRACKET:atlas.group=(atlas.group-1)%64
                    if ev.key==pygame.K_RIGHTBRACKET:atlas.group=(atlas.group+1)%64
                elif ev.key in (pygame.K_1,pygame.K_RETURN) and game.state!='playing':game.init_game()
                elif ev.key==pygame.K_r:game.init_game()
        if show_atlas:atlas.draw(canvas)
        else:game.update(pygame.key.get_pressed());game.draw(canvas)
        pygame.transform.scale(canvas,screen.get_size(),screen)
        pygame.display.flip();clock.tick(FPS)
    pygame.quit()
if __name__=='__main__':main()
