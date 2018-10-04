class Reserva < ApplicationRecord
    validates_presence_of :email, :minions, :nome
    
    EMAIL_REGEXP = /\A[^@]+@([^@\.]+\.)+[^@\.]+\Z/
    
    private
    validate do
        errors.add(:email, :invalid) unless email.match(EMAIL_REGEXP)
    end
end
