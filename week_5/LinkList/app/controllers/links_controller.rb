class LinksController < ApplicationController
  before_action :set_link, only: [:show, :edit, :update, :destroy]

  def index
    @title = "Links"
    @links = Link.all
  end

  def show
    @title = "Links"
  end

  def new
    @title = "Links"
    @link = Link.new
  end

  def edit
  end

  def create
    @title = "Links"
    @link = Link.new(link_params)

    if @link.save
      redirect_to @link, notice: 'Link was successfully created.'
    else
      render :new
    end
  end

  def update
    @title = "Links"
    if @link.update(link_params)
      redirect_to @link, notice: 'Link was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @title = "Links"
    @link.destroy
    redirect_to links_url, notice: 'Link was successfully destroyed.'
  end

  private
    def set_link
      @title = "Links"
      @link = Link.find(params[:id])
    end

    def link_params
      @title = "Links"
      params.require(:link).permit(:name, :url, :description)
    end
end
