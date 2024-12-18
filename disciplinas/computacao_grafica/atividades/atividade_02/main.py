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
    
    
def criar_casas(casas_count, margem_horizontal, cores_base, cores_telhado, cores_porta, posicoes=None):
    largura_display = 20 - 2 * margem_horizontal
    largura_por_casa = largura_display / casas_count
    escala = largura_por_casa / 2

    if posicoes is None:
        # Garantindo que as casas estejam dentro dos limites visíveis
        posicoes = [(-10 + margem_horizontal + i * largura_por_casa + largura_por_casa / 2, -5) for i in range(casas_count)]

    casas = []
    for i in range(casas_count):
        # Usando as posições passadas ou calculadas
        posicao_x, posicao_y = posicoes[i] if i < len(posicoes) else (-10 + margem_horizontal + i * largura_por_casa + largura_por_casa / 2, -5)

        # Verificando se a posição está dentro do espaço visível do display
        # Ajuste a condição para garantir que as casas não saiam da área visível
        if posicao_x - escala < -10 or posicao_x + escala > 10 or posicao_y - escala < -10 or posicao_y + escala > 10:
            print(f"Posição inválida para a casa {i}: ({posicao_x}, {posicao_y})")
            continue  # Ignora a criação da casa se a posição estiver fora da área visível

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
    largura_display = 800
    altura_display = 600
    titulo = "Atividade 02"
    margem_horizontal = 2
    quantidade_casas_desenhadas = 4

    cores_base = [(0.6, 0.3, 0.2), (0.3, 0.6, 0.8), (0.5, 0.7, 0.4), (0.7, 0.5, 0.2)]
    cores_telhado = [(0.8, 0.1, 0.1), (0.9, 0.5, 0.2), (0.7, 0.3, 0.1), (0.5, 0.1, 0.8)]
    cores_porta = [(0.0, 0.0, 0.0), (0.2, 0.1, 0.0), (0.3, 0.2, 0.1), (0.0, 0.2, 0.3)]
    posicoes = [(-6,-5), (-2, -5), (2, -5), (6, -5)]


    configurar_display(largura_display, altura_display, titulo)
    casas = criar_casas(quantidade_casas_desenhadas, margem_horizontal, cores_base, cores_telhado, cores_porta, posicoes=posicoes)

    while True:
        processar_eventos()
        desenhar_casas(casas)
        pygame.time.wait(10)


if __name__ == "__main__":
    main()

