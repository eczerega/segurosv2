json.array!(@producto_personas) do |producto_persona|
  json.extract! producto_persona, :id, :producto, :nombre_comprador, :apellido_comprador, :rut_comprador, :digito_verifiador_comprador, :email_comprador, :numero_comprador, :nombre_asegurado, :apellido_asegurado, :rut_asegurado, :digito_verificador_asegurado, :email_asegurado, :numero_asegurado, :fecha_inicio, :fecha_termino
  json.url producto_persona_url(producto_persona, format: :json)
end
