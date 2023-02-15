require_relative 'client'

class Account
    attr_reader :number, :owner
    attr_accessor :balance

    def initialize(number, owner, balance)
        @number = number
        @owner = owner
        @balance = balance
    end

    def withdraw_money(value)
        if balance >= value
            self.balance -= value
        else
            puts "Nao foi possivel executar o saque"
        end
    end

    def deposit(value)
        self.balance += value
    end

    def transfer(destini, value)
        withdraw_money(value)
        destini.deposit(value)
    end
end