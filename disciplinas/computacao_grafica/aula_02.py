import pygame
import math
from pygame.locals import *

from OpenGL.GL import *
from OpenGL.GLU import *
import sys

class Base(object):
   def __init__(self, tamanhoTela=[1024, 1024]):
      pygame.init()
      self.tela = pygame.display.set_mode(tamanhoTela, pygame.DOUBLEBUF | pygame.OPENGL )
      pygame.display.set_caption("Aula Computação Gráfica")
      self.clock = pygame.time.Clock()
      self.input = Input()

   def initialize(self):
      pass

   def update(self):
      pass
   
   def run(self):
      self.initialize()
      while True:
         self.input.update()
         if self.input.quit:
            break
         self.update()
         pygame.display.flip()
         self.clock.tick(60)
      pygame.quit()
      sys.exit()

class Input:
   def __init__(self):
      self.quit = False

   def update(self):
      for event in pygame.event.get():
         if event.type == pygame.QUIT:
            self.quit = True

class Forma:
   def __init__(self, color):
      self.color = color
      
   def draw(self):
      pass

class Reta(Forma):
   def __init__(self, p1, p2, color):
      super().__init__(color)
      self.p1 = p1
      self.p2 = p2
      
   def getReta(self):
      pass
   
   def draw(self):
      glBegin(GL_POINTS)
      glColor3d(self.color[0], self.color[1], self.color[2])
      for p in self.getReta():
         glVertex3d(p[0], p[1], p[2])
      glEnd()      

class RetaDDA(Reta):
   def getReta(self):
      points = []
      step = abs(self.p1[0] - self.p2[0])
      if abs(self.p1[1] - self.p2[1]) > step:
         step = abs(self.p1[1] - self.p2[1])
      xInc = (self.p2[0] - self.p1[0])/step
      yInc = (self.p2[1] - self.p1[1])/step
      x = self.p1[0]
      y = self.p1[1]
      while x < self.p2[0]:
         points.append((x/100, y/100, 0))
         x = x + xInc
         y = y + yInc
      return points
   


class RetaBresenham(Reta):
   def getReta(self):
      points = []
      x = self.p1[0]
      y = self.p1[1]
      dx = self.p2[0] - self.p1[0]
      dy = self.p2[1] - self.p1[1]
      p = 2*dy - dx        
      while x < self.p2[0]:
         points.append((x/100, y/100, 0))
         if p < 0:
            p = p + 2*dy
         else:
            y = y + 1
            p = p + 2*dy - 2*dx
         x = x + 1
      return points



class Poligono(Forma):
   def __init__(self, r, color):
      super().__init__(color)
      self.r = []
      for p in r:
         self.r.append(RetaDDA(p[0], p[1], color).getReta())
   
   def draw(self):
      glBegin(GL_POINTS)
      glColor3d(self.color[0], self.color[1], self.color[2])
      for r in self.r:
         for p in r:
            glVertex3d(p[0], p[1], p[2])
      glEnd()

class Circulo(Forma):
   def __init__(self, xc, yc, r, color):
      super().__init__(color)
      self.xc = xc
      self.yc = yc
      self.r = r

class CirculoSimples(Circulo):    
   def draw(self):
      x = self.xc - self.r
      glBegin(GL_POINTS)
      glColor3d(self.color[0], self.color[1], self.color[2])
      while x <= self.xc + self.r:
         aux = math.sqrt(self.r**2 - (x - self.xc)**2)
         y1 = self.yc + aux
         y2 = self.yc - aux
         glVertex3d(x/100, y1/100, 0)
         glVertex3d(x/100, y2/100, 0)
         x = x + 1
      glEnd()

class CirculoAngulo(Circulo):
   def draw(self):
      a = 0
      glBegin(GL_POINTS)
      glColor3d(self.color[0], self.color[1], self.color[2])
      while a <= 2*math.pi:
         x = self.xc + self.r*math.cos(a)
         y = self.yc + self.r*math.sin(a)
         glVertex3d(x/100, y/100, 0)
         a = a + 0.01
      glEnd()

class CirculoMedio(Circulo):
   def draw(self):
      a = 0
      glBegin(GL_POINTS)
      glColor3d(self.color[0], self.color[1], self.color[2])
      while a <= math.pi/4:
         x = self.xc + self.r*math.cos(a)
         y = self.yc + self.r*math.sin(a)
         glVertex3d(x/100, y/100, 0)
         glVertex3d(y/100, x/100, 0)
         glVertex3d(y/100, -x/100, 0)
         glVertex3d(-x/100, y/100, 0)
         glVertex3d(-x/100, -y/100, 0)
         glVertex3d(-y/100, -x/100, 0)
         glVertex3d(-y/100, x/100, 0)
         glVertex3d(x/100, -y/100, 0)
         a = a + 0.01
      glEnd()
      
class Desenho(Base):
   def initialize(self):
      cor = 1, 0, 0
      self.r1 = RetaDDA((-50, -20), (50, 40), cor)
      self.r2 = RetaBresenham((-50, -30), (50, 30), cor)
      r = [[(-50, -20), (50, 40)], [(30, -40), (50, 40)], [(-30, -50), (30, -40)], [(-50, -20), (-30, -50)]] 
      self.poligono = Poligono(r, cor)
      self.c1 = CirculoSimples(40, 0, 50, cor)
      self.c2 = CirculoAngulo(-40, 0, 50, cor)
      self.c3 = CirculoMedio(0, 0, 50, cor)
      glPointSize(10)

   def update(self):
      #self.r1.draw()
      #self.r2.draw()
      #self.poligono.draw()
      #self.c1.draw()
      #self.c2.draw()
      self.c3.draw()
      
d = Desenho()
d.run()