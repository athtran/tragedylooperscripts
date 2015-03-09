class ScriptsController < ApplicationController
  before_action :set_script, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @scripts = Script.all
  end

  def show
  end

  def new
    @script = Script.new
  end

  def edit
  end

  def create
    @script = Script.new(script_params)
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

    # Never trust parameters from the scary internet, only allow the white list through.
    def script_params
      params.require(:script).permit(:title, :description)
    end
end
