class QuizzesController < ApplicationController
  def index
    @qs = Quiz.all
  end

  def show
    @q = Quiz.find(params[:id])
  end

  def edit
    @q = Quiz.find(params[:id])
  end

  def new
  end

  def create
  end

  def update
    @q = Quiz.find(params[:id])
    @q.questions = params['questions'].select { |h| h['q'].present? }.to_json
    @q.save!
    redirect_to @q
  end
end
