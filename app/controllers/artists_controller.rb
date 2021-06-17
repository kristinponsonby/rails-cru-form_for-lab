class ArtistsController < ApplicationController
    #index
    def index
    @artists = Artist.all
    end

    #show
    def show
    @artist = Artist.find(params[:id])
    end

    #new
    def new
    @artist = Artist.new
    end

    #create
    def create
    @artist = Artist.new(artist_params)
    @artist.save
    redirect_to artist_path(@artist)
    end

    #edit 
    def edit
        @artist = Artist.find(params[:id])
    end

    #update
    def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
        redirect_to artist_path(@artist)
      end

    private 
    def artist_params
        params.require(:artist).permit(:name, :bio)
    end 
end
