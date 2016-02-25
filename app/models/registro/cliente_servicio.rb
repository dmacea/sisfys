class Registro::ClienteServicio < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :servicio
  belongs_to :dispositivo
  belongs_to :fechaInicio
end
