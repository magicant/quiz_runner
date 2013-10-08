class PlayersController < ApplicationController

  before_action :set_player

  def show
    render
  end

  def play
    if @pl.play.started?
      @step ||= @pl.decision_array.size
      @step = [@step, 1].max
      @step = [@step, @pl.play.step].min
    end

    render
  end

  def do_play
    if (d = params[:decision].try(:to_i))
      @pl.decide(@step, d)
      logger.info "[play] Player(#{@pl.id}) decide Q(#{@step}) <- A(#{d})"
    end
    redirect_to play_player_path(@pl, @step)
  end

  private

  def set_player
    @pl = Player.with_play.find(params[:id])
    @step = params[:step].try(&:to_i)
  end
end

