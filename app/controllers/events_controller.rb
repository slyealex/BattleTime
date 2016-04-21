class EventsController < ApplicationController
  before_action :load_store

  def new
  end

  def index
  end

  def create
    @event = @store.events.build(event_params)
    @event.user = current_user

    if @event.save
      redirect_to @store, notice: 'Your event has been created!'
    else
      render root_path, notice: 'There was an error creating your event, please try again!'
    end
  end

  def destroy
    @store = Store.find(params[:store_id])
    @event = @store.events.find(params[:id])
    @event.destroy
    redirect_to @store, notice: 'Event successfully deleted!'
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:name, :time, :description, :category)
  end

  def load_store
    @store = Store.find(params[:store_id])
  end
end
