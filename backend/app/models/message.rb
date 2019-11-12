class Message
  include Mongoid::Document
  field :content, type: String
  field :created_by, type: String
  
  belongs_to :conversation
  belongs_to :user

  validates_presence_of :content 
  validates_presence_of :created_by
end
