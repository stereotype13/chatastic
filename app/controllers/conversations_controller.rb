class ConversationsController < ApplicationController

	def new
	  # user = User.find(params[:user_id])
	  # @users_online = User.where(signed_in: true)
	  # @conversation = Conversation.new
	  # @conversation.user = user
	  @user = User.find(params[:user_id])
	  @conversation = Conversation.new
	  @users_online = User.where(signed_in: true)
	end

	def create
		
	  puts params[:conversation]
	    raise
	  user = User.find(params[:user_id])
	  @conversation = Conversation.new(params[:conversation])
	
	  @conversation.user = user
	  if @conversation.save
		redirect_to @conversation
	  else
		render :new
	  end
	end

	def show
		@conversation = Conversation.find(:id)
	end
end
