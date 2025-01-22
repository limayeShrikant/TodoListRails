class WelcomesController < ApplicationController

  def index
    if user_signed_in?
      redirect_to tasks_path
    end
  end

  def show
  end

  def main_page
  end
end
