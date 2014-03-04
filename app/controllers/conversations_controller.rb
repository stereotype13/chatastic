class ConversationsController < ApplicationController

	def new
	  user = User.find(params[:user_id])
	  @conversation = Conversation.new
	  @conversation.user = user
	end

	def create
	  user = User.find(params[:user_id])
	  @conversation = Conversation.new
	  @conversation.user = user
	end
end
