

class LoginPage
    include Capybara::DSL
   
    def visita
        visit 'http://localhost:5000/login'
    end
    
    def logar(email,senha)
        find('#login_email').set email
        find('input[name=password]').set senha
        click_button 'Login'
    end
    
end
