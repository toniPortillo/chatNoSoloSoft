require 'rails_helper'

RSpec.describe "Conversations", type: :request do
    let(:conversations) { build{:conversation} }
    let(:first_conversation) { Conversation.first }

    describe "GET /conversations" do
        it "Debe mostrar las salas" do
            get conversations_path
            expect(response).to have_http_status(200)
        end
    end
    
    describe "POST /conversations" do
        it "Debe crear una sala" do
            post "/conversations", params: {conversation: attributes_for(:conversation)}
            expect(response).to have_http_status(201)
        end
    end

    describe "GET /conversations/:id" do
        it "Debe mostrar la sala" do
            get "/conversations/#{first_conversation.id}"
            expect(json).not_to be_empty
            expect(json['name']).to eq(first_conversation.name)
            expect(response).to have_http_status(200)
        end
    end

    describe "PATCH /conversations/:id" do
        it "Debe actualizar el nombre de la sala" do
            patch "/conversations/#{first_conversation.id}", params: {conversation: attributes_for(:conversation)}
            expect(response.body).not_to be_empty
            expect(response).to have_http_status(200)
        end
    end

    describe "DELETE /conversations/:id" do
        it "Debe eliminar la sala" do
            delete "/conversations/#{first_conversation.id}"
            expect(response).to have_http_status(204)
        end
    end
end