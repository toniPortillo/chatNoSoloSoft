class MessagesController < ApplicationController

    # GET /messages
    def index
        @messages = Message.all
        json_response (@messages)
    end

    # POST /messages
    def create
        @message = Message.new(message_params)
        
        if @message.save
            json_response(@message, :created) 
        else
            puts @message.errors.details
            json_response(@message.errors, :unprocessable_entity)
        end
    end

    private 

        def set_message
            @message = Message.find(params[:id])        
        end

        def message_params
            params.require(:message).permit(:content, :conversation_id, :user_id)
        end
end
