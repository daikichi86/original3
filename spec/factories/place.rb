FactoryBot.define do
  factory :place do
    name { "あああ" }
    info { "商品の説明文です" }
    category_id { 2 }
    country_id { 3 }

    after(:build) do |place|
      place.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  
    association :user
  end
end
