class ScriptsController < ApplicationController
  before_action :set_script, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  respond_to :html

  def index
    @scripts = Script.all
  end

  def show
  end

  def new
    @script = current_user.scripts.build 
  end

  def edit
  end

  def create
    @script = current_user.scripts.build(script_params)
    if @script.save
        redirect_to @script, notice: 'Script was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @script.update(script_params)
        redirect_to @script, notice: 'Script was successfully updated.'
    else
        render action: 'edit'
    end
  end

  def destroy
    @script.destroy
    redirect_to scripts_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_script
      @script = Script.find(params[:id])
    end

    def correct_user
      @script = current_user.scripts.find_by(id: params[:id])
      redirect_to scripts_path, notice: "Not authorized to edit this script" if @script.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def script_params
      params.require(:script).permit(:title, :description, :cast, :incident, :main_plot, :subplot_1, :subplot_2, :tragedy_set, :num_loops, :days_loop, :special_rule)
    end
end
