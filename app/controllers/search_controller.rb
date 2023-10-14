class SearchController < ApplicationController
  def search_quotes
    quote_query = params[:quote_query]

    if quote_query.present?
      # Perform a search for quotes based on the quote_query
      @quotematch = Quote.where("text LIKE ?", "%#{quote_query}%").distinct
    else
      # If no quote_query is provided, initialize @quotematch as an empty array
      @quotematch = []
    end
  end
end
  