require 'rails_helper'
require 'mongo'
Mongo::Logger.logger.level = ::Logger::INFO

describe Message, :type=>:model, :orm=>:mongoid do

    before(:all) do
        Message.delete_all
    end

    context "Mensaje creado (let)" do
        let(:user) { User.create(:name => "test") }
        let(:chatroom) { Chatroom.create(:name => "roomTest") }
        let(:message) { Message.create(:body => "Test message", :user => user, :chatroom => chatroom) }
        after(:each) do
            message.delete
            chatroom.delete
            user.delete
        end
        it { expect(message).to be_persisted }
        it { expect(message.body).to eq("Test message") }
        it { expect(Chatroom.find(chatroom.messages(message.id))).to_not be_nil }
        it { is_expected.to be_embedded_in(:chatroom) }
        it { is_expected.to belong_to(:user) }
    end
end
