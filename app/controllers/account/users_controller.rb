class Account::UsersController < Account::AccountController
  def index
    @user = current_user
  end

  def create
    @user = current_user
    @user.update(user_params)
    redirect_to account_users_path
  end

private
  def user_params
    params.require(:user)
    .permit(
      :email,
      :first_name,
      :last_name,
      :password,
      :password_confirmation
    )
  end
end
