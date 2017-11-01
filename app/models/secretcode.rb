class Secretcode < ActiveRecord::Base
	attr_accessor :number
	belongs_to :user
  enum option:  %i(1,10,20,50,100)
	
end
