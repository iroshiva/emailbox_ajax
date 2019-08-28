class Task < ApplicationRecord
  validates :title, presence: true
  belongs_to :category

  # before_commit :box_checked?

  def change_status
  	self.status == true ? false : true 
  end

end
