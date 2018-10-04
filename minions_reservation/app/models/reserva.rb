class Reserva < ApplicationRecord
    validates_presence_of :email, :minions
end
