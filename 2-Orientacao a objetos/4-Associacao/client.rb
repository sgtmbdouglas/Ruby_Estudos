class Client
    attr_acessor :name, :last_name
    
    def initialize(name, last_name)
        @name = name
        @last_name = last_name
    end
end