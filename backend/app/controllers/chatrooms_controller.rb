class ChatroomsController < ApplicationController
    before_action :set_chatroom, only: [:show, :update, :destroy]

    # GET /chatrooms
    def index 
        @chatrooms = Chatroom.all
        json_response(@chatrooms)
    end

    # GET /chatrooms/1
    def show
        json_response(@chatroom)
    end

    # POST /chatrooms
    def create
        @chatroom = Chatroom.new(chatroom_params)
        
        if @chatroom.save
            json_response(@chatroom, :created)
        else
            json_response(@chatroom.errors, :unprocessable_entity)
        end
    end

    # PATCH/PUT /chatrooms/1
    def update
        if @chatroom.update(chatroom_params)
            json_response(@chatroom)
        else
            json_response(@chatroom.errors, :unprocessable_entity)
        end
    end
    
    # DELETE /chatrooms/1
    def destroy
        @chatroom.destroy
    end

    private 

        def set_chatroom
            @chatroom = Chatroom.find(params[:id])
        end

        def chatroom_params
            params.require(:chatroom).permit(:name)
        end
end
