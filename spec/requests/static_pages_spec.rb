#encoding: utf-8
require 'spec_helper'

describe "StaticPages" do
  describe "about me" do
    it "should have content 'who am I?'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
			visit '/static_pages/about_me'
     	page.should have_content('who am I?') 
    end
		
		it "should have the right title" do
			visit '/static_pages/about_me'
			page.should have_selector('title', :text => "关于我")
		end
  end
end
