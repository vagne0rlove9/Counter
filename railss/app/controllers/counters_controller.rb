class CountersController < ApplicationController

  def index
    @counters = Counter.all
    @months = %w[Январь Февраль 3 4 5 6 7 8 9 10 11 12]
  end

  def new
    @counter = Counter.new
  end

  def create
    @counter = Counter.create!(params.
                        fetch(:counter).
                           permit(:cold, :hot, :month))
    redirect_to counters_path

  end

  def show
    @counter = Counter.find(params[:id])
  end

  def destroy
    @counter = Counter.find(params[:id])
    @counter.destroy!
    redirect_to counters_path
  end

end