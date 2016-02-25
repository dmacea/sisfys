json.array!(@basico_modelo_vehiculos) do |basico_modelo_vehiculo|
  json.extract! basico_modelo_vehiculo, :id, :nombre, :marcaVehiculo_id
  json.url basico_modelo_vehiculo_url(basico_modelo_vehiculo, format: :json)
end
