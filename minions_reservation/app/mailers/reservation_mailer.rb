class ReservationMailer < ApplicationMailer
  default from: 'reserva.minions@gmail.com'
  layout 'mailer'
  
  def reservation_mailer(reserva)
    @reserva = reserva
    value = @reserva.minions
    @minion = value.gsub(/\]|\[|/, "")

    mail(to: 'patriciadecastrowang@yahoo.com.br', subject: 'Reserva de minions!')
  end
end
