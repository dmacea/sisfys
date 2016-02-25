json.array!(@basico_modelos) do |basico_modelo|
  json.extract! basico_modelo, :id, :nombre, :marca_id
  json.url basico_modelo_url(basico_modelo, format: :json)
end
