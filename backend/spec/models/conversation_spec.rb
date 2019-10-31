require 'rails_helper'
require 'mongo'
Mongo::Logger.logger.level = ::Logger::INFO

RSpec.describe Conversation, :type=>:model, :orm=>:mongoid do
  before(:all) do
    Conversation.delete_all
  end

  context "Sala de chat creada(let)" do
    let(:conversation) { Conversation.create(:name => "Test conversation") }
    after(:each) do
      conversation.delete
    end

    it { expect(conversation).to be_persisted }
    it { expect(conversation.name).to  eq("Test conversation") }
    it { expect(Conversation.find(conversation.id)).to_not be_nil }
    it { is_expected.to have_many(:messages).with_dependent(:destroy) }
    it { is_expected.to have_and_belong_to_many(:users)}
  end
end
