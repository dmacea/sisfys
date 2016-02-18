json.array!(@basico_parroquias) do |basico_parroquia|
  json.extract! basico_parroquia, :id, :nombre, :municipio_id
  json.url basico_parroquia_url(basico_parroquia, format: :json)
end
