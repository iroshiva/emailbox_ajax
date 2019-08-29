class Email < ApplicationRecord
	
	def change_read
  	self.read == false ? true : false 
  end
end
