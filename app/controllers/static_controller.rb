class  StaticController < ApplicationController
  def home
    render json: {status: "It working" }
  end
end
