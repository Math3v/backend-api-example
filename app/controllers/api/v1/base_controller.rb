class Api::V1::BaseController < ApplicationController

  before_action :authenticate

  private

    def authenticate
      key = request.headers['HTTP_API_KEY']
      unauthorized if Token.where(value: key).empty?
    end

    def unauthorized
      render json: 'Unauthorized', status: :unauthorized
    end
end
