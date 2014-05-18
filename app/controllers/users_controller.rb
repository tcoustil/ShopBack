class UsersController < ApplicationController
  def create

  end
  def checkin
    # Check whether user has visited provider already
    beacon_id = params[:beacon_id]
    # Mark user visit to provider
    # Add points for user
    # Return point data and mall data
  end
end
