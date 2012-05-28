class Telefone
	attr_accessor :expressao

	def initialize(arg1)
		@expressao = arg1.upcase
	end

	def converte
		exp = @expressao
		exp = exp.gsub(/[ABC]/, '2')
		exp = exp.gsub(/[DEF]/, '3')
		exp = exp.gsub(/[GHI]/, '4')
		exp = exp.gsub(/[JKL]/, '5')
		exp = exp.gsub(/[MNO]/, '6')
		exp = exp.gsub(/[PQRS]/, '7')
		exp = exp.gsub(/[TUV]/, '8')
		exp = exp.gsub(/[WXYZ]/, '9')
		@expressao = exp
		return @expressao
	end
end