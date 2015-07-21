class Usuario < ActiveRecord::Base
  mount_uploader :image, ImageUploader #para subir imagenes
  has_secure_password
end
