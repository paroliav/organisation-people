class Api::V1::PeopleApiController < ApplicationController

  def index
    @people = Person.people_api
    render :json => @people
  end
  
end