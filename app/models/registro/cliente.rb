class Registro::Cliente < ActiveRecord::Base
  	
  	belongs_to :tipoIdentidad
  	belongs_to :parroquia ,class_name: "Basico::Parroquia"
 
	def self.search(page = 1 , search , sort)
	    search ||= ""
	    sort ||= "" 
	    if search.empty? 
	      paginate(page: page).order(sort) rescue paginate(page: 1) 
	    else
	      paginate(page: page).where("#{sort} like ?","%#{search}%").order("#{sort} asc")
	    end 
	end   	

	validates :identidad, 
      presence: {message: 'Ingrese Rif ó cedula de identidad '},
      uniqueness: {message: 'Identidad Registrada ', on: :create },
      length: {maximum: 16 , too_long:"%{count} caracteres es el maximo  "}
    
  	validates :nombres,
      presence: {message: 'Ingrese nombre '},
      length: {maximum: 180, too_long:"%{count} caracteres es el maximo  "}

  	validates :parroquia,
      presence: {message: 'Seleccione el Parroquia '}

  	validates :telefono,
      presence: {message: 'Ingese Numero Telefonico '}

  	validates :celular,
      presence: {message: 'Ingrese Numero Celular '}


	self.per_page = 10 
end
