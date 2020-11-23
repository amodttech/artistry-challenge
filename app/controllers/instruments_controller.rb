class InstrumentsController < ApplicationController

    def index
        @instruments = Instrument.all
    end

    def show
        find_instrument
    end

    def edit

    end

    def create

    end

    def new

    end

    private

    def find_instrument
        @instrument = Instrument.find(params[:id])
    end

end
