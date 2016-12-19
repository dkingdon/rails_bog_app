class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
  end

  def new
    @creature = Creature.new
  end

  def create
    creature = Creature.new(creature_params)
    redirect_to creature_path(creature)
  end

  def show
    creature_id = params[:id]
    @creature = Creature.find_by_id(creature_id)
  end

  def edit
    creature_id = params[:id]
    @creature = Creature.find_by_id(creature_id)
  end

  def update
    creature_id = params[:id]
    @creature = Creature.find_by_id(creature_id)
    redirect_to creature_path(creature)
  end

  def destroy
    creature_id = params[:id]
    creature = Creature.find_by_id(creature_id)
    creature.destroy
    redirect_to creature_path
  end

  private

  def creature_params
    params.require(:creature).permit(:name, :description)
  end


end
