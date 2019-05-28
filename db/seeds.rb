# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'securerandom'


User.delete_all
Event.delete_all
Calender.delete_all

dario = User.create(name: 'Dario')
cal = Calender.create(name: 'default')
Event.create(name: 'hunting day', user: dario, calender: cal, date: 101010)