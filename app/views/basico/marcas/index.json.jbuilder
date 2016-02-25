json.array!(@basico_marcas) do |basico_marca|
  json.extract! basico_marca, :id, :nombre
  json.url basico_marca_url(basico_marca, format: :json)
end
