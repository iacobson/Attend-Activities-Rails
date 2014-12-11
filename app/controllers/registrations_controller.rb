class RegistrationsController < Devise::RegistrationsController		#check this for info: http://www.jacopretorius.net/2014/03/adding-custom-fields-to-your-devise-user-model-in-rails-4.html
	#also read the readme file 
  private
 
  def sign_up_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
 
  def account_update_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password)
  end
end