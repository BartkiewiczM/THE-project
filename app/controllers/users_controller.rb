class UsersController < ApplicationController
  def index
    User.first.to_json
  end
end
