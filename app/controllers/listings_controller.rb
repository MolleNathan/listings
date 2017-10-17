class ListingsController < ApplicationController

  def index
    @listings = Listing.all

    respond_to do |format|
      format.html
      format.json { render :json => @listings.to_json }
    end
  end

  def new
    @listing = Listing.new
  end

  def show
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
