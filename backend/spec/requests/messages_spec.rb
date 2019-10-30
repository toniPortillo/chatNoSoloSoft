require 'rails_helper'

RSpec.describe "Messages", type: :request do
    let(:chatroom) { FactoryBot.create(:chatroom) }
    let(:message) { build(:message) }


    describe "GET /chatrooms/:id/messages" do
        it "Debe mostrar todos los mensajes de la sala" do
            get "/chatrooms/#{chatroom.id}/messages"
            expect(response).to have_http_status(200)
        end
    end 
end