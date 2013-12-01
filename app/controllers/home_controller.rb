class HomeController < ApplicationController
  before_action -> { redirect_to(characters_path) }, if: :user_signed_in?, on: :index
end
