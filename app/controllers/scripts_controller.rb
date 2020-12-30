class ScriptsController < ApplicationController
  before_action :set_script, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show, :mastermind]

  respond_to :html

  def index
    @search = Script.search(params[:q])
    @scripts = @search.result
  end

  def show
  end

  def mastermind
    @script=Script.find(params[:id])
    @cast = Cast.where(script_id: @script)
  end

  def new
    @script = current_user.scripts.build
    @cast = @script.casts.build
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
      if current_user.admin == false then
        @script = current_user.scripts.find_by(id: params[:id])
        redirect_to scripts_path, notice: "Not authorized to edit this script" if @script.nil?
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def script_params
      params.require(:script).permit(:created_by, :difficulty, :hints_1, :hints_2, :hints_3, :hints_4, :hints_5, :victory_conditions_1, :victory_conditions_2, :victory_conditions_3, :victory_conditions_4, :victory_conditions_5, :title, :description, :cast, :incident, :main_plot, :subplot_1, :subplot_2, :tragedy_set, :num_loops, :days_loop, :special_rule, :cast_1, :cast_2, :cast_3, :cast_4, :cast_5, :cast_6, :cast_7, :cast_8, :cast_9, :cast_10, :cast_11, :cast_12, :role_1, :role_2, :role_3, :role_4, :role_5, :role_6, :role_7, :role_8, :role_9, :role_10, :role_11, :role_12, :day_1, :day_2, :day_3, :day_4, :day_5, :day_6, :day_7, :day_8, :culprit_1, :culprit_2, :culprit_3, :culprit_4, :culprit_5, :culprit_6, :culprit_7, :culprit_8, casts_attributes: [:id, :cast, :role])
    end

    def cast_params
      params.require(:cast).permit(:id, :cast, :role, :script_id)
    end
end

