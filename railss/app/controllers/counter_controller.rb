class CounterController < ApplicationController

  def index_m
    @counters = Counter.all
    @months = %w[Январь Февраль 3 4 5 6 7 8 9 10 11 12]
  end

end