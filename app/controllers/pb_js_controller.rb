class PbJsController < ApplicationController
  before_action :set_pb_j, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:search, :index, :show]
  
  respond_to :html

  def index
    @pb_js = PbJ.all
    respond_with(@pb_js)
  end
  
  def search
    if params[:search].present?
      @pb_js = PbJ.search(params[:search])
    else
      @pb_js = PbJ.all
    end
  end

  def show
    @reviews = Review.where(pb_j_id: @pb_j.id).order("created_at DESC")
    @avg_rating = rating_from_reviews(@reviews)
  end

  def new
    @pb_j = PbJ.new
    respond_with(@pb_j)
  end

  def edit
  end

  def create
    @pb_j = PbJ.new(pb_j_params)
    if @pb_j.save
      if params[:images]
        params[:images].each do |image|
          @pb_j.images.create(filename: image)
        end
      end
    end
    respond_with(@pb_j)
  end

  def update
    if @pb_j.update(pb_j_params)
      if params[:images]
        params[:images].each do |image|
          @pb_j.images.create(filename: image)
        end
      end
    end
    respond_with(@pb_j)
  end

  def destroy
    @pb_j.destroy
    respond_with(@pb_j)
  end

  private
    def set_pb_j
      @pb_j = PbJ.find(params[:id])
    end

    def pb_j_params
      params.require(:pb_j).permit(:description, :name, :address, :phone, :website, :images, images_attributes: ['id','filename', '_destroy'])
    end
end
