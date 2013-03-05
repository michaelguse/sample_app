# == Schema Information
#
# Table name: programs
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Program do
#  pending "add some examples to (or delete) #{__FILE__}"

  before(:each) do
    @attr = { 
	:name => "Example Program", 
	:description => "Example Program Description"
    }  
  end

  it "should create a new instance given valid attributes" do
    Program.create!(@attr)
  end
  
  it "should require a program name" do
    no_name_program = Program.new(@attr.merge(:name => ""))
    no_name_program.should_not be_valid
  end

  it "should require a program description" do
    no_desc_program = Program.new(@attr.merge(:description => ""))
    no_desc_program.should_not be_valid
  end

  it "should reject program names that are too long" do
    long_name = "a" * 256
    long_name_program = Program.new(@attr.merge(:name => long_name))
    long_name_program.should_not be_valid
  end

  it "should reject program descriptions that are too long" do
    long_desc = "a" * 1001
    long_name_program_desc = Program.new(@attr.merge(:description => long_desc))
    long_name_program_desc.should_not be_valid
  end

  it "should reject duplicate program names" do
    # Put a user with given program name into the database.
    Program.create!(@attr)
    program_with_duplicate_name = Program.new(@attr)
    program_with_duplicate_name.should_not be_valid
  end

end
