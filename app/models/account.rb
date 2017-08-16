class Account < ApplicationRecord
    
    has_many :portfolios, dependent: :delete_all
    
    def deposit(amount)
        self.update!(balance: self.balance+amount)
    end
    
    def find_portfolios
        @portfolios = self.portfolios
        @portfolios
    end
    
end