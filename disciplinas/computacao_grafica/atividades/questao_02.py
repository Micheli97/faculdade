import pygame 
from pygame.locals import *
from OpenGL.GL import * 
from OpenGL.GLU import *



vertices = [
    [-0.5, 0.5, 0],  # Vertice superior esquerdo
    [-0.5, -0.5, 0], # Vertice infeior esquerdo
    [0.5, -0.5, 0],  # Vertice inferior direito
    [0.5, 0.5, 0],   # Vertice superior direito   
]

vertices_quadrado_central = [
    [-0.02, 0.02, 0],  # Vertice superior esquerdo
    [-0.02, -0.02, 0], # Vertice infeior esquerdo
    [0.02, -0.02, 0],  # Vertice inferior direito
    [0.02, 0.02, 0],   # Vertice superior direito   
]


def desenha_quadrado(vertice_lista, tipo_primitiva, color):
    
    glColor3f(*color)

    glBegin(tipo_primitiva)
    for vertice in vertice_lista:
        glVertex3fv(vertice)
    glEnd()


def desenha_cruz():
    glColor3f(1,0,0)

    # Linha vertical da cruz
    glBegin(GL_LINES)
    glVertex2f(0, -1)
    glVertex2f(0, 1)
    glEnd()
   
    # # Linha horizontal
    glBegin(GL_LINES)
    glVertex2f(-1, 0)
    glVertex2f(1, 0)
    glEnd()


def renderiza():
    glClear(GL_COLOR_BUFFER_BIT)

    glPointSize(10)
    glLineWidth(10)

    desenha_cruz()
   
    # Quadrado central
    desenha_quadrado(vertice_lista=vertices,tipo_primitiva= GL_POINTS, color=(1,0,0))
    desenha_quadrado(vertice_lista=vertices,tipo_primitiva= GL_LINE_LOOP, color=(1,0,0))

    # Quadrado central
    desenha_quadrado(vertice_lista=vertices_quadrado_central,tipo_primitiva= GL_POINTS, color=(255, 255, 0))
    desenha_quadrado(vertice_lista=vertices_quadrado_central,tipo_primitiva= GL_LINE_LOOP, color=(255, 255, 0))



def main():
    pygame.init()

    display = (400, 400)
    pygame.display.set_mode(display, DOUBLEBUF | OPENGL)
    pygame.display.set_caption("Questão 02")


 
    glClearColor(255,255,0,1)
    gluOrtho2D(-1, 1, -1, 1)  # Define o sistema de coordenadas 2D

    # Ajusta a projeção ortográfica
    # Deixei em 2 x 2, pois quando executei o programa os desenhos ficaram muito pequenos
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

