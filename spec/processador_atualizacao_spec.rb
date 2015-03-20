require 'spec_helper'

describe ProcessadorAtualizacao do
  it "deveria atualizar todos as contas" do
    contas = cria_contas
    saldos_anteriores = contas.map(&:saldo)
    taxa = 0.006
    contas.maps{ |conta| conta.atualizar(taxa) }
    contas.each_index do |i|
      if contas[i].is_a? ContaCorrente
        expect(contas[i].salda).to eq(saldos_anteriores[i])
      else
        expect(contas[i].saldo).to eq(saldos_anteriores[i] * (1 + taxa))
      end
    end
  end

  def cria_contas
    contas = []
    contas << ContaCorrente.new(numero:  "1236-5",
                                titular: Cliente.new("Jose da Silva"),
                                saldo:   1000,
                                limite:  500)

    contas << ContaCorrente.new(numero:  "1535-5",
                                titular: Cliente.new("Cardoso da Silva"),
                                saldo:   6000,
                                limite:  500)

    contas << ContaCorrente.new(numero:  "6545-0",
                                titular: Cliente.new("Clemilson da Silva"),
                                saldo:   2000,
                                limite:  500)

    contas << ContaPoupanca.new(numero:  "3243-8978",
                                titular: Cliente.new("Joalito da Silva"),
                                saldo:   1000.65)

    contas << ContaPoupanca.new(numero:  "5464-5352",
                                titular: Cliente.new("Clederson da Silva"),
                                saldo:   1000.98)

    contas << ContaPoupanca.new(numero:  "5365-7678",
                                titular: Cliente.new("Zefan da Silva"),
                                saldo:   934.10)
    contas
  end
end
