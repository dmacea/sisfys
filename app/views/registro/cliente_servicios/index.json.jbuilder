json.array!(@registro_cliente_servicios) do |registro_cliente_servicio|
  json.extract! registro_cliente_servicio, :id, :cliente_id, :servicio_id, :dispositivo_id, :pagaPlan, :fechaInicio_id, :estado
  json.url registro_cliente_servicio_url(registro_cliente_servicio, format: :json)
end
