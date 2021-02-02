class HomeController < ApplicationController
  def index
  end

  def about
  	@about_us = "Небольшой сайт для хранения ваших контактов. Why not?"
  end
  
end
