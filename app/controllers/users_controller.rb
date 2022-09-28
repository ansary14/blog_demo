# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user
  def profile
    @user.update(views: @user.views + 1)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end
end
