class Registro::Linea < ActiveRecord::Base
  belongs_to :operadora , class_name: "Basico::Operadora"
  belongs_to :plan , class_name: "Basico::Plan"
	
	def self.search(page = 1 , search , sort)
	    search ||= ""
	    sort ||= "" 
	    if search.empty? 
	      paginate(page: page).order(sort) rescue paginate(page: 1) 
	    else
	      paginate(page: page).where("#{sort} like ?","%#{search}%").order("#{sort} asc")
	    end 
	end 
  
  validates :serial, 
      presence: {message: 'Ingrese el Serial '},
      uniqueness: {message: 'Serial registrado', on: :create },
      length: {maximum: 50 , too_long:"%{count} caracteres es el maximo"}

  validates :codigoPin, 
      presence: {message: 'Ingrese Codigo Pink  '},
      uniqueness: {message: 'Codigo Pink  registrado', on: :create },
      length: {maximum: 50 , too_long:"%{count} caracteres es el maximo"}

  validates :codigoPunk, 
      presence: {message: 'Ingrese Codigo Punk '},
      uniqueness: {message: 'Codigo Punk registrado', on: :create },
      length: {maximum: 50 , too_long:"%{count} caracteres es el maximo"}
 
   validates :numero, 
      presence: {message: 'Ingrese Numero  '},
      uniqueness: {message: 'Numero registrado', on: :create },
      length: {maximum: 25 , too_long:"%{count} caracteres es el maximo"}
 

		validates :operadora,
	      presence: {message: 'Seleccione el Operadora'}

		validates :plan,
	      presence: {message: 'Seleccione el Plan '}

  # dia en que cortan la linea la operadora  
		validates :diaCorte,
	      presence: {message: 'Ingrese el Dia de Corte '}

	self.per_page = 10 
end
 