class UsersController < ApplicationController
  layout 'panel'
  before_action :check_user

  def index
    @guests = Guest.all
  end

  private

  def check_user
    redirect_to root_path unless user_signed_in?
  end
end