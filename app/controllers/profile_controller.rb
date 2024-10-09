class ProfileController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:edit, :update, :show]

  def show
  end

  def edit
  end

  def update
    if @user.update(profile_params)
      redirect_to profile_path, notice: 'Profile updated successfully.'
    else
      render :edit
    end
  end

  private

  def set_user
    @user = current_user.profile
  end

  def profile_params
    params.require(:profile).permit(:avatar, :city, :state, :country, :phone, :gender)
  end
end
