import pygame
from pygame.locals import *
from OpenGL.GL import *
from OpenGL.GLU import *

from casa import Casa

def main():
    pygame.init()
    display = (800, 600)
    pygame.display.set_mode(display, DOUBLEBUF | OPENGL)
    pygame.display.set_caption("Atividade 02")

    # Define a projeção ortográfica
    gluOrtho2D(-10, 10, -10, 10)

    # Cria 4 casas com tamanhos, posições e cores diferentes
    casas = [
        Casa((-7, -5), 2, (0.6, 0.3, 0.2), (0.8, 0.1, 0.1), (0,0,0)),  # Casa 1
        Casa((3, -5), 1.5, (0.3, 0.6, 0.8), (0.9, 0.5, 0.2), (0,0,0)),  # Casa 2
        Casa((-5, 2), 1.8, (0.5, 0.7, 0.4), (0.7, 0.3, 0.1), (255,255,255)),  # Casa 3
        Casa((3, 3), 1.2, (0.7, 0.5, 0.2), (0.5, 0.1, 0.8), (0,0,0)),  # Casa 4
]


    while True:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                quit()

        glClearColor(255,255,255, 1.0)  # Cor de fundo (azul céu)
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)

        for casa in casas:
            casa.desenhar()

        pygame.display.flip()
        pygame.time.wait(10)


main()
