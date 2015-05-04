class PagesController < ApplicationController
  def show
    @page = Page.find(params[:id])
    redirect_to not_found_path unless @page
  end

  def home
    @page = Page.find_by(id: 1)
    redirect_to not_found_path unless @page
  end

  def not_found
  end
end
