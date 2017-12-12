class ChatGroupsController < ApplicationController
  def new
    @group = ChatGroup.new
  end

  def create
    @group = ChatGroup.new(group_params)
    if @group.save
      redirect_to root_path, notice: "グループを作成しました"
    else
      render "new"
    end
  end

  def edit
    @group = ChatGroup.find(params[:id])
  end

  def update
    @group = ChatGroup.find(params[:id])
    if @group.update(group_params)
      redirect_to root_path
      flash[:notice] = "グループを更新しました"
    else
      render "edit"
      flash[:alert] = "エラーがあります"
    end
  end


  def group_params
    params.require(:chat_group).permit(:group_name, user_ids: [])
  end

end
