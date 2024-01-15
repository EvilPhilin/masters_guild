class PrototypesController < ApplicationController
  before_action :set_prototype, only: %i[ show edit update ]

  # GET /prototypes or /prototypes.json
  def index
    @prototypes = Prototype.all
  end

  # GET /prototypes/1 or /prototypes/1.json
  def show
  end

  # GET /prototypes/new
  def new
    @prototype = Prototype.new
  end

  # GET /prototypes/1/edit
  def edit
  end

  # POST /prototypes or /prototypes.json
  def create
    @prototype = Prototype.new(prototype_params)

    if @prototype.save
      redirect_to prototype_url(@prototype), notice: "Prototype was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /prototypes/1 or /prototypes/1.json
  def update
    if @prototype.update(prototype_params)
      redirect_to prototype_url(@prototype), notice: "Prototype was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def set_prototype
      @prototype = Prototype.find(params[:id])
    end

    def prototype_params
      params.require(:prototype).permit(:dict_body_id, :dict_neck_id, :dict_pickup_id)
    end
end
