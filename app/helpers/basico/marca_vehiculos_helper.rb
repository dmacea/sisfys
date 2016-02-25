module Basico::MarcaVehiculosHelper




	def opciones_marca_vehiculos(marca)
	#toda las sedes de esa region 
		marcas = Basico::MarcaVehiculo.all.collect { |m| [m.nombre,m.id]}  
		 
		unless marca.nil?
			options_for_select(marcas,marca.id) 
		else
			options_for_select(marcas) 
		end 
	end
end
