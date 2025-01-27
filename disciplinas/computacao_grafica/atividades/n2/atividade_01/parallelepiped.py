from pygame.locals import *
from OpenGL.GL import *
from OpenGL.GLU import *

class Parallelepiped:
    def __init__(self, p1, p2):
        """
        Inicializa um paralelepípedo a partir de dois pontos opostos.
        :param p1: Coordenadas do primeiro ponto (x, y, z)
        :param p2: Coordenadas do segundo ponto (x, y, z)
        """
        self.p1 = p1
        self.p2 = p2
        self.vertices = self.calculate_vertices()
        self.edges = [
            (0, 1), (1, 2), (2, 3), (3, 0),  # Base inferior
            (4, 5), (5, 6), (6, 7), (7, 4),  # Base superior
            (0, 4), (1, 5), (2, 6), (3, 7)   # Conexões entre as bases
        ]

    def calculate_vertices(self):
        """
        Calcula os 8 vértices de um paralelepípedo a partir de dois pontos opostos.
        :return: Lista de vértices do paralelepípedo
        """
        x1, y1, z1 = self.p1
        x2, y2, z2 = self.p2
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

    def draw(self):
        """Desenha o paralelepípedo utilizando as arestas e vértices calculados"""
        glBegin(GL_LINES)
        for edge in self.edges:
            for vertex in edge:
                glVertex3fv(self.vertices[vertex])
        glEnd()