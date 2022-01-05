require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a proper email" do
    user=User.new(
    id: 2,
    email: "naresh" ,
    password: "Naresh"
  )
  expect(user).to_not be_valid
  user.email ="hehe@anviam.com"
  expect(user).to be_valid
  end


  it "has a password with atleast 6 characters" do
    user=User.new(
    id: 2,
    email: "hehe@anviam.com" ,
    password: "sa"
  )
  expect(user).to_not be_valid
  user.password ="Naresh"
  expect(user).to be_valid
  end
end
