# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

#TodoList.destroy_all

#TodoItem.destroy_all

user1= User.create! ({username: "Fiorina", password_digest: "abcde" })
user2= User.create! ({username: "Trump", password_digest: "abcde" })
user3= User.create! ({username: "Carson", password_digest: "abcde" })
user4= User.create! ({username: "Clinton", password_digest: "abcde" })

prof1=user1.create_profile(last_name: "Fiorina",first_name: "Carly" , birth_year: "1954", gender: "female")
prof2=user2.create_profile(last_name: "Trump", first_name: "Donald" , birth_year: "1946", gender: "male" )
prof3=user3.create_profile(last_name: "Carson", first_name: "Ben" , birth_year: "1951", gender: "male" )
prof4=user4.create_profile(last_name: "Clinton",first_name: "Hillary" , birth_year: "1947", gender: "female" )


 list1 = TodoList.create!(list_name: " My objectives", list_due_date: Date.today + 1.year, :user_id=>user1.id)
   list2 = TodoList.create!(list_name: " My objectives", list_due_date: Date.today + 1.year, :user_id=>user2.id)
 list3 = TodoList.create!(list_name: " My objectives", list_due_date: Date.today + 1.year, :user_id=>user3.id)
 list4 = TodoList.create!(list_name: " My objectives", list_due_date: Date.today + 1.year, :user_id=>user4.id)

 for i in 1..5
  TodoItem.create(due_date: Date.today + 1.year, title: "item #{i}", description: "Priority #{i}", todo_list_id: list1.id)
  TodoItem.create(:due_date=>Date.today + 1.year, :title=>"item #{i}", :description=>"Priority #{i}", :todo_list_id=>list2.id)
  TodoItem.create(:due_date=>Date.today + 1.year, :title=>"item #{i}", :description=>"Priority #{i}", :todo_list_id=>list3.id)
  TodoItem.create(:due_date=>Date.today + 1.year, :title=>"item #{i}", :description=>"Priority #{i}", :todo_list_id=>list4.id)

  end
  	#user2.todo_items.create!(title: "item #{i}", description:"priority #{i}" , due_date: Date.today + 1.year)
  	#user3.todo_items.create!(title: "item #{i}", description:"priority #{i}" , due_date: Date.today + 1.year)
  	#user4.todo_items.create!(title: "item #{i}", description:"priority #{i}" , due_date: Date.today + 1.year)
# end

 #  for i in 1..5
 # 	user2.todo_items << TodoItem.create!(title: "item #{1}", description:"prioritary #{i}" list_due_date: Date.today + 1.year)
 # end

 #  for i in 1..5
 # 	user3.todo_items << TodoItem.create!(title: "item #{1}", description:"prioritary #{i}" list_due_date: Date.today + 1.year)
 # end

 #  for i in 1..5
 # 	user4.todo_items << TodoItem.create!(title: "item #{1}", description:"prioritary #{i}" list_due_date: Date.today + 1.year)
 # end

 #  for i in 1..5
 # 	user5.todo_items << TodoItem.create!(title: "item #{1}", description:"prioritary #{i}" list_due_date: Date.today + 1.year)
 # end





