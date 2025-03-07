namespace :dev do
    desc "Configura o ambiente de desenvolvimento"
    task setup: :environment do
      puts "Reiniciando o banco de dados..."
      # %x(rails db:drop db:create db:migrate)

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
          kind: Kind.all.sample 
        )
      end
  
    puts "Contatos cadastrados com sucesso!"

    puts "Cadastrando os telefones..."

    Contact.all.each do |contact|
      Random.rand(5).times do |i|
        phone = Phone.create!(number: Faker::PhoneNumber.cell_phone, contact: contact)
      end
    end

    puts "Telefones cadastrados com sucesso!"

    puts "Cadastrando os endereços..."

    Contact.all.each do |contact|
      address = Address.create!(
        street: Faker::Address.street_address ,
        city: Faker::Address.city,
        contact: contact
      )
    end

    puts "Endereços cadastrados com sucesso!"
    end
end
  