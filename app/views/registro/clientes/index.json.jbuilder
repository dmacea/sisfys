json.array!(@registro_clientes) do |registro_cliente|
  json.extract! registro_cliente, :id, :tipoIdentidad_id, :identidad, :nombres, :direccion, :parroquia_id, :email, :ping, :web, :twitter, :telefono, :otroTelefono, :celular, :otroCelular, :otroEmail
  json.url registro_cliente_url(registro_cliente, format: :json)
end
