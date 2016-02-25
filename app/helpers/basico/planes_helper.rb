module Basico::PlanesHelper




	def opciones_planes(plan,operadora)
			planes =  Basico::Plan.all.collect { |pl| [pl.nombre,pl.id]}
		unless plan.nil?
			options_for_select(planes,plan.id) 
		else
			options_for_select(planes) 
		end 
	end 
end
