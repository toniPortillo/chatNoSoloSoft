class Chatroom
  include Mongoid::Document
  field :name, type: String
  has_many :messages
end
