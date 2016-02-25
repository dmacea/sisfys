json.array!(@basico_marca_vehiculos) do |basico_marca_vehiculo|
  json.extract! basico_marca_vehiculo, :id, :nombre
  json.url basico_marca_vehiculo_url(basico_marca_vehiculo, format: :json)
end
