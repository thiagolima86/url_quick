class OpenUrlsController < ApplicationController
  def show
    @url = Url.find_by(short_url: params[:hash])
  end
end
