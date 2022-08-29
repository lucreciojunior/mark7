Before('@auth') do
    @login_page = LoginPage.new
    @login_page.visita
    @login_page.logar('ljh_junior@yahoo.com.br', '123456')
end
