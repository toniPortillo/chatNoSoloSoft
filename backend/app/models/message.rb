require 'user.rb'

class Message
  include Mongoid::Document
  field :body, type: String
  belongs_to :user
  belongs_to :room
end
