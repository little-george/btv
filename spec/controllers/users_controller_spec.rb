﻿require 'spec_helper'

describe UsersController do

  render_views
  
  before (:each) do
    @base_title = "Bauteilverwertung Köppel & Klein GmbH"
  end  

  describe "GET 'new'" do
  
    it "should be successful" do
      get 'new'
      response.should be_success
    end
	
    it "should have the right title" do
      get 'new'
      response.should have_selector("title",
					                :content => "Login")
    end	
	
  end

end
