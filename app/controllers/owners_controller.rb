class OwnersController < ApplicationController
  def index
    @owners = Owner.limit(15)
  end
end
