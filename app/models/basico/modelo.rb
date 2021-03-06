class Basico::Modelo < ActiveRecord::Base
  belongs_to :marca ,inverse_of: :modelos


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
      presence: {message: 'Ingrese Nombre del Modelo '},
      length: {maximum: 50 , too_long:"%{count} caracteres es el maximo"}

  	validates :marca,
      presence: {message: 'Seleccione la Marca '}

	self.per_page = 10 

end
