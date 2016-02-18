class Basico::PersonaJuridica < ActiveRecord::Base

  validates :descripcion, 
      presence: {message: 'Ingrese Descripción'},
      length: {maximum: 30 , too_long:"%{count} caracteres es el maximo  "}
    
  validates :tipo,
      presence: {message: 'Ingrese Tipo  '},
	  uniqueness: {message: 'Tipo registrado', on: :create },
      length: {maximum: 1, too_long:"%{count} caracteres es el maximo  "}

end
