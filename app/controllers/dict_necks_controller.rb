class DictNecksController < ApplicationController
  before_action :set_dict_neck, only: %i[ show edit update ]

  # GET /dict_necks or /dict_necks.json
  def index
    @dict_necks = DictNeck.all
  end

  # GET /dict_necks/1 or /dict_necks/1.json
  def show
  end

  # GET /dict_necks/new
  def new
    @dict_neck = DictNeck.new
  end

  # GET /dict_necks/1/edit
  def edit
  end

  # POST /dict_necks or /dict_necks.json
  def create
    @dict_neck = DictNeck.new(dict_neck_params)

    if @dict_neck.save
      format.html { redirect_to dict_neck_url(@dict_neck), notice: "Neck was successfully created." }
    else
      format.html { render :new, status: :unprocessable_entity }
    end
  end

  def update
    if @dict_neck.update(dict_neck_params)
      redirect_to dict_neck_url(@dict_neck), notice: "Neck was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def set_dict_neck
      @dict_neck = DictNeck.find(params[:id])
    end

    def dict_neck_params
      params.require(:dict_neck).permit(:name, :description, :price)
    end
end
