class PagesController < ApplicationController

  def contact
  	@title = "Kontakt"
  end
  
  def home
	@title = "Home"
  end
  
  def about
	@title = "Über uns"
  end
  
  def help
	@title = "Hilfe"
  end
  
end
