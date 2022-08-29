#language: pt

Funcionalidade: Cadastro de tarefas
    Para que eu possa organizar minhas tarefas
    Sendo um usuario cadastrado
    Posso adicionar novas tarefas

        @auth
        Cenario: Adicionar tarefas
            Dado que "Estudar Ruby" é a minha nova tarefa
            E quero finalizar esta tarefa em "31/12/2018"
            E além disso eu vou tanguear está tarefa com "ruby video aulas programação"
            Quando eu faço o cadastro desta tarefa
            Então esta tarefa deve ser exibida com status "Em andamento"
