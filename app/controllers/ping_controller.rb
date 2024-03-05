class PingController < ApplicationController
  def index
    greet = "world"
    binding.b

    render json: { hello: greet }, status: :ok
  end
end
