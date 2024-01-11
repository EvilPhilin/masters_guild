class DictPickupsController < ApplicationController
  before_action :set_dict_pickup, only: %i[ show edit update ]

  # GET /dict_pickups or /dict_pickups.json
  def index
    @dict_pickups = DictPickup.all
  end

  # GET /dict_pickups/1 or /dict_pickups/1.json
  def show
  end

  # GET /dict_pickups/new
  def new
    @dict_pickup = DictPickup.new
  end

  # GET /dict_pickups/1/edit
  def edit
  end

  # POST /dict_pickups or /dict_pickups.json
  def create
    @dict_pickup = DictPickup.new(dict_pickup_params)

    if @dict_pickup.save
      redirect_to dict_pickup_url(@dict_pickup), notice: "Dict pickup was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dict_pickups/1 or /dict_pickups/1.json
  def update
    if @dict_pickup.update(dict_pickup_params)
      redirect_to dict_pickup_url(@dict_pickup), notice: "Dict pickup was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def set_dict_pickup
      @dict_pickup = DictPickup.find(params[:id])
    end

    def dict_pickup_params
      params.require(:dict_pickup).permit(:name, :description, :price)
    end
end
