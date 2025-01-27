from OpenGL.GL import *
from OpenGL.GLU import *

class Casa:
    def __init__(self, posicao, escala, cor_base, cor_telhado, cor_porta):
        self.pos_x, self.pos_y = posicao
        self.escala = escala
        self.cor_base = cor_base
        self.cor_telhado = cor_telhado
        self.cor_porta = cor_porta

    def desenhar_base(self):
        glColor3f(*self.cor_base)  
        glBegin(GL_QUADS)
        glVertex2f(-1, 0)
        glVertex2f(-1, 1)
        glVertex2f(1, 1)
        glVertex2f(1, 0)
        glEnd()

    def desenhar_telhado(self):
        glColor3f(*self.cor_telhado) 
        glBegin(GL_TRIANGLES)
        glVertex2f(-1, 1)
        glVertex2f(0, 2)
        glVertex2f(1, 1)
        glEnd()

    def desenhar_porta(self):
        glColor3f(*self.cor_porta)  
        glBegin(GL_QUADS)
        glVertex2f(-0.2, 0)
        glVertex2f(-0.2, 0.6)
        glVertex2f(0.2, 0.6)
        glVertex2f(0.2, 0)
        glEnd()
        
    def desenhar_janelas(self):
        glColor3f(*self.cor_porta)

        glBegin(GL_QUADS)
        glVertex2f(-0.6, 0.3) 
        glVertex2f(-0.6, 0.7)  
        glVertex2f(-0.4, 0.7) 
        glVertex2f(-0.4, 0.3) 
        glEnd()

        glBegin(GL_QUADS)
        glVertex2f(0.4, 0.3)  
        glVertex2f(0.4, 0.7) 
        glVertex2f(0.6, 0.7)
        glVertex2f(0.6, 0.3) 
        glEnd()
        

    def desenhar(self):
        glPushMatrix()
        glTranslatef(self.pos_x, self.pos_y, 0)  
        glScalef(self.escala, self.escala, 1) 
        self.desenhar_base()
        self.desenhar_telhado()
        self.desenhar_porta()
        self.desenhar_janelas()
        glPopMatrix()