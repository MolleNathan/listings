class PagesController < ApplicationController

  before_action :set_page, only: [:show]
  before_action :restrict_admin, only: [:index, :create]

  def index
    @pages = Page.all

    respond_to do |format|
      format.html
      format.json { render :json => @pages.to_json }
    end
  end

  def show
    respond_to do |format|
      format.html
      format.json { render :json => @page.to_json }
    end
  end

  def create
    @page = Page.new(page_params)

    respond_to do |format|
      if @page.save
        format.html { redirect_to @page, notice: 'Page was successfully created.' }
        format.json { render :show, status: :created, location: @page }
      else
        format.html { render :new }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

private
  def set_page
      @page = Page.find(params[:id])
  end

  def page_params
    params.require(:page).permit(
      :title,
      :lang,
      :content
    )
  end
end
