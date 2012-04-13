# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :photos do
    url "http://cdn2.static.mporatrons.com/photos/Z6Xps2Jmd8_m.jpg"
    title "Shredding"
    rank "2"
    date_posted "2012-04-12 14:15:34"
    user
  end
end