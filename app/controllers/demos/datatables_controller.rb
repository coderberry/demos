class Demos::DatatablesController < ApplicationController
  def index
    @users = Demos::User.all
  end
end
