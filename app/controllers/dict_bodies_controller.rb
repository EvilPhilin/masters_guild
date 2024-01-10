class DictBodiesController < ApplicationController
  before_action :set_body, only: %i[ show edit update ]

  def index
    @bodies = DictBody.all
  end

  def show
  end

  def new
    @body = DictBody.new
  end

  def create
    @body = DictBody.new(body_params)

    if @body.save
      redirect_to dict_body_url(@body), notice: "Body was successfully created."
    else 
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @body.update(body_params)
      redirect_to dict_body_url(@body), notice: "Body was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def set_body
      @body = DictBody.find(params[:id])
    end

    def body_params
      params.require(:dict_body).permit(:name, :description, :price)
    end
end
