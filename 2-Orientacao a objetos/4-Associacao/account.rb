require_relative 'client'

class Account
    attr_reader :number, :holder
    attr_accessor :balance

    def initialize(number, name, last_name, balance)
        @number = number
        @holder = Client.new(name, last_name)
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