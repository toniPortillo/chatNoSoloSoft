class MessagesController < ApplicationController
    before_action :set_messages, only: [:index]
    # GET /conversations/:id/messages
    def index
        json_response (@messages)
    end

    # POST /conversations/:id/messages
    def create
        conversation = Conversation.find(params[:conversation_id])
        message = Message.new(message_params)
        
        if message.save
            ActionCable.server.broadcast "conversation_#{conversation.id}", message: message
        end
        json_response(message, :created)
    end

    private 

        def set_messages
            @messages = Message.where(conversation_id: params[:conversation_id])        
        end

        def message_params
            params.require(:message).permit(:content, :created_by, :conversation_id, :user_id)
        end
end
