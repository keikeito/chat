class ChatGroupsController < ApplicationController
  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to controller: 'messages', action: 'index'
      flash[:notice] = "グループを作成しました"
    else
      render "new"
    end

  end

  def group_params
    params.require(:group).permit(:group_name, user_ids: [])
  end

end
