# Generated with RailsBricks
# Initial seed file to use with Devise User Model

# Temporary admin account
# u = User.new(
#     username: "admin",
#     email: "admin@example.com",
#     password: "1234",
#     password_confirmation: "1234",
#     admin: true
# )
# u.skip_confirmation!
# u.save!



# # Test user accounts
# (1..50).each do |i|
#   u = User.new(
#       username: "user#{i}",
#       email: "user#{i}@example.com",
#       password: "1234",
#       password_confirmation: "1234"
#   )
#   u.skip_confirmation!
#   u.save!

#   puts "#{i} test users created..." if (i % 5 == 0)

# end
  
# categorias = ["Aire libre", "Café", "Cine", "Comida", "Compras", "Deporte", "Entretenimiento", "Noche"]
# categorias.each do |cat|
#   a = Category.new(name: cat)
#   a.save!
# end



##SITIOS SEED
# sitios.each do |sit|
#     s = Site.new(
#         name: sit[0],       #string
#         category: sit[1],   #integer
#         tags: sit[2],       #string
#         address: sit[3],    #string
#         postal: sit[4],     #integer
#         phone: sit[5],      #string
#         mail: sit[6],       #string
#         webpage: sit[7],    #string
#         latitude: sit[8],   #float x.123456
#         longitude: sit[9],  #float
#         text1: sit[10],     #text
#         text2: sit[11],     #text
#         text3: sit[12]      #text
#     )
#     s.save!
# end