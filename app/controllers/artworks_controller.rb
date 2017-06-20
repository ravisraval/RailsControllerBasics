class ArtworksController < ApplicationController
  def create
    artwork = Artwork.new(artwork_params)
    if artwork.save
      render :json => artwork
    else
      render :json => artwork.errors.full_messages, :status => :unprocessable_entity
    end
  end

  def destroy
    artwork = Artwork.find(params[:id])
    artwork.destroy
    render json: artwork
  end

  def index
    user = User.find(params[:user_id])

    artwork = ArtworkShare.select('*').where(
    "viewer_id = #{params[:user_id]}")
    render :json => user.artworks#, user.artworks
  end

  def show
    render :json => Artwork.find(params[:id])
  end

  def update
    artwork = Artwork.find(params[:id])
    if artwork.update_attributes(artwork_params)
      render :json => artwork
    else
      render :json => artwork.errors, :status => :unprocessable_entity
    end
  end

    private
    def artwork_params
      params.require(:artwork).permit(:title, :artist_id, :image_url)
    end
end
