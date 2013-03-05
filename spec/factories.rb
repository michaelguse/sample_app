FactoryGirl.define do

# By using the symbol ':user', we get Factory Girl to simulate the User model.
  factory :user do |user|
    user.name                  "Michael Hartl"
    user.email                 "mhartl@example.com"
    user.password              "foobar"
    user.password_confirmation "foobar"
  end

# By using the symbol ':program', we get Factory Girl to simulate the Program model.
  factory :program do |program|
    program.name	      "Customer Cash"
    program.description	      "Customer Cash program description"
  end

end

