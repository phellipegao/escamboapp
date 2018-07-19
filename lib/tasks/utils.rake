namespace :utils do

  desc "Cria Administradores Fake"
  task generate_admin: :environment do
  	puts "Criando ADMINISTRADOR"

  	10.times do 
  		Admin.create!(email: Faker::Internet.email, 
			        password: "123456", 
			        password_confirmation: "123456")
  	end
  	
  	puts "ADMINISTRADOR cadastrados com sucesso!"
  end

end
