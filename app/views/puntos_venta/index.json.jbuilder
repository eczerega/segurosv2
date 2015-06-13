json.array!(@puntos_venta) do |puntos_ventum|
  json.extract! puntos_ventum, :id, :nombre, :ciudad, :comuna, :rut, :dv, :calle, :empresa_id, :aux1, :aux2, :aux3, :image
  json.url puntos_ventum_url(puntos_ventum, format: :json)
end
