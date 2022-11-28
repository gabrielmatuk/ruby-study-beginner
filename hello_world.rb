class Pessoa
    attr_writer :nome
    def initialize(nome)
        @nome = nome
    end

    def imprimir_ola
        puts "Olá #{@nome}"
    end


end

person = Pessoa.new("Gabriel")

person.imprimir_ola

person.nome = "Test"

person.imprimir_ola
