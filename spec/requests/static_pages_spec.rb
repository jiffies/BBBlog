#encoding: utf-8
require 'spec_helper'

describe "StaticPages" do
  subject {page}
  describe "about page" do
  	before {visit about_path}
  	it {should have_selector('title', text:"关于")}
		it {should have_selector('p', text:"who am I?")}
	end
end
