class Chatroom
  include Mongoid::Document
  field :name, type: String
  embeds_many :messages
end
