class ConversationsController < ApplicationController

	def new
	  @user = User.find(params[:user_id])
	  @online_users = User.where(signed_in: true)
	  
	  @conversation = Conversation.new
	  @conversation.users = @online_users
	end

	def create
	  @conversation = Conversation.new(params[:conversation])
	  #raise
	  if @conversation.save
		redirect_to @conversation
	  else
	  end
	end

	def show
	  @conversation = Conversation.find(params[:id])
	end
end
