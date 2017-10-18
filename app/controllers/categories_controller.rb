class CategoriesController < ApplicationController

  before_action :set_category, only: [:show]

  def index
    @categories = Category.all

    respond_to do |format|
      format.html
      format.json { render :json => @categories.to_json }
    end
  end

  def new
    @category = Category.new
  end

  def show
    respond_to do |format|
      format.html
      format.json { render :json => @category.to_json }
    end
  end

  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

private
  def set_category
      @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end
end
