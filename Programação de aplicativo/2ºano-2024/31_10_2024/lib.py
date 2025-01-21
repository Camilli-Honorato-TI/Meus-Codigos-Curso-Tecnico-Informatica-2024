jogadores = []

def adicionar(nome):
    jogadores.append(nome)
    
def listar():
        print("Jogadorres -> ", jogadores)
        
def pesquisar(camisa):
    print("Jogador -> ", jogadores[camisa - 1])