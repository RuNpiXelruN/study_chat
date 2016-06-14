class ChatsController < ApplicationController

  def index
    @chats = Chat.all.order(created_at: :desc)
  end

  def show
    @chat = Chat.find(params[:id])
  end

  def create
    user = current_user
    @chat = user.chats.build chat_params
    if @chat.save
      redirect_to profile_path user, notice: "Chat created"
    end
  end

  private
  def chat_params
    params.require(:chat).permit(:title, :description)
  end
end
