class DictBodiesController < ApplicationController
  before_action :set_body, only: %i[ show edit update ]

  def index
    @dict_bodies = DictBody.all
  end

  def show
  end

  def new
    @dict_body = DictBody.new
  end

  def create
    @dict_body = DictBody.new(dict_body_params)

    if @dict_body.save
      redirect_to dict_body_url(@dict_body), notice: "Body was successfully created."
    else 
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @dict_body.update(dict_body_params)
      redirect_to dict_body_url(@dict_body), notice: "Body was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def set_body
      @dict_body = DictBody.find(params[:id])
    end

    def dict_body_params
      params.require(:dict_body).permit(:name, :description, :price)
    end
end
