#coding: utf-8
require "produto_escalar.rb"
 

describe ProdutoEscalar do

  before do
    @array_1 = nil
    @array_2 = nil
  end

  it 'array_1 deveria ser um Array' do
  	@array_1 = Array.new
    produto_escalar = ProdutoEscalar.new(@array_1, nil)
    produto_escalar.array_1.class.should == Array
  end

  it 'array_2 deveria ser um Array' do
  	@array_2 = Array.new
    produto_escalar = ProdutoEscalar.new(nil, @array_2)
    produto_escalar.array_2.class.should == Array
  end

  it "array_1 e array_2 precisam ter o mesmo tamanho" do
    @array_1 = [1, 4, 6, 2, 39]
    @array_2 = [1, 4, 6, 5, 1]
    produto_escalar = ProdutoEscalar.new(@array_1, @array_2)
    produto_escalar.valida_tamanho.should eql(true)
  end

  it "se array_1 não tiver o mesmo tamanho que o array_2, retorna false" do
    @array_1 = [1, 4, 6, 2, 39]
    @array_2 = [1, 4, 6,]
    produto_escalar = ProdutoEscalar.new(@array_1, @array_2)
    produto_escalar.valida_tamanho.should eql(false)
  end

  it "o Produto Escalar entre o array_1 com o array_2 deve ser igual a 3" do
    @array_1 = [1, 1, 1,]
    @array_2 = [1, 1, 1,]
    produto_escalar = ProdutoEscalar.new(@array_1, @array_2)
    produto_escalar.calcula
    produto_escalar.resultado.should eql(3)
  end

  it "o Produto Escalar entre o array_1 com o array_2 deve ser igual a 4" do
    @array_1 = [1, 1, 1,]
    @array_2 = [1, 2, 1,]
    produto_escalar = ProdutoEscalar.new(@array_1, @array_2)
    produto_escalar.calcula
    produto_escalar.resultado.should eql(4)
  end

  it "o Produto Escalar entre o array_1 com o array_2 deve ser igual a 34" do
    @array_1 = [1, 1, 1,]
    @array_2 = [1, 1, 1,]
    produto_escalar = ProdutoEscalar.new(@array_1, @array_2)
    produto_escalar.calcula
    produto_escalar.resultado.should eql(3)
  end

end