class MessageController < ApplicationController
    def index
        @users = User.all
    end
    
    def show
        @message = Message.find(params[:id])
    end
    
    private
    
    def message_params
        params.require(:message).permit(:content, :user_id)
    end
end