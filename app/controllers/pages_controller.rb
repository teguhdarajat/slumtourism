class PagesController < ApplicationController
  protect_from_forgery
  def home
    @paket = Paket.all
  end
end
