class SuggestionsController < ApplicationController
  
  def index
    @suggestions = Suggestion.all
  end

  def show
    @suggestion = Suggestion.find(params[:id])
  end

  def new
    @suggestion = Suggestion.new
  end

  def create
    @suggestion = SuggestionService.create(suggestion_params)

    if @suggestion.save
      flash[:notice] = 'Suggestion added!'
      render 'show'
    else
      flash.alert = 'Suggestion was not added'
      redirect_to :new_suggestion
    end
  end

  private

  def suggestion_params
    params.require(:suggestion).permit(:topic_name, :text)
  end
end
