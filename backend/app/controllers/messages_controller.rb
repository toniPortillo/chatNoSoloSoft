class MessagesController < ApplicationController

    # GET /messages
    def index
        @messages = Messages.all
        json_response (@messages)
    end

    # POST /messages
    def create
        @message = (message_params)
        
        if @message.save
            json_response(@message, :created) 
        else
            json_response(@message.errors, :unprocessable_entity)
        end
    end

    private 

        def set_message
            @message = Message.find(params[:id])        
        end

        def message_params
            params.require(:message).permit(:body)
        end
end
