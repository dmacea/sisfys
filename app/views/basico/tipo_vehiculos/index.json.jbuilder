json.array!(@basico_tipo_vehiculos) do |basico_tipo_vehiculo|
  json.extract! basico_tipo_vehiculo, :id, :nombre
  json.url basico_tipo_vehiculo_url(basico_tipo_vehiculo, format: :json)
end
