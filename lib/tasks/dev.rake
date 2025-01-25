namespace :dev do
    desc "Configura o ambiente de desenvolvimento"
    task setup: :environment do
      puts "Cadastrando os tipos de contatos..."
  
      # Criar os tipos de contatos (kinds)
      kind = %w(Amigo Comercial Conhecido)
      kinds = kind.map { |k| Kind.create!(description: k) }
  
      puts "Tipos de contatos cadastrados com sucesso!"
  
      puts "Cadastrando os contatos..."
  
      # Agora que os kinds estão no banco, criamos os contatos
      100.times do |i|
        Contact.create!(
          name: Faker::Name.name,
          email: Faker::Internet.email,
          birthdate: Faker::Date.between(from: 65.years.ago, to: 18.years.ago),
          kind: kinds.sample # Atribui um kind aleatório
        )
      end
  
      puts "Contatos cadastrados com sucesso!"
    end
end
  