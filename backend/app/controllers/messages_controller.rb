class MessagesController < ApplicationController
    before_action :set_chatroom, only: [:index, :create]

    # GET /chatrooms/:id/messages
    def index
        @messages = @chatroom.messages.all
        json_response (@messages)
    end

    # POST /chatrooms/:id/messages
    def create
        @message = @chatroom.messages.create!(message_params)
        
        if @message.save
            json_response(@message, :created) 
        else
            json_response(@message.errors, :unprocessable_entity)
        end
    end

    private 
        def set_chatroom
            @chatroom = Chatroom.find(params[:chatroom_id])
        end

        def set_message
            @message = Message.find(params[:id])        
        end

        def message_params
            params.require(:message).permit(:body, :user_id)
        end
end
