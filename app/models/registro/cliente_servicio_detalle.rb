class Registro::ClienteServicioDetalle < ActiveRecord::Base
  belongs_to :servicio  ## Objecto tipo Servicio CLiente 
end
