require 'spec_helper'

describe Tag do
	before {@tag = Tag.new(name:"luoli",quantity:2)}
	subject {@tag}
	it {should respond_to(:name)}
	it {should respond_to(:quantity)}
	it {should be_valid}

	describe "when name not present" do
		before {@tag = Tag.new(name:"")}
		it {should_not be_valid}
	end
end
