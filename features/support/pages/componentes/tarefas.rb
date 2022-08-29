class TarefasPage
    include Capybara::DSL

    def bt_nova_tarefa
        find('#insert-button')
    end

    def adicionar(titulo, data, tags)
        find('input[name=title]').set titulo
        find('input[name=dueDate]').set data
        find('.bootstrap-tagsinput input').set tags
        click_button 'Cadastrar'
    end

    def obter_por_titulo (titulo)
        find('table tbody tr', text: @titulo)
    end

end