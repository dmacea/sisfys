class Registro::Cliente < ActiveRecord::Base
  belongs_to :personaJuridica
  belongs_to :parroquia
end
