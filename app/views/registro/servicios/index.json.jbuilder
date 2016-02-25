json.array!(@registro_servicios) do |registro_servicio|
  json.extract! registro_servicio, :id, :nombre, :descripcion, :valor, :impuesto
  json.url registro_servicio_url(registro_servicio, format: :json)
end
