module Basico::MunicipiosHelper



	def opciones_municipios(municipio,estado)
	#toda las sedes de esa region 
		unless estado.nil?
			municipios = Basico::Municipio.select(:id,:nombre).where("estado_id=?",estado).collect { |m| [m.nombre,m.id]}
		else
			municipios = []
		end
		#municipios = Basico::Municipio.all.collect { |muni| [muni.nombre,muni.id]}  
		#municipios.insert(0,["seleccione",""])
		unless municipio.nil?
			options_for_select(municipios,municipio.id) 
		else
			options_for_select(municipios) 
		end 
	end

end

