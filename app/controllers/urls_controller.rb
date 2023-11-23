class UrlsController < ApplicationController
  before_action :set_url, only: %i[ show edit update destroy ]

  def show
  end

  def new
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)
    @url.short_url = HashGenerator.call

    respond_to do |format|
      if @url.save
        format.html { redirect_to url_url(@url), notice: "Url was successfully created." }
        format.json { render :show, status: :created, location: @url }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @url.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_url
      @url = Url.find(params[:id])
    end

    def url_params
      params.require(:url).permit(:original_url, :short_url)
    end
end
