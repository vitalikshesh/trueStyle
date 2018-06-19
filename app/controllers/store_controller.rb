class StoreController < ApplicationController
  def index
  	@outfits = Outfit.order(:title)
  end
end
