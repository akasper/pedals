class PedalsController < ApplicationController
  def index
    @pedals = Pedal.all
    @sale   = Sale.new
  end
end
