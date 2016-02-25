class Registro::Vehiculo < ActiveRecord::Base
  belongs_to :tipo
  belongs_to :modelo
  belongs_to :cliente
  belongs_to :dispositivo
end
