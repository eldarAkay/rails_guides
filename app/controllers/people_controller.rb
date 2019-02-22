class PeopleController < ApplicationController
  def index
    @people = Person.all
  end
  
  def new
    @person = Person.new
  end
  
  def create
    @person = Person.new(person_params)
    @person.save

    render 'new'
  end
  
  private
  def person_params
    params.require(:person).permit(:name, :terms_of_service)
  end
end
