class Basico::TipoVehiculo < ActiveRecord::Base


	def self.search(page = 1 , search , sort)
	    search ||= ""
	    sort ||= "" 
	    if search.empty? 
	      paginate(page: page).order(sort) rescue paginate(page: 1) 
	    else
	      paginate(page: page).where("#{sort} like ?","%#{search}%").order("#{sort} asc")
	    end 
	end 
  
  	validates :nombre, 
      presence: {message: 'Ingrese Nombre del la tipo Vehiculo '},
      uniqueness: {message: 'Marca registrada', on: :create },
      length: {maximum: 50 , too_long:"%{count} caracteres es el maximo"}

	self.per_page = 10 

end
