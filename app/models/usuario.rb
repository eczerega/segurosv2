class Usuario < ActiveRecord::Base
  mount_uploader :image, ImageUploader #para subir imagenes
end
