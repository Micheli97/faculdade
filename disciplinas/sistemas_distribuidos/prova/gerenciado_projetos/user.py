
from process import Process
from menu import Menu


class User:


    def user_input(self):
        continuar = True
        

        while continuar:
            Menu.show_menu()
            entrada = input("Digite o número da opção escolhida: ")

            if entrada.isdigit() or (entrada.isnumeric() and entrada[0] == '-' and entrada[1:].isdigit()):
                escolha = int(entrada)

                if escolha == 0:
                    continuar = False
                elif escolha == 1:
                    Process().list_processes()
                elif escolha == 2:
                    Process().consult_process()
                elif escolha == 3:
                    Process().block_process()
                elif escolha == 4:
                    Process().consult_process()
                elif escolha == 5:
                    Process().execute_process()
                elif escolha == 6:
                    Process().kill_process()
                elif escolha == 7:
                    Process().change_process_priority()

            else:
                print("Opção inválida. Digite apenas números inteiros.")
