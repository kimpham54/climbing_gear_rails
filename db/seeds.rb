# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

userkim = User.create(username: "kimp", name: "kim pham", email: "kim@tea.com", password: "kim")
usermel = User.create(username: "melly", name: "mel brown", email: "mel@crag.com", password: "mel")
userjason = User.create(username: "jason", name: "jason asmr", email: "jason@asmr.com", password: "jason")

itemqd = Item.create(name: "quickdraw",brand: "black diamond", geartype: "protection")
itemsling = Item.create(name: "4mm 1m sling",brand: "trango", geartype: "extensions")

personalqd = PersonalItem.create(note: "10 quickdraws",date_acquired: "2015-01-02",status: "in use", user_id: 1, item_id: 1)
personalsling = PersonalItem.create(note: "5 slings",date_acquired: "2019-02-10",status: "in use", user_id: 2, item_id: 2)
personalsling2 = PersonalItem.create(note: "2 slings",date_acquired: "2017-12-02",status: "in use", user_id: 1, item_id: 2)
