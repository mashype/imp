class ProvidersController < ApplicationController
  before_action :find_provider, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]

  def index
    @providers = Provider.order ("org_name")
  end

  def show
  end

  def new
    @provider = Provider.new
  end

  def edit
  end

  def create
    @provider = Provider.new(provider_params)

    respond_to do |format|
      if @provider.save
        format.html { redirect_to @provider, notice: 'Provider was successfully created.' }
        format.json { render :show, status: :created, location: @provider }
      else
        format.html { render :new }
        format.json { render json: @provider.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @provider.update(provider_params)
        format.html { redirect_to @provider, notice: 'Provider was successfully updated.' }
        format.json { render :show, status: :ok, location: @provider }
      else
        format.html { render :edit }
        format.json { render json: @provider.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @provider.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Provider was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def find_provider
      @provider = Provider.find(params[:id])
    end

    def provider_params
      params.require(:provider).permit(:org_name, tasks_attributes: [:id, :title, :user_id, :_destroy], 
        contacts_attributes: [:id, :first_name, :last_name, :title, :_destroy],
        locations_attributes: [:id, :add_1, :add_2, :city, :state, :zip, :_destropy])
    end
end
