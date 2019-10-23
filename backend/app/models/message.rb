class Message
  include Mongoid::Document
  field :body, type: String
  embedded_in :chatroom
  belongs_to :user, inverse_of: nil
end
