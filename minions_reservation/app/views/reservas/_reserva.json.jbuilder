json.extract! reserva, :id, :descricao, :minions, :data, :created_at, :updated_at
json.url reserva_url(reserva, format: :json)
