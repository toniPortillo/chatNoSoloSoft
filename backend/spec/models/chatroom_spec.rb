require 'rails_helper'
require 'mongo'
Mongo::Logger.logger.level = ::Logger::INFO

RSpec.describe Chatroom, :type=>:model, :orm=>:mongoid do
  before(:all) do
    Chatroom.delete_all
  end

  context "Sala de chat creada(let)" do
    let(:chatroom) { Chatroom.create(:name => "roomTest") }
    after(:each) do
      chatroom.delete
    end

    it { expect(chatroom).to be_persisted }
    it { expect(chatroom.name).to  eq("roomTest") }
    it { expect(Chatroom.find(chatroom.id)).to_not be_nil }
    it { is_expected.to embed_many(:messages)}
  end
end
