# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.destroy_all
Dish.destroy_all
Item.destroy_all
#Restaurants
restaurants = Restaurant.create([
    {name: "Pizza Hut", address: "Av. Las Condes 1234"},
    {name: "Burger King", address: "Av. Las Condes 5678"},
    {name: "Italian Restaurant", address: "Av. Las Condes 9012"},
    {name: "Salad Restaurant", address: "Av. Las Condes 3456"},
    {name: "Soup Restaurant", address: "Av. Las Condes 7890"}
])
#Dishes
dishes = Dish.create([
    {name: "Side Course"},
    {name: "Main Course"},
    {name: "Dessert"},
    {name: "Drink"},
    {name: "Appetizer"}
])
#Items
items = Item.create([
    {name: "Pizza", price: 100, callories: 1000, restaurant: restaurants[0], dish: dishes[1]},
    {name: "Burger", price: 50, callories: 500, restaurant: restaurants[1], dish: dishes[0]},
    {name: "French Fries", price: 25, callories: 500, restaurant: restaurants[1], dish: dishes[1]},
    {name: "Pasta", price: 80, callories: 800, restaurant: restaurants[2], dish: dishes[1]},
    {name: "Breadsticks", price: 50, callories: 300, restaurant: restaurants[2], dish: dishes[4]},
    {name: "Salad", price: 30, callories: 300, restaurant: restaurants[3], dish: dishes[1]},
    {name: "Soup", price: 20, callories: 200, restaurant: restaurants[4], dish: dishes[1]},
    {name: "Coke", price: 10, callories: 100, restaurant: restaurants[0], dish: dishes[3]}
])

#Users
user = User.create({email:'mcvergara1@miuandes.cl', password:'catita', profile: 1})
