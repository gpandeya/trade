class AccountsController <ApplicationController
    
    def index
        @accounts = Account.order(id: :asc)
    end
end