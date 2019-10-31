class ConversationsController < ApplicationController
    before_action :set_conversation, only: [:show, :update, :destroy]

    # GET /chatrooms
    def index 
        @conversations = Conversation.all
        json_response(@conversations)
    end

    # GET /chatrooms/1
    def show
        json_response(@conversation)
    end

    # POST /chatrooms
    def create
        @conversation = Conversation.new(conversation_params)
        
        if @conversation.save
            json_response(@conversation, :created)
        else
            json_response(@conversation.errors, :unprocessable_entity)
        end
    end

    # PATCH/PUT /chatrooms/1
    def update
        if @conversation.update(conversation_params)
            json_response(@conversation)
        else
            json_response(@conversation.errors, :unprocessable_entity)
        end
    end
    
    # DELETE /chatrooms/1
    def destroy
        @conversation.destroy
    end

    private 

        def set_conversation
            @conversation = Conversation.find(params[:id])
        end

        def conversation_params
            params.require(:conversation).permit(:name)
        end
end
