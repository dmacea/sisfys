json.array!(@basico_paises) do |basico_pais|
  json.extract! basico_pais, :id, :nombre, :codigo
  json.url basico_pais_url(basico_pais, format: :json)
end
