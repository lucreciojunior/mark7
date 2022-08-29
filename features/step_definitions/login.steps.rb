Dado('que eu acesso a pagina principal') do
    # visit 'http://localhost:5000/login'
    @login_page = LoginPage.new
    @login_page.visita

end


  Quando('eu faço login com {string} e {string}') do |email, senha|
    @login_page.logar(email,senha)
  end
  
  Quando('eu tento logar com {string} e {string} por {int} vezes') do |email, senha, qtd|
    @qtd = qtd +=1
    @qtd.times do
      @login_page.logar(email,senha)
      # sleep 0.1
    end
    
  end


  Então('devo ver a mensagem {string}') do |mensagem_ola|
    expect(page).to have_content mensagem_ola
  end
  
