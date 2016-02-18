json.array!(@basico_estados) do |basico_estado|
  json.extract! basico_estado, :id, :nombre, :codigo, :pais_id
  json.url basico_estado_url(basico_estado, format: :json)
end
