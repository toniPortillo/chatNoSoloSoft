require 'rails_helper'

RSpec.describe "Messages", type: :request do
    let(:messages) { build(:message) }
    let(:first_message) { Message.first }


    describe "GET /messages" do
        it "Debe mostrar todos los mensajes de la sala" do
            get messages_path
            expect(response).to have_http_status(200)
        end
    end
end