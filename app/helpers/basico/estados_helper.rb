module Basico::EstadosHelper


	def opciones_estados(estado,pais)
	#toda las sedes de esa region 
		unless pais.nil?
			estados = Basico::Estado.select(:id,:nombre).where("pais_id=?",pais).collect { |estado| [estado.nombre,estado.id]}
		else
			estados = []
		end

		unless estado.nil?
			options_for_select(estados,estado.id) 
		else
			options_for_select(estados) 
		end 
	end
end
