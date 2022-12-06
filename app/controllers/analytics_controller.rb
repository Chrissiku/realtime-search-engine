class AnalyticsController < ApplicationController
  def index   
    ignore_list = ['what', 'the', 'is', 'a', 'to', 'of', 'and', 'in', 'for', 'on', 'that', 'by', 'this', 'with', 'i', 'who', 'how']
    question_list = ['what', 'who', 'how', 'when', 'where', 'which', 'why']

    @analytics = Analytic.all.order(count: :desc).reject do |analytic|
      ignore_list.include?(analytic.word)
    end

    @questions = Analytic.all.order(count: :desc).select do |analytic|
      question_list.include?(analytic.word)
    end
  end
end
