require 'spec_helper'

describe "LayoutLinks" do

  it "should have a Home page at '/'" do
    get '/'
	response.should have_selector('title', :content => "Home")
  end
  
  it "should have a Contact page at '/contact'" do
    get '/contact'
	response.should have_selector('title', :content => "Kontakt")
  end
  
  it "should have a About page at '/about'" do
    get '/about'
	response.should have_selector('title', :content => "Über uns")
  end

  it "should have a Help page at '/help'" do
    get '/help'
	response.should have_selector('title', :content => "Hilfe")
  end
  
  it "should have a Login page at '/login'" do
    get '/login'
	response.should have_selector('title', :content => "Login")
  end

  it "should have the right links on the layout" do
    visit root_path
	response.should have_selector('title', :content => "Home")
	click_link "Über uns"
	response.should have_selector('title', :content => "Über uns")
	click_link "Kontakt"
	response.should have_selector('title', :content => "Kontakt")
	response.should have_selector('a[href="/"]>img')
  end
  
end
