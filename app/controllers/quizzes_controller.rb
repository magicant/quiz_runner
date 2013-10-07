class QuizzesController < ApplicationController
  def index
    @qs = Quiz.all
  end

  def show
    @q = Quiz.find(params[:id])
  end

  def edit
  end

  def new
  end

  def create
  end
end

