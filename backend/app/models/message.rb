class Message
  include Mongoid::Document
  field :body, type: String
  embedded_in :chatroom, :inverse_of => :messages
  belongs_to :user, inverse_of: nil
end
