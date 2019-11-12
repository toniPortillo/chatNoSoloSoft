require 'rails_helper'
require 'mongo'
Mongo::Logger.logger.level = ::Logger::INFO

describe Message, :type=>:model, :orm=>:mongoid do

    before(:all) do
        Message.delete_all
    end

    context "Mensaje creado (let)" do
        let(:conversation) { Conversation.create(:name => "Test Conversation") }
        let(:user) { User.create(:name => "Test User") }
        let(:message) { Message.create(:content => "Test message", :created_by => "Test user", :conversation_id => conversation.id, :user_id => user.id) }
        after(:each) do
            conversation.delete
            user.delete
            message.delete
        end
        it { expect(message).to be_persisted }
        it { expect(message.content).to eq("Test message") }
        it { expect(message.created_by).to eq("Test user")}
        it { is_expected.to belong_to(:conversation) }
        it { is_expected.to belong_to(:user) }
    end
end
