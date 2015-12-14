class SessionsController < ApplicationController

  def new
    @login_form = LoginForm.new
  end

  def create
    @login_form = LoginForm.new(login_params)
    if @login_form.login.present?
      user = User.find_by(login: @login_form.login)
    end
    if user
      session[:user_id] = user.id
    end
  end

  def destroy

  end

  private

  def login_params
    params.require(:login_form).permit(:login, :password)
  end
end
