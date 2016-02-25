json.array!(@registro_cliente_servicio_detalles) do |registro_cliente_servicio_detalle|
  json.extract! registro_cliente_servicio_detalle, :id, :servicio_id, :fecha, :estado
  json.url registro_cliente_servicio_detalle_url(registro_cliente_servicio_detalle, format: :json)
end
