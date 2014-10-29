FactoryGirl.define do
  factory :post do
    title {Faker::Lorem.sentence}
    excerpt {Faker::Lorem.paragraph 2}
    content {(Faker::Lorem.paragraphs 5).join(". ")}
  end
end

# in console]
# FactoryGirl.build :post
# FactoryGirl.create :post
# use build_list or create_list for multiple instance
