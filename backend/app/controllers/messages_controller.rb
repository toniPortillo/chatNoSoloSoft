class MessagesController < ApplicationController
    before_action :set_messages, only: [:index]
    # GET /conversations/:id/messages
    def index
        json_response (@messages)
    end

    # POST /conversations/:id/messages
    def create
        @message = Message.new(message_params)
        
        if @message.save
            json_response(@message, :created) 
        else
            json_response(@message.errors, :unprocessable_entity)
        end
    end

    private 

        def set_messages
            @messages = Message.where(conversation_id: params[:conversation_id])        
        end

        def message_params
            params.require(:message).permit(:content, :created_by, :conversation_id, :user_id)
        end
end
