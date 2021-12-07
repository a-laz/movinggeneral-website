class QuotesController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def create
      @quote = Quote.new
      @quote.name = params[:name]
      @quote.address_1 = params[:address_1]
      @quote.address_2 = params[:address_2]
      @quote.move_date = params[:move_date]
      @quote.phone = params[:phone]
      @quote.user_id = current_user.id
      if @quote.save
        redirect_to '/submitted', notice: "Your quote has been submitted!"
      else
        redirect_to root_path, alert: "Required field missing"
      end
  end
end
