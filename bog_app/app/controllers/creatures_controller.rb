class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
  end

  def new
    @creature = Creature.new
    render :new
  end

  def create
    # whitelist params and save them to a variable
    creature_params = params.require(:creature).permit(:name, :description)
    # create a new creature from `creature_params`
    creature = Creature.new(creature_params)
    # if creature saves, redirect to route that displays all creatures
    if creature.save
      redirect_to creature_path(creature)
      # redirect_to creatures_path is equivalent to:
      # redirect_to "/creatures"
    end
  end

  def show
    creature_id = params[:id]
    @creature = Creature.find(creature_id)
    render :show
  end

  def edit
    creature_id = params[:id]
    @creature = Creature.find(creature_id)
    render :edit
  end

  def update
    @creature = Creature.find(params[:id])
    creature_params = params.require(:creature).permit(:name, :description)
    @creature.update(creature_params)
    redirect_to creature_path(@creature)
  end

end
