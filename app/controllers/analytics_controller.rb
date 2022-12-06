class AnalyticsController < ApplicationController
  def index
    # Get all the analytics by the count
    @analytics = Analytic.all.order(count: :desc)
  end
end
