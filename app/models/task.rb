class Task < ApplicationRecord
  belongs_to :user

  before_save :is_completed



  def is_completed
    if self.complete == 0
      self.complete == false
    elsif self.complete == 1
      self.complete == true
    end
  end
end
