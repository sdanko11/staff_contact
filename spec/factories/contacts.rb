# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  # factory :contact do 
  #   sequence(:email_address) {|n| "steve#{n}danko@gmail.com"}
  #   sequence(:first_name) {|n| "steve#{n}danko@gmail.com"}
  #   sequence(:last_name) {|n| "steve#{n}danko@gmail.com"}
  #   sequence(:email_address) {|n| "steve#{n}danko@gmail.com"}
  #   sequence(:email_address) {|n| "steve#{n}danko@gmail.com"}
  factory :contact do
    email_address "stevedanko1@gmail.com"
    subject "good site"
    description "its really cool"
    first_name "steve"
    last_name "danko"
  end

end

