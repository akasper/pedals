class PedalsController < ApplicationController
  autocomplete :pedal, :name, full: true

  def index
    @pedal = Pedal.new
  end

  def create
    @pedal = Pedal.find_by_name(params[:pedal][:name])
  end

  def sell
    @pedal = Pedal.find_by_name(params[:pedal_id])
  end
end
