json.array!(@registro_dispositivos) do |registro_dispositivo|
  json.extract! registro_dispositivo, :id, :tipo, :modelo_id, :serial, :email, :linea_id
  json.url registro_dispositivo_url(registro_dispositivo, format: :json)
end
