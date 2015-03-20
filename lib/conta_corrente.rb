class ContaCorrente < Conta
  TAXA_DEPOSITO = 0.10

  def initialize(args)
    super(args)
  end

  def depositar(valor)
    valor -= TAXA_DEPOSITO
    super(valor)
  end
end
