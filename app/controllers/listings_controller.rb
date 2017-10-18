class ListingsController < ApplicationController

  before_action :set_listing, only: [:show]

  def index
    @listings = Listing.search(params)

    respond_to do |format|
      format.html
      format.json { render :json => @listings.to_json }
    end
  end

  def new
    @listing = Listing.new
  end

  def show
    respond_to do |format|
      format.html
      format.json { render :json => @listing.to_json }
    end
  end

  def create
    @listing = Listing.new(listing_params)

    respond_to do |format|
      if @listing.save
        format.html { redirect_to @listing, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @listing }
      else
        format.html { render :new }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  def contact
    Contact.generate(
      user_id: current_user.id,
      listing_id: params[:listing_id],
      message: params[:message]
    )
  end

private
  def set_listing
      @listing = Listing.find(params[:id])
  end

  def listing_params
    params
      .require(:listing)
      .permit(
        :title,
        :description,
        :picture,
        :price,
        :category_id)
      .merge(user_id: current_user.id)
  end
end
