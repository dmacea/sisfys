json.array!(@registro_lineas) do |registro_linea|
  json.extract! registro_linea, :id, :operadora_id, :serial, :codigoPin, :codigoPunk, :numero, :plan_id, :fechaCorte
  json.url registro_linea_url(registro_linea, format: :json)
end
