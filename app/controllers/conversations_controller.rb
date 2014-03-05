class ConversationsController < ApplicationController

	def new
	  @user = User.find(params[:user_id])
	  @online_users = User.where(signed_in: true)
	  @conversation = Conversation.new
	  @conversation.users = @online_users
	end

	def create
		
	  
	end

	def show
	  @conversation = Conversation.find(:id)
	end
end
