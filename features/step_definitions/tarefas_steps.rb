
Dado('que {string} é a minha nova tarefa') do |titulo|
    @titulo = titulo
end
  
Dado('quero finalizar esta tarefa em {string}') do |data|
    @data = data
end
  
Dado('além disso eu vou tanguear está tarefa com {string}') do |tags|
    @tags = tags
end
  
Quando('eu faço o cadastro desta tarefa') do
   @tarefas_Page = TarefasPage.new
   @tarefas_Page.bt_nova_tarefa.click
   @tarefas_Page.adicionar(@titulo, @data, @tags)
   
end
  
Então('esta tarefa deve ser exibida com status {string}') do |status_tarefa|
    expect(@tarefas_Page.obter_por_titulo(@titulo)).to have_content status_tarefa
end
