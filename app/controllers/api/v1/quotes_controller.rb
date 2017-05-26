class Api::V1::QuotesController < Api::V1::BaseController

  def index
    render json: Quote.all
  end
end
