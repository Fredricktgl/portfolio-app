class WebsitesController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]

  def index
    @websites = Website.all
  end

  def new
    @website = Website.new
  end

  def create
    @website = Website.create(website_params)
    @website.save

    redirect_to root_path
  end

  def show
    @website = Website.find(params[:id])
  end

  def edit
    @website = Website.find(params[:id])
  end

  def update
    @website = Website.find(params[:id])
    @website.update(website_params)

    redirect_to root_path
  end

  def destroy
    website = Website.find(params[:id])
    website.destroy

    redirect_to root_path
  end

  private

  def website_params
    params.require(:website).permit(:name, :description, :tools, :web_url, :git_url, :filepicker_url)
  end

end