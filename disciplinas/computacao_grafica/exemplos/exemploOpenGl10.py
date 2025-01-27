import pygame
import math
from pygame.locals import *

from OpenGL.GL import *
from OpenGL.GLU import *
from OpenGL.GLUT import *
import sys

class Base(object):
   def __init__(self, tamanhoTela=[1024, 1024]):
      pygame.init()
      self.tela = pygame.display.set_mode(tamanhoTela, pygame.DOUBLEBUF | pygame.OPENGL )
      pygame.display.set_caption("Aula Computação Gráfica")
      gluPerspective(45,1,0.1, 50)
      glTranslatef(0.0,0.0, -5)
      self.clock = pygame.time.Clock()
      self.curva = 1

   def initialize(self):
      pass

   def update(self):
      pass
   
   def run(self):
      self.initialize()
      while True:
         self.input()
         glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT)
         self.update()
         pygame.display.flip()
         self.clock.tick(60)
      pygame.quit()
      sys.exit()
   
   def input(self):
      for event in pygame.event.get():
         if event.type == pygame.QUIT:
            pygame.quit()
            sys.exit()
         elif event.type == pygame.KEYDOWN:
            if event.key == K_LEFT:
               glRotatef(10, 0, 1, 0)
            elif event.key == K_a:
               self.curva = (self.curva + 1) % 2 
            elif event.key == K_s:
               self.curva = (self.curva + 1) % 2 + 2
            elif event.key == K_w:
               self.curva = 4 

      

class CurvaSimples:
   def __init__(self, vertices):
      self.vertices = vertices
      glLineWidth(5)
   
   def draw(self):
      glBegin(GL_LINE_STRIP)
      for v in self.vertices:
        glVertex3fv(v)
      glEnd()

class CurvaBezier:
   def __init__(self, vertices):
      self.vertices = vertices
      glLineWidth(5)
   
   def draw(self):
      glMap1f(GL_MAP1_VERTEX_3, 0, 1, self.vertices)
      glEnable(GL_MAP1_VERTEX_3)
      glBegin(GL_LINE_STRIP)
      for t in range(0, 31):
         glEvalCoord1f(GLfloat(t/30.0))
      glEnd()
      
class Desenho(Base):
   def getQuadraticVertice(self):
      v = []
      x = -50
      while x < 50:
         y = 3*x**2 + x - 1
         v.append([x, y, 1])
         x = x + 0.1
      return v
      
   def initialize(self):
      self.c0 = CurvaSimples(((-1, 1, 1),(-0.9, 0.8, 1),(-0.75, 0.6, 1),(-0.6, 0.4, 1),(-0.45, 0.2, 1),(-0.3, 0.1, 1),(-0.15, 0.05, 1),(-0.08, 0.02, 1),(0, 0, 1),(0.08, 0.02, 1),(0.15, 0.05, 1),(0.3, 0.1, 1),(0.45, 0.2, 1),(0.6, 0.4, 1),(0.75, 0.6, 1),(0.9, 0.8, 1),(1, 1, 1)))
      self.c1 = CurvaSimples(((-1, 1, 1),(-0.8, 0.8, 1),(-0.6, 0.6, 1),(-0.4, 0.4, 1),(-0.2, 0.2, 1),(0, 0, 1),(0.2, 0.2, 1),(0.4, 0.4, 1),(0.6, 0.6, 1),(0.8, 0.8, 1),(1, 1, 1)))
      self.c2 = CurvaBezier(((-1, 1, 1),(-1, -1, 1),(1, -1, 1),(1, 1, 1)))
      self.c3 = CurvaBezier([[-2, -1, -1], [-1, -2, -1],[1, -2, -1], [2, -1, -1]])
      self.c4 = CurvaBezier([[2, -1, -1], [-1, 1, -1],[1.8, -2, 1], [1.5, -1, 1]])
      self.c5 = CurvaBezier([[1.5, -1, 1], [1, 1, 1],[1, 2, 1], [-2, -1, -1]])
      self.c6 = CurvaSimples(self.getQuadraticVertice())
 
   def update(self):
      if self.curva == 0:
         self.c0.draw()
      elif self.curva == 1:
         self.c1.draw()
      elif self.curva == 2:
         self.c2.draw()
      elif self.curva == 3:
         self.c3.draw()
         self.c4.draw()
         self.c5.draw()
      elif self.curva == 4:
         self.c6.draw()
               
d = Desenho()
d.run()
