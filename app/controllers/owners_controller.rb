class OwnersController < ApplicationController
  def index
    @owners = Owner.limit(15)
  end

  def show
    @owner = Owner.friendly.find(params[:id])
  end
end
