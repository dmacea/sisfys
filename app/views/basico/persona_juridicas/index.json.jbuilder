json.array!(@basico_persona_juridicas) do |basico_persona_juridica|
  json.extract! basico_persona_juridica, :id, :descripcion, :tipo
  json.url basico_persona_juridica_url(basico_persona_juridica, format: :json)
end
