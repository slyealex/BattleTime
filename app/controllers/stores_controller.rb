class StoresController < ApplicationController
  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)

    if @store.save
      redirect_to root_path, notice: "Store has been sent for registration!"
    else
      render :new
    end
  end

  def index
    @stores = Store.all
  end

  def show
    # @user = User.find(params[:id])
    @store = Store.find(params[:id])
    # @event = Event.find(params[:id])
    # @events = @store.events.find(params[:id])

    if current_user
      @event = @store.events.build
    end
  end

  private

  def store_params
    params.require(:store).permit(:name, :email, :address)
  end
end
