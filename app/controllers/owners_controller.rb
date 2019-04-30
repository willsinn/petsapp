class OwnersController < ApplicationController
  def index
    @owners = Owner.all
  end

  def show
    @owner = Owner.find(params[:id])
  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.create(owner_params)
    redirect_to owner_path
  end

  def edit

  end

  def update
  end

  def destroy
  end

  private

    def owner_params
      params.require(:owner).permit(:first_name, :last_name, :age, :email)
    end
end
