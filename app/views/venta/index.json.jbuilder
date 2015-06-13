json.array!(@venta) do |ventum|
  json.extract! ventum, :id, :tipo_producto, :monto, :vendedor_id, :punto_de_venta_id, :aux1, :aux2, :aux3
  json.url ventum_url(ventum, format: :json)
end
