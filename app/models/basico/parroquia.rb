class Basico::Parroquia < ActiveRecord::Base
  belongs_to :municipio, inverse_of: :parroquias


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
      presence: {message: 'Ingrese Nombre del Estado'},
      uniqueness: {message: 'Estado registrado', on: :create },
      length: {maximum: 30 , too_long:"%{count} caracteres es el maximo"}
    


  	validates :municipio,
      presence: {message: 'Seleccione el Municipio'}


	self.per_page = 10 

end
