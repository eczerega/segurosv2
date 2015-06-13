json.array!(@producto_tecnologia) do |producto_tecnologium|
  json.extract! producto_tecnologium, :id, :producto, :tipo_producto, :marca, :anho, :fecha_inicio, :fecha_termino, :nombre_comprador, :apellido_comprador, :rut_comprador, :digito_verifiador_comprador, :email_comprador, :numero_comprador, :nombre_asegurado, :apellido_asegurado, :rut_asegurado, :digito_verificador_asegurado, :email_asegurado, :numero_asegurado
  json.url producto_tecnologium_url(producto_tecnologium, format: :json)
end
