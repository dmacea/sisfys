module Basico::ParroquiasHelper




	def opciones_parroquias(parroquia)
	#toda las sedes de esa region 
		parroquias = Basico::Parroquia.all.collect { |estado| [estado.nombre,estado.id]}  
		parroquias.insert(0,["seleccione",""])
		unless parroquia.nil?
			options_for_select(parroquias,parroquia.id) 
		else
			options_for_select(parroquias) 
		end 
	end

end
