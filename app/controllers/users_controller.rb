class UsersController < ApplicationController
  include UsersHelper
  before_action :authenticate_user!, only: [:show]
  def show
      unless current_user.id == params[:id].to_i
          redirect_to '/'
      end
      @events = Event.find_by admin_id: params[:id]
      @user = User.find(params[:id])
  end

def update

end



end
