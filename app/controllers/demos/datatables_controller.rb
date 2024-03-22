class Demos::DatatablesController < ApplicationController
  def index
    @users = Demo::User.all
    @users = Demo::User.search(params[:search]) if params[:search].present?
    @pagy, @users = pagy(
      @users.reorder(sort_column => sort_direction),
      items: params.fetch(:count, 10)
    )
  end

  def sort_column
    %w{ name email is_active created_at }.include?(params[:sort]) ? params[:sort] : "name"
  end

  def sort_direction
    %w{ asc desc }.include?(params[:direction]) ? params[:direction] : "asc"
  end
end
