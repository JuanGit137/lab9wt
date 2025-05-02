class ChatController < ApplicationController
    def index
        @chats = Chat.all
    end

    def show
        @chat = Chat.find(params[:id])
    end

    def new
        @chat = Chat.new
        @users = User.all 
        @sender = User.find_by(id: params[:sender_id])
        @receiver = User.find_by(id: params[:receiver_id])
        puts "Sender ID: #{params[:sender_id]}"
        puts "Receiver ID: #{params[:receiver_id]}"
    end

    def create
        @chat = Chat.new(
      sender_id: params[:sender_id],
      receiver_id: params[:receiver_id]
    )
        if @chat.save
            redirect_to @chat, notice: 'Chat was successfully created.'
        else
            render :new
        end
    end

    private

    def chat_params
        params.require(:chat).permit(:sender_id, :receiver_id)
    end
end