class OwnersController < ApplicationController
  def index
    @owners = Owner.all
  end

  def show
  end

  def new
    @owner = Owner.new
  end

  def create
    byebug
    @owner = Owner.create(owner_params)
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
