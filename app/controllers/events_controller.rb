class EventsController < ApplicationController
  def new
  end

  def index
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to root_path, notice: 'Your event has been created! Check out the store page to see your event'
    else
      render root_path, notice: 'There was an error creating your event, please try again!'
    end
  end
end
