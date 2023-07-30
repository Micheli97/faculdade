import psutil


class Process:
    @staticmethod
    def list_processes():
        """Obtendo a lista de processos que estao sendo executados no sistema operacional"""
        processos = psutil.process_iter()
        for processo in processos:
            print(processo.pid, processo.name())

    @staticmethod
    def consult_process():
        """Consultando processo"""
        pid = 0
        try:
            while True:

                entrada = input("Digite o PID do processo: ")

                if entrada.isdigit() or (entrada.isnumeric() and entrada[0] == '-' and entrada[1:].isdigit()):
                    pid = int(entrada)
                    # Cria um objeto de processo para o processo especificado
                    processo = psutil.Process(pid)

                    # Exibe informações sobre o processo
                    print("Nome do processo:", processo.name())
                    print("ID do processo:", processo.pid)
                    print("Tempo de execução do processo:", processo.cpu_times().user)
                    print("Uso de memória do processo:", processo.memory_info().rss)
                    print("Status do processo:", processo.status())
                    break
                else:
                    print("PID inválido. Digite apenas números inteiros.")

        except psutil.NoSuchProcess:
            print(f"O processo com o ID {pid} não está em execução.")
        except psutil.AccessDenied:
            print(
                f"Você não tem permissão para acessar as informações do processo com ID {pid}.")

    @staticmethod
    def block_process():
        """Bloqueando processo"""
        pid = 0

        try:
            while True:
                entrada = input("Digite o PID do processo: ")

                if entrada.isdigit() or (entrada.isnumeric() and entrada[0] == '-' and entrada[1:].isdigit()):
                    pid = int(entrada)
                    processo = psutil.Process(pid)
                    processo.suspend()
                    break

                else:
                    print("PID inválido. Digite apenas números inteiros.")

        except psutil.NoSuchProcess:
            print(f"O processo com o ID {pid} não está em execução.")
        except psutil.AccessDenied:
            print(
                f"Você não tem permissão para acessar as informações do processo com ID {pid}.")

    #

    @staticmethod
    def continue_process():
        """Continua a execução do processo que foi previaemnte bloqueado"""

        pid = 0

        try:
            while True:
                entrada = input("Digite o PID do processo: ")
                if entrada.isdigit() or (entrada.isnumeric() and entrada[0] == '-' and entrada[1:].isdigit()):
                    pid = int(entrada)
                    processo = psutil.Process(pid)
                    processo.resume()
                    break

                else:
                    print("PID inválido. Digite apenas números inteiros.")

        except psutil.NoSuchProcess:
            print(f"O processo com o ID {pid} não está em execução.")
        except psutil.AccessDenied:
            print(
                f"Você não tem permissão para acessar as informações do processo com ID {pid}.")


    @staticmethod
    def execute_process():
        """Executando processo"""
        pid = 0

        try:
            while True:
                entrada = input("Digite o PID do processo: ")
                if entrada.isdigit() or (entrada.isnumeric() and entrada[0] == '-' and entrada[1:].isdigit()):
                    pid = int(entrada)
                    processo = psutil.Process(pid)
                    processo.resume()
                    break

                else:
                    print("PID inválido. Digite apenas números inteiros.")
        except psutil.NoSuchProcess:
            print(f"O processo com o ID {pid} não está em execução.")
        except psutil.AccessDenied:
            print(
                f"Você não tem permissão para acessar as informações do processo com ID {pid}.")


    @staticmethod
    def kill_process():
        """Finaliza o processo imediatamente"""
        pid = 0
        try:
            while True:
                entrada = input("Digite o PID do processo: ")
                if entrada.isdigit() or (entrada.isnumeric() and entrada[0] == '-' and entrada[1:].isdigit()):
                    pid = int(entrada)
                    processo = psutil.Process(pid)
                    processo.terminate()
                    break
                else:
                    print("PID inválido. Digite apenas números inteiros.")
        except psutil.NoSuchProcess:
            print(f"O processo com o ID {pid} não está em execução.")
        except psutil.AccessDenied:
            print(
                f"Você não tem permissão para acessar as informações do processo com ID {pid}.")

    @staticmethod
    def change_process_priority():
        """Trocando a prioridade do processo"""
        pid = 0

        try:
            while True:
                entrada = input("Digite o PID do processo: ")
                if entrada.isdigit() or (entrada.isnumeric() and entrada[0] == '-' and entrada[1:].isdigit()):
                    pid = int(entrada)

                    processo = psutil.Process(pid)

                    print(" Os valores possíveis para este parâmetro são de -20 (maior prioridade) a 19 (menor prioridade)")
                    valor_prioridade = input("Digite o valor de prioridade do processo: ")
                    if valor_prioridade.isdigit() or (
                            valor_prioridade.isnumeric() and valor_prioridade[0] == '-' and valor_prioridade[
                                                                                            1:].isdigit()):
                        valor_prioridade = int(valor_prioridade)
                        processo.nice(valor_prioridade)
                        break
                    else:
                        print("Valor da prioridade inválido. Digite apenas números inteiros.")

                    break
                else:
                    print("PID inválido. Digite apenas números inteiros.")

        except psutil.NoSuchProcess:
            print(f"O processo com o ID {pid} não está em execução.")
        except psutil.AccessDenied:
            print(
                f"Você não tem permissão para acessar as informações do processo com ID {pid}.")
