json.array!(@basico_municipios) do |basico_municipio|
  json.extract! basico_municipio, :id, :nombre, :estado_id
  json.url basico_municipio_url(basico_municipio, format: :json)
end
