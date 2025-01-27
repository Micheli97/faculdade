import pygame
from pygame.locals import *
from OpenGL.GL import *
from OpenGL.GLU import *

# Definição dos dois pontos que representam os vértices opostos
point1 = [-0.5, -0.5, -0.5]  # Primeiro ponto (x1, y1, z1)
point2 = [0.5, 0.5, 0.5]     # Segundo ponto (x2, y2, z2)

# Função para calcular os vértices do paralelepípedo
def calculate_vertices(p1, p2):
    x1, y1, z1 = p1
    x2, y2, z2 = p2

    # Os oito vértices do paralelepípedo
    return [
        [x1, y1, z1], [x1, y1, z2],
        [x1, y2, z1], [x1, y2, z2],
        [x2, y1, z1], [x2, y1, z2],
        [x2, y2, z1], [x2, y2, z2],
    ]

# Vértices do paralelepípedo
vertices = calculate_vertices(point1, point2)

# Faces do paralelepípedo (definidas pelos índices dos vértices)
faces = [
    [0, 1, 3, 2],  # Face 1 (x1)
    [4, 5, 7, 6],  # Face 2 (x2)
    [0, 1, 5, 4],  # Face 3 (y1)
    [2, 3, 7, 6],  # Face 4 (y2)
    [0, 2, 6, 4],  # Face 5 (z1)
    [1, 3, 7, 5],  # Face 6 (z2)
]

# Função para desenhar o paralelepípedo
def draw_parallelepiped():
    glBegin(GL_QUADS)
    for face in faces:
        for vertex in face:
            glVertex3fv(vertices[vertex])
    glEnd()

# Configuração inicial
def main():
    pygame.init()
    display = (800, 600)
    pygame.display.set_mode(display, DOUBLEBUF | OPENGL)
    gluPerspective(45, (display[0] / display[1]), 0.1, 50.0)
    glTranslatef(0.0, 0.0, -5)  # Posicionar a câmera

    # Loop principal
    while True:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                quit()
            elif event.type == KEYDOWN:
                if event.key == K_LEFT:
                    glRotatef(10, 0, 1, 0)  # Rotação à esquerda
                elif event.key == K_RIGHT:
                    glRotatef(-10, 0, 1, 0)  # Rotação à direita
                elif event.key == K_UP:
                    glRotatef(10, 1, 0, 0)  # Rotação para cima
                elif event.key == K_DOWN:
                    glRotatef(-10, 1, 0, 0)  # Rotação para baixo

        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)  # Limpar a tela
        glColor3f(0.5, 0.8, 0.2)  # Definir cor do paralelepípedo
        draw_parallelepiped()     # Desenhar o paralelepípedo
        pygame.display.flip()     # Atualizar a tela
        pygame.time.wait(10)

main()
