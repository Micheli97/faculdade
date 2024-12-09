import pygame 
from pygame.locals import *
from OpenGL.GL import * 
from OpenGL.GLU import *
import sys

# Lista de vértices ajustada para 3 dimensões
vertices = [
    [-0.5, 0.5, 0], # A
    [-0.5, -0.5, 0], # B
    [0.5, -0.5, 0], # C
    [0.5, 0.5, 0], # D   
]

vertices_quadrado_central = [
    [-0.02, 0.02, 0], # A
    [-0.02, -0.02, 0], # B
    [0.02, -0.02, 0], # C
    [0.02, 0.02, 0], # D   
]



def renderiza():
    glClear(GL_COLOR_BUFFER_BIT)

    glPointSize(10)
    glLineWidth(10)
    glColor3f(1, 0, 0)

    # Linha vertical da cruz
    glBegin(GL_LINES)
    glVertex2f(0, -1)
    glVertex2f(0, 1)
    glEnd()
   
    # Linha horizontal
    glBegin(GL_LINES)
    glVertex2f(-1, 0)
    glVertex2f(1, 0)
    glEnd()

    # Quadrado central
    glBegin(GL_POINTS)
    for v in vertices:
        glVertex3fv(v)  
    glEnd()

    # Ligando os vertices
    glBegin(GL_LINE_LOOP)
    for v in vertices:
        glVertex3fv(v)  
    glEnd()

    
    # Quadrado central
    glColor3f(255, 255, 0)
    glBegin(GL_POINTS)
    for v in vertices_quadrado_central:
        glVertex3fv(v)  
    glEnd()

    # Ligando vertices do quadrado central
    glBegin(GL_LINE_LOOP)
    for v in vertices_quadrado_central:
        glVertex3fv(v)  
    glEnd()




def main():
    pygame.init()

   

    display = (400, 400)
    pygame.display.set_mode(display, DOUBLEBUF | OPENGL)

 
    glClearColor(255,255,0,1)
    gluOrtho2D(-1, 1, -1, 1)  # Define o sistema de coordenadas 2D

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

# class App:
#     def __init__(self):
#         pygame.init()
#         pygame.display.set_mode((640, 480), pygame.OPENGL | pygame.DOUBLEBUF)
#         self.clock = pygame.time.Clock()
#         glClearColor(1, 1, 1, 1) #background
#         self.input = Input()

#     def initialize(self):
#         pass

#     def update(self):
#         pass 


#     def run(self):
#         self.initialize()
#         while True:
#            self.input.update()
#            if self.input.quit:
#                break 
#            self.update()
#            pygame.display.flip()
#            self.clock.tick(60)
#         pygame.quit()
#         sys.exit()


# class Input():
#     def __init__(self):
#         self.quit = False 

#     def update(self):
#         for event in pygame.event.get():
#             if event.type == pygame.QUIT:
#                 self.quit = True

# class Forma:
#     def __init__(self, color):
#         self.color = color 

#     def draw(self):
#         pass

# class Desenho(App):
#     def initialize(self):
#         self.input
#         return super().initialize()


# if __name__ == "__main__":
#     myapp = App()