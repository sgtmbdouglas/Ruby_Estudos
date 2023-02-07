INSERT_RECIPE = 1
PRINT_RECIPE = 2
SEARCH_RECIPE = 3
EXIT = 4

def bem_vindo
    puts "Bem-vindo ao cookbook, sua rede social de receitas"
end

def menu()
    puts "#{INSERT_RECIPE} Cadastrar uma receita"
    puts "#{PRINT_RECIPE} Ver todas as receita"
    puts "#{SEARCH_RECIPE} Procurar receita"
    puts "#{EXIT} Sair"

    print "Escolha uma opcao: "
    return gets.to_i()
end

def insert_recipe
    puts "Digite o nome da receita "
    name = gets.chomp()
    puts "Digite o tipo da receita "
    type = gets.chomp()
    puts
    puts "Receita #{name} cadastrada com sucesso!"
    return {name: name, type: type }
    puts
end

def print_recipes(recipes)
    puts "======== Receitas cadastradas ========"
        recipes.each do |recipe|    
            puts "#{recipe[:name]} -- #{recipe[:type]}"
        end
        puts
        if recipes.empty?
            puts "Nenhuma receita cadastrada"
        end
end

bem_vindo()

recipes = []

option = menu()

loop do
    if(option == INSERT_RECIPE)
        recipes << insert_recipe()
    elsif(option == PRINT_RECIPE)
        print_recipes(recipes)
    elsif(option == EXIT)
        break
    else
        puts "opcao invalida"
    end

    option = menu()
end

puts
puts 'Obrigado po usar o Cookbook, ate logo'