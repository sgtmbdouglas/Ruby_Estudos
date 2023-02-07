puts "Bem-vindo ao cookbook, sua rede social de receitas"

recipes = []

puts "[1] Cadastrar uma receita"
puts "[2] Ver todas as receita"
puts "[3] Sair"

print "Escolha uma opcao"
option = gets.to_i()

while(option != 3) do
    if(option == 1)
        puts "Digite o nome da receita "
        name = gets.chomp()
        puts "Digite o tipo da receita "
        type = gets.chomp()

        recipes << {name: name, type: type}
        puts
        puts "Receita #{name} cadastrada com sucesso!"
        puts
    elsif(option == 2)
        puts "======== Receitas cadastradas ========"
        recipes.each do |recipe|    
            puts "#{recipe[:name]} -- #{recipe[:type]}"
        end
        puts
    else
        puts "opcao invalida"
    end

    puts "[1] Cadastrar uma receita"
    puts "[2] Ver todas as receita"
    puts "[3] Sair"

    print "Escolha uma opcao"
    option = gets.to_i()
end

puts 'Obrigado po usar o Cookbook, ate logo'