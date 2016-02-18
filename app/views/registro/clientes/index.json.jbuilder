json.array!(@registro_clientes) do |registro_cliente|
  json.extract! registro_cliente, :id, :personaJuridica_id, :identidad, :nombres, :apellidos, :direccion, :parroquia_id, :email, :pin, :web, :tiwtter
  json.url registro_cliente_url(registro_cliente, format: :json)
end
