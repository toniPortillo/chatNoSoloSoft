require 'rails_helper'

RSpec.describe "Chatrooms", type: :request do
    let(:chatroom) { build{:chatroom} }
    let(:first_chatroom) { Chatroom.first }

    describe "GET /chatrooms" do
        it "Debe mostrar las salas" do
            get chatrooms_path
            expect(response).to have_http_status(200)
        end
    end
    
    describe "POST /chatrooms" do
        it "Debe crear una sala" do
            post "/chatrooms", params: {chatroom: attributes_for(:chatroom)}
            expect(response).to have_http_status(201)
        end
    end

    describe "GET /chatrooms/:id" do
        it "Debe mostrar la sala" do
            get "/chatrooms/#{first_chatroom.id}"
            expect(json).not_to be_empty
            expect(json['name']).to eq(first_chatroom.name)
            expect(response).to have_http_status(200)
        end
    end

    describe "PATCH /chatrooms/:id" do
        it "Debe actualizar el nombre de la sala" do
            patch "/chatrooms/#{first_chatroom.id}", params: {chatroom: attributes_for(:chatroom)}
            expect(response.body).not_to be_empty
            expect(response).to have_http_status(200)
        end
    end

    describe "DELETE /chatrooms/:id" do
        it "Debe eliminar la sala" do
            delete "/chatrooms/#{first_chatroom.id}"
            expect(response).to have_http_status(204)
        end
    end
end