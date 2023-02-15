 class Account

    attr_reader :number, :holder
    # attr_writer :balance
    attr_accessor : balance

    def initialize(number, holder, balance)
        @number = number
        @holder = holder
        @balance = balance
    end

    # def number
    #     @number
    # end

    # def holder
    #     @holder
    # end

    # def holder=(other_holder)
    #     @holder = other_holder
    # end
    
 end