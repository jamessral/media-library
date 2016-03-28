require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie = movies(:one)
    @user = User.new(username: 'bob', email: 'bob@example.com', password: 'password')
  end

  test "should get index" do
    get movies_url
    assert_response :success
  end

 # test "should show only current user movies" do
 #   get :index
 #   assert_equal @movie.user_id, @user.id
 # end

  test "should get new" do
    get new_movie_url
    assert_response :success
  end

  test "should create movie" do
    assert_difference('Movie.count') do
      post movies_url, params: { movie: { director: @movie.director, name: @movie.name, year: @movie.year } }
    end

    assert_redirected_to movie_path(Movie.last)
  end

  test "should show movie" do
    get movie_url(@movie)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_url(@movie)
    assert_response :success
  end

  test "should update movie" do
    patch movie_url(@movie), params: { movie: { director: @movie.director, name: @movie.name, year: @movie.year } }
    assert_redirected_to movie_path(@movie)
  end

  test "should destroy movie" do
    assert_difference('Movie.count', -1) do
      delete movie_url(@movie)
    end

    assert_redirected_to movies_path
  end
end
