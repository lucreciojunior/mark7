
    class Nav
        include Capybara::DSL

        def menu_usuario
            find('a[href*=dropdown]').click
        end

        def sair
            menu_usuario.click
            click_link 'sair'
        end

        def sair
            menu_usuario.click
            click_link 'Meu Perfil'
        end

    end