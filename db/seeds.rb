@employee = Employee.create(email: "test@test.com",
                    password: "asdfasdf",
                    password_confirmation: "asdfasdf",
                    first_name: "Jon", 
                    last_name: "Snow",
                    phone: "3852090393")

puts "1 User created"

AdminUser.create(email: "admin@test.com", 
                  password: "asdfasdf", 
                  password_confirmation: "asdfasdf", 
                  first_name: "Admin", 
                  last_name: "User",
                  phone: "3852090393")

puts "1 AdminUser created"

title = ['Mumps', 'Rubella', 'Tetanus', 'Measles', 'German Measles', 'PPD(TB)', 'Hep B', 'Meningococcal', 'Varicella', 'IGRA', 'Flu', 'Hep C']

20.times do |post|
  Post.create!(date: Date.today, user_id: @employee.id, title: "#{title.sample}", expiration: (Date.today + 1.week))
end

puts "20 Posts created"


