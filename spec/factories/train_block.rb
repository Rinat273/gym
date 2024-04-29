FactoryBot.define do
  factory :train_block do
    sequence_number { 4 }
    train_plan
    title { "Жим" }
  end
end