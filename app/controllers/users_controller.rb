class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update]

  def index
    @users = User.all
    # @user = current_user
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        # Tell the UserMailer to send a welcome email after save
        # UserMailer.with(user: @user).welcome_email.deliver_later
        UserMailer.welcome_email(@user).deliver
        # TODO: Move hardcode flash message into language file
        format.html { redirect_to @user, notice: 'User was successfully updated.'}
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, {role_ids: []})
  end
end
