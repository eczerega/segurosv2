class ActionMail < ActionMailer::Base
  default from: "from@example.com"
  def bienvenido_email(user, subject, body)
    @usuario = user
    @subject = subject
    @body = body
    attachments['Benvenido.pdf'] = File.read('pdfs/'+@usuario.id.to_s+'.pdf')
    mail(to: @usuario.email, :subject => @subject, :body =>@body )
  end

  def wea()
    mail(to: 'eczec1@gmail.com', :subject => 'mieda', :body => 'asdasd' )
  end

  def enviar_poliza(mail, id)



    @mail= mail
    @id= id
    attachments['Poliza.pdf'] = File.read('pdfs/'+'poliza'+@id.to_s+'.pdf')
    mail(to: @mail, :subject => 'Póliza efectiva', :body =>'<h2>ASDASD</h2>' )do |format|
      #format.html { render layout: 'layout.html.erb' }
      format.html {'<h2>Estimado se le  envía su caga de póliza </h2>'}
    end
  end


  def confirmar_compra(mail,nombre,token,id)
    @mail= mail
    @nombre = nombre
    @token =  token
    @id= id
    mail(to: @mail, :subject => 'Porfavor confirme su compra', :body =>'<h2>ASDASD</h2>' + @token )do |format|
      #format.html { render layout: 'layout.html.erb' }
      format.html {'
                      <h2>Estimado '+@nombre+':</<h2>
                      <br>
                      <p>Ha efectuado una compra de un seguro, para confirmarlo haga click en el siguiente botón:</p>
                      <form action="http://sheltered-headland-8489.herokuapp.com/venta/1/activador" method="get">
                      <input type="hidden" value="'+@token.to_s+'" name="token" />
                      <input type="hidden" value="'+@id.to_s+'" name="id2" />
                      <input type="submit" value="Activar">
                      </form>
                  '}
      # format.text
    end

  end

end

#Ojo con el link no tiene sentido que tenga id.