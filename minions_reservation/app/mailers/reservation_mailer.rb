class ReservationMailer < ApplicationMailer
  default from: 'patricia.castro.wang@gmail.com'
  layout 'mailer'
  
  def reservation_mailer(reserva)
    @reserva = reserva
    @url  = 'http://example.com/login'
    mail(to: @reserva, subject: 'Welcome to My Awesome Site')
  end
end
