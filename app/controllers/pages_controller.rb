class PagesController < ApplicationController
  def home
    @rooms = Room.where(active: true).limit(4)
  end
end
