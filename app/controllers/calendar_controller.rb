class CalendarController < ApplicationController
  def show
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    #@visits_by_date = Visit.group_by(&:date)
  end
end