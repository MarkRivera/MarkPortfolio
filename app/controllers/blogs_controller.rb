class BlogsController < ApplicationController
  before_action :require_admin, except: [:index, :show]
  def index
  end

  def new
  end

  def create
  end
end
