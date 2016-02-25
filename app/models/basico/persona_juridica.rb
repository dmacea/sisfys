class Basico::PersonaJuridica < ActiveRecord::Base

  validates :descripcion, 
      presence: {message: 'Ingrese Descripción'},
      length: {maximum: 30 , too_long:"%{count} caracteres es el maximo  "}
    
  validates :tipo,
      presence: {message: 'Ingrese Tipo  '},
	  uniqueness: {message: 'Tipo registrado', on: :create },
      length: {maximum: 1, too_long:"%{count} caracteres es el maximo  "}

	def self.search(page = 1 , search , sort)
	    search ||= ""
	    sort ||= "" 
	    if search.empty? 
	      paginate(page: page).order(sort) rescue paginate(page: 1) 
	    else
	      paginate(page: page).where("#{sort} like ?","%#{search}%").order("#{sort} asc")
	    end 
	end 

end
