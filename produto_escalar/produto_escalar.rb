class ProdutoEscalar

	attr_accessor :array_1, :array_2, :resultado

	def initialize(arg1, arg2)
		@array_1 = arg1
		@array_2 = arg2
	end

	def valida_tamanho
		if @array_1.size === @array_2.size
			return true
		else
			return false
		end
	end

	def calcula
		if !self.valida_tamanho
	    	@resultado = nil
	    else
	    	i = 0
	    	mult = []
	    	array_1.each do |position|
	    		mult << position * array_2[i]
	    		i += 1
	    	end
	    	@resultado = 0
	    	mult.each do |array| 
	    		@resultado += array 
	    	end
	    end
	end
end