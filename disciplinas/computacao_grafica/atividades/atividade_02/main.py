import pygame
from pygame.locals import *
from OpenGL.GL import *
from OpenGL.GLU import *

from casa import Casa

def configurar_display(largura, altura, titulo):
    pygame.init()
    pygame.display.set_mode((largura, altura), DOUBLEBUF | OPENGL)
    pygame.display.set_caption(titulo)
    gluOrtho2D(-10, 10, -10, 10)
    
    
def criar_casas(casas_count, margem_horizontal, cores_base, cores_telhado, cores_porta):
    largura_display = 20 - 2 * margem_horizontal
    largura_por_casa = largura_display / casas_count
    escala = largura_por_casa / 2

    casas = []
    for i in range(casas_count):
        posicao_x = -10 + margem_horizontal + i * largura_por_casa + largura_por_casa / 2
        posicao_y = -5

        cor_base = cores_base[i % len(cores_base)]
        cor_telhado = cores_telhado[i % len(cores_telhado)]
        cor_porta = cores_porta[i % len(cores_porta)]

        casas.append(Casa(
            (posicao_x, posicao_y),
            escala,
            cor_base,
            cor_telhado,
            cor_porta
        ))
    return casas

def processar_eventos():
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            pygame.quit()
            quit()
            
def desenhar_casas(casas):
    glClearColor(1.0, 1.0, 1.0, 1.0)  
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)

    for casa in casas:
        casa.desenhar()

    pygame.display.flip()

def main():
    LARGURA_DISPLAY = 800
    ALTURA_DISPLAY = 600
    TITULO = "Atividade 02"
    MARGEM_HORIZONTAL = 2
    CASAS_COUNT = 4

    CORES_BASE = [(0.6, 0.3, 0.2), (0.3, 0.6, 0.8), (0.5, 0.7, 0.4), (0.7, 0.5, 0.2)]
    CORES_TELHADO = [(0.8, 0.1, 0.1), (0.9, 0.5, 0.2), (0.7, 0.3, 0.1), (0.5, 0.1, 0.8)]
    CORES_PORTA = [(0.0, 0.0, 0.0), (0.2, 0.1, 0.0), (0.3, 0.2, 0.1), (0.0, 0.2, 0.3)]

    configurar_display(LARGURA_DISPLAY, ALTURA_DISPLAY, TITULO)
    casas = criar_casas(CASAS_COUNT, MARGEM_HORIZONTAL, CORES_BASE, CORES_TELHADO, CORES_PORTA)

    while True:
        processar_eventos()
        desenhar_casas(casas)
        pygame.time.wait(10)

if __name__ == "__main__":
    main()

