class UsersController < ApplicationController
  def index
    render json: UserSerializer.new(User.all) if stale? User.all
  end
end
