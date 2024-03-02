class PingController < ApplicationController
  def index
    greet = "world"
    binding.break

    render json: { hello: greet }, status: :ok
  end
end
