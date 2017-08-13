class ConcertsController < ApplicationController
  before_action :set_concert, only: [:show, :edit, :update, :destroy]
  
  def index
    @concerts = Concert.all.order(:created_at)
  end
  
  def show
  end

  def edit
  end
  
  def new
    @concert = Concert.new
  end
  
  def create
    # double check this line for the params.  Not sure if it's right or not
    @concert = Concert.new(params[:concert]) 
  end
  
  def update
    # double check this line as well :-S.
    @concert.update(concert_params)
  end
  
  def destroy
    @concert.destroy
    
    redirect_to concerts_path
  end
  
  private
  def set_concert
    @concert ||= Concert.find(params[:id])
  end
  
  def concert_params
    params.require(:concert).permit(:band, :venue, :date, :start_time)
  end
  
end