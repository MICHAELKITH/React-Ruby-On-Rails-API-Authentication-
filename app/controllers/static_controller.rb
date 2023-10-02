class  StaticController < ApplicationController
  def home
    render json: {status: "DDS database is working" }
  end
end
