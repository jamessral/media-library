class AllController < ApplicationController
  before_action :authenticate_user!

  def index
    @movies = current_user.movies.page(params[:page]).per(15)
    @shows = current_user.shows.page(params[:page]).per(15)
  end
end
