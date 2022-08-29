#language: pt

Funcionalidade: Login
   Sendo um usuario cadastrado
   Posso acessar o sistema com meu email e senha
   Para que eu possa gerencia minhas atividade

   Contexto: Pagina Login
      Dado que eu acesso a pagina principal
   
   Cenario: Usuario é autenticado

      Quando eu faço login com "ljh_junior@yahoo.com.br" e "123456"
      Então devo ver a mensagem "Olá, junior"

   @tentativa
   Esquema do Cenario: Tentar logar
   
      Quando eu faço login com "<email>" e "<senha>"
      Então devo ver a mensagem "<alerta>"

      Exemplos:
      |email                    |senha  |alerta|
      |ljh_junior@yahoo.com.br  |123654 |Senha inválida.|
      |ljhjunior                |123456 |Email incorreto ou ausente.|
      |                         |123456 |Email incorreto ou ausente.|
      |ljh_junior@yahoo.com.br  |       |Senha ausente.|
      |40@junior.com            |123456 |Usuário não cadastrado.|
      |ljh_junior@yahoo.com.br  |12345  |Senha deve ter no mínimo 6 caracteres.|


 @Bloqueio
   Cenario: Bloqueio por tentativas

      Quando eu tento logar com "ljhjunior@outlook.com" e "xpto123" por 5 vezes
      Então devo ver a mensagem "Usuário bloqueado."

