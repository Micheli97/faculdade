import pygame
from pygame.locals import *
from OpenGL.GL import *
from OpenGL.GLU import *
from bezier_curve import BezierCurve  

class WaveRenderer:
    def __init__(self, num_waves=3, segments=30, amplitude=0.3, frequency=5):
        self.num_waves = num_waves
        self.segments = segments
        self.amplitude = amplitude
        self.frequency = frequency

    def draw(self):
        glClear(GL_COLOR_BUFFER_BIT)
        glColor3f(0.0, 0.5, 1.0) 
        glLineWidth(2)
        
        glBegin(GL_LINE_STRIP)
        for i in range(self.num_waves):
            p0 = (i / self.num_waves * 2 - 1, 0)
            p1 = ((i + 0.25) / self.num_waves * 2 - 1, self.amplitude)
            p2 = ((i + 0.75) / self.num_waves * 2 - 1, -self.amplitude)
            p3 = ((i + 1) / self.num_waves * 2 - 1, 0)
            
            for j in range(self.segments + 1):
                u = j / self.segments
                x, y = BezierCurve.cubic(p0, p1, p2, p3, u)  # Usando a classe BezierCurve
                glVertex2f(x, y)
        glEnd()
        
        pygame.display.flip()