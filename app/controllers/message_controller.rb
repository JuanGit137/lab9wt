class MessageController < ApplicationController
    def index
        @users = User.all
        @message = Message.new
        @chats = Chat.all
    end
    def new
        @users = User.all
        @message = Message.new
        @chats = Chat.all
    end
    def show
        @message = Message.find(params[:id])
    end
    def create
        @message = Message.new(message_params)
        
        if @message.save
          redirect_to chat_path(@message.chat), notice: 'Mensaje enviado correctamente.'
        else
          @chats = Chat.all
          @users = User.all
          render :new, status: :unprocessable_entity
        end
      end
    
    def message_params
        params.require(:message).permit(:chat_id, :user_id, :body)
    end
end