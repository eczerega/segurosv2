json.array!(@informacion_productos) do |informacion_producto|
  json.extract! informacion_producto, :id, :nombre, :tipo, :prima, :valor_asegurado, :duracion_meses, :aseguradora_responsable_id, :aux1, :aux2, :aux3, :image
  json.url informacion_producto_url(informacion_producto, format: :json)
end
