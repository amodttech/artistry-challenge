class ArtistsController < ApplicationController

    before_action :find_artist, only: [:show, :edit, :update]

    def index
        @artists = Artist.all
    end

    def show
        
    end

    def edit

    end

    def create
        @artist = Artist.create
        if @artist.valid?
            redirect_to artist_path(@artist)
        else
            flash[:my_errors] = @artist.errors.full_messages
            render 'new'
        end
    end

    def new
        @artist = Artist.new
    end

    private

    def find_artist
        @artist = Artist.find(params[:id])
    end

    


end
