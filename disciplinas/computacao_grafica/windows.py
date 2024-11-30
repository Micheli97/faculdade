import pygame

def main():
    pygame.init() # Inicializa os módulos necessários do Pygame, como vídeo, áudio e eventos.

    # Define o tamanho da janela
    display = (800, 800)

    # Cria a janela 
    screen = pygame.display.set_mode(display)
    # Define o titulo da janela que será exibida na barra de titulo do sistema operacional 
    pygame.display.set_caption("Janela Rosa")

    # Define a cor rosa (RGB)
    rosa = (255, 192, 203)

    # Loop principal
    while True:
        # Lida com eventos
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                quit()

        # Preenche a janela com a cor rosa
        screen.fill(rosa)
        # Atualiza a janela 
        pygame.display.flip() 

# Chama a função principal
main()
