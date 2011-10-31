require 'spec_helper'

describe "LayoutLinks" do
  
  describe "GET /layout_links" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get layout_links_index_path
      response.status.should be(200)
    end
  end

  it "should have a Home page at '/'" do
	get '/'
	response.should have_selector('title', :content => "Home")
  end
  
  it "should have a Contact page at '/'" do
	get '/contact'
	response.should have_selector('title', :content => "Contact")
  end
  
  it "should have a About page at '/'" do
	get '/about'
	response.should have_selector('title', :content => "About")
  end
  
  it "should have a Help page at '/'" do
	get '/help'
	response.should have_selector('title', :content => "Help")
  end
  
  
  end
