class Api::V1::UsersController < ApplicationController

  def create
    @user = User.create(user_params)

    if @user.save
      render json: @user, status: 200
    else
      render json: @user.errors.full_messages.join(",") , status: 400
    end
  end

  def destroy
    @user = User.find params[:id]

    if @user.destroy
      render json: 'destroyed', status: 200
    else
      render json: @user.errors.full_messages.join(",") , status: 400
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
