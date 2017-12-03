class ChatGroupsController < ApplicationController
  def index

  end

  def new
    @group = Group.new
  end
end
