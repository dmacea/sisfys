json.array!(@registro_vehiculos) do |registro_vehiculo|
  json.extract! registro_vehiculo, :id, :tipo_id, :modelo_id, :ano, :color, :placa, :serialCarroceria, :serialMotor, :cliente_id, :encargado, :dispositivo_id
  json.url registro_vehiculo_url(registro_vehiculo, format: :json)
end
