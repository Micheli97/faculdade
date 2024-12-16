import pygame
from pygame.locals import *
from OpenGL.GL import *
from OpenGL.GLU import *
import math

def desenha_forma_personalizada(vertices, cores):
    glLineWidth(3)
    glBegin(GL_LINE_LOOP) 
    for i, (x, y) in enumerate(vertices):
        glColor3f(*cores[i % len(cores)])  # Alterna cores
        glVertex2f(x, y)
    glEnd()


def renderiza():
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)

    # Vertices construídos no sentido anti-horário
    vertices = [
        (0.0, 0.8), # A  
        (-0.15, 0.4), # B
        (-0.4, 0), # C
        (0, 0.15), # D
        (0.4, 0.0), # E
        (0.15, 0.4), # F
    ]

    # Degradê de cores para as linhas
    cores = [ (0, 1, 0),(1, 0, 0), (1, 0, 0), (0, 0, 139), (0, 0, 139), (0, 255, 0)]

    desenha_forma_personalizada(vertices, cores)

def main():
    pygame.init()
    display = (400, 400)
    pygame.display.set_mode(display, DOUBLEBUF | OPENGL)
    pygame.display.set_caption("Questão 03")

    # Ajusta a projeção ortográfica
    # Deixei em 2 x 2, pois quando executei o programa os desenhos ficaram muito pequenos
    gluOrtho2D(-1, 1, -1, 1)

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
