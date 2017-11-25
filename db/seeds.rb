# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Category.destroy_all
User.destroy_all
c = Category.create(name: "Collar")
Product.create(name: 'Mothers day color heart', stock:10,description:'Collar Edición Especial para el día de las madres.',category: c, size: 'Unitalla',color: 'Varios',price: 450, photo: File.open("app/assets/images/01mothersdaycolorheart.png"))
Product.create(name: 'Collar de 3 Perlas Rosas', stock:8,description:'Collar de 3 Perlas Rosas, lo sencillo de la perfección.',category: c, size: 'Unitalla',color: 'Varios',price: 400, photo: File.open("app/assets/images/02collar3perlasrosas.png"))
c = Category.create(name: "Arete")
Product.create(name: 'Rectangle Style', stock:5,description:'Arete artesanal minimalista, estilo rectangulo.',category: c, size: 'Unitalla',color: 'Rosa',price: 400, photo: File.open("app/assets/images/03rectanglestylearetes.png"))
Product.create(name: 'Geometric Style', stock:5,description:'Arete artesanal minimalista, estilo geométrico.',category: c, size: 'Unitalla',color: 'Dorado',price: 400, photo: File.open("app/assets/images/06aretescool.png"))
c = Category.create(name: "Anillo")
Product.create(name: 'Anillo Semiabierto 2 Líneas', stock:3,description:'Anillo semiabierto, con diseño atractivo de 2 líneas, perfecto para mí.',category: c, size: 'Unitalla',color: 'Dorado',price: 300, photo: File.open("app/assets/images/04anillo2lineas.png"))
Product.create(name: 'Anillo Minimalista', stock:3,description:'Anillo elegante, con diseño simple que encanta a cualquiera.',category: c, size: 'Unitalla',color: 'Dorado',price: 350, photo: File.open("app/assets/images/05anilloplano.png"))
c = Category.create(name: "Pulcera")
user = User.new
user.email = 'admin@minua.com'
user.password = '123456'
user.password_confirmation = '123456'
user.admin = true
user.save!
user = User.new
user.email = 'example@minua.com'
user.password = '123456'
user.password_confirmation = '123456'
user.admin = false
user.save!
