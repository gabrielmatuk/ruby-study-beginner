class ContaBancaria
    def initialize propietario, valor_inicial
        @propietario = propietario
        @valor = valor_inicial
    end

    def transferir(outra_conta,valor)
        if saldo >=valor
            debitar(valor)
            outra_conta.depositar(valor)
        else
            raise "Não possui saldo suficiente"
        end
    end

    def saldo()
        @valor
    end

    protected def debitar(valor_para_debitar)
        @valor -= valor_para_debitar
    end

    protected def depositar(valor_para_depositar)
        @valor += valor_para_depositar
    end
end