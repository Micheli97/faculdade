import pygame
from pygame.locals import *
from OpenGL.GL import *
from OpenGL.GLU import *

from parallelepiped import Parallelepiped

def main():
    pygame.init()
    display = (800, 600)
    pygame.display.set_mode(display, DOUBLEBUF | OPENGL)
    gluPerspective(45, (display[0] / display[1]), 0.1, 50.0)
    glTranslatef(0.0, 0.0, -5)  # Translação para afastar o objeto da câmera

    # Pontos opostos do paralelepípedo
    point1 = [-2, -1, -1]  # Ponto inferior esquerdo
    point2 = [2, 1, 1]     # Ponto superior direito

    # Cria o paralelepípedo
    parallelepiped = Parallelepiped(point1, point2)

    while True:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                quit()

        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)

        # Transformações e desenho
        glPushMatrix()
        glRotatef(30, 1, 1, 0)  # Rotação fixa para visualização
        parallelepiped.draw()
        glPopMatrix()

        pygame.display.flip()
        pygame.time.wait(10)


main()
