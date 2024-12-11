import pygame 
from pygame.locals import *
from OpenGL.GL import * 
from OpenGL.GLU import *


def desenha_losango(x, y, posicao_vertice, color):
    glColor3f(*color)  # Define a cor do losango
    
    glBegin(GL_POLYGON)
    glVertex2f(x, y + posicao_vertice)    # Vértice superior
    glVertex2f(x - posicao_vertice, y)    # Vértice esquerdo
    glVertex2f(x, y - posicao_vertice)    # Vértice inferior
    glVertex2f(x + posicao_vertice, y)    # Vértice direito
    glEnd()

def renderiza():
    glClearColor(0, 1, 0, 1)  # Fundo verde

    # Desenhar os quatro losangos
    desenha_losango(0.0, 0.4, 0.3, (0, 0, 1))  # Azul (superior)
    desenha_losango(-0.4, 0.0,0.3, (1, 1, 0))  # Amarelo (esquerdo)
    desenha_losango(0.4, 0.0, 0.3,(1, 0, 0))  # Vermelho (direito)
    desenha_losango(0.0, -0.4, 0.3,(0, 0, 0))  # Preto (inferior)


def main():
    pygame.init()

    display = (400, 400)
    pygame.display.set_mode(display, DOUBLEBUF | OPENGL)
    pygame.display.set_caption("Questão 01")


    gluOrtho2D(-1, 1, -1, 1)

    while True:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                quit()
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)
        renderiza()
        pygame.display.flip()
        pygame.time.wait(100)

main()
