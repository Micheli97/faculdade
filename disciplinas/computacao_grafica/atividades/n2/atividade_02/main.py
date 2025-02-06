import sys
import pygame
from pygame.locals import *
from OpenGL.GL import *
from OpenGL.GLU import *
from bezier_curve import BezierCurve  # Importando a classe BezierCurve
from wave_render import WaveRenderer # Importando a classe WaveRenderer

        
def main():

    pygame.init()
    wave_renderer = WaveRenderer()
    display = (800, 600)
    pygame.display.set_mode(display, DOUBLEBUF | OPENGL)
    glClearColor(0.0, 0.0, 0.0, 1.0) 
    glMatrixMode(GL_PROJECTION)
    glLoadIdentity()
    gluOrtho2D(-1, 1, -0.5, 0.5)
    

    wave_renderer.draw()

    while True:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                quit()


main()

