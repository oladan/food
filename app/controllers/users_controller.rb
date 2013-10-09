class UsersController < ApplicationController
  inherit_resources

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to :root, notice: "Thanks for the registration"
    else
      render :new
    end
  end
end