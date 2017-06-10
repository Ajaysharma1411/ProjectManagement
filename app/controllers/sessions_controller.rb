class SessionsController < ApplicationController
   def new

   end
   def create
     user = User.find_by(email: params[:session][:email])


      if user && user.authenticate(params[:session][:password])
        flash[:notice] = "Login Successfully"
        log_in user
      redirect_to new_user_projectowner_path(user)
  #user_path(user)
      else

      flash.now[:danger] = 'Invalid Email / Password Combination'

      render 'new'
            
      end
  end

  def destroy
    log_out
    redirect_to root_url
    end
end
