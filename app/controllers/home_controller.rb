class HomeController < ApplicationController
  def index
    @speakers = Speaker.all
  end

  def code_of_conduct
  end
end
