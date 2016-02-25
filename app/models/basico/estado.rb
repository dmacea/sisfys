class Basico::Estado < ActiveRecord::Base


	belongs_to :pais ,inverse_of: :estados
	has_many :municipios, class_name: "Basico::Municipio", inverse_of: :estado, dependent: :restrict_with_error 

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
    
  	validates :codigo,
      presence: {message: 'Ingrese codigo telefonico'},
	  uniqueness: {message: 'codigo registrado', on: :create },
      length: {maximum: 4, too_long:"%{count} caracteres es el maximo"}

  	validates :pais,
      presence: {message: 'Seleccione el Pais'}

	self.per_page = 10 

end
