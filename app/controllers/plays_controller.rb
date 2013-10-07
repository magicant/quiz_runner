class PlaysController < ApplicationController
  def index
    @qs = Quiz.select(:id, :title).all
    @ps = Play.all
  end

  def create
    Play.create! do |p|
      q = Quiz.find(params[:quiz_id])
      p.data = q.questions
      p.memo = params[:memo]
    end
    redirect_to plays_path
  end
end
