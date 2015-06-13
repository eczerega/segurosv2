json.array!(@empresas_grandes) do |empresas_grande|
  json.extract! empresas_grande, :id, :nombre, :representante_legal_rut, :dv, :aux1, :aux2, :aux3, :image
  json.url empresas_grande_url(empresas_grande, format: :json)
end
