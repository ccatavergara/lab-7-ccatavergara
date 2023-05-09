# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Item.delete_all
Restaurant.delete_all
Dish.delete_all
#Items 
items = Item.create([
    {name: "Pizza", price: 100, callories: 1000},
    {name: "Burger", price: 50, callories: 500},
    {name: "Pasta", price: 80, callories: 800},
    {name: "Salad", price: 30, callories: 300},
    {name: "Soup", price: 20, callories: 200},
    {name: "Coke", price: 10, callories: 100}
])
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
    {name: "Beginning Course"},
    {name: "Main Course"},
    {name: "Dessert"},
    {name: "Drink"},
    {name: "Appetizer"}
])