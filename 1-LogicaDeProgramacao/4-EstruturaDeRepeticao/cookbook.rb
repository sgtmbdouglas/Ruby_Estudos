puts "Bem-vindo ao cookbook, sua rede social de receitas"

recipes = []

while(true) do
    puts "Digite o nome da receita "
    name = gets.chomp()

    recipes << name

    puts
    puts "Receita #{name} cadastrada com sucesso!"
    puts
    puts "======== Receitas cadastradas ========"
    # Abaixo estou imprimindo cada elemento pelo indice do array recipes sem prescisar do for s2
    puts recipes    
    puts
    # recipes.each do |recipe|
    #     puts recipe
    # end
    # for recipe in recipes do
    #     puts recipe
    # end
end