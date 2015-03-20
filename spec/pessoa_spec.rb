require 'spec_helper'

describe Pessoa do
  it "deveria ser possivel criar uma nova pessoa" do
    pending
    nome = "Jose"
    sobrenome = "da Silva"
    pessoa = Pessoa.new(nome: nome, sobrenome: sobrenome)
    expect(pessoa.nome).to eq nome
    expect(pessoa.sobrenome).to eq sobrenome
  end

  it "deveria obter o nome completo da pessoa" do
    pending
    pessoa = cria_pessoa
    expect(pessoa.nome_completo).to eq "#{pessoa.nome} #{pessoa.sobrenome}"
  end

  def cria_pessoa(nome="Jose", sobrenome="da Silva")
    Pessoa.new(nome: nome, sobrenome: sobrenome)
  end
end
