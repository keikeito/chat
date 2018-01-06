class MessagesController < ApplicationController
  def index
    @group = ChatGroup.find(params[:chat_group_id])
    @messages = Message.where(chat_group_id: params[:chat_group_id])
    @message = Message.new
  end

  def create
    @messages = Message.new(message_params)
    binding.pry
    if @messages.save
      redirect_to root_path
      flash[:notice] = "メッセージを送信しました"
    else
      @group = ChatGroup.find(params[:chat_group_id]);
      @messages = Message.where(chat_group_id: params[:chat_group_id])
      @message = Message.new
      redirect_to chat_group_messages_path(params[:chat_group_id])
      flash[:alert] = "メッセージを入力してください"
    end

  end

  private
  def message_params
    params.require(:message).permit(:body, :image).merge(chat_group_id: params[:chat_group_id]).merge(user_id: current_user.id)
  end
end
