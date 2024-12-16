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
        """Desenha a base da casa (retângulo principal)."""
        glColor3f(*self.cor_base)  # Define a cor da base
        glBegin(GL_QUADS)
        glVertex2f(-1, 0)
        glVertex2f(-1, 1)
        glVertex2f(1, 1)
        glVertex2f(1, 0)
        glEnd()

    def desenhar_telhado(self):
        """Desenha o telhado da casa (triângulo superior)."""
        glColor3f(*self.cor_telhado)  # Define a cor do telhado
        glBegin(GL_TRIANGLES)
        glVertex2f(-1.2, 1)
        glVertex2f(0, 2)
        glVertex2f(1.2, 1)
        glEnd()

    def desenhar_porta(self):
        """Desenha a porta no centro da casa."""
        glColor3f(*self.cor_porta)  # Cor da porta
        glBegin(GL_QUADS)
        glVertex2f(-0.3, 0)
        glVertex2f(-0.3, 0.6)
        glVertex2f(0.3, 0.6)
        glVertex2f(0.3, 0)
        glEnd()

    def desenhar(self):
        """Desenha a casa completa com suas transformações."""
        glPushMatrix()
        glTranslatef(self.pos_x, self.pos_y, 0)  # Move a casa
        glScalef(self.escala, self.escala, 1)   # Aplica escala
        self.desenhar_base()
        self.desenhar_telhado()
        self.desenhar_porta()
        glPopMatrix()