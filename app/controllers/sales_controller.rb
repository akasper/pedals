class SalesController < ApplicationController
  autocomplete :pedal, :name, full: true

  def create
    @sale = Sale.create!(
      pedal_id:         params[:sale][:pedal_id],
      email:            params[:sale][:email],
      shipping_address: params[:sale][:shipping_address]
    )
    redirect_to action: :index
  end

  def index
    @sales = Sale.all
  end
end
