import pygame
from pygame.locals import *
from OpenGL.GL import *
from OpenGL.GLU import *

from casa import Casa

CONFIGURACOES = {
    "display": {
        "largura": 800,
        "altura": 600,
        "titulo": "Atividade 02",
    },
    "casas": {
        "quantidade": 4,
        "cores_base": [(0.6, 0.3, 0.2), (0.3, 0.6, 0.8), (0.5, 0.7, 0.4), (0.7, 0.5, 0.2)],
        "cores_telhado": [(0.8, 0.1, 0.1), (0.9, 0.5, 0.2), (0.7, 0.3, 0.1), (0.5, 0.1, 0.8)],
        "cores_porta": [(0.0, 0.0, 0.0), (0.2, 0.1, 0.0), (0.3, 0.2, 0.1), (0.0, 0.2, 0.3)],
        "posicoes": [(-6, -5), (-2, -5), (2, -5), (6, -5)],
        "escalas": [1, 1.5, 1.2, 1.8],  # Tamanhos diferentes para cada casa
    }
}

def configurar_display(config):
    largura = config["largura"]
    altura = config["altura"]
    titulo = config["titulo"]
    pygame.init()
    pygame.display.set_mode((largura, altura), DOUBLEBUF | OPENGL)
    pygame.display.set_caption(titulo)
    gluOrtho2D(-10, 10, -10, 10)
    
def criar_casas(config):
    casas_count = config["quantidade"]
    cores_base = config["cores_base"]
    cores_telhado = config["cores_telhado"]
    cores_porta = config["cores_porta"]
    posicoes = config.get("posicoes", [])
    escalas = config.get("escalas", [])
    
    casas = []
    for i in range(casas_count):
        cor_base = cores_base[i % len(cores_base)]
        cor_telhado = cores_telhado[i % len(cores_telhado)]
        cor_porta = cores_porta[i % len(cores_porta)]
        
        if posicoes and i < len(posicoes):
            posicao_x, posicao_y = posicoes[i]
        else:
            posicao_x, posicao_y = (0, 0)
            
        if escalas and i < len(escalas):
            escala = escalas[i]
        else:
            escala = 1 
        
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
    configurar_display(CONFIGURACOES["display"])
    casas = criar_casas(CONFIGURACOES["casas"])

    while True:
        processar_eventos()
        desenhar_casas(casas)
        pygame.time.wait(10)

if __name__ == "__main__":
    main()
