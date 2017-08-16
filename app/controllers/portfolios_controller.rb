class PortfoliosController < ApplicationController
    
    def index
        @portfolios = Portfolio.order(id: :asc)
    end
end