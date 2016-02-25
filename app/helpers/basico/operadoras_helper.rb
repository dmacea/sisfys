module Basico::OperadorasHelper


	def opciones_operadoras(operadora)
		operadoras = Basico::Operadora.select(:id,:nombre).collect { |op| [op.nombre,op.id]}

		unless operadora.nil?
			options_for_select(operadoras,operadora.id) 
		else
			options_for_select(operadoras) 
		end 
	end 
end
