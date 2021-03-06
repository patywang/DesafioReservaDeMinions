class ReservasController < ApplicationController
  before_action :set_reserva, only: [:show]

  # GET /reservas
  # GET /reservas.json
  def index
    @reservas = Reserva.all
  end

  # GET /reservas/1
  # GET /reservas/1.json
  def show
  end

  # GET /reservas/new
  def new
    @reserva = Reserva.new
  end

  # POST /reservas
  # POST /reservas.json
  def create
    @reserva = Reserva.new(reserva_params)
    
    respond_to do |format|
      if @reserva.save
        ReservationMailer.reservation_mailer(@reserva).deliver_now #email de reserva para o vendedor
        ReservationMailer.reservation_user_mailer(@reserva).deliver_now #email de reserva para quem solicitou a reserva
        format.html { redirect_to '/', notice: 'Reserva was successfully created.' }
        format.json { render :create, status: :created, location: @reserva }
      else
        format.html { render :new }
        format.json { render json: @reserva.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reserva
      @reserva = Reserva.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reserva_params
      params.require(:reserva).permit({:minions => []}, :email, :nome)
    end
end
