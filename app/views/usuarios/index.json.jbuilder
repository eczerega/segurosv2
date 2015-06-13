json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nombre, :apellido, :rut, :dv, :email, :telefono_fijo, :telefono_celular, :password_digest, :image, :tipo, :estado, :punto_venta
  json.url usuario_url(usuario, format: :json)
end
