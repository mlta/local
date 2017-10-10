require 'test_helper'

class CitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @city = cities(:one)
  end

  test "should get index" do
    get cities_url
    assert_response :success
  end

  test "should get new" do
    get new_city_url
    assert_response :success
  end

  test "should create city" do
    assert_difference('City.count') do
      post cities_url, params: { city: { consulate: @city.consulate, cost_of_living: @city.cost_of_living, culture: @city.culture, currency: @city.currency, health: @city.health, history: @city.history, job: @city.job, market: @city.market, neighborhood: @city.neighborhood, population: @city.population, recreation: @city.recreation, schools: @city.schools, sports: @city.sports, transportation: @city.transportation } }
    end

    assert_redirected_to city_url(City.last)
  end

  test "should show city" do
    get city_url(@city)
    assert_response :success
  end

  test "should get edit" do
    get edit_city_url(@city)
    assert_response :success
  end

  test "should update city" do
    patch city_url(@city), params: { city: { consulate: @city.consulate, cost_of_living: @city.cost_of_living, culture: @city.culture, currency: @city.currency, health: @city.health, history: @city.history, job: @city.job, market: @city.market, neighborhood: @city.neighborhood, population: @city.population, recreation: @city.recreation, schools: @city.schools, sports: @city.sports, transportation: @city.transportation } }
    assert_redirected_to city_url(@city)
  end

  test "should destroy city" do
    assert_difference('City.count', -1) do
      delete city_url(@city)
    end

    assert_redirected_to cities_url
  end
end
