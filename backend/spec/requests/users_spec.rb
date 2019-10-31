require 'rails_helper'

RSpec.describe "Users", type: :request do
  let(:users) { build(:user, :with_a_conversation_and_message) }
  let(:first_user) { User.first }
  
  describe "GET /users" do
    it "Debe mostrar los usuarios" do
      get users_path
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /users" do
    it "Debe crear un usuario" do
      post users_path, params: {user: attributes_for(:user) }
      expect(response).to have_http_status(201)
    end
  end
  
  describe "GET /users/:id" do
    it "Debe mostrar usuario" do
      get "/users/#{first_user.id}"
      expect(json).not_to be_empty
      expect(json['name']).to eq(first_user.name)
      expect(response).to have_http_status(200)
    end
  end

  describe "PATCH /users/:id" do
    it "Debe actualizar el usuario" do
      patch "/users/#{first_user.id}", params:{ user: attributes_for(:user) }
      expect(response.body).not_to be_empty
      expect(response).to have_http_status(200)
    end
  end

  describe "DELETE /users/:id" do
    it "Debe borrar el usuario" do
      delete "/users/#{first_user.id}"
      expect(response).to have_http_status(204)
    end
  end
end
