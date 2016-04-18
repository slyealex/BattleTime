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
      redirect_to root_path, notice: 'Your event has been created! Check out the store page to see your event'
    else
      render root_path, notice: 'There was an error creating your event, please try again!'
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :time, :description)
  end

  def load_store
    @store = Store.find(params[:store_id])
  end
end
