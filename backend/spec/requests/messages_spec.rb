require 'rails_helper'

RSpec.describe "Messages", type: :request do
    let(:messages) { build(:message, :with_a_user_and_conversation) }
    let(:first_message) { Message.first }
    let(:first_user) { create(:user) }
    let(:first_conversation) {create(:conversation)}


    describe "GET /conversations/:id/messages" do
        it "Debe mostrar todos los mensajes de la sala" do
            get "/conversations/#{first_conversation.id}/messages"
            expect(response).to have_http_status(200)
        end
    end

    describe "POST /conversations/:id/messages" do
        it "Debe crear un mensaje en la sala" do
            post "/conversations/#{first_conversation.id}/messages", 
            params: {message: attributes_for(:message).merge(:conversation_id => first_conversation.id, :user_id => first_user.id)}
            expect(response).to have_http_status(201)
        end
    end
end