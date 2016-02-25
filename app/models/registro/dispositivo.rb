class Registro::Dispositivo < ActiveRecord::Base
  belongs_to :modelo
  belongs_to :linea
end
