require 'rails_helper'

RSpec.describe User, type: :model do

  it 'creates with valid email' do
    expect(User.create(email: 'bob@bob.com', password: 'password')).to be_valid
  end

  it 'does not create with invalid email' do
    expect(User.create(email: 'bob', password: 'password')).to_not be_valid
  end
end
