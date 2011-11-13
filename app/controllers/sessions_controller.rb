class SessionsController < ApplicationController
  def new
    @title = "Sign in"
  end

  def create
#  	render 'new'
 
 	user = User.authenticate(params[:session][:email], params[:session][:password])

 	if user.nil?
		flash.now[:error] = "Invalid email/password combination."
		@title = "Sign in"
		render 'new'
 	else
 	  #sign the user in and redirect to the user's show page
 	end
  end

  def destroy
  end


end
