class Account::UserController < Account::AccountController

  def index
    @user = current_user
  end

  def create
    current_user.update(user_params)
  end

  def user_params
    params.require(:user).permit(
    :email,
    :first_name,
    :last_name)
  end

end
