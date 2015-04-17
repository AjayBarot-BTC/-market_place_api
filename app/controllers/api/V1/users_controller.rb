class Api::v1::UsersController < ApplicationController
  respond_to :json
  def show
    respond_with User.find(params[:id])
  end
end
