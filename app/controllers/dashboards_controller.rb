class DashboardsController < ApplicationController
  def show
    @greeting = Greeting.new
    @users = User.all
    @received_greetings = current_user.received_greetings
  end
end
