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
	  conversation = Conversation.find(params[:id])
	  line = Line.new(text: params[:line])
	  line.user = current_user
	  
	  conversation.add_line line
	 
	  if conversation.save
	  	data = {line_number: line.line_number, user_name: line.user.user_name, text: line.text}
  		render :json => data, :status => :ok
	  else
	  	flash[:error] = "Error updating conversation."
	  	render nothing: true 	
	  end
	end
	
	def get_version
	  conversation = Conversation.find(params[:id])
	  data = {version: conversation.version}
	  render :json => data, :status => :ok
	end
	
	def get_lines
	  # conversation = Conversation.find(params[:id])
	  # lines = conversation.lines
	  # data = {lines: lines}
	  # render :json => data, :status => :ok
	  
	  conversation = Conversation.find(params[:id])
	  lines = conversation.lines
	  
	  line_array = []
	  
	  lines.each do |line|
			line_hash = {line_number: line.line_number, user_name: line.user.user_name, text: line.text}
			line_array << line_hash
	  end
	  
	  data = {lines: line_array}
	  render :json => data, :status => :ok
	end
end
