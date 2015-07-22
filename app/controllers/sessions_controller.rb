class SessionsController < ApplicationController

  $status=0
  $help='asd'
  def new
    $status
  end

  def create
    u = Usuario.find_by(email: params[:session][:email])
    $status=10
    $help = u.nombre
    if u.try(:authenticate, params[:session][:password])
      $status=2
      # login successfull!
      session[:usuario_id] = u.id
      # flash.notice = "Ingreso exitoso"
      # o usemos la opción de redirect_to, que es equivalente
      redirect_to root_path, notice: "Ingreso exitoso"
    else
      $status=3
      flash.now.alert = "Email o contraseña inválidos"
      render :new
    end
  end

  def destroy
    reset_session

    redirect_to root_path, notice: "Sesión cerrada exitosamente"
  end

end
