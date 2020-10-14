FactoryBot.define do
    factory :client do
        name { Faker::Lorem.word }
        business_name { Faker::Lorem.word }
        rfc { Faker::Lorem.word }
        id_direction { Faker::Lorem.word }
        cellphone { Faker::Number.number(digits: 3) }
        telephone { Faker::Number.number(digits: 3) }
        email { Faker::Lorem.word }
    end
end