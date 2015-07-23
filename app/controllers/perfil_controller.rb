class PerfilController < ApplicationController

  def perfil
    if current_user?
     @usuario = Usuario.find(current_user)
    end
  end

end
