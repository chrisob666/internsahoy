# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#add the qsort attributes
s = ["Creative", "Problem Solver", "Good Listener", "Oral/Verbal Communication",
     "Writing Skill", "Flexibility (work scheduling)",
     "People Skills", "Punctual", "Accurate", "Efficient", "Multi-Tasker",
     "Analytical", "Ability to Plan", "Skilled Researcher", "Reflective",
     "Leadership", "Teamwork", "Stamina", "Fast paced worker"]

s.each do |att|
  n = Qsort.create(name: att)
  n.position = n.id
  n.save
end

#create culture groupings (with the id # in this order)
Groups.create(:description => "Grouping One")
Groups.create(:description => "Grouping Two")
Groups.create(:description => "Grouping Three")
Groups.create(:description => "Grouping Four")
Groups.create(:description => "Grouping Five")
Groups.create(:description => "Grouping Six")
Groups.create(:description => "Grouping Seven")

#create admin account
User.create(:email => 'admin@asdf.com', :user_type => 'admin', :password => 'password', :password_confirmation => 'password')
