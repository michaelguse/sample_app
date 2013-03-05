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

class Program < ActiveRecord::Base

  attr_accessible :name, :description

  validates :name,	   :presence   => true,
			   :length     => { :maximum => 255},
			   :uniqueness  => true

  validates :description,  :presence   => true,
			   :length     => { :maximum => 1000 }

end
