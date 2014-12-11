# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :response do
    text "MyText"
    question_id 1
    survey_id 1
  end
end
