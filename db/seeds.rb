# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Recipe.create!([
  {
    name: "Estrogonofe de Carne",
    stuff: "1 kg de carne de sua preferência, como patinho ou coxão mole, 3 cebolas médias, 1 vidro de champignon ou palmito, sal e pimenta-do-reino a gosto, 2 latas de creme de leite, 3 tomates picados sem pele e sem sementes, 3 colheres (sopa) de óleo de oliva, 2 colheres (sopa) de ketchup, 1 cubo de caldo de carne dissolvido em 100 ml de água",
    calories: 150,
    kind: "Carne",
    prepare_mode: "Com uma panela e com as mãos",
    portion: "Bastante",
    duration: "2018-11-01 00:40:00",
    cost: 55.0,
    poster: ""
  } ,
  {
    name: "Salada",
    stuff: "Alface, tomate, pepino e cenoura",
    calories: 55,
    kind: "Vegetariana",
    prepare_mode: "apenas jogue tudo no prato",
    portion: "uma pessoa",
    duration: "2018-11-01 00:35:00",
    cost: 9.99,
    poster: ""
  },
  {
    name: "Miojo",
    stuff: "pó e macarrão de miojo",
    calories: 110,
    kind: "Rápida",
    prepare_mode: "coloque no microondas por 15 min no maximo",
    portion: "uma pessoa",
    duration: "2018-11-01 00:30:00",
    cost: 19.9,
    poster: ""
  }
])

receita = Recipe.find_by(name: 'Estrogonofe de Carne')
receita.comments.create(name:'Paulo Xavier' , rating:9 , comment:'Ótima!')
receita.comments.create(name:'Larissa Santana' , rating:9 , comment:'Muito boa, recomendo')
receita.comments.create(name:'Carlos Fernando' , rating:6 , comment:'Não gostei muito não')

receita = Recipe.find_by(name: 'Miojo')
receita.comments.create(name:'Paulo Xavier' , rating:7 , comment:'Bem prático')
