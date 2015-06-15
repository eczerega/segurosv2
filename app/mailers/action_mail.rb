class ActionMail < ActionMailer::Base
  default from: "from@example.com"
  def bienvenido_email(user, subject, body)
    @usuario = user
    @subject = subject
    @body = body
    attachments['Benvenido.pdf'] = File.read('pdfs/'+@usuario.id.to_s+'.pdf')
    mail(to: @usuario.email, :subject => @subject, :body =>@body )
  end

  def mandar_poliza(poliza, subject, body)
    @poliza = poliza
    @subject = subject
    @body = body
    attachments['Poliza.pdf'] = File.read('pdfs/'+'poliza'+@poliza.id.to_s+'.pdf')
    mail(to: @poliza.email_asegurado, :subject => @subject, :body =>@body )
  end

  def confirmar_compra(mail)
    @mail= mail
    mail(to: @mail, :subject => 'Porfavor confirme su compra', :body =>'Haga click en este link' )
  end




end