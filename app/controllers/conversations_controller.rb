class ConversationsController < ApplicationController

	def new
	  @user = User.find(params[:user_id])
	  @online_users = User.where(signed_in: true)
	  
	  @conversation = Conversation.new
	  @conversation.users = @online_users
	end

	def create
	  conversation = Conversation.new(params[:conversation])
	  conversation.version = 1
	  if conversation.save
		redirect_to conversation
	  else
		render :new
	  end
	end

	def show
	  @conversation = Conversation.find(params[:id])
	  #@line = Line.new
	end
	
	def add_line
	  
	end
	
end
