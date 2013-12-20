# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :weigh_in do
    user nil
    weightpic "MyText"
    currentweight 1
    description "MyText"
  end
end
