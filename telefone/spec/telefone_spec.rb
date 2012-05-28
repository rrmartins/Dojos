#coding: utf-8
require "telefone.rb"
 

describe Telefone do
	
	it "entra ABC e retorna 222" do
		telefone = Telefone.new("ABC")
		telefone.converte
		telefone.expressao.should eql("222")
	end

	it "entra DEF e retorna 333" do
		telefone = Telefone.new("DEF")
		telefone.converte
		telefone.expressao.should eql("333")
	end

	it "entra GHI e retorna 444" do
		telefone = Telefone.new("GHI")
		telefone.converte
		telefone.expressao.should eql("444")
	end

	it "entra JKL e retorna 555" do
		telefone = Telefone.new("JKL")
		telefone.converte
		telefone.expressao.should eql("555")
	end

	it "entra MNO e retorna 666" do
		telefone = Telefone.new("MNO")
		telefone.converte
		telefone.expressao.should eql("666")
	end

	it "entra PQRS e retorna 7777" do
		telefone = Telefone.new("PQRS")
		telefone.converte
		telefone.expressao.should eql("7777")
	end

	it "entra TUV e retorna 888" do
		telefone = Telefone.new("TUV")
		telefone.converte
		telefone.expressao.should eql("888")
	end

	it "entra WXYZ e retorna 9999" do
		telefone = Telefone.new("WXYZ")
		telefone.converte
		telefone.expressao.should eql("9999")
	end

	it "entra 1 e retorna 1" do
		telefone = Telefone.new("1")
		telefone.converte
		telefone.expressao.should eql("1")
	end

	it "entra 0 e retorna 0" do
		telefone = Telefone.new("0")
		telefone.converte
		telefone.expressao.should eql("0")
	end

	it "entra - e retorna -" do
		telefone = Telefone.new("-")
		telefone.converte
		telefone.expressao.should eql("-")
	end

	it "entra MY-MISERABLE-JOB e retorna 69-647372253-562" do
		telefone = Telefone.new("MY-MISERABLE-JOB")
		telefone.converte
		telefone.expressao.should eql("69-647372253-562")
	end

	it "entra The quick brown fox e retorna 843 78425 27696 369" do
		telefone = Telefone.new("The quick brown fox")
		telefone.converte
		telefone.expressao.should eql("843 78425 27696 369")
	end
end