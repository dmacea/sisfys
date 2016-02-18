module Basico::PaisesHelper


	def opciones_paises(pais)
	#toda las sedes de esa region 
		paises = Basico::Pais.all.collect { |pais| [pais.nombre,pais.id]}  
		paises.insert(0,["seleccione",""])
		unless pais.nil?
			options_for_select(paises,pais.id) 
		else
			options_for_select(paises) 
		end 
	end
end
