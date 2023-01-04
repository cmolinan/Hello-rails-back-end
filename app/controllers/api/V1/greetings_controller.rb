class Api::V1::GreetingsController < ApplicationController
  def index
    message = Greeting.order(Arel.sql('RANDOM()')).first
    render json: { message: }
  end
end
