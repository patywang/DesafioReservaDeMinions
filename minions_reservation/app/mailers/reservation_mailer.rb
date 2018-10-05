class ReservationMailer < ApplicationMailer
  default from: 'reserva.minions@gmail.com'
  layout 'mailer'
  
  
  def timeCalculate()
    timeAux = Time.now
    time = timeAux - (3600 * 3)
    return time
  end
  
  def minionReservationList(minionList)
    listAux = minionList.gsub(/\]|\[|/, "")
    return listAux
  end
  
  def reservation_mailer(reserva)
    
    @reserva = reserva
    @minion = minionReservationList(@reserva.minions)
    @time = timeCalculate()
    
    mail(to: 'miguel@inventosdigitais.com.br', subject: 'Nova reserva de minions!')
  end
  
  def reservation_user_mailer(reserva)
    
    @reservaUser = reserva
    @time = timeCalculate()
    @minion = minionReservationList(@reservaUser.minions)
    
    mail(to: @reservaUser.email, subject: 'Reserva de minions efetuada.')
  end
end
