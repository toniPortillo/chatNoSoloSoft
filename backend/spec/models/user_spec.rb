require 'rails_helper'
require 'mongo'
Mongo::Logger.logger.level = ::Logger::INFO

describe User, :type=>:model, :orm=>:mongoid do

  before(:all) do
    User.delete_all
  end

  context User do
    it { is_expected.to have_field(:name).of_type(String).with_default_value_of(nil) }
  end

  context "Usuario creado (let)" do
    let(:user) { User.create(:name => "test") }
    after(:each) do
      user.delete
    end

    it { expect(user).to be_persisted }
    it { expect(user.name).to eq("test") }
    it { expect(User.find(user.id)).to_not be_nil }
  end
end
