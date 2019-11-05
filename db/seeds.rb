# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

userkim = User.create(username: "howe", name: "howe gelb", email: "howe@tea.com", password: "howe")
usermel = User.create(username: "melly", name: "mel brown", email: "mel@crag.com", password: "mel")
userjason = User.create(username: "jason", name: "jason saeteroy", email: "jason@asmr.com", password: "jason")

itemqd = Item.create(name: "quickdraw",brand: "black diamond", geartype: "protection")
itemsling = Item.create(name: "4mm 1m sling",brand: "trango", geartype: "extensions")
itemsling2 = Item.create(name: "5mm 1m sling",brand: "black diamond", geartype: "extensions")
itemsling3 = Item.create(name: "2mm 0.25m sling",brand: "mammut", geartype: "extensions")
itemcam = Item.create(name: "number 2 cam",brand: "black diamond", geartype: "protection")
itemharness = Item.create(name: "selena",brand: "petzl", geartype: "harness")

personalqd = PersonalItem.create(note: "10 quickdraws",date_acquired: "2015-01-02",status: "in use", user_id: 1, item_id: 1)
personalsling = PersonalItem.create(note: "5 slings",date_acquired: "2019-02-10",status: "in use", user_id: 2, item_id: 2)
personalsling2 = PersonalItem.create(note: "2 slings",date_acquired: "2017-12-02",status: "in use", user_id: 1, item_id: 2)
personalcam = PersonalItem.create(note: "1 cam bought used",date_acquired: "2015-05-02",status: "in use", user_id: 1, item_id: 5)
personalharness = PersonalItem.create(note: "pink harness",date_acquired: "2019-05-02",status: "in use", user_id: 1, item_id: 6)
personalcam2 = PersonalItem.create(note: "1 cam",date_acquired: "2017-05-02",status: "in use", user_id: 2, item_id: 5)
personalsling2 = PersonalItem.create(note: "1 sling",date_acquired: "2017-12-02",status: "in use", user_id: 2, item_id: 2)
