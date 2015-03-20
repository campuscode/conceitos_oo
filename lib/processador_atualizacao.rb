class ProcessadorAtualizacao
  def initialize(contas)
    @contas = contas
  end

  def processar_atualizacao(taxa)
    @contas.each do |conta|
      conta.atualizar(taxa)
    end
  end
end
