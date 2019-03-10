class NewSuggestionService
  def create(params)
    Suggestion.new(
        topic: Topic.find_by_name(params[:topic_name]),
        text: params[:text])
  end
end