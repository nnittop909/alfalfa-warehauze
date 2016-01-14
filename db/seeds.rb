# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
r1 = Role.create(:name => 'user')  
r2 = Role.create(:name => 'admin')  
us1 = User.create(:username => 'user123', :email => 'user@gmail.com' , :password => 'user12345', :role => r1.id)   
us2 = User.create(:username => 'admin', :email => 'admin@gmail.com' , :password => 'admin12345', :role => r2.id)