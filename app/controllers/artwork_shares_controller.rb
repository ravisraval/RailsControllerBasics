class ArtworkSharesController < ApplicationController
  def create
    artwork_shares = ArtworkShares.new(artwork_params)
    if artwork_shares.save
      render :json => artwork_shares
    else
      render :json => artwork_shares.errors, :status => :unprocessable_entity
    end
  end

  def destroy
    artwork_shares = ArtworkShares.find(params[:id])
    artwork_shares.destroy
    render json: artwork_shares
  end

    private
    def artwork_share_params
      params.require(:artwork_shares).permit(:artwork_id, :viewer_id)
    end


end
