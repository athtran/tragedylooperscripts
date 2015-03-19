class TsetsController < ApplicationController
  before_action :set_tset, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]


  respond_to :html

  def index
    @tsets = Tset.all
    respond_with(@tsets)
  end

  def show
    respond_with(@tset)
  end

  def new
    @tset = current_user.tsets.build
  end

  def edit
  end

  def create
    @tset = current_user.tsets.build(tset_params)
    if @tset.save
        redirect_to @tset, notice: 'Tragedy Set was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    @tset.update(tset_params)
    respond_with(@tset)
  end

  def destroy
    @tset.destroy
    respond_with(@tset)
  end

  private
    def set_tset
      @tset = Tset.find(params[:id])
    end

    def correct_user
      if current_user.admin == false then
        @tset = current_user.tsets.find_by(id: params[:id])
        redirect_to tsets_path, notice: "Not authorized to edit this tragedy set" if @script.nil?
      end
    end

    def tset_params
      params.require(:tset).permit(:title, :attachment_1)
    end
end
