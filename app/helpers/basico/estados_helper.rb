module Basico::EstadosHelper



	def opciones_estados(estado)
	#toda las sedes de esa region 
		estados = Basico::Estados.all.collect { |estado| [estado.nombre,estado.id]}  
		estados.insert(0,["seleccione",""])
		unless estado.nil?
			options_for_select(estados,estado.id) 
		else
			options_for_select(estados) 
		end 
	end



end
