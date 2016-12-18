class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
  end

  def new
    @creature = Creature.new
  end

  def create
    creature_params = params.require(:creature).permit(:name, :description)
    creature = Creature.new(creature_params)
    if creature.Save
      redirect_to creatures_path(creature)
  end

  def show
    creature_id = params[:id]
    @creature = Creature.find_by_id(creature_id)
  end

  def edit
    creature_id = params[:id]
    @creature = Creature.find_by_id(creature_id)
  end

end
