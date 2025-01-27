import pygame
from pygame.locals import *
from OpenGL.GL import *
from OpenGL.GLU import *

def calculate_vertices(p1, p2):
    """
    Calcula os 8 vértices de um paralelepípedo a partir de dois pontos opostos.
    :param p1: Coordenadas do primeiro ponto (x, y, z)
    :param p2: Coordenadas do segundo ponto (x, y, z)
    :return: Lista de vértices do paralelepípedo
    """
    x1, y1, z1 = p1
    x2, y2, z2 = p2
    return [
        [x1, y1, z1],  # Vértice 1
        [x1, y2, z1],  # Vértice 2
        [x2, y2, z1],  # Vértice 3
        [x2, y1, z1],  # Vértice 4
        [x1, y1, z2],  # Vértice 5
        [x1, y2, z2],  # Vértice 6
        [x2, y2, z2],  # Vértice 7
        [x2, y1, z2],  # Vértice 8
    ]

# Arestas que conectam os vértices
edges = [
    (0, 1), (1, 2), (2, 3), (3, 0),  # Base inferior
    (4, 5), (5, 6), (6, 7), (7, 4),  # Base superior
    (0, 4), (1, 5), (2, 6), (3, 7)   # Conexões entre as bases
]

def draw_parallelepiped(vertices):
    """Desenha o paralelepípedo utilizando as arestas e vértices calculados"""
    glBegin(GL_LINES)
    for edge in edges:
        for vertex in edge:
            glVertex3fv(vertices[vertex])
    glEnd()

def main():
    pygame.init()
    display = (800, 600)
    pygame.display.set_mode(display, DOUBLEBUF | OPENGL)
    gluPerspective(45, (display[0] / display[1]), 0.1, 50.0)
    glTranslatef(0.0, 0.0, -5)  # Translação para afastar o objeto da câmera

    # Pontos opostos do paralelepípedo
    point1 = [-1, -1, -1]  # Ponto inferior esquerdo
    point2 = [1, 1, 1]     # Ponto superior direito

    # Calcula os vértices do paralelepípedo
    vertices = calculate_vertices(point1, point2)

    while True:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                quit()

        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)

        # Transformações
        glPushMatrix()
        glRotatef(30, 1, 1, 0)  # Rotação fixa para visualização
        draw_parallelepiped(vertices)
        glPopMatrix()

        pygame.display.flip()
        pygame.time.wait(10)

main()
