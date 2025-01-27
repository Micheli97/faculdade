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
      glTranslatef(0.0,0.0, -10)
      self.clock = pygame.time.Clock()
      self.sup = 0

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
               self.sup = (self.sup + 1) % 2 
            elif event.key == K_s:
               self.sup = (self.sup + 1) % 2 + 2 


class SuperficieWire:
   def __init__(self, vertices):
      self.vertices = vertices
      glLineWidth(5)
   
   def draw(self):
      glMap2f(GL_MAP2_VERTEX_3, 0, 1, 0, 1, self.vertices)
      glEnable(GL_MAP2_VERTEX_3)
      quant = 50
      glColor3fv((1,1,1))
      for w in range(0, quant):
        glBegin(GL_LINE_STRIP)
        for t in range(0, 31):
          glEvalCoord2f(GLfloat(t/30.0), GLfloat(w/(quant-1)))
        glEnd()
        glBegin(GL_LINE_STRIP)
        for t in range(0, 31):
          glEvalCoord2f(GLfloat(w/(quant-1)), GLfloat(t/30.0))
        glEnd()

class SuperficieFull:
   def __init__(self, vertices):
      self.vertices = vertices
      glLineWidth(5)
   
   def draw(self):
      glMap2f(GL_MAP2_VERTEX_3, 0, 1, 0, 1, self.vertices)
      glEnable(GL_MAP2_VERTEX_3)
      quant = 50
      glColor3fv((1,0,0))
      for w in range(0, quant):
        glBegin(GL_QUAD_STRIP)
        for t in range(0, 31):
          glEvalCoord2f(GLfloat(t/30.0), GLfloat(w/(quant-1)))
          glEvalCoord2f(GLfloat(w/(quant-1)), GLfloat(t/30.0))
        glEnd()
      
class Desenho(Base):
   def getVertices(self, vertices):
      v = [vertices]
      quant = 20
      for i in range(1, quant+1):
        aux = []
        for j in vertices:
            aux.append([j[0], math.cos(2*math.pi*i/quant)*j[1] + math.sin(2*math.pi*i/quant)*j[2], -math.sin(2*math.pi*i/quant)*j[1] + math.cos(2*math.pi*i/quant)*j[2]])
        v.append(aux)
      return tuple(v)
   
   def initialize(self):
      self.s0 = SuperficieWire((((-2.5, -1.5, 4.0), (-0.5, -1.5, 2.0),(0.5, -1.5, -1.0), (1.5, -1.5, 2.0)),((-1.5, -0.5, 1.0), (-0.5, -0.5, 3.0),(0.5, -0.5, 0.0), (1.5, -0.5, -1.0)),((-1.5, 0.5, 4.0), (-0.5, 0.5, 0.0),(0.5, 0.5, 3.0), (1.5, 0.5, 4.0)),((-1.5, 1.5, -2.0), (-0.5, 1.5, -2.0),(0.5, 1.5, 0.0), (2.5, 1.5, -1.0))))
      self.s1 = SuperficieFull((((-2.5, -1.5, 4.0), (-0.5, -1.5, 2.0),(0.5, -1.5, -1.0), (1.5, -1.5, 2.0)),((-1.5, -0.5, 1.0), (-0.5, -0.5, 3.0),(0.5, -0.5, 0.0), (1.5, -0.5, -1.0)),((-1.5, 0.5, 4.0), (-0.5, 0.5, 0.0),(0.5, 0.5, 3.0), (1.5, 0.5, 4.0)),((-1.5, 1.5, -2.0), (-0.5, 1.5, -2.0),(0.5, 1.5, 0.0), (2.5, 1.5, -1.0))))
      self.s2 = SuperficieWire(self.getVertices([[-2, -1, -1], [-1, -2, -1],[1, -2, -1], [2, -1, -1]]))
      self.s3 = SuperficieFull(self.getVertices([[-2, -1, -1], [-1, -2, -1],[1, -2, -1], [2, -1, -1]]))
      
   def update(self):
      if self.sup == 0:
         self.s0.draw()
      elif self.sup == 1:
         self.s1.draw()
      elif self.sup == 2:
         self.s2.draw()
      elif self.sup == 3:
         self.s3.draw()
d = Desenho()
d.run()
