import pygame
from pygame.locals import *
from OpenGL.GL import *
from OpenGL.GLU import *
import math

def desenha_forma_personalizada(vertices, cores):
    """
    Desenha um polígono com um degradê de cores.
    vertices: Lista de coordenadas (x, y) dos vértices.
    cores: Lista de cores RGB para cada vértice.
    """
    glBegin(GL_LINE_LOOP)  # Apenas as linhas do polígono
    for i, (x, y) in enumerate(vertices):
        glColor3f(*cores[i % len(cores)])  # Alterna cores
        glVertex2f(x, y)
    glEnd()


def renderiza():
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)

    # Definição dos vértices da forma personalizada
    vertices = [
        (0.0, 0.8),  # Ponta superior
        (-0.13, 0.34),  # Inferior esquerdo
        (-0.5, -0.0),  # Centro inferior
        (0.0, 0.1),  # Inferior direito
        (0.5, 0.0),
        (0.1, 0.3),
    ]

    # Degradê de cores para as linhas
    cores = [(1, 0, 0), (0, 1, 0), (0, 0, 1), (1, 1, 0), (1, 1, 0),(1, 1, 0)]

    desenha_forma_personalizada(vertices, cores)

def main():
    pygame.init()
    display = (400, 400)
    pygame.display.set_mode(display, DOUBLEBUF | OPENGL)
    pygame.display.set_caption("Questão 03")



    while True:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                quit()

        # Limpa a tela com fundo preto
        glClearColor(0, 0, 0, 1)
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)

        renderiza()  # Desenha a forma
        pygame.display.flip()  # Atualiza o display
        pygame.time.wait(100)

main()
