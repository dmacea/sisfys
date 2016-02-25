json.array!(@basico_operadoras) do |basico_operadora|
  json.extract! basico_operadora, :id, :nombre
  json.url basico_operadora_url(basico_operadora, format: :json)
end
