class SessionsController < ApplicationController
  # The new method renders the login form. It contains no logic itself, and simply renders 
  #the associated view (new.html.erb) that contains the login form HTML

  def new
  end

  # The create method handles the login process. It attempts to find a user in the 
  #database based on the provided email, and, if found, checks the submitted password is 
  #correct using Bcrypt's authenticate method and that the user's status is "Active". If 
  #all of these are correct, the user's id, fname, and is_admin value are allocated to a 
  #session object. Validated users are then redirected to a path that applies to then, i.e. 
  #admin_path or userhome_path. If authentication fails, an error flash message is set and 
  #the login form re-rendered.

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password]) && user.status == "Active"
      session[:user_id] = user.id
      session[:fname] = user.first_name
      session[:is_admin] = user.isadmin
      if session[:is_admin]
        redirect_to admin_path, notice: "Logged in successfully!"
      else
        # Replace 'some_other_path' with the actual path for non-admin users
        redirect_to root_path, notice: "Logged in successfully!" # For example, redirect to the root path
      end
    else
      # Handle authentication failure, e.g., display an error message
      flash.now[:alert] = "Invalid email or password"
      render :new
    end
  end

  # This destroy method handles the logout process. It clears all set parameters from the 
  #session object, rendering it null, and then redirects user to the home page with an 
  #appropriate message.


  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out successfully!"
  end
end
