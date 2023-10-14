class HomeController < ApplicationController
  def index
    @quotes = Quote.take(5)
    @quotes = Quote.includes(:category).where(user_id: session[:user_id])
    
  end

  def about
  end
  def admin
  end
end