require_relative 'account'

class CorrentAccount < Account
    attr_accessor :limit
    
    def initialize(number, owner, balance, limit)
        super(number, owner, balance)
        @limit = limit
    end

    def withdraw_money(value)
        if (balance + limit) >= value
            self.balance -= value
        else
            puts "Nao foi possivel executar o saque"
        end
    end
end