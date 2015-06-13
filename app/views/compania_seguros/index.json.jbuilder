json.array!(@compania_seguros) do |compania_seguro|
  json.extract! compania_seguro, :id, :nombre, :rut, :dv, :banco, :cuenta_bancaria, :aux1, :aux2, :aux3, :image
  json.url compania_seguro_url(compania_seguro, format: :json)
end
