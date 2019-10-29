require 'rails_helper'

RSpec.describe "Messages", type: :request do
    let(:users) { create_list(:user, 10) }
    let(:user) { users.first }
    let(:chatrooms) { create_list(:chatroom, 10) }
    let(:chatroom) { chatrooms.first }
    let(:messages) { create_list(:message, 10) }
    let(:message) { messages.first }


    describe "GET /chatrooms/:id/messages" do
        it "Debe mostrar todos los mensajes de la sala" do
            get "/chatrooms/#{chatroom.id}/messages"
            expect(response).to have_http_status(200)
        end
    end 

    describe "POST /chatrooms/:id/messages" do
        it "Debe crear un mensaje " do
            post "/chatrooms/#{chatroom.id}/messages", 
            :params => { :message => messages, :user => user}
            expect(response).to have_http_status(201)
        end
    end
end