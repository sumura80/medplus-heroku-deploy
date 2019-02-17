class PagesController < ApplicationController
  def about
  	render "pages/about"
  end

  def terms
  	render "pages/terms"
  end

  def privacy
  	render "pages/privacy"
  end
end
