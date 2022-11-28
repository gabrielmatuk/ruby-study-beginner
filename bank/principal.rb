require("./classes/conta_bancaria.rb")
require("./classes/conta_com_taxa.rb")

conta_pessoa = ContaComTaxa.new("Gabriel", 300)
conta_pessoa2 = ContaBancaria.new("P2", 450)

conta_pessoa.transferir conta_pessoa2, 50

p conta_pessoa.saldo
p conta_pessoa2.saldo

begin
    conta_pessoa.transferir(conta_pessoa2, 1000)
rescue StandardError => meu_erro
    p "Não foi possível transferir: #{meu_erro.message}"
end