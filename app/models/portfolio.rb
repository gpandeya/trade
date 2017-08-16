class Portfolio < ApplicationRecord
    
    has_many    :stocks, dependent: :delete_all
    
    def find_stocks(name)
        @name = name
        self.stocks.where(name: @name)
        
    end
    
    def stocks()
        self.stocks
    end
end