def bem_vindo
    puts "Bem-vindo ao cookbook, sua rede social de receitas"
end

def menu()
    puts "[1] Cadastrar uma receita"
    puts "[2] Ver todas as receita"
    puts "[3] Sair"

    print "Escolha uma opcao"
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
end

bem_vindo()

recipes = []

option = menu()

while(option != 3) do
    if(option == 1)
        recipes << insert_recipe()
    elsif(option == 2)
        print_recipes(recipes)
    else
        puts "opcao invalida"
    end

    option = menu()
end

puts 'Obrigado po usar o Cookbook, ate logo'